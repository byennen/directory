puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by(name: role)
  puts 'role: ' << role
end

puts 'DEFAULT USERS'
user = User.create_with(password: ENV['ADMIN_PASSWORD'].dup, password_confirmation: ENV['ADMIN_PASSWORD'].dup).find_or_create_by(email: ENV['ADMIN_EMAIL'].dup)
puts 'user: ' << user.email
user.confirm!
user.add_role :admin

puts 'Settings'
Setting.create(print_edition_deadline: '2013-05-02')

puts 'Create Logo Packages'
LogoPackage.where(name: 'GOLD, 2 INCH LOGO 4-color logo').first_or_create
LogoPackage.where(name: 'GOLD, 1 INCH LOGO 4-color logo').first_or_create
LogoPackage.where(name: 'SILVER, 2 INCH LOGO B/W logo').first_or_create
LogoPackage.where(name: 'SILVER, 1 INCH LOGO B/W logo').first_or_create
LogoPackage.where(name: 'FREE LISTING, NO LOGO').first_or_create

10.times do |i|
  Company.create(contact_name: 'Demo', company_name: "Demo company ##{i}", sub_company_name: 'Demo', address_1: 'Demo', address_2: 'Demo', city: 'Demo', addr_state: 'Demo', zip: 'Demo', country: 'Demo')
end

puts 'Create Equipment Categories'
@category_1 = Equipment.where(name: 'Bending equipment').first_or_create
SubEquipment.where(name: 'Folding machines', parent_id: @category_1.id).first_or_create
SubEquipment.where(name: 'Roll benders, angle or sheet/plate', parent_id: @category_1.id).first_or_create
SubEquipment.where(name: 'Sheet/plate, folding', parent_id: @category_1.id).first_or_create
SubEquipment.where(name: 'Sheet/plate, panel', parent_id: @category_1.id).first_or_create
SubEquipment.where(name: 'Tube & pipe benders', parent_id: @category_1.id).first_or_create

puts 'Adding Casting and forging'
@category_2 = Equipment.where(name: 'Casting and forging').first_or_create
SubEquipment.where(name: 'Billet cutters', parent_id: @category_2.id).first_or_create
SubEquipment.where(name: 'Billet molds', parent_id: @category_2.id).first_or_create
SubEquipment.where(name: 'Casting equipment, die', parent_id: @category_2.id).first_or_create #Casting equipment, die
SubEquipment.where(name: 'Casting equipment, direct chill', parent_id: @category_2.id).first_or_create #Casting equipment, direct chill
SubEquipment.where(name: 'Casting equipment, permanent mold', parent_id: @category_2.id).first_or_create #Casting equipment, permanent mold
SubEquipment.where(name: 'Casting systems, continuous', parent_id: @category_2.id).first_or_create #Casting systems, continuous
SubEquipment.where(name: 'Filters, molten metal', parent_id: @category_2.id).first_or_create #Filters, molten metal
SubEquipment.where(name: 'Forging die lubricators', parent_id: @category_2.id).first_or_create #Forging die lubricators
SubEquipment.where(name: 'Forging equipment', parent_id: @category_2.id).first_or_create #Forging equipment
SubEquipment.where(name: 'Forging manipulators', parent_id: @category_2.id).first_or_create #Forging manipulators
SubEquipment.where(name: 'Ladles, automatic', parent_id: @category_2.id).first_or_create #Ladles, automatic
SubEquipment.where(name: 'Sensors, molten metal level', parent_id: @category_2.id).first_or_create #Sensors, molten metal level
SubEquipment.where(name: 'Strip accumulators', parent_id: @category_2.id).first_or_create #Strip accumulators
SubEquipment.where(name: 'Strip casting machines, continuous', parent_id: @category_2.id).first_or_create #Strip casting machines, continuous
SubEquipment.where(name: 'Strip guides', parent_id: @category_2.id).first_or_create #Strip guides

puts 'Adding Coil processing'
@category_3 = Equipment.where(name: 'Coil processing').first_or_create
SubEquipment.where(name: 'Blanking lines', parent_id: @category_3.id).first_or_create #Blanking lines
SubEquipment.where(name: 'Blanking machines', parent_id: @category_3.id).first_or_create #Blanking machines
SubEquipment.where(name: 'Coil cars', parent_id: @category_3.id).first_or_create #Coil cars
SubEquipment.where(name: 'Coil coating lines', parent_id: @category_3.id).first_or_create #Coil coating lines
SubEquipment.where(name: 'Coil cradles', parent_id: @category_3.id).first_or_create #Coil cradles
SubEquipment.where(name: 'Coil end joiners', parent_id: @category_3.id).first_or_create #Coil end joiners
SubEquipment.where(name: 'Coil equipment, accumulators', parent_id: @category_3.id).first_or_create #Coil equipment, accumulators
SubEquipment.where(name: 'Coil equipment, coil coating/lubricating', parent_id: @category_3.id).first_or_create #Coil equipment, coil coating/lubricating
SubEquipment.where(name: 'Coil equipment, coil reels, grabs', parent_id: @category_3.id).first_or_create #Coil equipment, coil reels, grabs
SubEquipment.where(name: 'Coil equipment, cradles/carts', parent_id: @category_3.id).first_or_create #Coil equipment, cradles/carts
SubEquipment.where(name: 'Coil equipment, cut-to-length', parent_id: @category_3.id).first_or_create #Coil equipment, cut-to-length
SubEquipment.where(name: 'Coil equipment, end joining', parent_id: @category_3.id).first_or_create #Coil equipment, end joining
SubEquipment.where(name: 'Coil equipment, slitting', parent_id: @category_3.id).first_or_create #Coil equipment, slitting
SubEquipment.where(name: 'Coil equipment, straighteners/levelers', parent_id: @category_3.id).first_or_create #Coil equipment, straighteners/levelers
SubEquipment.where(name: 'Coil equipment, tension control', parent_id: @category_3.id).first_or_create #Coil equipment, tension control
SubEquipment.where(name: 'Coil equipment, winders, dereelers, uncoilers', parent_id: @category_3.id).first_or_create #Coil equipment, winders, dereelers, uncoilers
SubEquipment.where(name: 'Coil grabs', parent_id: @category_3.id).first_or_create #Coil grabs
SubEquipment.where(name: 'Coil pickling lines', parent_id: @category_3.id).first_or_create #Coil pickling lines
SubEquipment.where(name: 'Coil prep lines', parent_id: @category_3.id).first_or_create #Coil prep lines
SubEquipment.where(name: 'Coil processing lines', parent_id: @category_3.id).first_or_create #Coil processing lines
SubEquipment.where(name: 'Cut-to-length lines', parent_id: @category_3.id).first_or_create #Cut-to-length lines
SubEquipment.where(name: 'Decamberers', parent_id: @category_3.id).first_or_create #Decamberers
SubEquipment.where(name: 'Decoilers', parent_id: @category_3.id).first_or_create #Decoilers
SubEquipment.where(name: 'Drums, coil winding', parent_id: @category_3.id).first_or_create #Drums, coil winding
SubEquipment.where(name: 'End mills', parent_id: @category_3.id).first_or_create #End mills
SubEquipment.where(name: 'Flatteners', parent_id: @category_3.id).first_or_create #Flatteners
SubEquipment.where(name: 'Knives, rotary slitter', parent_id: @category_3.id).first_or_create #Knives, rotary slitter
SubEquipment.where(name: 'Levelers, roller & stretcher', parent_id: @category_3.id).first_or_create #Levelers, roller & stretcher
SubEquipment.where(name: 'Levelers, tension', parent_id: @category_3.id).first_or_create #Levelers, tension
SubEquipment.where(name: 'Liners, extrusion', parent_id: @category_3.id).first_or_create #Liners, extrusion
SubEquipment.where(name: 'Loop controls', parent_id: @category_3.id).first_or_create #Loop controls
SubEquipment.where(name: 'Multi-blanking lines', parent_id: @category_3.id).first_or_create #Multi-blanking lines
SubEquipment.where(name: 'Pickling lines', parent_id: @category_3.id).first_or_create #Pickling lines
SubEquipment.where(name: 'Recoilers', parent_id: @category_3.id).first_or_create #Recoilers
SubEquipment.where(name: 'Roller straighteners', parent_id: @category_3.id).first_or_create #Roller straighteners
SubEquipment.where(name: 'Rolls, coil coating', parent_id: @category_3.id).first_or_create #Rolls, coil coating
SubEquipment.where(name: 'Separators, coil', parent_id: @category_3.id).first_or_create #Separators, coil
SubEquipment.where(name: 'Side trim lines', parent_id: @category_3.id).first_or_create #Side trim lines
SubEquipment.where(name: 'Slitting lines', parent_id: @category_3.id).first_or_create #Slitting lines
SubEquipment.where(name: 'Software, coil optimization', parent_id: @category_3.id).first_or_create #Software, coil optimization
SubEquipment.where(name: 'Straighteners, coil', parent_id: @category_3.id).first_or_create #Straighteners, coil
SubEquipment.where(name: 'Tension leveling lines', parent_id: @category_3.id).first_or_create #Tension leveling lines
SubEquipment.where(name: 'Uncoilers', parent_id: @category_3.id).first_or_create #Uncoilers

puts 'Adding Heating and cooling'
@category_4 = Equipment.where(name: 'Heating and cooling').first_or_create
SubEquipment.where(name: 'Billet & die heaters', parent_id: @category_4.id).first_or_create #Billet & die heaters
SubEquipment.where(name: 'Blowers, fans & exhausters', parent_id: @category_4.id).first_or_create #Blowers, fans & exhausters
SubEquipment.where(name: 'Burners, furnace & oven', parent_id: @category_4.id).first_or_create #Burners, furnace & oven
SubEquipment.where(name: 'Control systems, temperature', parent_id: @category_4.id).first_or_create #Control systems, temperature
SubEquipment.where(name: 'Cooling equipment', parent_id: @category_4.id).first_or_create #Cooling equipment
SubEquipment.where(name: 'Dryers & ovens', parent_id: @category_4.id).first_or_create #Dryers & ovens
SubEquipment.where(name: 'Drying systems, infrared', parent_id: @category_4.id).first_or_create #Drying systems, infrared
SubEquipment.where(name: 'Exchangers, heating & cooling', parent_id: @category_4.id).first_or_create #Exchangers, heating & cooling
SubEquipment.where(name: 'Fans, industrial', parent_id: @category_4.id).first_or_create #Fans, industrial
SubEquipment.where(name: 'Furnace camera', parent_id: @category_4.id).first_or_create #Furnace camera
SubEquipment.where(name: 'Furnace controls', parent_id: @category_4.id).first_or_create #Furnace controls
SubEquipment.where(name: 'Furnace frames & doors', parent_id: @category_4.id).first_or_create #Furnace frames & doors
SubEquipment.where(name: 'Furnace heating elements', parent_id: @category_4.id).first_or_create #Furnace heating elements
SubEquipment.where(name: 'Furnace linings', parent_id: @category_4.id).first_or_create #Furnace linings
SubEquipment.where(name: 'Furnaces, heat-treating', parent_id: @category_4.id).first_or_create #Furnaces, heat-treating
SubEquipment.where(name: 'Furnaces, log homogenizing', parent_id: @category_4.id).first_or_create #Furnaces, log homogenizing
SubEquipment.where(name: 'Furnaces, melting/holding', parent_id: @category_4.id).first_or_create #Furnaces, melting/holding
SubEquipment.where(name: 'Furnaces, other', parent_id: @category_4.id).first_or_create #Furnaces, other
SubEquipment.where(name: 'Immersion tube burners', parent_id: @category_4.id).first_or_create #Immersion tube burners
SubEquipment.where(name: 'Incinerators', parent_id: @category_4.id).first_or_create #Incinerators
SubEquipment.where(name: 'Oven controls, gas', parent_id: @category_4.id).first_or_create #Oven controls, gas
SubEquipment.where(name: 'Ovens, coil', parent_id: @category_4.id).first_or_create #Ovens, coil
SubEquipment.where(name: 'Ovens, paint baking', parent_id: @category_4.id).first_or_create #Ovens, paint baking

