puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.create(name: role)
  puts 'role: ' << role
end

puts 'DEFAULT USERS'
# User.destroy_all
# user = User.create(email: ENV['ADMIN_EMAIL'].dup, password: ENV['ADMIN_PASSWORD'].dup, password_confirmation: ENV['ADMIN_PASSWORD'].dup)
# puts 'user: ' << user.email
# user.confirm!
# user.add_role :admin

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

puts 'Adding Safety Equipment'
@category_13 = Equipment.where(name: 'Safety Equipment').first_or_create
SubEquipment.where(name: 'Air purifying systems', parent_id: @category_13.id).first_or_create #Air purifying systems
SubEquipment.where(name: 'Control systems, pollution', parent_id: @category_13.id).first_or_create #Control systems, pollution
SubEquipment.where(name: 'Dust collectors', parent_id: @category_13.id).first_or_create #Dust collectors
SubEquipment.where(name: 'Pollution control systems', parent_id: @category_13.id).first_or_create #Pollution control systems
SubEquipment.where(name: 'Safety equipment, apparel', parent_id: @category_13.id).first_or_create #Safety equipment, apparel
SubEquipment.where(name: 'Safety equipment, barriers & machine guards', parent_id: @category_13.id).first_or_create #Safety equipment, barriers & machine guards
SubEquipment.where(name: 'Safety equipment, brake monitors', parent_id: @category_13.id).first_or_create #Safety equipment, brake monitors
SubEquipment.where(name: 'Safety equipment, clutches & brakes', parent_id: @category_13.id).first_or_create #Safety equipment, clutches & brakes
SubEquipment.where(name: 'Safety equipment, floor mats', parent_id: @category_13.id).first_or_create #Safety equipment, floor mats
SubEquipment.where(name: 'Safety equipment, light curtains', parent_id: @category_13.id).first_or_create #Safety equipment, light curtains
SubEquipment.where(name: 'Safety equipment, lockout/tagout devices', parent_id: @category_13.id).first_or_create #Safety equipment, lockout/tagout devices
SubEquipment.where(name: 'Safety equipment, machine guards', parent_id: @category_13.id).first_or_create #Safety equipment, machine guards
SubEquipment.where(name: 'Safety equipment, palm buttons', parent_id: @category_13.id).first_or_create #Safety equipment, palm buttons
SubEquipment.where(name: 'Safety equipment, presence-sensing devices', parent_id: @category_13.id).first_or_create #Safety equipment, presence-sensing devices
SubEquipment.where(name: 'Safety equipment, welding protection', parent_id: @category_13.id).first_or_create #Safety equipment, welding protection

puts 'Adding Sawing and cutting'
@category_14 = Equipment.where(name: 'Sawing and cutting').first_or_create
SubEquipment.where(name: 'Abrasive cutoff machines', parent_id: @category_14.id).first_or_create #Abrasive cutoff machines
SubEquipment.where(name: 'Air knife, drying', parent_id: @category_14.id).first_or_create #Air knife, drying
SubEquipment.where(name: 'Cutoff machines, saws', parent_id: @category_14.id).first_or_create #Cutoff machines, saws
SubEquipment.where(name: 'Cutoff machines, tube & pipe', parent_id: @category_14.id).first_or_create #Cutoff machines, tube & pipe
SubEquipment.where(name: 'Cutting cells & systems', parent_id: @category_14.id).first_or_create #Cutting cells & systems
SubEquipment.where(name: 'Flame cutting equipment', parent_id: @category_14.id).first_or_create #Flame cutting equipment
SubEquipment.where(name: 'Miter cutoff saws, single & double', parent_id: @category_14.id).first_or_create #Miter cutoff saws, single & double
SubEquipment.where(name: 'Notching machines', parent_id: @category_14.id).first_or_create #Notching machines
SubEquipment.where(name: 'Oxy-fuel cutting equipment', parent_id: @category_14.id).first_or_create #Oxy-fuel cutting equipment
SubEquipment.where(name: 'Plasma cutting equipment', parent_id: @category_14.id).first_or_create #Plasma cutting equipment
SubEquipment.where(name: 'Saw blades, all types', parent_id: @category_14.id).first_or_create #Saw blades, all types
SubEquipment.where(name: 'Saws, band', parent_id: @category_14.id).first_or_create #Saws, band
SubEquipment.where(name: 'Saws, bar & billet', parent_id: @category_14.id).first_or_create #Saws, bar & billet
SubEquipment.where(name: 'Saws, circular', parent_id: @category_14.id).first_or_create #Saws, circular
SubEquipment.where(name: 'Saws, circular cutoff (cold)', parent_id: @category_14.id).first_or_create #Saws, circular cutoff (cold)
SubEquipment.where(name: 'Saws, contour', parent_id: @category_14.id).first_or_create #Saws, contour
SubEquipment.where(name: 'Saws, other', parent_id: @category_14.id).first_or_create #Saws, other
SubEquipment.where(name: 'Saws/shears, extrusion', parent_id: @category_14.id).first_or_create #Saws/shears, extrusion
SubEquipment.where(name: 'Shear knives', parent_id: @category_14.id).first_or_create #Shear knives
SubEquipment.where(name: 'Shearing machines', parent_id: @category_14.id).first_or_create #Shearing machines
SubEquipment.where(name: 'Shearing machines, flying', parent_id: @category_14.id).first_or_create #Shearing machines, flying
SubEquipment.where(name: 'Spacers, shear', parent_id: @category_14.id).first_or_create #Spacers, shear
SubEquipment.where(name: 'Waterjet cutting equipment', parent_id: @category_14.id).first_or_create #Waterjet cutting equipment

puts 'Adding Software'
@category_15 = Equipment.where(name: 'Software').first_or_create
SubEquipment.where(name: 'Bending', parent_id: @category_15.id).first_or_create #Bending
SubEquipment.where(name: 'CAD/CAM', parent_id: @category_15.id).first_or_create #CAD/CAM
SubEquipment.where(name: 'ERP/MRP Supply chain management', parent_id: @category_15.id).first_or_create #ERP/MRP Supply chain management
SubEquipment.where(name: 'Job costing & estimating', parent_id: @category_15.id).first_or_create #Job costing & estimating
SubEquipment.where(name: 'NC/CNC programming', parent_id: @category_15.id).first_or_create #NC/CNC programming
SubEquipment.where(name: 'Nesting', parent_id: @category_15.id).first_or_create #Nesting
SubEquipment.where(name: 'Process planning & scheduling', parent_id: @category_15.id).first_or_create #Process planning & scheduling
SubEquipment.where(name: 'Sheet metal layout, flat pattern', parent_id: @category_15.id).first_or_create #Sheet metal layout, flat pattern
SubEquipment.where(name: 'Shop-floor tracking & flow control', parent_id: @category_15.id).first_or_create #Shop-floor tracking & flow control
SubEquipment.where(name: 'Simulation, process modeling', parent_id: @category_15.id).first_or_create #Simulation, process modeling
SubEquipment.where(name: 'Tool management & storage', parent_id: @category_15.id).first_or_create #Tool management & storage

