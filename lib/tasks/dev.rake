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
      user.company.update_attribute :company_name, ('A'..'Z').to_a[i%26] + "Company #{i}"
      user.company.equipment_categorizables << equipments[i%10]
      user.company.material_categorizables << materials[i%10]
      user.company.service_categorizables << services[i%10]
    end
  end
end