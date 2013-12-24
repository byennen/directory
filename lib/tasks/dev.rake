namespace :dev do
  desc "Development seed"
  
  task :create_users => :environment do
    equipments = Equipment.all
    materials = Material.all
    services = Service.all
    50.times.each do |i|
      email = "user#{i}@localhost.st"
      user = User.create_with(password: 'password', password_confirmation: 'password').find_or_create_by(email: email)
      user.confirm!
      user.companies.last.update_attribute :company_name, ('A'..'Z').to_a[i%26] + "Company #{i}"
      user.companies.last.equipment_categorizables << equipments[i%10]
      user.companies.last.material_categorizables << materials[i%10]
      user.companies.last.service_categorizables << services[i%10]
    end
  end

  task :create_subs => :environment do
    Equipment.all.each do |c|
      c.sub_equipments.create(name: "#{c.name} Sub 1")
      c.sub_equipments.create(name: "#{c.name} Sub 2")
    end
    Service.all.each do |c|
      c.sub_services.create(name: "#{c.name} Sub 1")
      c.sub_services.create(name: "#{c.name} Sub 2")
    end
    Material.all.each do |c|
      c.sub_materials.create(name: "#{c.name} Sub 1")
      c.sub_materials.create(name: "#{c.name} Sub 2")
    end
  end

  task :update_company_state => :environment do
    Company.update_all state: 'general'
  end
end