puts 'Adding Tool & die'
@category_16 = Equipment.where(name: 'Tool & die').first_or_create
SubEquipment.where(name: 'Carbide dies', parent_id: @category_16.id).first_or_create #Carbide dies
SubEquipment.where(name: 'Die buttons', parent_id: @category_16.id).first_or_create #Die buttons
SubEquipment.where(name: 'Die carts/lift tables', parent_id: @category_16.id).first_or_create #Die carts/lift tables
SubEquipment.where(name: 'Die changing equipment', parent_id: @category_16.id).first_or_create #Die changing equipment
SubEquipment.where(name: 'Die clamps', parent_id: @category_16.id).first_or_create #Die clamps
SubEquipment.where(name: 'Die cushions', parent_id: @category_16.id).first_or_create #Die cushions
SubEquipment.where(name: 'Die design', parent_id: @category_16.id).first_or_create #Die design
SubEquipment.where(name: 'Die film', parent_id: @category_16.id).first_or_create #Die film
SubEquipment.where(name: 'Die holders', parent_id: @category_16.id).first_or_create #Die holders
SubEquipment.where(name: 'Die inserts', parent_id: @category_16.id).first_or_create #Die inserts
SubEquipment.where(name: 'Die inserts', parent_id: @category_16.id).first_or_create #Die lifters
SubEquipment.where(name: 'Die lubrication systems', parent_id: @category_16.id).first_or_create #Die lubrication systems
SubEquipment.where(name: 'Die pins', parent_id: @category_16.id).first_or_create #Die pins
SubEquipment.where(name: 'Die protection systems', parent_id: @category_16.id).first_or_create #Die protection systems
SubEquipment.where(name: 'Die separators', parent_id: @category_16.id).first_or_create #Die separators
SubEquipment.where(name: 'Die sets & accessories', parent_id: @category_16.id).first_or_create #Die sets & accessories
SubEquipment.where(name: 'Die springs', parent_id: @category_16.id).first_or_create #Die springs
SubEquipment.where(name: 'Die storage & retrieval systems', parent_id: @category_16.id).first_or_create #Die storage & retrieval systems
SubEquipment.where(name: 'Die transfer, handling systems', parent_id: @category_16.id).first_or_create #Die transfer, handling systems
SubEquipment.where(name: 'Dies, blank & form', parent_id: @category_16.id).first_or_create #Dies, blank & form
SubEquipment.where(name: 'Dies, blanking', parent_id: @category_16.id).first_or_create #Dies, blanking
SubEquipment.where(name: 'Dies, drawing/forming', parent_id: @category_16.id).first_or_create #Dies, drawing/forming
SubEquipment.where(name: 'Dies, extrusion', parent_id: @category_16.id).first_or_create #Dies, extrusion
SubEquipment.where(name: 'Dies, permanent mold casting', parent_id: @category_16.id).first_or_create #Dies, permanent mold casting
SubEquipment.where(name: 'Dies, piercing & notching', parent_id: @category_16.id).first_or_create #Dies, piercing & notching
SubEquipment.where(name: 'Dies, progressive', parent_id: @category_16.id).first_or_create #Dies, progressive
SubEquipment.where(name: 'Dies, punch press', parent_id: @category_16.id).first_or_create #Dies, punch press
SubEquipment.where(name: 'Dies, roll forming', parent_id: @category_16.id).first_or_create #Dies, roll forming
SubEquipment.where(name: 'Quick die change systems', parent_id: @category_16.id).first_or_create #Quick die change systems
SubEquipment.where(name: 'Tooling, bending', parent_id: @category_16.id).first_or_create #Tooling, bending
SubEquipment.where(name: 'Tooling, ceramic', parent_id: @category_16.id).first_or_create #Tooling, ceramic
SubEquipment.where(name: 'Tooling, die casting', parent_id: @category_16.id).first_or_create #Tooling, die casting
SubEquipment.where(name: 'Tooling, extrusion', parent_id: @category_16.id).first_or_create #Tooling, extrusion
SubEquipment.where(name: 'Tooling, ironworker', parent_id: @category_16.id).first_or_create #Tooling, ironworker
SubEquipment.where(name: 'Tooling, press brake', parent_id: @category_16.id).first_or_create #Tooling, press brake
SubEquipment.where(name: 'Tooling, presses', parent_id: @category_16.id).first_or_create #Tooling, presses
SubEquipment.where(name: 'Tooling, punch & die sets', parent_id: @category_16.id).first_or_create #Tooling, punch & die sets
SubEquipment.where(name: 'Tooling, roll forming', parent_id: @category_16.id).first_or_create #Tooling, roll forming
SubEquipment.where(name: 'Tooling, short-run', parent_id: @category_16.id).first_or_create #Tooling, short-run
SubEquipment.where(name: 'Tooling, tube & pipe mills', parent_id: @category_16.id).first_or_create #Tooling, tube & pipe mills
SubEquipment.where(name: 'Tooling, tube bending', parent_id: @category_16.id).first_or_create #Tooling, tube bending
SubEquipment.where(name: 'Tooling, turret punch press', parent_id: @category_16.id).first_or_create #Tooling, turret punch press
SubEquipment.where(name: 'Tooling, unitized', parent_id: @category_16.id).first_or_create #Tooling, unitized
SubEquipment.where(name: 'Tooling, urethane', parent_id: @category_16.id).first_or_create #Tooling, urethane
SubEquipment.where(name: 'Tools, carbide cutting', parent_id: @category_16.id).first_or_create #Tools, carbide cutting
SubEquipment.where(name: 'Tube perforating machines', parent_id: @category_16.id).first_or_create #Tube perforating machines
SubEquipment.where(name: 'Tungsten carbide tooling', parent_id: @category_16.id).first_or_create #Tungsten carbide tooling

puts 'Adding Tube & pipe'
@category_17 = Equipment.where(name: 'Tube & pipe').first_or_create
SubEquipment.where(name: 'Cold draw equipment', parent_id: @category_17.id).first_or_create #Cold draw equipment
SubEquipment.where(name: 'Drawbenches', parent_id: @category_17.id).first_or_create #Drawbenches
SubEquipment.where(name: 'Mandrels', parent_id: @category_17.id).first_or_create #Mandrels
SubEquipment.where(name: 'Tube & pipe mills', parent_id: @category_17.id).first_or_create #Tube & pipe mills
SubEquipment.where(name: 'Tube cutting machinery', parent_id: @category_17.id).first_or_create #Tube cutting machinery
SubEquipment.where(name: 'Tube louvers', parent_id: @category_17.id).first_or_create #Tube louvers
SubEquipment.where(name: 'Tube-end forming equipment', parent_id: @category_17.id).first_or_create #Tube-end forming equipment
SubEquipment.where(name: 'Tube/pipe bending machines', parent_id: @category_17.id).first_or_create #Tube/pipe bending machines

puts 'Adding Measurement and quality control'
@category_18 = Equipment.where(name: 'Measurement and quality control').first_or_create
SubEquipment.where(name: 'Automatic inspection systems', parent_id: @category_18.id).first_or_create #Automatic inspection systems
SubEquipment.where(name: 'Coating thickness testers', parent_id: @category_18.id).first_or_create #Coating thickness testers
SubEquipment.where(name: 'Coordinate measuring machines', parent_id: @category_18.id).first_or_create #Coordinate measuring machines
SubEquipment.where(name: 'Gauges, cutoff', parent_id: @category_18.id).first_or_create #Gauges, cutoff
SubEquipment.where(name: 'Gauges, dimensional', parent_id: @category_18.id).first_or_create #Gauges, dimensional
SubEquipment.where(name: 'Gauges, thickness', parent_id: @category_18.id).first_or_create #Gauges, thickness
SubEquipment.where(name: 'Gauges, thickness, noncontact', parent_id: @category_18.id).first_or_create #Gauges, thickness, noncontact
SubEquipment.where(name: 'Gauges, thickness, ultrasonic', parent_id: @category_18.id).first_or_create #Gauges, thickness, ultrasonic
SubEquipment.where(name: 'Hardness testers', parent_id: @category_18.id).first_or_create #Hardness testers
SubEquipment.where(name: 'Inspection lights', parent_id: @category_18.id).first_or_create #Inspection lights
SubEquipment.where(name: 'Inspection systems', parent_id: @category_18.id).first_or_create #Inspection systems
SubEquipment.where(name: 'Inspection/measurement equipment, sheet/plate', parent_id: @category_18.id).first_or_create #Inspection/measurement equipment, sheet/plate
SubEquipment.where(name: 'Inspection/measurement equipment, tube & pipe', parent_id: @category_18.id).first_or_create #Inspection/measurement equipment, tube & pipe
SubEquipment.where(name: 'Load monitors', parent_id: @category_18.id).first_or_create #Load monitors
SubEquipment.where(name: 'Measuring equipment', parent_id: @category_18.id).first_or_create #Measuring equipment
SubEquipment.where(name: 'Metrology systems', parent_id: @category_18.id).first_or_create #Metrology systems
SubEquipment.where(name: 'SPC (statistical process control) gauging', parent_id: @category_18.id).first_or_create #SPC (statistical process control) gauging
SubEquipment.where(name: 'Spectrometers', parent_id: @category_18.id).first_or_create #Spectrometers
SubEquipment.where(name: 'Ultrasonic testing equipment', parent_id: @category_18.id).first_or_create #Ultrasonic testing equipment

puts 'Adding Welding'
@category_19 = Equipment.where(name: 'Welding').first_or_create
SubEquipment.where(name: 'Accessories (gloves, holders, etc.)', parent_id: @category_19.id).first_or_create #Accessories (gloves, holders, etc.)
SubEquipment.where(name: 'Arc welding equipment', parent_id: @category_19.id).first_or_create #Arc welding equipment
SubEquipment.where(name: 'Beveling machines', parent_id: @category_19.id).first_or_create #Beveling machines
SubEquipment.where(name: 'Brazing/soldering equipment', parent_id: @category_19.id).first_or_create #Brazing/soldering equipment
SubEquipment.where(name: 'Cells & systems', parent_id: @category_19.id).first_or_create #Cells & systems
SubEquipment.where(name: 'Consumables (electrodes, gases)', parent_id: @category_19.id).first_or_create #Consumables (electrodes, gases)
SubEquipment.where(name: 'Coolers/chillers', parent_id: @category_19.id).first_or_create #Coolers/chillers
SubEquipment.where(name: 'Deslagging machines', parent_id: @category_19.id).first_or_create #Deslagging machines
SubEquipment.where(name: 'Dross systems', parent_id: @category_19.id).first_or_create #Dross systems
SubEquipment.where(name: 'Electronic controls', parent_id: @category_19.id).first_or_create #Electronic controls
SubEquipment.where(name: 'Fume ducting', parent_id: @category_19.id).first_or_create #Fume ducting
SubEquipment.where(name: 'Fume removal systems/equipment', parent_id: @category_19.id).first_or_create #Fume removal systems/equipment
SubEquipment.where(name: 'GMAW/GTAW', parent_id: @category_19.id).first_or_create #GMAW/GTAW
SubEquipment.where(name: 'Guns', parent_id: @category_19.id).first_or_create #Guns
SubEquipment.where(name: 'Helmets', parent_id: @category_19.id).first_or_create #Helmets
SubEquipment.where(name: 'High-frequency', parent_id: @category_19.id).first_or_create #High-frequency
SubEquipment.where(name: 'Laser', parent_id: @category_19.id).first_or_create #Laser
SubEquipment.where(name: 'Plasma', parent_id: @category_19.id).first_or_create #Plasma
SubEquipment.where(name: 'Platens/work tables', parent_id: @category_19.id).first_or_create #Platens/work tables
SubEquipment.where(name: 'Positioners', parent_id: @category_19.id).first_or_create #Positioners
SubEquipment.where(name: 'Resistance welding, flash', parent_id: @category_19.id).first_or_create #Resistance welding, flash
SubEquipment.where(name: 'Resistance welding, seam', parent_id: @category_19.id).first_or_create #Resistance welding, seam
SubEquipment.where(name: 'Resistance welding, spot, stud', parent_id: @category_19.id).first_or_create #Resistance welding, spot, stud
SubEquipment.where(name: 'Robotic Welding Cells', parent_id: @category_19.id).first_or_create #Robotic Welding Cells
SubEquipment.where(name: 'Torches', parent_id: @category_19.id).first_or_create #Torches
SubEquipment.where(name: 'Weld fittings', parent_id: @category_19.id).first_or_create #Weld fittings
SubEquipment.where(name: 'Weld-nut/stud feeders', parent_id: @category_19.id).first_or_create #Weld-nut/stud feeders
SubEquipment.where(name: 'Welding wire', parent_id: @category_19.id).first_or_create #Welding wire
SubEquipment.where(name: 'Workholding equipment', parent_id: @category_19.id).first_or_create #Workholding equipment

