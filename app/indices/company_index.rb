ThinkingSphinx::Index.define :company, :with => :active_record do
  indexes :company_name
  indexes :sub_company_name
  indexes branches.branch_name, :as => :branches

  indexes equipment_categorizables.name, as: :equipment_categories
  indexes material_categorizables.name, as: :material_categories
  indexes service_categorizables.name, as: :service_categories

  indexes categories.categorizable_type, as: :category_type
  polymorphs categories.categorizable, :to => %w(Service Material Equipment)

  set_property :enable_star => 1
  set_property :min_infix_len => 1
end