puts 'Adding Metal finishing'
@category_5 = Equipment.where(name: 'Metal finishing').first_or_create
SubEquipment.where(name: 'Abrasive finishing, arbor machines', parent_id: @category_5.id).first_or_create #Abrasive finishing, arbor machines
SubEquipment.where(name: 'Buffing & polishing equipment', parent_id: @category_5.id).first_or_create #Buffing & polishing equipment
SubEquipment.where(name: 'Coating lines, roller coating', parent_id: @category_5.id).first_or_create #Coating lines, roller coating
SubEquipment.where(name: 'Deburring equipment', parent_id: @category_5.id).first_or_create #Deburring equipment
SubEquipment.where(name: 'Edge conditioning lines, skiving', parent_id: @category_5.id).first_or_create #Edge conditioning lines, skiving
SubEquipment.where(name: 'Electrocoating systems', parent_id: @category_5.id).first_or_create #Electrocoating systems
SubEquipment.where(name: 'Electroplating equipment', parent_id: @category_5.id).first_or_create #Electroplating equipment
SubEquipment.where(name: 'Embossing equipment & rolls', parent_id: @category_5.id).first_or_create #Embossing equipment & rolls
SubEquipment.where(name: 'Finishing systems', parent_id: @category_5.id).first_or_create #Finishing systems
SubEquipment.where(name: 'Galvalume processing', parent_id: @category_5.id).first_or_create #Galvalume processing
SubEquipment.where(name: 'Galvanizing lines', parent_id: @category_5.id).first_or_create #Galvanizing lines
SubEquipment.where(name: 'Galvanneal processing', parent_id: @category_5.id).first_or_create #Galvanneal processing
SubEquipment.where(name: 'Grinding and polishing lines', parent_id: @category_5.id).first_or_create #Grinding and polishing lines
SubEquipment.where(name: 'Grinding machines', parent_id: @category_5.id).first_or_create #Grinding machines
SubEquipment.where(name: 'Grinding machines, precision', parent_id: @category_5.id).first_or_create #Grinding machines, precision
SubEquipment.where(name: 'Metal cleaning equipment', parent_id: @category_5.id).first_or_create #Metal cleaning equipment
SubEquipment.where(name: 'Powder coating equipment', parent_id: @category_5.id).first_or_create #Powder coating equipment
SubEquipment.where(name: 'Roll coating machines', parent_id: @category_5.id).first_or_create #Roll coating machines
SubEquipment.where(name: 'Spray booths', parent_id: @category_5.id).first_or_create #Spray booths
SubEquipment.where(name: 'Spray equipment', parent_id: @category_5.id).first_or_create #Spray equipment
SubEquipment.where(name: 'Tanks, metal finishing', parent_id: @category_5.id).first_or_create #Tanks, metal finishing
SubEquipment.where(name: 'Tapping devices, die-mounted', parent_id: @category_5.id).first_or_create #Tapping devices, die-mounted

puts 'Adding Laser technology'
@category_6 = Equipment.where(name: 'Laser technology').first_or_create
SubEquipment.where(name: 'Laser assist gas system', parent_id: @category_6.id).first_or_create #Laser assist gas system
SubEquipment.where(name: 'Laser cutting equipment', parent_id: @category_6.id).first_or_create #Laser cutting equipment
SubEquipment.where(name: 'Laser cutting equipment, 3-D', parent_id: @category_6.id).first_or_create #Laser cutting equipment, 3-D
SubEquipment.where(name: 'Laser cutting equipment, fiber laser', parent_id: @category_6.id).first_or_create #Laser cutting equipment, fiber laser
SubEquipment.where(name: 'Laser cutting equipment, high-power', parent_id: @category_6.id).first_or_create #Laser cutting equipment, high-power
SubEquipment.where(name: 'Laser cutting equipment, plasma combination', parent_id: @category_6.id).first_or_create #Laser cutting equipment, plasma combination
SubEquipment.where(name: 'Laser cutting equipment, punch combination', parent_id: @category_6.id).first_or_create #Laser cutting equipment, punch combination
SubEquipment.where(name: 'Laser cutting equipment, special order', parent_id: @category_6.id).first_or_create #Laser cutting equipment, special order
SubEquipment.where(name: 'Laser, replacement optics', parent_id: @category_6.id).first_or_create #Laser, replacement optics

puts 'Adding Material handling'
@category_7 = Equipment.where(name: 'Material handling').first_or_create
SubEquipment.where(name: 'Air feeders', parent_id: @category_7.id).first_or_create #Air feeders
SubEquipment.where(name: 'Automated storage & retrieval systems', parent_id: @category_7.id).first_or_create #Automated storage & retrieval systems
SubEquipment.where(name: 'Baling machines', parent_id: @category_7.id).first_or_create #Baling machines
SubEquipment.where(name: 'Bar feeders', parent_id: @category_7.id).first_or_create #Bar feeders
SubEquipment.where(name: 'Bar handling equipment', parent_id: @category_7.id).first_or_create #Bar handling equipment
SubEquipment.where(name: 'Billet handlers', parent_id: @category_7.id).first_or_create #Billet handlers
SubEquipment.where(name: 'Chip handling systems', parent_id: @category_7.id).first_or_create #Chip handling systems
SubEquipment.where(name: 'Conveyors & conveying systems', parent_id: @category_7.id).first_or_create #Conveyors & conveying systems
SubEquipment.where(name: 'Cranes & hoists', parent_id: @category_7.id).first_or_create #Cranes & hoists
SubEquipment.where(name: 'Destackers, sheet', parent_id: @category_7.id).first_or_create #Destackers, sheet
SubEquipment.where(name: 'Extrusion handling equipment', parent_id: @category_7.id).first_or_create #Extrusion handling equipment
SubEquipment.where(name: 'Forklifts', parent_id: @category_7.id).first_or_create #Forklifts
SubEquipment.where(name: 'Magnets, electro lifting', parent_id: @category_7.id).first_or_create #Magnets, electro lifting
SubEquipment.where(name: 'Magnets, material handling', parent_id: @category_7.id).first_or_create #Magnets, material handling
SubEquipment.where(name: 'Racks, cantilever', parent_id: @category_7.id).first_or_create #Racks, cantilever
SubEquipment.where(name: 'Racks, extrusion', parent_id: @category_7.id).first_or_create #Racks, extrusion
SubEquipment.where(name: 'Racks, storage', parent_id: @category_7.id).first_or_create #Racks, storage
SubEquipment.where(name: 'Sheet fanners/feeders', parent_id: @category_7.id).first_or_create #Sheet fanners/feeders
SubEquipment.where(name: 'Sideloaders', parent_id: @category_7.id).first_or_create #Sideloaders
SubEquipment.where(name: 'Stackers, extrusion', parent_id: @category_7.id).first_or_create #Stackers, extrusion
SubEquipment.where(name: 'Stackers, plate', parent_id: @category_7.id).first_or_create #Stackers, plate
SubEquipment.where(name: 'Stackers, sheet', parent_id: @category_7.id).first_or_create #Stackers, sheet
SubEquipment.where(name: 'Stackers/destackers, plate & sheet', parent_id: @category_7.id).first_or_create #Stackers/destackers, plate & sheet
SubEquipment.where(name: 'Strapping equipment', parent_id: @category_7.id).first_or_create #Strapping equipment
SubEquipment.where(name: 'Stretch wrapping equipment', parent_id: @category_7.id).first_or_create #Stretch wrapping equipment
SubEquipment.where(name: 'Under-the-hook equipment', parent_id: @category_7.id).first_or_create #Under-the-hook equipment
SubEquipment.where(name: 'Vacuum lifts', parent_id: @category_7.id).first_or_create #Vacuum lifts

puts 'Adding Press brakes'
@category_8 = Equipment.where(name: 'Press brakes').first_or_create
SubEquipment.where(name: 'Press brake gauges, back/front', parent_id: @category_8.id).first_or_create #Press brake gauges, back/front
SubEquipment.where(name: 'Press brakes', parent_id: @category_8.id).first_or_create #Press brakes
SubEquipment.where(name: 'Press brakes, electric/servo', parent_id: @category_8.id).first_or_create #Press brakes, electric/servo
SubEquipment.where(name: 'Press brakes, hand', parent_id: @category_8.id).first_or_create #Press brakes, hand
SubEquipment.where(name: 'Press brakes, hydraulic', parent_id: @category_8.id).first_or_create #Press brakes, hydraulic
SubEquipment.where(name: 'Press brakes, mechanical', parent_id: @category_8.id).first_or_create #Press brakes, mechanical