puts 'Adding Miscellaneous'
@category_20 = Equipment.where(name: 'Miscellaneous').first_or_create
SubEquipment.where(name: 'Acid purification equipment', parent_id: @category_20.id).first_or_create #Acid purification equipment
SubEquipment.where(name: 'Air ejection equipment', parent_id: @category_20.id).first_or_create #Air ejection equipment
SubEquipment.where(name: 'Automated assembly systems', parent_id: @category_20.id).first_or_create #Automated assembly systems
SubEquipment.where(name: 'Automatic nut feeder', parent_id: @category_20.id).first_or_create #Automatic nut feeder
SubEquipment.where(name: 'Canisters, extrusion', parent_id: @category_20.id).first_or_create #Canisters, extrusion
SubEquipment.where(name: 'Clamps, anodizing, plating', parent_id: @category_20.id).first_or_create #Clamps, anodizing, plating
SubEquipment.where(name: 'Cleaning equipment, aqueous, high-pressure', parent_id: @category_20.id).first_or_create #Cleaning equipment, aqueous, high-pressure
SubEquipment.where(name: 'Cleaning equipment, ultrasonic', parent_id: @category_20.id).first_or_create #Cleaning equipment, ultrasonic
SubEquipment.where(name: 'Cleaning equipment, vapor/mist', parent_id: @category_20.id).first_or_create #Cleaning equipment, vapor/mist
SubEquipment.where(name: 'Containers, extrusion', parent_id: @category_20.id).first_or_create #Containers, extrusion
SubEquipment.where(name: 'Containers, packaging', parent_id: @category_20.id).first_or_create #Containers, packaging
SubEquipment.where(name: 'Control systems', parent_id: @category_20.id).first_or_create #Control systems
SubEquipment.where(name: 'Controls, motion', parent_id: @category_20.id).first_or_create #Controls, motion
SubEquipment.where(name: 'Controls, noise/vibration', parent_id: @category_20.id).first_or_create #Controls, noise/vibration
SubEquipment.where(name: 'Controls, remote', parent_id: @category_20.id).first_or_create #Controls, remote
SubEquipment.where(name: 'Cylinders, hydraulic & pneumatic', parent_id: @category_20.id).first_or_create #Cylinders, hydraulic & pneumatic
SubEquipment.where(name: 'Cylinders, nitrogen die', parent_id: @category_20.id).first_or_create #Cylinders, nitrogen die
SubEquipment.where(name: 'Deoilers', parent_id: @category_20.id).first_or_create #Deoilers
SubEquipment.where(name: 'Erecting machinery', parent_id: @category_20.id).first_or_create #Erecting machinery
SubEquipment.where(name: 'Expander rings', parent_id: @category_20.id).first_or_create #Expander rings
SubEquipment.where(name: 'Fasteners, self-forming for sheet metal', parent_id: @category_20.id).first_or_create #Fasteners, self-forming for sheet metal
SubEquipment.where(name: 'Filtration systems', parent_id: @category_20.id).first_or_create #Filtration systems
SubEquipment.where(name: 'Forming & flanging machines', parent_id: @category_20.id).first_or_create #Forming & flanging machines
SubEquipment.where(name: 'Injection molding equipment', parent_id: @category_20.id).first_or_create #Injection molding equipment
SubEquipment.where(name: 'Ironworkers', parent_id: @category_20.id).first_or_create #Ironworkers
SubEquipment.where(name: 'Lubricant applicators', parent_id: @category_20.id).first_or_create #Lubricant applicators
SubEquipment.where(name: 'Machine monitors', parent_id: @category_20.id).first_or_create #Machine monitors
SubEquipment.where(name: 'Machinery mounts', parent_id: @category_20.id).first_or_create #Machinery mounts
SubEquipment.where(name: 'Machinery moving & erecting', parent_id: @category_20.id).first_or_create #Machinery moving & erecting
SubEquipment.where(name: 'Manipulators', parent_id: @category_20.id).first_or_create #Manipulators
SubEquipment.where(name: 'Marking', parent_id: @category_20.id).first_or_create #Marking
SubEquipment.where(name: 'Mining equipment', parent_id: @category_20.id).first_or_create #Mining equipment
SubEquipment.where(name: 'Optical sensing/gauging systems', parent_id: @category_20.id).first_or_create #Optical sensing/gauging systems
SubEquipment.where(name: 'Panel, roll and linear cutting optimization', parent_id: @category_20.id).first_or_create #Panel, roll and linear cutting optimization
SubEquipment.where(name: 'Parts identification & marking systems', parent_id: @category_20.id).first_or_create #Parts identification & marking systems
SubEquipment.where(name: 'Payoff reels', parent_id: @category_20.id).first_or_create #Payoff reels
SubEquipment.where(name: 'Portable tools, beveling', parent_id: @category_20.id).first_or_create #Portable tools, beveling
SubEquipment.where(name: 'Portable tools, cutting', parent_id: @category_20.id).first_or_create #Portable tools, cutting
SubEquipment.where(name: 'Portable tools, drilling', parent_id: @category_20.id).first_or_create #Portable tools, drilling
SubEquipment.where(name: 'Portable tools, grinding', parent_id: @category_20.id).first_or_create #Portable tools, grinding
SubEquipment.where(name: 'Portable tools, punching', parent_id: @category_20.id).first_or_create #Portable tools, punching
SubEquipment.where(name: 'Programmable controls & switches', parent_id: @category_20.id).first_or_create #Programmable controls & switches
SubEquipment.where(name: 'Proximity switches', parent_id: @category_20.id).first_or_create #Proximity switches
SubEquipment.where(name: 'Pulley machines', parent_id: @category_20.id).first_or_create #Pulley machines
SubEquipment.where(name: 'Rectifiers', parent_id: @category_20.id).first_or_create #Rectifiers
SubEquipment.where(name: 'Recycling equipment', parent_id: @category_20.id).first_or_create #Recycling equipment
SubEquipment.where(name: 'Riveting', parent_id: @category_20.id).first_or_create #Riveting
SubEquipment.where(name: 'Runout tables', parent_id: @category_20.id).first_or_create #Runout tables
SubEquipment.where(name: 'Scrap choppers', parent_id: @category_20.id).first_or_create #Scrap choppers
SubEquipment.where(name: 'Scrap processing equipment', parent_id: @category_20.id).first_or_create #Scrap processing equipment
SubEquipment.where(name: 'Sensors, color', parent_id: @category_20.id).first_or_create #Sensors, color
SubEquipment.where(name: 'Sensors, load', parent_id: @category_20.id).first_or_create #Sensors, load
SubEquipment.where(name: 'Sensors, noncontact', parent_id: @category_20.id).first_or_create #Sensors, noncontact
SubEquipment.where(name: 'Servo feeds', parent_id: @category_20.id).first_or_create #Servo feeds
SubEquipment.where(name: 'Sheeting lines', parent_id: @category_20.id).first_or_create #Sheeting lines
SubEquipment.where(name: 'Slide forming & spring machines', parent_id: @category_20.id).first_or_create #Slide forming & spring machines
SubEquipment.where(name: 'Spring forming machines', parent_id: @category_20.id).first_or_create #Spring forming machines
SubEquipment.where(name: 'Stems, extrusion', parent_id: @category_20.id).first_or_create #Stems, extrusion
SubEquipment.where(name: 'Straighteners, tube & bar', parent_id: @category_20.id).first_or_create #Straighteners, tube & bar
SubEquipment.where(name: 'Stretchers, extrusion', parent_id: @category_20.id).first_or_create #Stretchers, extrusion
SubEquipment.where(name: 'Swaging machines', parent_id: @category_20.id).first_or_create #Swaging machines
SubEquipment.where(name: 'Thermocouples', parent_id: @category_20.id).first_or_create #Thermocouples
SubEquipment.where(name: 'Transformers', parent_id: @category_20.id).first_or_create #Transformers
SubEquipment.where(name: 'Trim handling systems', parent_id: @category_20.id).first_or_create #Trim handling systems
SubEquipment.where(name: 'Upsetters', parent_id: @category_20.id).first_or_create #Upsetters
SubEquipment.where(name: 'Used equipment', parent_id: @category_20.id).first_or_create #Used equipment
SubEquipment.where(name: 'Valves, proportional', parent_id: @category_20.id).first_or_create #Valves, proportional
SubEquipment.where(name: 'Vision systems', parent_id: @category_20.id).first_or_create #Vision systems
SubEquipment.where(name: 'Washers', parent_id: @category_20.id).first_or_create #Washers
SubEquipment.where(name: 'Waste treatment systems', parent_id: @category_20.id).first_or_create #Waste treatment systems
SubEquipment.where(name: 'Winders, traverse', parent_id: @category_20.id).first_or_create #Winders, traverse
SubEquipment.where(name: 'Wire forming machinery', parent_id: @category_20.id).first_or_create #Wire forming machinery

puts 'Create Material Categories'

