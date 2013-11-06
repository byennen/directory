puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name(role)
  puts 'role: ' << role
end

puts 'DEFAULT USERS'
user = User.find_or_create_by_email(email: ENV['ADMIN_EMAIL'].dup, password: ENV['ADMIN_PASSWORD'].dup, password_confirmation: ENV['ADMIN_PASSWORD'].dup)
puts 'user: ' << user.email
user.confirm!
user.add_role :admin

puts 'Create Logo Packages'
LogoPackage.create(name: 'GOLD, 2 INCH LOGO')
LogoPackage.create(name: 'GOLD, 1 INCH LOGO')
LogoPackage.create(name: 'SILVER, 2 INCH LOGO')
LogoPackage.create(name: 'SILVER, 1 INCH LOGO')
LogoPackage.create(name: 'BRONZE, NO LOGO')


puts 'Create Categories'
Category.create(name: 'Abrasive Cutoff Machines')
Category.create(name: 'Abrasive Finishing, Arbor Machine')