puts 'Adding presses'
@category_9 = Equipment.where(name: 'Presses').first_or_create
SubEquipment.where(name: 'Cutoff presses', parent_id: @category_9.id).first_or_create #Cutoff presses
SubEquipment.where(name: 'Extrusion press tools', parent_id: @category_9.id).first_or_create #Extrusion press tools
SubEquipment.where(name: 'Extrusion pullers', parent_id: @category_9.id).first_or_create #Extrusion pullers
SubEquipment.where(name: 'Feeders, sheet', parent_id: @category_9.id).first_or_create #Feeders, sheet
SubEquipment.where(name: 'Feeds, electronic', parent_id: @category_9.id).first_or_create #Feeds, electronic
SubEquipment.where(name: 'Feeds, mechanical', parent_id: @category_9.id).first_or_create #Feeds, mechanical
SubEquipment.where(name: 'Foil mills', parent_id: @category_9.id).first_or_create #Foil mills
SubEquipment.where(name: 'Forging presses, cold flow', parent_id: @category_9.id).first_or_create #Forging presses, cold flow
SubEquipment.where(name: 'Forging presses, open die', parent_id: @category_9.id).first_or_create #Forging presses, open die
SubEquipment.where(name: 'Press automation & controls', parent_id: @category_9.id).first_or_create #Press automation & controls
SubEquipment.where(name: 'Press automation equipment', parent_id: @category_9.id).first_or_create #Press automation equipment
SubEquipment.where(name: 'Press counter balance controller', parent_id: @category_9.id).first_or_create #Press counter balance controller
SubEquipment.where(name: 'Press counter balances', parent_id: @category_9.id).first_or_create #Press counter balances
SubEquipment.where(name: 'Press feed robots', parent_id: @category_9.id).first_or_create #Press feed robots
SubEquipment.where(name: 'Press feeders, pneumatic', parent_id: @category_9.id).first_or_create #Press feeders, pneumatic
SubEquipment.where(name: 'Press feeders, roll', parent_id: @category_9.id).first_or_create #Press feeders, roll
SubEquipment.where(name: 'Press feeders, servo', parent_id: @category_9.id).first_or_create #Press feeders, servo
SubEquipment.where(name: 'Press feeds', parent_id: @category_9.id).first_or_create #Press feeds
SubEquipment.where(name: 'Press feeds, electronic', parent_id: @category_9.id).first_or_create #Press feeds, electronic
SubEquipment.where(name: 'Press monitoring, sensors', parent_id: @category_9.id).first_or_create #Press monitoring, sensors
SubEquipment.where(name: 'Press part-transfer mechanisms', parent_id: @category_9.id).first_or_create #Press part-transfer mechanisms
SubEquipment.where(name: 'Press room equipment', parent_id: @category_9.id).first_or_create #Press room equipment
SubEquipment.where(name: 'Presses, arbor', parent_id: @category_9.id).first_or_create #Presses, arbor
SubEquipment.where(name: 'Presses, bending', parent_id: @category_9.id).first_or_create #Presses, bending
SubEquipment.where(name: 'Presses, coining', parent_id: @category_9.id).first_or_create #Presses, coining
SubEquipment.where(name: 'Presses, deep drawing', parent_id: @category_9.id).first_or_create #Presses, deep drawing
SubEquipment.where(name: 'Presses, electric', parent_id: @category_9.id).first_or_create #Presses, electric
SubEquipment.where(name: 'Presses, extrusion', parent_id: @category_9.id).first_or_create #Presses, extrusion
SubEquipment.where(name: 'Presses, extrusion, stretch', parent_id: @category_9.id).first_or_create #Presses, extrusion, stretch
SubEquipment.where(name: 'Presses, fineblanking', parent_id: @category_9.id).first_or_create #Presses, fineblanking
SubEquipment.where(name: 'Presses, forging', parent_id: @category_9.id).first_or_create #Presses, forging
SubEquipment.where(name: 'Presses, gap-frame, hydraulic', parent_id: @category_9.id).first_or_create #Presses, gap-frame, hydraulic
SubEquipment.where(name: 'Presses, gap-frame, mechanical', parent_id: @category_9.id).first_or_create #Presses, gap-frame, mechanical
SubEquipment.where(name: 'Presses, hardware inspection', parent_id: @category_9.id).first_or_create #Presses, hardware inspection
SubEquipment.where(name: 'Presses, horning', parent_id: @category_9.id).first_or_create #Presses, horning
SubEquipment.where(name: 'Presses, hydraulic', parent_id: @category_9.id).first_or_create #Presses, hydraulic
SubEquipment.where(name: 'Presses, hydroforming', parent_id: @category_9.id).first_or_create #Presses, hydroforming
SubEquipment.where(name: 'Presses, hydroforming, sheet', parent_id: @category_9.id).first_or_create #Presses, hydroforming, sheet
SubEquipment.where(name: 'Presses, hydroforming, tube', parent_id: @category_9.id).first_or_create #Presses, hydroforming, tube
SubEquipment.where(name: 'Presses, knuckle-joint', parent_id: @category_9.id).first_or_create #Presses, knuckle-joint
SubEquipment.where(name: 'Presses, loading & unloading', parent_id: @category_9.id).first_or_create #Presses, loading & unloading
SubEquipment.where(name: 'Presses, mechanical', parent_id: @category_9.id).first_or_create #Presses, mechanical
SubEquipment.where(name: 'Presses, pneumatic', parent_id: @category_9.id).first_or_create #Presses, pneumatic
SubEquipment.where(name: 'Presses, powder compacting', parent_id: @category_9.id).first_or_create #Presses, powder compacting
SubEquipment.where(name: 'Presses, rubber-pad forming', parent_id: @category_9.id).first_or_create #Presses, rubber-pad forming
SubEquipment.where(name: 'Presses, servo', parent_id: @category_9.id).first_or_create #Presses, servo
SubEquipment.where(name: 'Presses, slide forming', parent_id: @category_9.id).first_or_create #Presses, slide forming
SubEquipment.where(name: 'Presses, straightside, hydraulic', parent_id: @category_9.id).first_or_create #Presses, straightside, hydraulic
SubEquipment.where(name: 'Presses, straightside, mechanical', parent_id: @category_9.id).first_or_create #Presses, straightside, mechanical
SubEquipment.where(name: 'Presses, transfer', parent_id: @category_9.id).first_or_create #Presses, transfer
SubEquipment.where(name: 'Presses, trimming', parent_id: @category_9.id).first_or_create #Presses, trimming
SubEquipment.where(name: 'Presses, tryout', parent_id: @category_9.id).first_or_create #Presses, tryout
SubEquipment.where(name: 'Software, stamping simulation', parent_id: @category_9.id).first_or_create #Software, stamping simulation
SubEquipment.where(name: 'Stamping presses', parent_id: @category_9.id).first_or_create #Stamping presses
SubEquipment.where(name: 'Stamping presses, servo', parent_id: @category_9.id).first_or_create #Stamping presses, servo
SubEquipment.where(name: 'Valves, press safety', parent_id: @category_9.id).first_or_create #Valves, press safety

puts 'Adding Punching and drilling'
@category_10 = Equipment.where(name: 'Punching and drilling').first_or_create
SubEquipment.where(name: 'Drilling machines, multiple', parent_id: @category_10.id).first_or_create #Drilling machines, multiple
SubEquipment.where(name: 'Punch presses', parent_id: @category_10.id).first_or_create #Punch presses
SubEquipment.where(name: 'Punch/shear combinations', parent_id: @category_10.id).first_or_create #Punch/shear combinations
SubEquipment.where(name: 'Punches', parent_id: @category_10.id).first_or_create #Punches
SubEquipment.where(name: 'Punches & dies, perforating', parent_id: @category_10.id).first_or_create #Punches & dies, perforating
SubEquipment.where(name: 'Punches, hydraulic', parent_id: @category_10.id).first_or_create #Punches, hydraulic
SubEquipment.where(name: 'Punching machines & nibblers', parent_id: @category_10.id).first_or_create #Punching machines & nibblers
SubEquipment.where(name: 'Turret punch presses, hydraulic', parent_id: @category_10.id).first_or_create #Turret punch presses, hydraulic
SubEquipment.where(name: 'Turret punch presses, mechanical', parent_id: @category_10.id).first_or_create #Turret punch presses, mechanical
SubEquipment.where(name: 'Turret punch presses, with plasma', parent_id: @category_10.id).first_or_create #Turret punch presses, with plasma

puts 'Adding robotics'
@category_11 = Equipment.where(name: 'Robotics').first_or_create
SubEquipment.where(name: 'Robot tooling/grippers', parent_id: @category_11.id).first_or_create #Robot tooling/grippers
SubEquipment.where(name: 'Robots, industrial', parent_id: @category_11.id).first_or_create #Robots, industrial
SubEquipment.where(name: 'Robots, material handling', parent_id: @category_11.id).first_or_create #Robots, material handling
SubEquipment.where(name: 'Robots, peripherals', parent_id: @category_11.id).first_or_create #Robots, peripherals
SubEquipment.where(name: 'Robots, welding', parent_id: @category_11.id).first_or_create #Robots, welding