puts 'Adding Proprietary metals and other alloys'
@category_21 = Material.where(name: 'Proprietary metals and other alloys').first_or_create
SubMaterial.where(name: 'Bar & rod, exotic alloys', parent_id: @category_21.id).first_or_create
SubMaterial.where(name: 'Bonderized', parent_id: @category_21.id).first_or_create #Bonderized
SubMaterial.where(name: 'Cobalt', parent_id: @category_21.id).first_or_create #Cobalt
SubMaterial.where(name: 'Galvalume', parent_id: @category_21.id).first_or_create #Galvalume
SubMaterial.where(name: 'Hastelloy', parent_id: @category_21.id).first_or_create #Hastelloy
SubMaterial.where(name: 'Inconel', parent_id: @category_21.id).first_or_create #Inconel
SubMaterial.where(name: 'Low-melt alloys', parent_id: @category_21.id).first_or_create #Low-melt alloys
SubMaterial.where(name: 'Plate, alloy steel', parent_id: @category_21.id).first_or_create #Plate, alloy steel
SubMaterial.where(name: 'Plate, exotic alloys', parent_id: @category_21.id).first_or_create #Plate, exotic alloys
SubMaterial.where(name: 'Sheet & coil, exotic alloys', parent_id: @category_21.id).first_or_create #Sheet & coil, exotic alloys
SubMaterial.where(name: 'Strip, exotic alloys', parent_id: @category_21.id).first_or_create #Strip, exotic alloys
SubMaterial.where(name: 'Tube & pipe, alloy', parent_id: @category_21.id).first_or_create #Tube & pipe, alloy
SubMaterial.where(name: 'Tube & pipe, chrome/moly', parent_id: @category_21.id).first_or_create #Tube & pipe, chrome/moly
SubMaterial.where(name: 'Tube & pipe, exotic alloys', parent_id: @category_21.id).first_or_create #Tube & pipe, exotic alloys

puts 'Adding Aluminum'
@category_22 = Material.where(name: 'Aluminum').first_or_create
SubMaterial.where(name: 'Bar & rod', parent_id: @category_22.id).first_or_create #Bar & rod
SubMaterial.where(name: 'Bar & rod, aluminum alloys', parent_id: @category_22.id).first_or_create #Bar & rod, aluminum alloys
SubMaterial.where(name: 'Bar & rod, extruded', parent_id: @category_22.id).first_or_create #Bar & rod, extruded
SubMaterial.where(name: 'Casting alloys', parent_id: @category_22.id).first_or_create #Casting alloys
SubMaterial.where(name: 'Coiled sheet', parent_id: @category_22.id).first_or_create #Coiled sheet
SubMaterial.where(name: 'Filters', parent_id: @category_22.id).first_or_create #Filters
SubMaterial.where(name: 'Ingot', parent_id: @category_22.id).first_or_create #Ingot
SubMaterial.where(name: 'Plate', parent_id: @category_22.id).first_or_create #Plate
SubMaterial.where(name: 'Plate, aluminum alloys', parent_id: @category_22.id).first_or_create #Plate, aluminum alloys
SubMaterial.where(name: 'Sheet & coil', parent_id: @category_22.id).first_or_create #Sheet & coil
SubMaterial.where(name: 'Sheet & coil, aluminum alloys', parent_id: @category_22.id).first_or_create #Sheet & coil, aluminum alloys
SubMaterial.where(name: 'Strip', parent_id: @category_22.id).first_or_create #Strip
SubMaterial.where(name: 'Strip, aluminum alloys', parent_id: @category_22.id).first_or_create #Strip, aluminum alloys
SubMaterial.where(name: 'Tooling plate', parent_id: @category_22.id).first_or_create #Tooling plate
SubMaterial.where(name: 'Tube & pipe', parent_id: @category_22.id).first_or_create #Tube & pipe
SubMaterial.where(name: 'Tube & pipe, aluminum alloys', parent_id: @category_22.id).first_or_create #Tube & pipe, aluminum alloys

puts 'Adding Brass'
@category_23 = Material.where(name: 'Brass').first_or_create
SubMaterial.where(name: 'Bar & rod', parent_id: @category_23.id).first_or_create #Bar & rod
SubMaterial.where(name: 'Plate', parent_id: @category_23.id).first_or_create #Plate
SubMaterial.where(name: 'Sheet & coil', parent_id: @category_23.id).first_or_create #Sheet & coil
SubMaterial.where(name: 'Strip', parent_id: @category_23.id).first_or_create #Strip
SubMaterial.where(name: 'Tube & pipe', parent_id: @category_23.id).first_or_create #Tube & pipe

puts 'Adding Bronze'
@category_24 = Material.where(name: 'Bronze').first_or_create
SubMaterial.where(name: 'Bar & rod', parent_id: @category_24.id).first_or_create #Bar & rod
SubMaterial.where(name: 'Bearing bronze', parent_id: @category_24.id).first_or_create #Bearing bronze
SubMaterial.where(name: 'Plate', parent_id: @category_24.id).first_or_create #Plate
SubMaterial.where(name: 'Sheet & coil', parent_id: @category_24.id).first_or_create #Sheet & coil
SubMaterial.where(name: 'Strip', parent_id: @category_24.id).first_or_create #Strip
SubMaterial.where(name: 'Tube & pipe', parent_id: @category_24.id).first_or_create #Tube & pipe

puts 'Adding Copper'
@category_25 = Material.where(name: 'Copper').first_or_create
SubMaterial.where(name: 'Bar & rod', parent_id: @category_25.id).first_or_create #Bar & rod
SubMaterial.where(name: 'Bar & rod, beryllium copper', parent_id: @category_25.id).first_or_create #Bar & rod, beryllium copper
SubMaterial.where(name: 'Bar & rod, copper alloys', parent_id: @category_25.id).first_or_create #Bar & rod, copper alloys
SubMaterial.where(name: 'Bar and rod', parent_id: @category_25.id).first_or_create #Bar and rod
SubMaterial.where(name: 'Plate', parent_id: @category_25.id).first_or_create #Plate
SubMaterial.where(name: 'Plate, beryllium copper', parent_id: @category_25.id).first_or_create #Plate, beryllium copper
SubMaterial.where(name: 'Plate, copper alloys', parent_id: @category_25.id).first_or_create #Plate, copper alloys
SubMaterial.where(name: 'Sheet & coil', parent_id: @category_25.id).first_or_create #Sheet & coil
SubMaterial.where(name: 'Sheet & coil, beryllium copper', parent_id: @category_25.id).first_or_create #Sheet & coil, beryllium copper
SubMaterial.where(name: 'Sheet & coil, copper alloys', parent_id: @category_25.id).first_or_create #Sheet & coil, copper alloys
SubMaterial.where(name: 'Strip', parent_id: @category_25.id).first_or_create #Strip
SubMaterial.where(name: 'Strip, beryllium copper', parent_id: @category_25.id).first_or_create #Strip, beryllium copper
SubMaterial.where(name: 'Strip, copper alloys', parent_id: @category_25.id).first_or_create #Strip, copper alloys
SubMaterial.where(name: 'Tube & pipe', parent_id: @category_25.id).first_or_create #Tube & pipe
SubMaterial.where(name: 'Tube & pipe, beryllium copper', parent_id: @category_25.id).first_or_create #Tube & pipe, beryllium copper
SubMaterial.where(name: 'Tube & pipe, copper alloys', parent_id: @category_25.id).first_or_create #Tube & pipe, copper alloys
SubMaterial.where(name: 'Wire', parent_id: @category_25.id).first_or_create #Wire

puts 'Adding Magnesium'
@category_26 = Material.where(name: 'Magnesium').first_or_create
SubMaterial.where(name: 'Anodes', parent_id: @category_26.id).first_or_create #Anodes
SubMaterial.where(name: 'Casting alloys', parent_id: @category_26.id).first_or_create #Casting alloys
SubMaterial.where(name: 'Tooling plate', parent_id: @category_26.id).first_or_create #Tooling plate

puts 'Adding Nickel'
@category_27 = Material.where(name: 'Nickel').first_or_create
SubMaterial.where(name: 'Bar & rod, nickel & nickel alloys', parent_id: @category_27.id).first_or_create #Bar & rod, nickel & nickel alloys
SubMaterial.where(name: 'Plate', parent_id: @category_27.id).first_or_create	 #Plate
SubMaterial.where(name: 'Plate, nickel alloys', parent_id: @category_27.id).first_or_create	 #Plate, nickel alloys
SubMaterial.where(name: 'Sheet & coil', parent_id: @category_27.id).first_or_create	 #Sheet & coil
SubMaterial.where(name: 'Sheet & coil, nickel alloys', parent_id: @category_27.id).first_or_create	 #Sheet & coil, nickel alloys
SubMaterial.where(name: 'Strip', parent_id: @category_27.id).first_or_create	 #Strip
SubMaterial.where(name: 'Strip, nickel alloys', parent_id: @category_27.id).first_or_create	 #Strip, nickel alloys
SubMaterial.where(name: 'Tube & pipe', parent_id: @category_27.id).first_or_create	 #Tube & pipe
SubMaterial.where(name: 'Tube & pipe, nickel alloy', parent_id: @category_27.id).first_or_create	 #Tube & pipe, nickel alloy

