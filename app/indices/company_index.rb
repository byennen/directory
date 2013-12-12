ThinkingSphinx::Index.define :company, :with => :active_record do
  indexes company_name
  indexes sub_company_name
  indexes branches.branch_name, :as => :branches
  indexes equipment_categorizables(:name), :as => :equipment_names
  indexes service_categorizables(:name), :as => :service_names
  indexes material_categorizables(:name), :as => :material_names

  set_property :enable_star => 1
  set_property :min_infix_len => 1
end