puts 'Adding roll forming'
@category_12 = Equipment.where(name: 'Roll forming').first_or_create
SubEquipment.where(name: 'Angle rolls', parent_id: @category_12.id).first_or_create #Angle rolls
SubEquipment.where(name: 'Plate rolls', parent_id: @category_12.id).first_or_create #Plate rolls
SubEquipment.where(name: 'Roll forming mills', parent_id: @category_12.id).first_or_create #Roll forming mills
SubEquipment.where(name: 'Roll forming rolls', parent_id: @category_12.id).first_or_create #Roll forming rolls
SubEquipment.where(name: 'Roll grinders', parent_id: @category_12.id).first_or_create #Roll grinders
SubEquipment.where(name: 'Rolling mills/equipment', parent_id: @category_12.id).first_or_create #Rolling mills/equipment
SubEquipment.where(name: 'Rolls, embossing', parent_id: @category_12.id).first_or_create #Rolls, embossing
SubEquipment.where(name: 'Rolls, rolling mill', parent_id: @category_12.id).first_or_create #Rolls, rolling mill
SubEquipment.where(name: 'Rolls, rubber & polyurethane', parent_id: @category_12.id).first_or_create #Rolls, rubber & polyurethane
SubEquipment.where(name: 'Shape control, rolling mills', parent_id: @category_12.id).first_or_create #Shape control, rolling mills
SubEquipment.where(name: 'Air purifying systems', parent_id: @category_12.id).first_or_create #Air purifying systems
SubEquipment.where(name: 'Control systems, pollution', parent_id: @category_12.id).first_or_create #Control systems, pollution
SubEquipment.where(name: 'Dust collectors', parent_id: @category_12.id).first_or_create #Dust collectors
SubEquipment.where(name: 'Pollution control systems', parent_id: @category_12.id).first_or_create #Pollution control systems
SubEquipment.where(name: 'Safety equipment, apparel', parent_id: @category_12.id).first_or_create #Safety equipment, apparel
SubEquipment.where(name: 'Safety equipment, barriers & machine guards', parent_id: @category_12.id).first_or_create #Safety equipment, barriers & machine guards
SubEquipment.where(name: 'Safety equipment, brake monitors', parent_id: @category_12.id).first_or_create #Safety equipment, brake monitors
SubEquipment.where(name: 'Safety equipment, clutches & brakes', parent_id: @category_12.id).first_or_create #Safety equipment, clutches & brakes
SubEquipment.where(name: 'Safety equipment, floor mats', parent_id: @category_12.id).first_or_create #Safety equipment, floor mats
SubEquipment.where(name: 'Safety equipment, light curtains', parent_id: @category_12.id).first_or_create #Safety equipment, light curtains
SubEquipment.where(name: 'Safety equipment, lockout/tagout devices', parent_id: @category_12.id).first_or_create #Safety equipment, lockout/tagout devices
SubEquipment.where(name: 'Safety equipment, machine guards', parent_id: @category_12.id).first_or_create #Safety equipment, machine guards
SubEquipment.where(name: 'Safety equipment, palm buttons', parent_id: @category_12.id).first_or_create #Safety equipment, palm buttons
SubEquipment.where(name: 'Safety equipment, presence-sensing devices', parent_id: @category_12.id).first_or_create #Safety equipment, presence-sensing devices
SubEquipment.where(name: 'Safety equipment, welding protection', parent_id: @category_12.id).first_or_create #Safety equipment, welding protection
SubEquipment.where(name: 'Abrasive cutoff machines', parent_id: @category_12.id).first_or_create #Abrasive cutoff machines
SubEquipment.where(name: 'Air knife, drying', parent_id: @category_12.id).first_or_create #Air knife, drying
SubEquipment.where(name: 'Cutoff machines, saws', parent_id: @category_12.id).first_or_create #Cutoff machines, saws
SubEquipment.where(name: 'Cutoff machines, tube & pipe', parent_id: @category_12.id).first_or_create #Cutoff machines, tube & pipe
SubEquipment.where(name: 'Cutting cells & systems', parent_id: @category_12.id).first_or_create #Cutting cells & systems
SubEquipment.where(name: 'Flame cutting equipment', parent_id: @category_12.id).first_or_create #Flame cutting equipment
SubEquipment.where(name: 'Miter cutoff saws, single & double', parent_id: @category_12.id).first_or_create #Miter cutoff saws, single & double
SubEquipment.where(name: 'Notching machines', parent_id: @category_12.id).first_or_create #Notching machines
SubEquipment.where(name: 'Oxy-fuel cutting equipment', parent_id: @category_12.id).first_or_create #Oxy-fuel cutting equipment
SubEquipment.where(name: 'Plasma cutting equipment', parent_id: @category_12.id).first_or_create #Plasma cutting equipment
SubEquipment.where(name: 'Saw blades, all types', parent_id: @category_12.id).first_or_create #Saw blades, all types
SubEquipment.where(name: 'Saws, band', parent_id: @category_12.id).first_or_create #Saws, band
SubEquipment.where(name: 'Saws, bar & billet', parent_id: @category_12.id).first_or_create #Saws, bar & billet
SubEquipment.where(name: 'Saws, circular', parent_id: @category_12.id).first_or_create #Saws, circular
SubEquipment.where(name: 'Saws, circular cutoff (cold)', parent_id: @category_12.id).first_or_create #Saws, circular cutoff (cold)
SubEquipment.where(name: 'Saws, contour', parent_id: @category_12.id).first_or_create #Saws, contour
SubEquipment.where(name: 'Saws, other', parent_id: @category_12.id).first_or_create #Saws, other
SubEquipment.where(name: 'Saws/shears, extrusion', parent_id: @category_12.id).first_or_create #Saws/shears, extrusion
SubEquipment.where(name: 'Shear knives', parent_id: @category_12.id).first_or_create #Shear knives
SubEquipment.where(name: 'Shearing machines', parent_id: @category_12.id).first_or_create #Shearing machines
SubEquipment.where(name: 'Shearing machines, flying', parent_id: @category_12.id).first_or_create #Shearing machines, flying
SubEquipment.where(name: 'Spacers, shear', parent_id: @category_12.id).first_or_create #Spacers, shear
SubEquipment.where(name: 'Waterjet cutting equipment', parent_id: @category_12.id).first_or_create #Waterjet cutting equipment
SubEquipment.where(name: 'Bending', parent_id: @category_12.id).first_or_create #Bending
SubEquipment.where(name: 'CAD/CAM', parent_id: @category_12.id).first_or_create #CAD/CAM
SubEquipment.where(name: 'ERP/MRP Supply chain management', parent_id: @category_12.id).first_or_create #ERP/MRP Supply chain management
SubEquipment.where(name: 'Job costing & estimating', parent_id: @category_12.id).first_or_create #Job costing & estimating
SubEquipment.where(name: 'NC/CNC programming', parent_id: @category_12.id).first_or_create #NC/CNC programming
SubEquipment.where(name: 'Nesting', parent_id: @category_12.id).first_or_create #Nesting
SubEquipment.where(name: 'Process planning & scheduling', parent_id: @category_12.id).first_or_create #Process planning & scheduling
SubEquipment.where(name: 'Sheet metal layout, flat pattern', parent_id: @category_12.id).first_or_create #Sheet metal layout, flat pattern
SubEquipment.where(name: 'Shop-floor tracking & flow control', parent_id: @category_12.id).first_or_create #Shop-floor tracking & flow control
SubEquipment.where(name: 'Simulation, process modeling', parent_id: @category_12.id).first_or_create #Simulation, process modeling
SubEquipment.where(name: 'Tool management & storage', parent_id: @category_12.id).first_or_create #Tool management & storage
SubEquipment.where(name: 'Carbide dies', parent_id: @category_12.id).first_or_create #Carbide dies
SubEquipment.where(name: 'Die buttons', parent_id: @category_12.id).first_or_create #Die buttons
SubEquipment.where(name: 'Die carts/lift tables', parent_id: @category_12.id).first_or_create #Die carts/lift tables
SubEquipment.where(name: 'Die changing equipment', parent_id: @category_12.id).first_or_create #Die changing equipment
SubEquipment.where(name: 'Die clamps', parent_id: @category_12.id).first_or_create #Die clamps
SubEquipment.where(name: 'Die cushions', parent_id: @category_12.id).first_or_create #Die cushions
SubEquipment.where(name: 'Die design', parent_id: @category_12.id).first_or_create #Die design
SubEquipment.where(name: 'Die film', parent_id: @category_12.id).first_or_create #Die film
SubEquipment.where(name: 'Die holders', parent_id: @category_12.id).first_or_create #Die holders
SubEquipment.where(name: 'Die inserts', parent_id: @category_12.id).first_or_create #Die inserts
SubEquipment.where(name: 'Die inserts', parent_id: @category_12.id).first_or_create #Die lifters
SubEquipment.where(name: 'Die lubrication systems', parent_id: @category_12.id).first_or_create #Die lubrication systems
SubEquipment.where(name: 'Die pins', parent_id: @category_12.id).first_or_create #Die pins
SubEquipment.where(name: 'Die protection systems', parent_id: @category_12.id).first_or_create #Die protection systems
SubEquipment.where(name: 'Die separators', parent_id: @category_12.id).first_or_create #Die separators
SubEquipment.where(name: 'Die sets & accessories', parent_id: @category_12.id).first_or_create #Die sets & accessories
SubEquipment.where(name: 'Die springs', parent_id: @category_12.id).first_or_create #Die springs
SubEquipment.where(name: 'Die storage & retrieval systems', parent_id: @category_12.id).first_or_create #Die storage & retrieval systems
SubEquipment.where(name: 'Die transfer, handling systems', parent_id: @category_12.id).first_or_create #Die transfer, handling systems
SubEquipment.where(name: 'Dies, blank & form', parent_id: @category_12.id).first_or_create #Dies, blank & form
SubEquipment.where(name: 'Dies, blanking', parent_id: @category_12.id).first_or_create #Dies, blanking
SubEquipment.where(name: 'Dies, drawing/forming', parent_id: @category_12.id).first_or_create #Dies, drawing/forming
SubEquipment.where(name: 'Dies, extrusion', parent_id: @category_12.id).first_or_create #Dies, extrusion
SubEquipment.where(name: 'Dies, permanent mold casting', parent_id: @category_12.id).first_or_create #Dies, permanent mold casting
SubEquipment.where(name: 'Dies, piercing & notching', parent_id: @category_12.id).first_or_create #Dies, piercing & notching
SubEquipment.where(name: 'Dies, progressive', parent_id: @category_12.id).first_or_create #Dies, progressive
SubEquipment.where(name: 'Dies, punch press', parent_id: @category_12.id).first_or_create #Dies, punch press
SubEquipment.where(name: 'Dies, roll forming', parent_id: @category_12.id).first_or_create #Dies, roll forming
SubEquipment.where(name: 'Quick die change systems', parent_id: @category_12.id).first_or_create #Quick die change systems
SubEquipment.where(name: 'Tooling, bending', parent_id: @category_12.id).first_or_create #Tooling, bending
SubEquipment.where(name: 'Tooling, ceramic', parent_id: @category_12.id).first_or_create #Tooling, ceramic
SubEquipment.where(name: 'Tooling, die casting', parent_id: @category_12.id).first_or_create #Tooling, die casting
SubEquipment.where(name: 'Tooling, extrusion', parent_id: @category_12.id).first_or_create #Tooling, extrusion
SubEquipment.where(name: 'Tooling, ironworker', parent_id: @category_12.id).first_or_create #Tooling, ironworker
SubEquipment.where(name: 'Tooling, press brake', parent_id: @category_12.id).first_or_create #Tooling, press brake
SubEquipment.where(name: 'Tooling, presses', parent_id: @category_12.id).first_or_create #Tooling, presses
SubEquipment.where(name: 'Tooling, punch & die sets', parent_id: @category_12.id).first_or_create #Tooling, punch & die sets
SubEquipment.where(name: 'Tooling, roll forming', parent_id: @category_12.id).first_or_create #Tooling, roll forming
SubEquipment.where(name: 'Tooling, short-run', parent_id: @category_12.id).first_or_create #Tooling, short-run
SubEquipment.where(name: 'Tooling, tube & pipe mills', parent_id: @category_12.id).first_or_create #Tooling, tube & pipe mills
SubEquipment.where(name: 'Tooling, tube bending', parent_id: @category_12.id).first_or_create #Tooling, tube bending
SubEquipment.where(name: 'Tooling, turret punch press', parent_id: @category_12.id).first_or_create #Tooling, turret punch press
SubEquipment.where(name: 'Tooling, unitized', parent_id: @category_12.id).first_or_create #Tooling, unitized
SubEquipment.where(name: 'Tooling, urethane', parent_id: @category_12.id).first_or_create #Tooling, urethane
SubEquipment.where(name: 'Tools, carbide cutting', parent_id: @category_12.id).first_or_create #Tools, carbide cutting
SubEquipment.where(name: 'Tube perforating machines', parent_id: @category_12.id).first_or_create #Tube perforating machines
SubEquipment.where(name: 'Tungsten carbide tooling', parent_id: @category_12.id).first_or_create #Tungsten carbide tooling
SubEquipment.where(name: 'Cold draw equipment', parent_id: @category_12.id).first_or_create #Cold draw equipment
SubEquipment.where(name: 'Drawbenches', parent_id: @category_12.id).first_or_create #Drawbenches
SubEquipment.where(name: 'Mandrels', parent_id: @category_12.id).first_or_create #Mandrels
SubEquipment.where(name: 'Tube & pipe mills', parent_id: @category_12.id).first_or_create #Tube & pipe mills
SubEquipment.where(name: 'Tube cutting machinery', parent_id: @category_12.id).first_or_create #Tube cutting machinery
SubEquipment.where(name: 'Tube louvers', parent_id: @category_12.id).first_or_create #Tube louvers
SubEquipment.where(name: 'Tube-end forming equipment', parent_id: @category_12.id).first_or_create #Tube-end forming equipment
SubEquipment.where(name: 'Tube/pipe bending machines', parent_id: @category_12.id).first_or_create #Tube/pipe bending machines
SubEquipment.where(name: 'Automatic inspection systems', parent_id: @category_12.id).first_or_create #Automatic inspection systems
SubEquipment.where(name: 'Coating thickness testers', parent_id: @category_12.id).first_or_create #Coating thickness testers
SubEquipment.where(name: 'Coordinate measuring machines', parent_id: @category_12.id).first_or_create #Coordinate measuring machines
SubEquipment.where(name: 'Gauges, cutoff', parent_id: @category_12.id).first_or_create #Gauges, cutoff
SubEquipment.where(name: 'Gauges, dimensional', parent_id: @category_12.id).first_or_create #Gauges, dimensional
SubEquipment.where(name: 'Gauges, thickness', parent_id: @category_12.id).first_or_create #Gauges, thickness
SubEquipment.where(name: 'Gauges, thickness, noncontact', parent_id: @category_12.id).first_or_create #Gauges, thickness, noncontact
SubEquipment.where(name: 'Gauges, thickness, ultrasonic', parent_id: @category_12.id).first_or_create #Gauges, thickness, ultrasonic
SubEquipment.where(name: 'Hardness testers', parent_id: @category_12.id).first_or_create #Hardness testers
SubEquipment.where(name: 'Inspection lights', parent_id: @category_12.id).first_or_create #Inspection lights
SubEquipment.where(name: 'Inspection systems', parent_id: @category_12.id).first_or_create #Inspection systems
SubEquipment.where(name: 'Inspection/measurement equipment, sheet/plate', parent_id: @category_12.id).first_or_create #Inspection/measurement equipment, sheet/plate
SubEquipment.where(name: 'Inspection/measurement equipment, tube & pipe', parent_id: @category_12.id).first_or_create #Inspection/measurement equipment, tube & pipe
SubEquipment.where(name: 'Load monitors', parent_id: @category_12.id).first_or_create #Load monitors
SubEquipment.where(name: 'Measuring equipment', parent_id: @category_12.id).first_or_create #Measuring equipment
SubEquipment.where(name: 'Metrology systems', parent_id: @category_12.id).first_or_create #Metrology systems
SubEquipment.where(name: 'SPC (statistical process control) gauging', parent_id: @category_12.id).first_or_create #SPC (statistical process control) gauging
SubEquipment.where(name: 'Spectrometers', parent_id: @category_12.id).first_or_create #Spectrometers
SubEquipment.where(name: 'Ultrasonic testing equipment', parent_id: @category_12.id).first_or_create #Ultrasonic testing equipment
SubEquipment.where(name: 'Accessories (gloves, holders, etc.)', parent_id: @category_12.id).first_or_create #Accessories (gloves, holders, etc.)
SubEquipment.where(name: 'Arc welding equipment', parent_id: @category_12.id).first_or_create #Arc welding equipment
SubEquipment.where(name: 'Beveling machines', parent_id: @category_12.id).first_or_create #Beveling machines
SubEquipment.where(name: 'Brazing/soldering equipment', parent_id: @category_12.id).first_or_create #Brazing/soldering equipment
SubEquipment.where(name: 'Cells & systems', parent_id: @category_12.id).first_or_create #Cells & systems
SubEquipment.where(name: 'Consumables (electrodes, gases)', parent_id: @category_12.id).first_or_create #Consumables (electrodes, gases)
SubEquipment.where(name: 'Coolers/chillers', parent_id: @category_12.id).first_or_create #Coolers/chillers
SubEquipment.where(name: 'Deslagging machines', parent_id: @category_12.id).first_or_create #Deslagging machines
SubEquipment.where(name: 'Dross systems', parent_id: @category_12.id).first_or_create #Dross systems
SubEquipment.where(name: 'Electronic controls', parent_id: @category_12.id).first_or_create #Electronic controls
SubEquipment.where(name: 'Fume ducting', parent_id: @category_12.id).first_or_create #Fume ducting
SubEquipment.where(name: 'Fume removal systems/equipment', parent_id: @category_12.id).first_or_create #Fume removal systems/equipment
SubEquipment.where(name: 'GMAW/GTAW', parent_id: @category_12.id).first_or_create #GMAW/GTAW
SubEquipment.where(name: 'Guns', parent_id: @category_12.id).first_or_create #Guns
SubEquipment.where(name: 'Helmets', parent_id: @category_12.id).first_or_create #Helmets
SubEquipment.where(name: 'High-frequency', parent_id: @category_12.id).first_or_create #High-frequency
SubEquipment.where(name: 'Laser', parent_id: @category_12.id).first_or_create #Laser
SubEquipment.where(name: 'Plasma', parent_id: @category_12.id).first_or_create #Plasma
SubEquipment.where(name: 'Platens/work tables', parent_id: @category_12.id).first_or_create #Platens/work tables
SubEquipment.where(name: 'Positioners', parent_id: @category_12.id).first_or_create #Positioners
SubEquipment.where(name: 'Resistance welding, flash', parent_id: @category_12.id).first_or_create #Resistance welding, flash
SubEquipment.where(name: 'Resistance welding, seam', parent_id: @category_12.id).first_or_create #Resistance welding, seam
SubEquipment.where(name: 'Resistance welding, spot, stud', parent_id: @category_12.id).first_or_create #Resistance welding, spot, stud
SubEquipment.where(name: 'Robotic Welding Cells', parent_id: @category_12.id).first_or_create #Robotic Welding Cells
SubEquipment.where(name: 'Torches', parent_id: @category_12.id).first_or_create #Torches
SubEquipment.where(name: 'Weld fittings', parent_id: @category_12.id).first_or_create #Weld fittings
SubEquipment.where(name: 'Weld-nut/stud feeders', parent_id: @category_12.id).first_or_create #Weld-nut/stud feeders
SubEquipment.where(name: 'Welding wire', parent_id: @category_12.id).first_or_create #Welding wire
SubEquipment.where(name: 'Workholding equipment', parent_id: @category_12.id).first_or_create #Workholding equipment
SubEquipment.where(name: 'Acid purification equipment', parent_id: @category_12.id).first_or_create #Acid purification equipment
SubEquipment.where(name: 'Air ejection equipment', parent_id: @category_12.id).first_or_create #Air ejection equipment
SubEquipment.where(name: 'Automated assembly systems', parent_id: @category_12.id).first_or_create #Automated assembly systems
SubEquipment.where(name: 'Automatic nut feeder', parent_id: @category_12.id).first_or_create #Automatic nut feeder
SubEquipment.where(name: 'Canisters, extrusion', parent_id: @category_12.id).first_or_create #Canisters, extrusion
SubEquipment.where(name: 'Clamps, anodizing, plating', parent_id: @category_12.id).first_or_create #Clamps, anodizing, plating
SubEquipment.where(name: 'Cleaning equipment, aqueous, high-pressure', parent_id: @category_12.id).first_or_create #Cleaning equipment, aqueous, high-pressure
SubEquipment.where(name: 'Cleaning equipment, ultrasonic', parent_id: @category_12.id).first_or_create #Cleaning equipment, ultrasonic
SubEquipment.where(name: 'Cleaning equipment, vapor/mist', parent_id: @category_12.id).first_or_create #Cleaning equipment, vapor/mist
SubEquipment.where(name: 'Containers, extrusion', parent_id: @category_12.id).first_or_create #Containers, extrusion
SubEquipment.where(name: 'Containers, packaging', parent_id: @category_12.id).first_or_create #Containers, packaging
SubEquipment.where(name: 'Control systems', parent_id: @category_12.id).first_or_create #Control systems
SubEquipment.where(name: 'Controls, motion', parent_id: @category_12.id).first_or_create #Controls, motion
SubEquipment.where(name: 'Controls, noise/vibration', parent_id: @category_12.id).first_or_create #Controls, noise/vibration
SubEquipment.where(name: 'Controls, remote', parent_id: @category_12.id).first_or_create #Controls, remote
SubEquipment.where(name: 'Cylinders, hydraulic & pneumatic', parent_id: @category_12.id).first_or_create #Cylinders, hydraulic & pneumatic
SubEquipment.where(name: 'Cylinders, nitrogen die', parent_id: @category_12.id).first_or_create #Cylinders, nitrogen die
SubEquipment.where(name: 'Deoilers', parent_id: @category_12.id).first_or_create #Deoilers
SubEquipment.where(name: 'Erecting machinery', parent_id: @category_12.id).first_or_create #Erecting machinery
SubEquipment.where(name: 'Expander rings', parent_id: @category_12.id).first_or_create #Expander rings
SubEquipment.where(name: 'Fasteners, self-forming for sheet metal', parent_id: @category_12.id).first_or_create #Fasteners, self-forming for sheet metal
SubEquipment.where(name: 'Filtration systems', parent_id: @category_12.id).first_or_create #Filtration systems
SubEquipment.where(name: 'Forming & flanging machines', parent_id: @category_12.id).first_or_create #Forming & flanging machines
SubEquipment.where(name: 'Injection molding equipment', parent_id: @category_12.id).first_or_create #Injection molding equipment
SubEquipment.where(name: 'Ironworkers', parent_id: @category_12.id).first_or_create #Ironworkers
SubEquipment.where(name: 'Lubricant applicators', parent_id: @category_12.id).first_or_create #Lubricant applicators
SubEquipment.where(name: 'Machine monitors', parent_id: @category_12.id).first_or_create #Machine monitors
SubEquipment.where(name: 'Machinery mounts', parent_id: @category_12.id).first_or_create #Machinery mounts
SubEquipment.where(name: 'Machinery moving & erecting', parent_id: @category_12.id).first_or_create #Machinery moving & erecting
SubEquipment.where(name: 'Manipulators', parent_id: @category_12.id).first_or_create #Manipulators
SubEquipment.where(name: 'Marking', parent_id: @category_12.id).first_or_create #Marking
SubEquipment.where(name: 'Mining equipment', parent_id: @category_12.id).first_or_create #Mining equipment
SubEquipment.where(name: 'Optical sensing/gauging systems', parent_id: @category_12.id).first_or_create #Optical sensing/gauging systems
SubEquipment.where(name: 'Panel, roll and linear cutting optimization', parent_id: @category_12.id).first_or_create #Panel, roll and linear cutting optimization
SubEquipment.where(name: 'Parts identification & marking systems', parent_id: @category_12.id).first_or_create #Parts identification & marking systems
SubEquipment.where(name: 'Payoff reels', parent_id: @category_12.id).first_or_create #Payoff reels
SubEquipment.where(name: 'Portable tools, beveling', parent_id: @category_12.id).first_or_create #Portable tools, beveling
SubEquipment.where(name: 'Portable tools, cutting', parent_id: @category_12.id).first_or_create #Portable tools, cutting
SubEquipment.where(name: 'Portable tools, drilling', parent_id: @category_12.id).first_or_create #Portable tools, drilling
SubEquipment.where(name: 'Portable tools, grinding', parent_id: @category_12.id).first_or_create #Portable tools, grinding
SubEquipment.where(name: 'Portable tools, punching', parent_id: @category_12.id).first_or_create #Portable tools, punching
SubEquipment.where(name: 'Programmable controls & switches', parent_id: @category_12.id).first_or_create #Programmable controls & switches
SubEquipment.where(name: 'Proximity switches', parent_id: @category_12.id).first_or_create #Proximity switches
SubEquipment.where(name: 'Pulley machines', parent_id: @category_12.id).first_or_create #Pulley machines
SubEquipment.where(name: 'Rectifiers', parent_id: @category_12.id).first_or_create #Rectifiers
SubEquipment.where(name: 'Recycling equipment', parent_id: @category_12.id).first_or_create #Recycling equipment
SubEquipment.where(name: 'Riveting', parent_id: @category_12.id).first_or_create #Riveting
SubEquipment.where(name: 'Runout tables', parent_id: @category_12.id).first_or_create #Runout tables
SubEquipment.where(name: 'Scrap choppers', parent_id: @category_12.id).first_or_create #Scrap choppers
SubEquipment.where(name: 'Scrap processing equipment', parent_id: @category_12.id).first_or_create #Scrap processing equipment
SubEquipment.where(name: 'Sensors, color', parent_id: @category_12.id).first_or_create #Sensors, color
SubEquipment.where(name: 'Sensors, load', parent_id: @category_12.id).first_or_create #Sensors, load
SubEquipment.where(name: 'Sensors, noncontact', parent_id: @category_12.id).first_or_create #Sensors, noncontact
SubEquipment.where(name: 'Servo feeds', parent_id: @category_12.id).first_or_create #Servo feeds
SubEquipment.where(name: 'Sheeting lines', parent_id: @category_12.id).first_or_create #Sheeting lines
SubEquipment.where(name: 'Slide forming & spring machines', parent_id: @category_12.id).first_or_create #Slide forming & spring machines
SubEquipment.where(name: 'Spring forming machines', parent_id: @category_12.id).first_or_create #Spring forming machines
SubEquipment.where(name: 'Stems, extrusion', parent_id: @category_12.id).first_or_create #Stems, extrusion
SubEquipment.where(name: 'Straighteners, tube & bar', parent_id: @category_12.id).first_or_create #Straighteners, tube & bar
SubEquipment.where(name: 'Stretchers, extrusion', parent_id: @category_12.id).first_or_create #Stretchers, extrusion
SubEquipment.where(name: 'Swaging machines', parent_id: @category_12.id).first_or_create #Swaging machines
SubEquipment.where(name: 'Thermocouples', parent_id: @category_12.id).first_or_create #Thermocouples
SubEquipment.where(name: 'Transformers', parent_id: @category_12.id).first_or_create #Transformers
SubEquipment.where(name: 'Trim handling systems', parent_id: @category_12.id).first_or_create #Trim handling systems
SubEquipment.where(name: 'Upsetters', parent_id: @category_12.id).first_or_create #Upsetters
SubEquipment.where(name: 'Used equipment', parent_id: @category_12.id).first_or_create #Used equipment
SubEquipment.where(name: 'Valves, proportional', parent_id: @category_12.id).first_or_create #Valves, proportional
SubEquipment.where(name: 'Vision systems', parent_id: @category_12.id).first_or_create #Vision systems
SubEquipment.where(name: 'Washers', parent_id: @category_12.id).first_or_create #Washers
SubEquipment.where(name: 'Waste treatment systems', parent_id: @category_12.id).first_or_create #Waste treatment systems
SubEquipment.where(name: 'Winders, traverse', parent_id: @category_12.id).first_or_create #Winders, traverse
SubEquipment.where(name: 'Wire forming machinery', parent_id: @category_12.id).first_or_create #Wire forming machinery