puts 'Adding Steel'
@category_28 = Material.where(name: 'Steel').first_or_create
SubMaterial.where(name: 'Bar & rod', parent_id: @category_28.id).first_or_create	 #Bar & rod
SubMaterial.where(name: 'Bar & rod, cold finished', parent_id: @category_28.id).first_or_create	 #Bar & rod, cold finished
SubMaterial.where(name: 'Bar & rod, cold rolled', parent_id: @category_28.id).first_or_create	 #Bar & rod, cold rolled
SubMaterial.where(name: 'Bar & rod, hot rolled', parent_id: @category_28.id).first_or_create	 #Bar & rod, hot rolled
SubMaterial.where(name: 'Bar & rod, stainless steel', parent_id: @category_28.id).first_or_create	 #Bar & rod, stainless steel
SubMaterial.where(name: 'Bar, cold finished', parent_id: @category_28.id).first_or_create	 #Bar, cold finished
SubMaterial.where(name: 'Bar, hot rolled', parent_id: @category_28.id).first_or_create #Bar, hot rolled
SubMaterial.where(name: 'Cold rolled', parent_id: @category_28.id).first_or_create #Cold rolled
SubMaterial.where(name: 'Die steels', parent_id: @category_28.id).first_or_create #Die steels
SubMaterial.where(name: 'EPS (eco pickled surface)', parent_id: @category_28.id).first_or_create #EPS (eco pickled surface)
SubMaterial.where(name: 'Galvanized', parent_id: @category_28.id).first_or_create #Galvanized
SubMaterial.where(name: 'Galvannealed', parent_id: @category_28.id).first_or_create #Galvannealed
SubMaterial.where(name: 'Hot rolled', parent_id: @category_28.id).first_or_create #Hot rolled
SubMaterial.where(name: 'Hot rolled pickled & oiled', parent_id: @category_28.id).first_or_create #Hot rolled pickled & oiled
SubMaterial.where(name: 'Plate', parent_id: @category_28.id).first_or_create #Plate
SubMaterial.where(name: 'Plate, carbon steel', parent_id: @category_28.id).first_or_create #Plate, carbon steel
SubMaterial.where(name: 'Plate, cold rolled', parent_id: @category_28.id).first_or_create #Plate, cold rolled
SubMaterial.where(name: 'Plate, hot rolled', parent_id: @category_28.id).first_or_create #Plate, hot rolled
SubMaterial.where(name: 'Plate, stainless steel', parent_id: @category_28.id).first_or_create #Plate, stainless steel
SubMaterial.where(name: 'Rebar/mesh', parent_id: @category_28.id).first_or_create #Rebar/mesh
SubMaterial.where(name: 'SCS (smooth clean surface)', parent_id: @category_28.id).first_or_create #SCS (smooth clean surface)
SubMaterial.where(name: 'Sheet & coil', parent_id: @category_28.id).first_or_create #Sheet & coil
SubMaterial.where(name: 'Sheet & coil, cold rolled', parent_id: @category_28.id).first_or_create #Sheet & coil, cold rolled
SubMaterial.where(name: 'Sheet & coil, hot rolled', parent_id: @category_28.id).first_or_create #Sheet & coil, hot rolled
SubMaterial.where(name: 'Sheet & coil, stainless steel', parent_id: @category_28.id).first_or_create #Sheet & coil, stainless steel
SubMaterial.where(name: 'Sheet and coil, galvanized', parent_id: @category_28.id).first_or_create #Sheet and coil, galvanized
SubMaterial.where(name: 'Squares, cold roll formed', parent_id: @category_28.id).first_or_create #Squares, cold roll formed
SubMaterial.where(name: 'Strip', parent_id: @category_28.id).first_or_create #Strip
SubMaterial.where(name: 'Strip, cold rolled', parent_id: @category_28.id).first_or_create #Strip, cold rolled
SubMaterial.where(name: 'Strip, hot rolled', parent_id: @category_28.id).first_or_create #Strip, hot rolled
SubMaterial.where(name: 'Strip, stainless steel', parent_id: @category_28.id).first_or_create #Strip, stainless steel
SubMaterial.where(name: 'Tool steel', parent_id: @category_28.id).first_or_create #Tool steel
SubMaterial.where(name: 'Tube & pipe', parent_id: @category_28.id).first_or_create #Tube & pipe
SubMaterial.where(name: 'Tube & pipe, carbon', parent_id: @category_28.id).first_or_create #Tube & pipe, carbon
SubMaterial.where(name: 'Tube & pipe, cold rolled', parent_id: @category_28.id).first_or_create #Tube & pipe, cold rolled
SubMaterial.where(name: 'Tube & pipe, hot rolled', parent_id: @category_28.id).first_or_create #Tube & pipe, hot rolled
SubMaterial.where(name: 'Tube & pipe, stainless steel', parent_id: @category_28.id).first_or_create #Tube & pipe, stainless steel
SubMaterial.where(name: 'Tubes, cold roll formed', parent_id: @category_28.id).first_or_create #Tubes, cold roll formed
SubMaterial.where(name: 'Weathering grades', parent_id: @category_28.id).first_or_create #Weathering gradesSub

puts 'Adding Titanium'
@category_29 = Material.where(name: 'Titanium').first_or_create
SubMaterial.where(name: 'Bar & rod', parent_id: @category_29.id).first_or_create #Bar & rod
SubMaterial.where(name: 'Forging', parent_id: @category_29.id).first_or_create #Forging
SubMaterial.where(name: 'Plate', parent_id: @category_29.id).first_or_create #Plate
SubMaterial.where(name: 'Sheets', parent_id: @category_29.id).first_or_create #Sheets
SubMaterial.where(name: 'Strip', parent_id: @category_29.id).first_or_create #Strip
SubMaterial.where(name: 'Tube & pipe', parent_id: @category_29.id).first_or_create #Tube & pipe

puts 'Adding Zinc'
@category_30 = Material.where(name: 'Zinc').first_or_create
SubMaterial.where(name: 'Anodes', parent_id: @category_30.id).first_or_create #Anodes
SubMaterial.where(name: 'Bar & rod', parent_id: @category_30.id).first_or_create #Bar & rod
SubMaterial.where(name: 'Ingot', parent_id: @category_30.id).first_or_create #Ingot
SubMaterial.where(name: 'Strip', parent_id: @category_30.id).first_or_create #Strip
SubMaterial.where(name: 'Zinc carbon alloys', parent_id: @category_30.id).first_or_create #Zinc carbon alloys

puts 'Adding Coatings and Laminates'
@category_31 = Material.where(name: 'Coatings and Laminates').first_or_create
SubMaterial.where(name: 'Clad metals', parent_id: @category_31.id).first_or_create #Clad metals
SubMaterial.where(name: 'Coatings, ceramic', parent_id: @category_31.id).first_or_create #Coatings, ceramic
SubMaterial.where(name: 'Coatings, conversion', parent_id: @category_31.id).first_or_create #Coatings, conversion
SubMaterial.where(name: 'Coatings, enamel', parent_id: @category_31.id).first_or_create #Coatings, enamel
SubMaterial.where(name: 'Coatings, extrusion', parent_id: @category_31.id).first_or_create #Coatings, extrusion
SubMaterial.where(name: 'Coatings, other', parent_id: @category_31.id).first_or_create #Coatings, other
SubMaterial.where(name: 'Coatings, physical vapor deposition', parent_id: @category_31.id).first_or_create #Coatings, physical vapor deposition
SubMaterial.where(name: 'Coatings, powder', parent_id: @category_31.id).first_or_create #Coatings, powder
SubMaterial.where(name: 'Coatings, ultraviolet', parent_id: @category_31.id).first_or_create #Coatings, ultraviolet
SubMaterial.where(name: 'Coatings, water-based', parent_id: @category_31.id).first_or_create #Coatings, water-based
SubMaterial.where(name: 'Coil coating finishes', parent_id: @category_31.id).first_or_create #Coil coating finishes
SubMaterial.where(name: 'Laminated panels, aluminum & stainless', parent_id: @category_31.id).first_or_create #Laminated panels, aluminum & stainless
SubMaterial.where(name: 'Laminates, vinyl/metal', parent_id: @category_31.id).first_or_create #Laminates, vinyl/metal
SubMaterial.where(name: 'Laminating films, decorative, appliances', parent_id: @category_31.id).first_or_create #Laminating films, decorative, appliances
SubMaterial.where(name: 'Powder metal parts', parent_id: @category_31.id).first_or_create #Powder metal parts
SubMaterial.where(name: 'Preanodized sheet/coil', parent_id: @category_31.id).first_or_create #Preanodized sheet/coil
SubMaterial.where(name: 'Prefinished metals', parent_id: @category_31.id).first_or_create #Prefinished metals
SubMaterial.where(name: 'Prepainted metals', parent_id: @category_31.id).first_or_create #Prepainted metals
SubMaterial.where(name: 'Preplated metals', parent_id: @category_31.id).first_or_create #Preplated metals
SubMaterial.where(name: 'Sheet & coil, aluminized', parent_id: @category_31.id).first_or_create #Sheet & coil, aluminized
SubMaterial.where(name: 'Specialty coated metals', parent_id: @category_31.id).first_or_create #Specialty coated metals
SubMaterial.where(name: 'Tool coatings', parent_id: @category_31.id).first_or_create #Tool coatings

