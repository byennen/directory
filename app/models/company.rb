class Company < ActiveRecord::Base
  belongs_to :user

  belongs_to :logo_package
  has_one :order

  has_many :branches

  has_many :categories
  has_many :equipment_categorizables, through: :categories, source: :categorizable, source_type: 'Equipment'
  has_many :material_categorizables, through: :categories, source: :categorizable, source_type: 'Material'
  has_many :service_categorizables, through: :categories, source: :categorizable, source_type: 'Service'

  has_many :sub_categories
  has_many :equipment_sub_categorizables, through: :sub_categories, source: :sub_categorizable, source_type: 'Equipment'
  has_many :material_sub_categorizables, through: :sub_categories, source: :sub_categorizable, source_type: 'Material'
  has_many :service_sub_categorizables, through: :sub_categories, source: :sub_categorizable, source_type: 'Service'

  has_many :print_selections
  has_many :equipment_print_printables, through: :print_selections, source: :printable, source_type: 'Equipment'
  has_many :material_print_printables, through: :print_selections, source: :printable, source_type: 'Material'
  has_many :service_print_printables, through: :print_selections, source: :printable, source_type: 'Service'

  has_many :online_selections
  has_many :equipment_online_onlineables, through: :online_selections, source: :onlineable, source_type: 'Equipment'
  has_many :material_online_onlineables, through: :online_selections, source: :onlineable, source_type: 'Material'
  has_many :service_online_onlineables, through: :online_selections, source: :onlineable, source_type: 'Service'

  mount_uploader :logo, LogoUploader

  accepts_nested_attributes_for :branches, allow_destroy: true

  scope :complete, -> {where state: "thank_you"}
  scope :not_complete, -> {where "state <> 'thank_you'"}

  state_machine :state, :initial => :general do
    
    event :next do
      transition :from => :general,                     :to => :branches
      transition :from => :branches,                    :to => :category_selections
      transition :from => :category_selections,         :to => :logo
      transition :from => :logo,                        :to => :print_and_online_selections
      transition :from => :print_and_online_selections, :to => :checkout
      transition :from => :checkout,                    :to => :thank_you
    end

    state :branches do
      validates :company_name, uniqueness: true, presence: true
    end

  end

  def complete?
    state=='thank_you'
  end

  def address
    [city, addr_state, country].reject{ |a| a.blank? }.join(", ")
  end

  def total_amount
    print_selections.count*75 + online_selections.count*400
  end

  class << self
    def search_letter(letter)
      where("lower(company_name) like ?", "#{letter.downcase}%")
    end
    def search_country(country)
      where(country: country)
    end
    def search_state(state)
      where("lower(state) like ?", "%#{state.downcase}%")
    end
  end
end