puts 'Create Material Categories'

puts 'Proprietary metals and other alloys'
@category_13 = Material.where(name: 'Proprietary metals and other alloys').first_or_create
#Material.where(name: 'Bar & rod, exotic alloys').first_or_create
#Material.where(name: 'Bonderized').first_or_create #Bonderized
#Material.where(name: 'Cobalt').first_or_create #Cobalt
#Material.where(name: 'Galvalume').first_or_create #Galvalume
#Material.where(name: 'Hastelloy').first_or_create #Hastelloy
#Material.where(name: 'Inconel').first_or_create #Inconel
#Material.where(name: 'Low-melt alloys').first_or_create #Low-melt alloys
#Material.where(name: 'Plate, alloy steel').first_or_create #Plate, alloy steel
#Material.where(name: 'Plate, exotic alloys').first_or_create #Plate, exotic alloys
#Material.where(name: 'Sheet & coil, exotic alloys').first_or_create #Sheet & coil, exotic alloys
#Material.where(name: 'Strip, exotic alloys').first_or_create #Strip, exotic alloys
#Material.where(name: 'Tube & pipe, alloy').first_or_create #Tube & pipe, alloy
#Material.where(name: 'Tube & pipe, chrome/moly').first_or_create #Tube & pipe, chrome/moly
#Material.where(name: 'Tube & pipe, exotic alloys').first_or_create #Tube & pipe, exotic alloys