puts 'Adding Metal products'
@category_32 = Material.where(name: 'Metal products').first_or_create
SubMaterial.where(name: 'Angles/channels/profiles', parent_id: @category_32.id).first_or_create #Angles/channels/profiles
SubMaterial.where(name: 'Bar, forged', parent_id: @category_32.id).first_or_create #Bar, forged
SubMaterial.where(name: 'Billet', parent_id: @category_32.id).first_or_create #Billet
SubMaterial.where(name: 'Blocks, forged', parent_id: @category_32.id).first_or_create #Blocks, forged
SubMaterial.where(name: 'Containers', parent_id: @category_32.id).first_or_create #Containers
SubMaterial.where(name: 'Cylinders, forged', parent_id: @category_32.id).first_or_create #Cylinders, forged
SubMaterial.where(name: 'Expanded metals', parent_id: @category_32.id).first_or_create #Expanded metals
SubMaterial.where(name: 'Foil', parent_id: @category_32.id).first_or_create #Foil
SubMaterial.where(name: 'Frames', parent_id: @category_32.id).first_or_create #Frames
SubMaterial.where(name: 'Gratings', parent_id: @category_32.id).first_or_create #Gratings
SubMaterial.where(name: 'High chairs', parent_id: @category_32.id).first_or_create #High chairs
SubMaterial.where(name: 'Insulated panels', parent_id: @category_32.id).first_or_create #Insulated panels
SubMaterial.where(name: 'Metal building systems', parent_id: @category_32.id).first_or_create #Metal building systems
SubMaterial.where(name: 'Perforated metals', parent_id: @category_32.id).first_or_create #Perforated metals
SubMaterial.where(name: 'Prepolished metals', parent_id: @category_32.id).first_or_create #Prepolished metals
SubMaterial.where(name: 'Rings, forged', parent_id: @category_32.id).first_or_create #Rings, forged
SubMaterial.where(name: 'Safety gratings', parent_id: @category_32.id).first_or_create #Safety gratings
SubMaterial.where(name: 'Screw machine products', parent_id: @category_32.id).first_or_create #Screw machine products
SubMaterial.where(name: 'Shafts, forged', parent_id: @category_32.id).first_or_create #Shafts, forged
SubMaterial.where(name: 'Slab bolster', parent_id: @category_32.id).first_or_create #Slab bolster
SubMaterial.where(name: 'Sound dampening materials', parent_id: @category_32.id).first_or_create #Sound dampening materials
SubMaterial.where(name: 'Strapping', parent_id: @category_32.id).first_or_create #Strapping
SubMaterial.where(name: 'Structural reinforcement material', parent_id: @category_32.id).first_or_create #Structural reinforcement material
SubMaterial.where(name: 'Textured metals', parent_id: @category_32.id).first_or_create #Textured metals
SubMaterial.where(name: 'Thermal barrier systems', parent_id: @category_32.id).first_or_create #Thermal barrier systems
SubMaterial.where(name: 'Thermal insulation', parent_id: @category_32.id).first_or_create #Thermal insulation
SubMaterial.where(name: 'Tie wire', parent_id: @category_32.id).first_or_create #Tie wire
SubMaterial.where(name: 'Tube & pipe, corrosion resistant', parent_id: @category_32.id).first_or_create #Tube & pipe, corrosion resistant
SubMaterial.where(name: 'Tube & pipe, high-temperature', parent_id: @category_32.id).first_or_create #Tube & pipe, high-temperature
SubMaterial.where(name: 'Tubing, DOM', parent_id: @category_32.id).first_or_create #Tubing, DOM
SubMaterial.where(name: 'Tubing, lock seam/open seam', parent_id: @category_32.id).first_or_create #Tubing, lock seam/open seam
SubMaterial.where(name: 'Wire cloth', parent_id: @category_32.id).first_or_create #Wire cloth
SubMaterial.where(name: 'Wire, other', parent_id: @category_32.id).first_or_create #Wire, other
SubMaterial.where(name: 'Wrought mill products', parent_id: @category_32.id).first_or_create #Wrought mill products
SubMaterial.where(name: 'Z-sections', parent_id: @category_32.id).first_or_create #Z-sections

puts 'Adding Nonmetallic materials'
@category_33 = Material.where(name: 'Nonmetallic materials').first_or_create
SubMaterial.where(name: 'Composites', parent_id: @category_33.id).first_or_create #Composites
SubMaterial.where(name: 'Graphite', parent_id: @category_33.id).first_or_create #Graphite
SubMaterial.where(name: 'Industrial felt & textiles', parent_id: @category_33.id).first_or_create #Industrial felt & textiles
SubMaterial.where(name: 'Paint', parent_id: @category_33.id).first_or_create #Paint
SubMaterial.where(name: 'Plastics, engineered', parent_id: @category_33.id).first_or_create #Plastics, engineered
SubMaterial.where(name: 'Protective adhesive masking', parent_id: @category_33.id).first_or_create #Protective adhesive masking
SubMaterial.where(name: 'Refractory products', parent_id: @category_33.id).first_or_create #Refractory products
SubMaterial.where(name: 'Stretch film', parent_id: @category_33.id).first_or_create #Stretch film

puts 'Adding Miscellaneous'
@category_34 = Material.where(name: 'Miscellaneous').first_or_create
SubMaterial.where(name: 'Abrasives', parent_id: @category_34.id).first_or_create #Abrasives
SubMaterial.where(name: 'Adhesives', parent_id: @category_34.id).first_or_create #Adhesives
SubMaterial.where(name: 'Biocides', parent_id: @category_34.id).first_or_create #Biocides
SubMaterial.where(name: 'Brazing/soldering, fillers & fluxes', parent_id: @category_34.id).first_or_create #Brazing/soldering, fillers & fluxes
SubMaterial.where(name: 'Carbides & ceramics', parent_id: @category_34.id).first_or_create #Carbides & ceramics
SubMaterial.where(name: 'Carbon black', parent_id: @category_34.id).first_or_create #Carbon black
SubMaterial.where(name: 'Cleaners, metals', parent_id: @category_34.id).first_or_create #Cleaners, metals
SubMaterial.where(name: 'Cleaning, solvents/degreasing equipment agents', parent_id: @category_34.id).first_or_create #Cleaning, solvents/degreasing equipment agents
SubMaterial.where(name: 'Clutches and brakes', parent_id: @category_34.id).first_or_create #Clutches and brakes
SubMaterial.where(name: 'Compounds, cutting & drawing', parent_id: @category_34.id).first_or_create #Compounds, cutting & drawing
SubMaterial.where(name: 'Degreasers', parent_id: @category_34.id).first_or_create #Degreasers
SubMaterial.where(name: 'Environmental & industrial hygiene products', parent_id: @category_34.id).first_or_create #Environmental & industrial hygiene products
SubMaterial.where(name: 'Etchants', parent_id: @category_34.id).first_or_create #Etchants
SubMaterial.where(name: 'Filter media, air & liquid', parent_id: @category_34.id).first_or_create #Filter media, air & liquid
SubMaterial.where(name: 'Finishes & coatings', parent_id: @category_34.id).first_or_create #Finishes & coatings
SubMaterial.where(name: 'Fittings', parent_id: @category_34.id).first_or_create #Fittings
SubMaterial.where(name: 'Fluids, cutting', parent_id: @category_34.id).first_or_create #Fluids, cutting
SubMaterial.where(name: 'Fluids, drawing/stamping', parent_id: @category_34.id).first_or_create #Fluids, drawing/stamping
SubMaterial.where(name: 'Fluids, equipment lubrication', parent_id: @category_34.id).first_or_create #Fluids, equipment lubrication
SubMaterial.where(name: 'Gases, nitrogen regeneration', parent_id: @category_34.id).first_or_create #Gases, nitrogen regeneration
SubMaterial.where(name: 'Hydraulic fluids', parent_id: @category_34.id).first_or_create #Hydraulic fluids
SubMaterial.where(name: 'Labeling', parent_id: @category_34.id).first_or_create #Labeling
SubMaterial.where(name: 'Laser assist gases', parent_id: @category_34.id).first_or_create #Laser assist gases
SubMaterial.where(name: 'Lubricant, applicators/systems', parent_id: @category_34.id).first_or_create #Lubricant, applicators/systems
SubMaterial.where(name: 'Lubricants', parent_id: @category_34.id).first_or_create #Lubricants
SubMaterial.where(name: 'Lubricants, forming', parent_id: @category_34.id).first_or_create #Lubricants, forming
SubMaterial.where(name: 'Lubricants, recycling', parent_id: @category_34.id).first_or_create #Lubricants, recycling
SubMaterial.where(name: 'Packaging materials', parent_id: @category_34.id).first_or_create #Packaging materials
SubMaterial.where(name: 'Permanent bond adhesive tapes', parent_id: @category_34.id).first_or_create #Permanent bond adhesive tapes
SubMaterial.where(name: 'Polishing, buffing compounds', parent_id: @category_34.id).first_or_create #Polishing, buffing compounds
SubMaterial.where(name: 'Pollution control catalysts', parent_id: @category_34.id).first_or_create #Pollution control catalysts
SubMaterial.where(name: 'Pretreatment chemicals', parent_id: @category_34.id).first_or_create #Pretreatment chemicals
SubMaterial.where(name: 'Release agents', parent_id: @category_34.id).first_or_create #Release agents
SubMaterial.where(name: 'Resins', parent_id: @category_34.id).first_or_create #Resins
SubMaterial.where(name: 'Rings', parent_id: @category_34.id).first_or_create #Rings
SubMaterial.where(name: 'Rolls, embossing', parent_id: @category_34.id).first_or_create #Rolls, embossing
SubMaterial.where(name: 'Rubber products', parent_id: @category_34.id).first_or_create #Rubber products
SubMaterial.where(name: 'Rust inhibitors', parent_id: @category_34.id).first_or_create #Rust inhibitors
SubMaterial.where(name: 'Strip coil separators', parent_id: @category_34.id).first_or_create #Strip coil separators

puts 'Create Service Categories'