# Aluminum
#Material.where(name: 'Bar & rod').first_or_create #Bar & rod
#Material.where(name: 'Bar & rod, aluminum alloys').first_or_create #Bar & rod, aluminum alloys
#Material.where(name: 'Bar & rod, extruded').first_or_create #Bar & rod, extruded
#Material.where(name: 'Casting alloys').first_or_create #Casting alloys
#Material.where(name: 'Coiled sheet').first_or_create #Coiled sheet
#Material.where(name: 'Filters').first_or_create #Filters
#Material.where(name: 'Ingot').first_or_create #Ingot
#Material.where(name: 'Plate').first_or_create #Plate
#Material.where(name: 'Plate, aluminum alloys').first_or_create #Plate, aluminum alloys
#Material.where(name: 'Sheet & coil').first_or_create #Sheet & coil
#Material.where(name: 'Sheet & coil, aluminum alloys').first_or_create #Sheet & coil, aluminum alloys
#Material.where(name: 'Strip').first_or_create #Strip
#Material.where(name: 'Strip, aluminum alloys').first_or_create #Strip, aluminum alloys
#Material.where(name: 'Tooling plate').first_or_create #Tooling plate
#Material.where(name: 'Tube & pipe').first_or_create #Tube & pipe
#Material.where(name: 'Tube & pipe, aluminum alloys').first_or_create #Tube & pipe, aluminum alloys

# Brass
#Material.where(name: 'Bar & rod').first_or_create #Bar & rod
#Material.where(name: 'Plate').first_or_create #Plate
#Material.where(name: 'Sheet & coil').first_or_create #Sheet & coil
#Material.where(name: 'Strip').first_or_create #Strip
#Material.where(name: 'Tube & pipe').first_or_create #Tube & pipe

# Bronze
#Material.where(name: 'Bar & rod').first_or_create #Bar & rod
#Material.where(name: 'Bearing bronze').first_or_create #Bearing bronze
#Material.where(name: 'Plate').first_or_create #Plate
#Material.where(name: 'Sheet & coil').first_or_create #Sheet & coil
#Material.where(name: 'Strip').first_or_create #Strip
#Material.where(name: 'Tube & pipe').first_or_create #Tube & pipe
#Material.where(name: 'Bar & rod').first_or_create #Bar & rod
#Material.where(name: 'Bar & rod, beryllium copper').first_or_create #Bar & rod, beryllium copper
#Material.where(name: 'Bar & rod, copper alloys').first_or_create #Bar & rod, copper alloys
#Material.where(name: 'Bar and rod').first_or_create #Bar and rod
#Material.where(name: 'Plate').first_or_create #Plate
#Material.where(name: 'Plate, beryllium copper').first_or_create #Plate, beryllium copper
#Material.where(name: 'Plate, copper alloys').first_or_create #Plate, copper alloys
#Material.where(name: 'Sheet & coil').first_or_create #Sheet & coil
#Material.where(name: 'Sheet & coil, beryllium copper').first_or_create #Sheet & coil, beryllium copper
#Material.where(name: 'Sheet & coil, copper alloys').first_or_create #Sheet & coil, copper alloys
#Material.where(name: 'Strip').first_or_create #Strip
#Material.where(name: 'Strip, beryllium copper').first_or_create #Strip, beryllium copper
#Material.where(name: 'Strip, copper alloys').first_or_create #Strip, copper alloys
#Material.where(name: 'Tube & pipe').first_or_create #Tube & pipe
#Material.where(name: 'Tube & pipe, beryllium copper').first_or_create #Tube & pipe, beryllium copper
#Material.where(name: 'Tube & pipe, copper alloys').first_or_create #Tube & pipe, copper alloys
#Material.where(name: 'Wire').first_or_create #Wire
#Material.where(name: 'Anodes').first_or_create #Anodes
#Material.where(name: 'Casting alloys').first_or_create #Casting alloys
#Material.where(name: 'Tooling plate').first_or_create #Tooling plate
#Material.where(name: 'Bar & rod, nickel & nickel alloys').first_or_create #Bar & rod, nickel & nickel alloys
#Material.where(name: 'Plate').first_or_create	 #Plate
#Material.where(name: 'Plate, nickel alloys').first_or_create	 #Plate, nickel alloys
#Material.where(name: 'Sheet & coil').first_or_create	 #Sheet & coil
#Material.where(name: 'Sheet & coil, nickel alloys').first_or_create	 #Sheet & coil, nickel alloys
#Material.where(name: 'Strip').first_or_create	 #Strip
#Material.where(name: 'Strip, nickel alloys').first_or_create	 #Strip, nickel alloys
#Material.where(name: 'Tube & pipe').first_or_create	 #Tube & pipe
#Material.where(name: 'Tube & pipe, nickel alloy').first_or_create	 #Tube & pipe, nickel alloy
#Material.where(name: 'Bar & rod').first_or_create	 #Bar & rod
#Material.where(name: 'Bar & rod, cold finished').first_or_create	 #Bar & rod, cold finished
#Material.where(name: 'Bar & rod, cold rolled').first_or_create	 #Bar & rod, cold rolled
#Material.where(name: 'Bar & rod, hot rolled').first_or_create	 #Bar & rod, hot rolled
#Material.where(name: 'Bar & rod, stainless steel').first_or_create	 #Bar & rod, stainless steel
#Material.where(name: 'Bar, cold finished').first_or_create	 #Bar, cold finished
#Material.where(name: 'Bar, hot rolled').first_or_create #Bar, hot rolled
#Material.where(name: 'Cold rolled').first_or_create #Cold rolled
#Material.where(name: 'Die steels').first_or_create #Die steels
#Material.where(name: 'EPS (eco pickled surface)').first_or_create #EPS (eco pickled surface)
#Material.where(name: 'Galvanized').first_or_create #Galvanized
#Material.where(name: 'Galvannealed').first_or_create #Galvannealed
#Material.where(name: 'Hot rolled').first_or_create #Hot rolled
#Material.where(name: 'Hot rolled pickled & oiled').first_or_create #Hot rolled pickled & oiled
#Material.where(name: 'Plate').first_or_create #Plate
#Material.where(name: 'Plate, carbon steel').first_or_create #Plate, carbon steel
#Material.where(name: 'Plate, cold rolled').first_or_create #Plate, cold rolled
#Material.where(name: 'Plate, hot rolled').first_or_create #Plate, hot rolled
#Material.where(name: 'Plate, stainless steel').first_or_create #Plate, stainless steel
#Material.where(name: 'Rebar/mesh').first_or_create #Rebar/mesh
#Material.where(name: 'SCS (smooth clean surface)').first_or_create #SCS (smooth clean surface)
#Material.where(name: 'Sheet & coil').first_or_create #Sheet & coil
#Material.where(name: 'Sheet & coil, cold rolled').first_or_create #Sheet & coil, cold rolled
#Material.where(name: 'Sheet & coil, hot rolled').first_or_create #Sheet & coil, hot rolled
#Material.where(name: 'Sheet & coil, stainless steel').first_or_create #Sheet & coil, stainless steel
#Material.where(name: 'Sheet and coil, galvanized').first_or_create #Sheet and coil, galvanized
#Material.where(name: 'Squares, cold roll formed').first_or_create #Squares, cold roll formed
#Material.where(name: 'Strip').first_or_create #Strip
#Material.where(name: 'Strip, cold rolled').first_or_create #Strip, cold rolled
#Material.where(name: 'Strip, hot rolled').first_or_create #Strip, hot rolled
#Material.where(name: 'Strip, stainless steel').first_or_create #Strip, stainless steel
#Material.where(name: 'Tool steel').first_or_create #Tool steel
#Material.where(name: 'Tube & pipe').first_or_create #Tube & pipe
#Material.where(name: 'Tube & pipe, carbon').first_or_create #Tube & pipe, carbon
#Material.where(name: 'Tube & pipe, cold rolled').first_or_create #Tube & pipe, cold rolled
#Material.where(name: 'Tube & pipe, hot rolled').first_or_create #Tube & pipe, hot rolled
#Material.where(name: 'Tube & pipe, stainless steel').first_or_create #Tube & pipe, stainless steel
#Material.where(name: 'Tubes, cold roll formed').first_or_create #Tubes, cold roll formed
#Material.where(name: 'Weathering grades').first_or_create #Weathering grades
#Material.where(name: 'Bar & rod').first_or_create #Bar & rod
#Material.where(name: 'Forging').first_or_create #Forging
#Material.where(name: 'Plate').first_or_create #Plate
#Material.where(name: 'Sheets').first_or_create #Sheets
#Material.where(name: 'Strip').first_or_create #Strip
#Material.where(name: 'Tube & pipe').first_or_create #Tube & pipe
#Material.where(name: 'Anodes').first_or_create #Anodes
#Material.where(name: 'Bar & rod').first_or_create #Bar & rod
#Material.where(name: 'Ingot').first_or_create #Ingot
#Material.where(name: 'Strip').first_or_create #Strip
#Material.where(name: 'Zinc carbon alloys').first_or_create #Zinc carbon alloys
#Material.where(name: 'Clad metals').first_or_create #Clad metals
#Material.where(name: 'Coatings, ceramic').first_or_create #Coatings, ceramic
#Material.where(name: 'Coatings, conversion').first_or_create #Coatings, conversion
#Material.where(name: 'Coatings, enamel').first_or_create #Coatings, enamel
#Material.where(name: 'Coatings, extrusion').first_or_create #Coatings, extrusion
#Material.where(name: 'Coatings, other').first_or_create #Coatings, other
#Material.where(name: 'Coatings, physical vapor deposition').first_or_create #Coatings, physical vapor deposition
#Material.where(name: 'Coatings, powder').first_or_create #Coatings, powder
#Material.where(name: 'Coatings, ultraviolet').first_or_create #Coatings, ultraviolet
#Material.where(name: 'Coatings, water-based').first_or_create #Coatings, water-based
#Material.where(name: 'Coil coating finishes').first_or_create #Coil coating finishes
#Material.where(name: 'Laminated panels, aluminum & stainless').first_or_create #Laminated panels, aluminum & stainless
#Material.where(name: 'Laminates, vinyl/metal').first_or_create #Laminates, vinyl/metal
#Material.where(name: 'Laminating films, decorative, appliances').first_or_create #Laminating films, decorative, appliances
#Material.where(name: 'Powder metal parts').first_or_create #Powder metal parts
#Material.where(name: 'Preanodized sheet/coil').first_or_create #Preanodized sheet/coil
#Material.where(name: 'Prefinished metals').first_or_create #Prefinished metals
#Material.where(name: 'Prepainted metals').first_or_create #Prepainted metals
#Material.where(name: 'Preplated metals').first_or_create #Preplated metals
#Material.where(name: 'Sheet & coil, aluminized').first_or_create #Sheet & coil, aluminized
#Material.where(name: 'Specialty coated metals').first_or_create #Specialty coated metals
#Material.where(name: 'Tool coatings').first_or_create #Tool coatings
#Material.where(name: 'Angles/channels/profiles').first_or_create #Angles/channels/profiles
#Material.where(name: 'Bar, forged').first_or_create #Bar, forged
#Material.where(name: 'Billet').first_or_create #Billet
#Material.where(name: 'Blocks, forged').first_or_create #Blocks, forged
#Material.where(name: 'Containers').first_or_create #Containers
#Material.where(name: 'Cylinders, forged').first_or_create #Cylinders, forged
#Material.where(name: 'Expanded metals').first_or_create #Expanded metals
#Material.where(name: 'Foil').first_or_create #Foil
#Material.where(name: 'Frames').first_or_create #Frames
#Material.where(name: 'Gratings').first_or_create #Gratings
#Material.where(name: 'High chairs').first_or_create #High chairs
#Material.where(name: 'Insulated panels').first_or_create #Insulated panels
#Material.where(name: 'Metal building systems').first_or_create #Metal building systems
#Material.where(name: 'Perforated metals').first_or_create #Perforated metals
#Material.where(name: 'Prepolished metals').first_or_create #Prepolished metals
#Material.where(name: 'Rings, forged').first_or_create #Rings, forged
#Material.where(name: 'Safety gratings').first_or_create #Safety gratings
#Material.where(name: 'Screw machine products').first_or_create #Screw machine products
#Material.where(name: 'Shafts, forged').first_or_create #Shafts, forged
#Material.where(name: 'Slab bolster').first_or_create #Slab bolster
#Material.where(name: 'Sound dampening materials').first_or_create #Sound dampening materials
#Material.where(name: 'Strapping').first_or_create #Strapping
#Material.where(name: 'Structural reinforcement material').first_or_create #Structural reinforcement material
#Material.where(name: 'Textured metals').first_or_create #Textured metals
#Material.where(name: 'Thermal barrier systems').first_or_create #Thermal barrier systems
#Material.where(name: 'Thermal insulation').first_or_create #Thermal insulation
#Material.where(name: 'Tie wire').first_or_create #Tie wire
#Material.where(name: 'Tube & pipe, corrosion resistant').first_or_create #Tube & pipe, corrosion resistant
#Material.where(name: 'Tube & pipe, high-temperature').first_or_create #Tube & pipe, high-temperature
#Material.where(name: 'Tubing, DOM').first_or_create #Tubing, DOM
#Material.where(name: 'Tubing, lock seam/open seam').first_or_create #Tubing, lock seam/open seam
#Material.where(name: 'Wire cloth').first_or_create #Wire cloth
#Material.where(name: 'Wire, other').first_or_create #Wire, other
#Material.where(name: 'Wrought mill products').first_or_create #Wrought mill products
#Material.where(name: 'Z-sections').first_or_create #Z-sections
#Material.where(name: 'Composites').first_or_create #Composites
#Material.where(name: 'Graphite').first_or_create #Graphite
#Material.where(name: 'Industrial felt & textiles').first_or_create #Industrial felt & textiles
#Material.where(name: 'Paint').first_or_create #Paint
#Material.where(name: 'Plastics, engineered').first_or_create #Plastics, engineered
#Material.where(name: 'Protective adhesive masking').first_or_create #Protective adhesive masking
#Material.where(name: 'Refractory products').first_or_create #Refractory products
#Material.where(name: 'Stretch film').first_or_create #Stretch film
#Material.where(name: 'Abrasives').first_or_create #Abrasives
#Material.where(name: 'Adhesives').first_or_create #Adhesives
#Material.where(name: 'Biocides').first_or_create #Biocides
#Material.where(name: 'Brazing/soldering, fillers & fluxes').first_or_create #Brazing/soldering, fillers & fluxes
#Material.where(name: 'Carbides & ceramics').first_or_create #Carbides & ceramics
#Material.where(name: 'Carbon black').first_or_create #Carbon black
#Material.where(name: 'Cleaners, metals').first_or_create #Cleaners, metals
#Material.where(name: 'Cleaning, solvents/degreasing equipment agents').first_or_create #Cleaning, solvents/degreasing equipment agents
#Material.where(name: 'Clutches and brakes').first_or_create #Clutches and brakes
#Material.where(name: 'Compounds, cutting & drawing').first_or_create #Compounds, cutting & drawing
#Material.where(name: 'Degreasers').first_or_create #Degreasers
#Material.where(name: 'Environmental & industrial hygiene products').first_or_create #Environmental & industrial hygiene products
#Material.where(name: 'Etchants').first_or_create #Etchants
#Material.where(name: 'Filter media, air & liquid').first_or_create #Filter media, air & liquid
#Material.where(name: 'Finishes & coatings').first_or_create #Finishes & coatings
#Material.where(name: 'Fittings').first_or_create #Fittings
#Material.where(name: 'Fluids, cutting').first_or_create #Fluids, cutting
#Material.where(name: 'Fluids, drawing/stamping').first_or_create #Fluids, drawing/stamping
#Material.where(name: 'Fluids, equipment lubrication').first_or_create #Fluids, equipment lubrication
#Material.where(name: 'Gases, nitrogen regeneration').first_or_create #Gases, nitrogen regeneration
#Material.where(name: 'Hydraulic fluids').first_or_create #Hydraulic fluids
#Material.where(name: 'Labeling').first_or_create #Labeling
#Material.where(name: 'Laser assist gases').first_or_create #Laser assist gases
#Material.where(name: 'Lubricant, applicators/systems').first_or_create #Lubricant, applicators/systems
#Material.where(name: 'Lubricants').first_or_create #Lubricants
#Material.where(name: 'Lubricants, forming').first_or_create #Lubricants, forming
#Material.where(name: 'Lubricants, recycling').first_or_create #Lubricants, recycling
#Material.where(name: 'Packaging materials').first_or_create #Packaging materials
#Material.where(name: 'Permanent bond adhesive tapes').first_or_create #Permanent bond adhesive tapes
#Material.where(name: 'Polishing, buffing compounds').first_or_create #Polishing, buffing compounds
#Material.where(name: 'Pollution control catalysts').first_or_create #Pollution control catalysts
#Material.where(name: 'Pretreatment chemicals').first_or_create #Pretreatment chemicals
#Material.where(name: 'Release agents').first_or_create #Release agents
#Material.where(name: 'Resins').first_or_create #Resins
#Material.where(name: 'Rings').first_or_create #Rings
#Material.where(name: 'Rolls, embossing').first_or_create #Rolls, embossing
#Material.where(name: 'Rubber products').first_or_create #Rubber products
#Material.where(name: 'Rust inhibitors').first_or_create #Rust inhibitors
#Material.where(name: 'Strip coil separators').first_or_create #Strip coil separators