puts 'Adding Business services'
@category_35 = Service.where(name: 'Business services').first_or_create
SubService.where(name: 'Consulting, business', parent_id: @category_35.id).first_or_create #Consulting, business
SubService.where(name: 'Consulting, recruitment', parent_id: @category_35.id).first_or_create #Consulting, recruitment
SubService.where(name: 'Data collection/market research', parent_id: @category_35.id).first_or_create #Data collection/market research
SubService.where(name: 'Depot stock availability', parent_id: @category_35.id).first_or_create #Depot stock availability
SubService.where(name: 'Distribution', parent_id: @category_35.id).first_or_create #Distribution
SubService.where(name: 'E-commerce', parent_id: @category_35.id).first_or_create #E-commerce
SubService.where(name: 'Economic analysis', parent_id: @category_35.id).first_or_create #Economic analysis
SubService.where(name: 'Enterprise resource planning software (ERP)', parent_id: @category_35.id).first_or_create #Enterprise resource planning software (ERP)
SubService.where(name: 'Financial services', parent_id: @category_35.id).first_or_create #Financial services
SubService.where(name: 'Freight management', parent_id: @category_35.id).first_or_create #Freight management
SubService.where(name: 'Industrial auctioneer', parent_id: @category_35.id).first_or_create #Industrial auctioneer
SubService.where(name: 'Industrial equipment appraisals & inspections', parent_id: @category_35.id).first_or_create #Industrial equipment appraisals & inspections
SubService.where(name: 'Insurance, risk management and loss prevention', parent_id: @category_35.id).first_or_create #Insurance, risk management and loss prevention
SubService.where(name: 'Investment banking', parent_id: @category_35.id).first_or_create #Investment banking
SubService.where(name: 'Material execution system software (MES)', parent_id: @category_35.id).first_or_create #Material execution system software (MES)
SubService.where(name: 'Material resource planning software (MRP)', parent_id: @category_35.id).first_or_create #Material resource planning software (MRP)
SubService.where(name: 'Mergers & acquisitions', parent_id: @category_35.id).first_or_create #Mergers & acquisitions
SubService.where(name: 'Real estate leasing', parent_id: @category_35.id).first_or_create #Real estate leasing
SubService.where(name: 'Software development', parent_id: @category_35.id).first_or_create #Software development
SubService.where(name: 'Supply chain management', parent_id: @category_35.id).first_or_create #Supply chain management
SubService.where(name: 'Systems integrators', parent_id: @category_35.id).first_or_create #Systems integrators
SubService.where(name: 'Training', parent_id: @category_35.id).first_or_create #Training

puts 'Adding Contract manufacturing'
@category_36 = Service.where(name: 'Contract manufacturing').first_or_create
SubService.where(name: 'CNC programming', parent_id: @category_36.id).first_or_create #CNC programming
SubService.where(name: 'Cutting', parent_id: @category_36.id).first_or_create #Cutting
SubService.where(name: 'Die & fixtures', parent_id: @category_36.id).first_or_create #Die & fixtures
SubService.where(name: 'Fabricating', parent_id: @category_36.id).first_or_create #Fabricating
SubService.where(name: 'Finishing', parent_id: @category_36.id).first_or_create #Finishing
SubService.where(name: 'Machine rebuilding', parent_id: @category_36.id).first_or_create #Machine rebuilding
SubService.where(name: 'Roll forming', parent_id: @category_36.id).first_or_create #Roll forming
SubService.where(name: 'Stamping/drawing', parent_id: @category_36.id).first_or_create #Stamping/drawing
SubService.where(name: 'Welding', parent_id: @category_36.id).first_or_create #Welding

puts 'Adding Extrusions'
@category_37 = Service.where(name: 'Extrusions').first_or_create
SubService.where(name: 'Aluminum', parent_id: @category_37.id).first_or_create #Aluminum
SubService.where(name: 'Copper', parent_id: @category_37.id).first_or_create #Copper
SubService.where(name: 'Impact', parent_id: @category_37.id).first_or_create #Impact
SubService.where(name: 'Magnesium', parent_id: @category_37.id).first_or_create #Magnesium
SubService.where(name: 'Steel', parent_id: @category_37.id).first_or_create #Steel
SubService.where(name: 'Vinyl', parent_id: @category_37.id).first_or_create #Vinyl

puts 'Adding Maintenance and repair'
@category_38 = Service.where(name: 'Maintenance and repair').first_or_create
SubService.where(name: 'Clutch/brake controls', parent_id: @category_38.id).first_or_create #Clutch/brake controls
SubService.where(name: 'Computerized maintenance management software (CMMS)', parent_id: @category_38.id).first_or_create #Computerized maintenance management software (CMMS)
SubService.where(name: 'Press rebuilding', parent_id: @category_38.id).first_or_create #Press rebuilding
SubService.where(name: 'Printed circuit boards repair', parent_id: @category_38.id).first_or_create #Printed circuit boards repair
SubService.where(name: 'Rebuild', parent_id: @category_38.id).first_or_create #Rebuild
SubService.where(name: 'Retrofit', parent_id: @category_38.id).first_or_create #Retrofit

puts 'Adding Measurement and testing'
@category_39 = Service.where(name: 'Measurement and testing').first_or_create
SubService.where(name: 'Additives & testers', parent_id: @category_39.id).first_or_create #Additives & testers
SubService.where(name: 'Calibrating, noncontact thickness gauges', parent_id: @category_39.id).first_or_create #Calibrating, noncontact thickness gauges
SubService.where(name: 'Charpy impact testing', parent_id: @category_39.id).first_or_create #Charpy impact testing
SubService.where(name: 'Indoor air quality testing', parent_id: @category_39.id).first_or_create #Indoor air quality testing
SubService.where(name: 'Laboratory services, chemical & spectrographic', parent_id: @category_39.id).first_or_create #Laboratory services, chemical & spectrographic
SubService.where(name: 'Laboratory services, metallurgical & physical', parent_id: @category_39.id).first_or_create #Laboratory services, metallurgical & physical
SubService.where(name: 'Nondestructive testing', parent_id: @category_39.id).first_or_create #Nondestructive testing
SubService.where(name: 'Quality inspection', parent_id: @category_39.id).first_or_create #Quality inspection
SubService.where(name: 'Signature analysis', parent_id: @category_39.id).first_or_create #Signature analysis

puts 'Adding Metal coating and finishing'
@category_40 = Service.where(name: 'Metal coating and finishing').first_or_create
SubService.where(name: 'Anodizing', parent_id: @category_40.id).first_or_create #Anodizing
SubService.where(name: 'Blanchard grinding', parent_id: @category_40.id).first_or_create #Blanchard grinding
SubService.where(name: 'Cleaning, paint stripping', parent_id: @category_40.id).first_or_create #Cleaning, paint stripping
SubService.where(name: 'Coil coating', parent_id: @category_40.id).first_or_create #Coil coating
SubService.where(name: 'Deburring', parent_id: @category_40.id).first_or_create #Deburring
SubService.where(name: 'Edge conditioning', parent_id: @category_40.id).first_or_create #Edge conditioning
SubService.where(name: 'Edging, skiving', parent_id: @category_40.id).first_or_create #Edging, skiving
SubService.where(name: 'Electrogalvanizing', parent_id: @category_40.id).first_or_create #Electrogalvanizing
SubService.where(name: 'Electropolishing', parent_id: @category_40.id).first_or_create #Electropolishing
SubService.where(name: 'Finishing', parent_id: @category_40.id).first_or_create #Finishing
SubService.where(name: 'Galvanizing', parent_id: @category_40.id).first_or_create #Galvanizing
SubService.where(name: 'Gauering flat bars', parent_id: @category_40.id).first_or_create #Gauering flat bars
SubService.where(name: 'Metal finishing', parent_id: @category_40.id).first_or_create #Metal finishing
SubService.where(name: 'Painting', parent_id: @category_40.id).first_or_create #Painting
SubService.where(name: 'Pickling', parent_id: @category_40.id).first_or_create #Pickling
SubService.where(name: 'Plating', parent_id: @category_40.id).first_or_create #Plating
SubService.where(name: 'Polishing', parent_id: @category_40.id).first_or_create #Polishing
SubService.where(name: 'Powder coating', parent_id: @category_40.id).first_or_create #Powder coating
SubService.where(name: 'Sandblasting', parent_id: @category_40.id).first_or_create #Sandblasting
SubService.where(name: 'Shot blasting', parent_id: @category_40.id).first_or_create #Shot blasting
SubService.where(name: 'Surface grinding', parent_id: @category_40.id).first_or_create #Surface grinding
SubService.where(name: 'Thermal spray coating', parent_id: @category_40.id).first_or_create #Thermal spray coating

puts 'Adding Metal processing'
@category_41 = Service.where(name: 'Metal processing').first_or_create
SubService.where(name: 'Annealing', parent_id: @category_41.id).first_or_create #Annealing
SubService.where(name: 'Blanking and sheeting', parent_id: @category_41.id).first_or_create #Blanking and sheeting
SubService.where(name: 'Cambering', parent_id: @category_41.id).first_or_create #Cambering
SubService.where(name: 'Casting, copper-based', parent_id: @category_41.id).first_or_create #Casting, copper-based
SubService.where(name: 'Casting, die', parent_id: @category_41.id).first_or_create #Casting, die
SubService.where(name: 'Casting, die, aluminum', parent_id: @category_41.id).first_or_create #Casting, die, aluminum
SubService.where(name: 'Casting, die, magnesium', parent_id: @category_41.id).first_or_create #Casting, die, magnesium
SubService.where(name: 'Casting, die, zinc', parent_id: @category_41.id).first_or_create #Casting, die, zinc
SubService.where(name: 'Casting, investment', parent_id: @category_41.id).first_or_create #Casting, investment
SubService.where(name: 'Casting, permanent mold', parent_id: @category_41.id).first_or_create #Casting, permanent mold
SubService.where(name: 'Casting, titanium', parent_id: @category_41.id).first_or_create #Casting, titanium
SubService.where(name: 'Coil processing', parent_id: @category_41.id).first_or_create #Coil processing
SubService.where(name: 'Cold drawing', parent_id: @category_41.id).first_or_create #Cold drawing
SubService.where(name: 'Cold finishing', parent_id: @category_41.id).first_or_create #Cold finishing
SubService.where(name: 'Cold rolling', parent_id: @category_41.id).first_or_create #Cold rolling
SubService.where(name: 'Custom roll forming', parent_id: @category_41.id).first_or_create #Custom roll forming
SubService.where(name: 'Custom rolling', parent_id: @category_41.id).first_or_create #Custom rolling
SubService.where(name: 'Cut-to-length', parent_id: @category_41.id).first_or_create #Cut-to-length
SubService.where(name: 'Drawforming', parent_id: @category_41.id).first_or_create #Drawforming
SubService.where(name: 'Edge trimming', parent_id: @category_41.id).first_or_create #Edge trimming
SubService.where(name: 'Embossing', parent_id: @category_41.id).first_or_create #Embossing
SubService.where(name: 'EPS (eco pickled surface) processing', parent_id: @category_41.id).first_or_create #EPS (eco pickled surface) processing
SubService.where(name: 'Fabricating', parent_id: @category_41.id).first_or_create #Fabricating
SubService.where(name: 'Fineblanking', parent_id: @category_41.id).first_or_create #Fineblanking
SubService.where(name: 'Flame cutting', parent_id: @category_41.id).first_or_create #Flame cutting
SubService.where(name: 'Flattening', parent_id: @category_41.id).first_or_create #Flattening
SubService.where(name: 'Forging', parent_id: @category_41.id).first_or_create #Forging
SubService.where(name: 'Grinding', parent_id: @category_41.id).first_or_create #Grinding
SubService.where(name: 'Heat treating', parent_id: @category_41.id).first_or_create #Heat treating
SubService.where(name: 'Hydroforming', parent_id: @category_41.id).first_or_create #Hydroforming
SubService.where(name: 'Impregnation', parent_id: @category_41.id).first_or_create #Impregnation
SubService.where(name: 'Ion nitriding', parent_id: @category_41.id).first_or_create #Ion nitriding
SubService.where(name: 'Laser cutting', parent_id: @category_41.id).first_or_create #Laser cutting
SubService.where(name: 'Leveling', parent_id: @category_41.id).first_or_create #Leveling
SubService.where(name: 'Perforation', parent_id: @category_41.id).first_or_create #Perforation
SubService.where(name: 'Planer milling', parent_id: @category_41.id).first_or_create #Planer milling
SubService.where(name: 'Plasma cutting', parent_id: @category_41.id).first_or_create #Plasma cutting
SubService.where(name: 'Plate cutting', parent_id: @category_41.id).first_or_create #Plate cutting
SubService.where(name: 'Plate forming & rolling', parent_id: @category_41.id).first_or_create #Plate forming & rolling
SubService.where(name: 'Plate, fabricating', parent_id: @category_41.id).first_or_create #Plate, fabricating
SubService.where(name: 'Punching, drilling, notching', parent_id: @category_41.id).first_or_create #Punching, drilling, notching
SubService.where(name: 'Rebar, fabricating', parent_id: @category_41.id).first_or_create #Rebar, fabricating
SubService.where(name: 'Roll forming', parent_id: @category_41.id).first_or_create #Roll forming
SubService.where(name: 'Roll texturing', parent_id: @category_41.id).first_or_create #Roll texturing
SubService.where(name: 'Roller leveling', parent_id: @category_41.id).first_or_create #Roller leveling
SubService.where(name: 'Rolling', parent_id: @category_41.id).first_or_create #Rolling
SubService.where(name: 'Rolls, surface conditioning', parent_id: @category_41.id).first_or_create #Rolls, surface conditioning
SubService.where(name: 'Sawing, band', parent_id: @category_41.id).first_or_create #Sawing, band
SubService.where(name: 'Sawing, circle/ring', parent_id: @category_41.id).first_or_create #Sawing, circle/ring
SubService.where(name: 'Sawing, miter', parent_id: @category_41.id).first_or_create #Sawing, miter
SubService.where(name: 'Sawing, other', parent_id: @category_41.id).first_or_create #Sawing, other
SubService.where(name: 'SCS (surface clean steel) processing', parent_id: @category_41.id).first_or_create #SCS (surface clean steel) processing
SubService.where(name: 'Shearing', parent_id: @category_41.id).first_or_create #Shearing
SubService.where(name: 'Sheet, fabricating', parent_id: @category_41.id).first_or_create #Sheet, fabricating
SubService.where(name: 'Slitting', parent_id: @category_41.id).first_or_create #Slitting
SubService.where(name: 'Stamping, custom', parent_id: @category_41.id).first_or_create #Stamping, custom
SubService.where(name: 'Stamping, other', parent_id: @category_41.id).first_or_create #Stamping, other
SubService.where(name: 'Stress relieving', parent_id: @category_41.id).first_or_create #Stress relieving
SubService.where(name: 'Temper rolling', parent_id: @category_41.id).first_or_create #Temper rolling
SubService.where(name: 'Tempering', parent_id: @category_41.id).first_or_create #Tempering
SubService.where(name: 'Tension leveling', parent_id: @category_41.id).first_or_create #Tension leveling
SubService.where(name: 'Toll processing', parent_id: @category_41.id).first_or_create #Toll processing
SubService.where(name: 'Traverse winding', parent_id: @category_41.id).first_or_create #Traverse winding
SubService.where(name: 'Trepanning', parent_id: @category_41.id).first_or_create #Trepanning
SubService.where(name: 'Tube & pipe, fabricating', parent_id: @category_41.id).first_or_create #Tube & pipe, fabricating
SubService.where(name: 'Tube bending', parent_id: @category_41.id).first_or_create #Tube bending
SubService.where(name: 'Tube deburring', parent_id: @category_41.id).first_or_create #Tube deburring
SubService.where(name: 'Tube drilling', parent_id: @category_41.id).first_or_create #Tube drilling
SubService.where(name: 'Tube endfinishing', parent_id: @category_41.id).first_or_create #Tube endfinishing
SubService.where(name: 'Tube flanging', parent_id: @category_41.id).first_or_create #Tube flanging
SubService.where(name: 'Tube flaring', parent_id: @category_41.id).first_or_create #Tube flaring
SubService.where(name: 'Tube forming', parent_id: @category_41.id).first_or_create #Tube forming
SubService.where(name: 'Tube notching', parent_id: @category_41.id).first_or_create #Tube notching
SubService.where(name: 'Tube punching', parent_id: @category_41.id).first_or_create #Tube punching
SubService.where(name: 'Tube rolling', parent_id: @category_41.id).first_or_create #Tube rolling
SubService.where(name: 'Waterjet cutting', parent_id: @category_41.id).first_or_create #Waterjet cutting
SubService.where(name: 'Welding', parent_id: @category_41.id).first_or_create #Welding

puts 'Adding Production and manufacturing'
@category_42 = Service.where(name: 'Production and manufacturing').first_or_create
SubService.where(name: 'Light assembly', parent_id: @category_42.id).first_or_create #Light assembly
SubService.where(name: 'Rapid prototyping', parent_id: @category_42.id).first_or_create #Rapid prototyping

puts 'Adding Supplies and accessories / consumables'
@category_43 = Service.where(name: 'Adding Supplies and accessories / consumables').first_or_create
SubService.where(name: 'Steel bar labels', parent_id: @category_43.id).first_or_create #Steel bar labels
SubService.where(name: 'Steel coil tags', parent_id: @category_43.id).first_or_create #Steel coil tags
SubService.where(name: 'Steel tube labels', parent_id: @category_43.id).first_or_create #Steel tube labels
SubService.where(name: 'Steel wire tags', parent_id: @category_43.id).first_or_create #Steel wire tags

puts 'Adding Miscellaneous services'
@category_44 = Service.where(name: 'Miscellaneous services').first_or_create
SubService.where(name: 'Air purification services', parent_id: @category_44.id).first_or_create #Air purification services
SubService.where(name: 'Custom equipment', parent_id: @category_44.id).first_or_create #Custom equipment
SubService.where(name: 'Custom molding, parent_id: @category_44.id').first_or_create #Custom molding
SubService.where(name: 'Design/construction', parent_id: @category_44.id).first_or_create #Design/construction
SubService.where(name: 'Die protection systems', parent_id: @category_44.id).first_or_create #Die protection systems
SubService.where(name: 'Engineering/analysis', parent_id: @category_44.id).first_or_create #Engineering/analysis
SubService.where(name: 'Industrial hygiene monitoring', parent_id: @category_44.id).first_or_create #Industrial hygiene monitoring
SubService.where(name: 'Installation', parent_id: @category_44.id).first_or_create #Installation
SubService.where(name: 'Labeling', parent_id: @category_44.id).first_or_create #Labeling
SubService.where(name: 'Machine foundations', parent_id: @category_44.id).first_or_create #Machine foundations
SubService.where(name: 'Material storage', parent_id: @category_44.id).first_or_create #Material storage
SubService.where(name: 'Materials standards and specifications', parent_id: @category_44.id).first_or_create #Materials standards and specifications
SubService.where(name: 'Molding, polyurethane', parent_id: @category_44.id).first_or_create #Molding, polyurethane
SubService.where(name: 'Press pits', parent_id: @category_44.id).first_or_create #Press pits
SubService.where(name: 'Scrap buying', parent_id: @category_44.id).first_or_create #Scrap buying