puts 'Create Service Categories'
#Service.where(name: 'Bar & rod, exotic alloys').first_or_create
#Service.where(name: 'Consulting, business').first_or_create #Consulting, business
#Service.where(name: 'Consulting, recruitment').first_or_create #Consulting, recruitment
#Service.where(name: 'Data collection/market research').first_or_create #Data collection/market research
#Service.where(name: 'Depot stock availability').first_or_create #Depot stock availability
#Service.where(name: 'Distribution').first_or_create #Distribution
#Service.where(name: 'E-commerce').first_or_create #E-commerce
#Service.where(name: 'Economic analysis').first_or_create #Economic analysis
#Service.where(name: 'Enterprise resource planning software (ERP)').first_or_create #Enterprise resource planning software (ERP)
#Service.where(name: 'Financial services').first_or_create #Financial services
#Service.where(name: 'Freight management').first_or_create #Freight management
#Service.where(name: 'Industrial auctioneer').first_or_create #Industrial auctioneer
#Service.where(name: 'Industrial equipment appraisals & inspections').first_or_create #Industrial equipment appraisals & inspections
#Service.where(name: 'Insurance, risk management and loss prevention').first_or_create #Insurance, risk management and loss prevention
#Service.where(name: 'Investment banking').first_or_create #Investment banking
#Service.where(name: 'Material execution system software (MES)').first_or_create #Material execution system software (MES)
#Service.where(name: 'Material resource planning software (MRP)').first_or_create #Material resource planning software (MRP)
#Service.where(name: 'Mergers & acquisitions').first_or_create #Mergers & acquisitions
#Service.where(name: 'Real estate leasing').first_or_create #Real estate leasing
#Service.where(name: 'Software development').first_or_create #Software development
#Service.where(name: 'Supply chain management').first_or_create #Supply chain management
#Service.where(name: 'Systems integrators').first_or_create #Systems integrators
#Service.where(name: 'Training').first_or_create #Training
#Service.where(name: 'CNC programming').first_or_create #CNC programming
#Service.where(name: 'Cutting').first_or_create #Cutting
#Service.where(name: 'Die & fixtures').first_or_create #Die & fixtures
#Service.where(name: 'Fabricating').first_or_create #Fabricating
#Service.where(name: 'Finishing').first_or_create #Finishing
#Service.where(name: 'Machine rebuilding').first_or_create #Machine rebuilding
#Service.where(name: 'Roll forming').first_or_create #Roll forming
#Service.where(name: 'Stamping/drawing').first_or_create #Stamping/drawing
#Service.where(name: 'Welding').first_or_create #Welding
#Service.where(name: 'Aluminum').first_or_create #Aluminum
#Service.where(name: 'Copper').first_or_create #Copper
#Service.where(name: 'Impact').first_or_create #Impact
#Service.where(name: 'Magnesium').first_or_create #Magnesium
#Service.where(name: 'Steel').first_or_create #Steel
#Service.where(name: 'Vinyl').first_or_create #Vinyl
#Service.where(name: 'Clutch/brake controls').first_or_create #Clutch/brake controls
#Service.where(name: 'Computerized maintenance management software (CMMS)').first_or_create #Computerized maintenance management software (CMMS)
#Service.where(name: 'Press rebuilding').first_or_create #Press rebuilding
#Service.where(name: 'Printed circuit boards repair').first_or_create #Printed circuit boards repair
#Service.where(name: 'Rebuild').first_or_create #Rebuild
#Service.where(name: 'Retrofit').first_or_create #Retrofit
#Service.where(name: 'Additives & testers').first_or_create #Additives & testers
#Service.where(name: 'Calibrating, noncontact thickness gauges').first_or_create #Calibrating, noncontact thickness gauges
#Service.where(name: 'Charpy impact testing').first_or_create #Charpy impact testing
#Service.where(name: 'Indoor air quality testing').first_or_create #Indoor air quality testing
#Service.where(name: 'Laboratory services, chemical & spectrographic').first_or_create #Laboratory services, chemical & spectrographic
#Service.where(name: 'Laboratory services, metallurgical & physical').first_or_create #Laboratory services, metallurgical & physical
#Service.where(name: 'Nondestructive testing').first_or_create #Nondestructive testing
#Service.where(name: 'Quality inspection').first_or_create #Quality inspection
#Service.where(name: 'Signature analysis').first_or_create #Signature analysis
#Service.where(name: 'Anodizing').first_or_create #Anodizing
#Service.where(name: 'Blanchard grinding').first_or_create #Blanchard grinding
#Service.where(name: 'Cleaning, paint stripping').first_or_create #Cleaning, paint stripping
#Service.where(name: 'Coil coating').first_or_create #Coil coating
#Service.where(name: 'Deburring').first_or_create #Deburring
#Service.where(name: 'Edge conditioning').first_or_create #Edge conditioning
#Service.where(name: 'Edging, skiving').first_or_create #Edging, skiving
#Service.where(name: 'Electrogalvanizing').first_or_create #Electrogalvanizing
#Service.where(name: 'Electropolishing').first_or_create #Electropolishing
#Service.where(name: 'Finishing').first_or_create #Finishing
#Service.where(name: 'Galvanizing').first_or_create #Galvanizing
#Service.where(name: 'Gauering flat bars').first_or_create #Gauering flat bars
#Service.where(name: 'Metal finishing').first_or_create #Metal finishing
#Service.where(name: 'Painting').first_or_create #Painting
#Service.where(name: 'Pickling').first_or_create #Pickling
#Service.where(name: 'Plating').first_or_create #Plating
#Service.where(name: 'Polishing').first_or_create #Polishing
#Service.where(name: 'Powder coating').first_or_create #Powder coating
#Service.where(name: 'Sandblasting').first_or_create #Sandblasting
#Service.where(name: 'Shot blasting').first_or_create #Shot blasting
#Service.where(name: 'Surface grinding').first_or_create #Surface grinding
#Service.where(name: 'Thermal spray coating').first_or_create #Thermal spray coating
#Service.where(name: 'Annealing').first_or_create #Annealing
#Service.where(name: 'Blanking and sheeting').first_or_create #Blanking and sheeting
#Service.where(name: 'Cambering').first_or_create #Cambering
#Service.where(name: 'Casting, copper-based').first_or_create #Casting, copper-based
#Service.where(name: 'Casting, die').first_or_create #Casting, die
#Service.where(name: 'Casting, die, aluminum').first_or_create #Casting, die, aluminum
#Service.where(name: 'Casting, die, magnesium').first_or_create #Casting, die, magnesium
#Service.where(name: 'Casting, die, zinc').first_or_create #Casting, die, zinc
#Service.where(name: 'Casting, investment').first_or_create #Casting, investment
#Service.where(name: 'Casting, permanent mold').first_or_create #Casting, permanent mold
#Service.where(name: 'Casting, titanium').first_or_create #Casting, titanium
#Service.where(name: 'Coil processing').first_or_create #Coil processing
#Service.where(name: 'Cold drawing').first_or_create #Cold drawing
#Service.where(name: 'Cold finishing').first_or_create #Cold finishing
#Service.where(name: 'Cold rolling').first_or_create #Cold rolling
#Service.where(name: 'Custom roll forming').first_or_create #Custom roll forming
#Service.where(name: 'Custom rolling').first_or_create #Custom rolling
#Service.where(name: 'Cut-to-length').first_or_create #Cut-to-length
#Service.where(name: 'Drawforming').first_or_create #Drawforming
#Service.where(name: 'Edge trimming').first_or_create #Edge trimming
#Service.where(name: 'Embossing').first_or_create #Embossing
#Service.where(name: 'EPS (eco pickled surface) processing').first_or_create #EPS (eco pickled surface) processing
#Service.where(name: 'Fabricating').first_or_create #Fabricating
#Service.where(name: 'Fineblanking').first_or_create #Fineblanking
#Service.where(name: 'Flame cutting').first_or_create #Flame cutting
#Service.where(name: 'Flattening').first_or_create #Flattening
#Service.where(name: 'Forging').first_or_create #Forging
#Service.where(name: 'Grinding').first_or_create #Grinding
#Service.where(name: 'Heat treating').first_or_create #Heat treating
#Service.where(name: 'Hydroforming').first_or_create #Hydroforming
#Service.where(name: 'Impregnation').first_or_create #Impregnation
#Service.where(name: 'Ion nitriding').first_or_create #Ion nitriding
#Service.where(name: 'Laser cutting').first_or_create #Laser cutting
#Service.where(name: 'Leveling').first_or_create #Leveling
#Service.where(name: 'Perforation').first_or_create #Perforation
#Service.where(name: 'Planer milling').first_or_create #Planer milling
#Service.where(name: 'Plasma cutting').first_or_create #Plasma cutting
#Service.where(name: 'Plate cutting').first_or_create #Plate cutting
#Service.where(name: 'Plate forming & rolling').first_or_create #Plate forming & rolling
#Service.where(name: 'Plate, fabricating').first_or_create #Plate, fabricating
#Service.where(name: 'Punching, drilling, notching').first_or_create #Punching, drilling, notching
#Service.where(name: 'Rebar, fabricating').first_or_create #Rebar, fabricating
#Service.where(name: 'Roll forming').first_or_create #Roll forming
#Service.where(name: 'Roll texturing').first_or_create #Roll texturing
#Service.where(name: 'Roller leveling').first_or_create #Roller leveling
#Service.where(name: 'Rolling').first_or_create #Rolling
#Service.where(name: 'Rolls, surface conditioning').first_or_create #Rolls, surface conditioning
#Service.where(name: 'Sawing, band').first_or_create #Sawing, band
#Service.where(name: 'Sawing, circle/ring').first_or_create #Sawing, circle/ring
#Service.where(name: 'Sawing, miter').first_or_create #Sawing, miter
#Service.where(name: 'Sawing, other').first_or_create #Sawing, other
#Service.where(name: 'SCS (surface clean steel) processing').first_or_create #SCS (surface clean steel) processing
#Service.where(name: 'Shearing').first_or_create #Shearing
#Service.where(name: 'Sheet, fabricating').first_or_create #Sheet, fabricating
#Service.where(name: 'Slitting').first_or_create #Slitting
#Service.where(name: 'Stamping, custom').first_or_create #Stamping, custom
#Service.where(name: 'Stamping, other').first_or_create #Stamping, other
#Service.where(name: 'Stress relieving').first_or_create #Stress relieving
#Service.where(name: 'Temper rolling').first_or_create #Temper rolling
#Service.where(name: 'Tempering').first_or_create #Tempering
#Service.where(name: 'Tension leveling').first_or_create #Tension leveling
#Service.where(name: 'Toll processing').first_or_create #Toll processing
#Service.where(name: 'Traverse winding').first_or_create #Traverse winding
#Service.where(name: 'Trepanning').first_or_create #Trepanning
#Service.where(name: 'Tube & pipe, fabricating').first_or_create #Tube & pipe, fabricating
#Service.where(name: 'Tube bending').first_or_create #Tube bending
#Service.where(name: 'Tube deburring').first_or_create #Tube deburring
#Service.where(name: 'Tube drilling').first_or_create #Tube drilling
#Service.where(name: 'Tube endfinishing').first_or_create #Tube endfinishing
#Service.where(name: 'Tube flanging').first_or_create #Tube flanging
#Service.where(name: 'Tube flaring').first_or_create #Tube flaring
#Service.where(name: 'Tube forming').first_or_create #Tube forming
#Service.where(name: 'Tube notching').first_or_create #Tube notching
#Service.where(name: 'Tube punching').first_or_create #Tube punching
#Service.where(name: 'Tube rolling').first_or_create #Tube rolling
#Service.where(name: 'Waterjet cutting').first_or_create #Waterjet cutting
#Service.where(name: 'Welding').first_or_create #Welding
#Service.where(name: 'Light assembly').first_or_create #Light assembly
#Service.where(name: 'Rapid prototyping').first_or_create #Rapid prototyping
#Service.where(name: 'Steel bar labels').first_or_create #Steel bar labels
#Service.where(name: 'Steel coil tags').first_or_create #Steel coil tags
#Service.where(name: 'Steel tube labels').first_or_create #Steel tube labels
#Service.where(name: 'Steel wire tags').first_or_create #Steel wire tags
#Service.where(name: 'Air purification services').first_or_create #Air purification services
#Service.where(name: 'Custom equipment').first_or_create #Custom equipment
#Service.where(name: 'Custom molding').first_or_create #Custom molding
#Service.where(name: 'Design/construction').first_or_create #Design/construction
#Service.where(name: 'Die protection systems').first_or_create #Die protection systems
#Service.where(name: 'Engineering/analysis').first_or_create #Engineering/analysis
#Service.where(name: 'Industrial hygiene monitoring').first_or_create #Industrial hygiene monitoring
#Service.where(name: 'Installation').first_or_create #Installation
#Service.where(name: 'Labeling').first_or_create #Labeling
#Service.where(name: 'Machine foundations').first_or_create #Machine foundations
#Service.where(name: 'Material storage').first_or_create #Material storage
#Service.where(name: 'Materials standards and specifications').first_or_create #Materials standards and specifications
#Service.where(name: 'Molding, polyurethane').first_or_create #Molding, polyurethane
#Service.where(name: 'Press pits').first_or_create #Press pits
#Service.where(name: 'Scrap buying').first_or_create #Scrap buying
