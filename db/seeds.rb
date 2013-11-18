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

puts 'Create Logo Packages'
LogoPackage.where(name: 'GOLD, 2 INCH LOGO').first_or_create
LogoPackage.where(name: 'GOLD, 1 INCH LOGO').first_or_create
LogoPackage.where(name: 'SILVER, 2 INCH LOGO').first_or_create
LogoPackage.where(name: 'SILVER, 1 INCH LOGO').first_or_create
LogoPackage.where(name: 'FREE LISTING, NO LOGO').first_or_create

puts 'Create Equipment Categories'
Category.where(name: 'Folding machines', category_type: 'Equipment').first_or_create
Category.where(name: 'Roll benders, angle or sheet/plate', category_type: 'Equipment').first_or_create
Category.where(name: 'Sheet/plate, folding', category_type: 'Equipment').first_or_create
Category.where(name: 'Sheet/plate, panel', category_type: 'Equipment').first_or_create
Category.where(name: 'Tube & pipe benders', category_type: 'Equipment').first_or_create
Category.where(name: 'Billet cutters', category_type: 'Equipment').first_or_create
Category.where(name: 'Billet molds', category_type: 'Equipment').first_or_create
Category.where(name: 'Casting equipment, die', category_type: 'Equipment').first_or_create #Casting equipment, die
Category.where(name: 'Casting equipment, direct chill', category_type: 'Equipment').first_or_create #Casting equipment, direct chill
Category.where(name: 'Casting equipment, permanent mold', category_type: 'Equipment').first_or_create #Casting equipment, permanent mold
Category.where(name: 'Casting systems, continuous', category_type: 'Equipment').first_or_create #Casting systems, continuous
Category.where(name: 'Filters, molten metal', category_type: 'Equipment').first_or_create #Filters, molten metal
Category.where(name: 'Forging die lubricators', category_type: 'Equipment').first_or_create #Forging die lubricators
Category.where(name: 'Forging equipment', category_type: 'Equipment').first_or_create #Forging equipment
Category.where(name: 'Forging manipulators', category_type: 'Equipment').first_or_create #Forging manipulators
Category.where(name: 'Ladles, automatic', category_type: 'Equipment').first_or_create #Ladles, automatic
Category.where(name: 'Sensors, molten metal level', category_type: 'Equipment').first_or_create #Sensors, molten metal level
Category.where(name: 'Strip accumulators', category_type: 'Equipment').first_or_create #Strip accumulators
Category.where(name: 'Strip casting machines, continuous', category_type: 'Equipment').first_or_create #Strip casting machines, continuous
Category.where(name: 'Strip guides', category_type: 'Equipment').first_or_create #Strip guides
Category.where(name: 'Blanking lines', category_type: 'Equipment').first_or_create #Blanking lines
Category.where(name: 'Blanking machines', category_type: 'Equipment').first_or_create #Blanking machines
Category.where(name: 'Coil cars', category_type: 'Equipment').first_or_create #Coil cars
Category.where(name: 'Coil coating lines', category_type: 'Equipment').first_or_create #Coil coating lines
Category.where(name: 'Coil cradles', category_type: 'Equipment').first_or_create #Coil cradles
Category.where(name: 'Coil end joiners', category_type: 'Equipment').first_or_create #Coil end joiners
Category.where(name: 'Coil equipment, accumulators', category_type: 'Equipment').first_or_create #Coil equipment, accumulators
Category.where(name: 'Coil equipment, coil coating/lubricating', category_type: 'Equipment').first_or_create #Coil equipment, coil coating/lubricating
Category.where(name: 'Coil equipment, coil reels, grabs', category_type: 'Equipment').first_or_create #Coil equipment, coil reels, grabs
Category.where(name: 'Coil equipment, cradles/carts', category_type: 'Equipment').first_or_create #Coil equipment, cradles/carts
Category.where(name: 'Coil equipment, cut-to-length', category_type: 'Equipment').first_or_create #Coil equipment, cut-to-length
Category.where(name: 'Coil equipment, end joining', category_type: 'Equipment').first_or_create #Coil equipment, end joining
Category.where(name: 'Coil equipment, slitting', category_type: 'Equipment').first_or_create #Coil equipment, slitting
Category.where(name: 'Coil equipment, straighteners/levelers', category_type: 'Equipment').first_or_create #Coil equipment, straighteners/levelers
Category.where(name: 'Coil equipment, tension control', category_type: 'Equipment').first_or_create #Coil equipment, tension control
Category.where(name: 'Coil equipment, winders, dereelers, uncoilers', category_type: 'Equipment').first_or_create #Coil equipment, winders, dereelers, uncoilers
Category.where(name: 'Coil grabs', category_type: 'Equipment').first_or_create #Coil grabs
Category.where(name: 'Coil pickling lines', category_type: 'Equipment').first_or_create #Coil pickling lines
Category.where(name: 'Coil prep lines', category_type: 'Equipment').first_or_create #Coil prep lines
Category.where(name: 'Coil processing lines', category_type: 'Equipment').first_or_create #Coil processing lines
Category.where(name: 'Cut-to-length lines', category_type: 'Equipment').first_or_create #Cut-to-length lines
Category.where(name: 'Decamberers', category_type: 'Equipment').first_or_create #Decamberers
Category.where(name: 'Decoilers', category_type: 'Equipment').first_or_create #Decoilers
Category.where(name: 'Drums, coil winding', category_type: 'Equipment').first_or_create #Drums, coil winding
Category.where(name: 'End mills', category_type: 'Equipment').first_or_create #End mills
Category.where(name: 'Flatteners', category_type: 'Equipment').first_or_create #Flatteners
Category.where(name: 'Knives, rotary slitter', category_type: 'Equipment').first_or_create #Knives, rotary slitter
Category.where(name: 'Levelers, roller & stretcher', category_type: 'Equipment').first_or_create #Levelers, roller & stretcher
Category.where(name: 'Levelers, tension', category_type: 'Equipment').first_or_create #Levelers, tension
Category.where(name: 'Liners, extrusion', category_type: 'Equipment').first_or_create #Liners, extrusion
Category.where(name: 'Loop controls', category_type: 'Equipment').first_or_create #Loop controls
Category.where(name: 'Multi-blanking lines', category_type: 'Equipment').first_or_create #Multi-blanking lines
Category.where(name: 'Pickling lines', category_type: 'Equipment').first_or_create #Pickling lines
Category.where(name: 'Recoilers', category_type: 'Equipment').first_or_create #Recoilers
Category.where(name: 'Roller straighteners', category_type: 'Equipment').first_or_create #Roller straighteners
Category.where(name: 'Rolls, coil coating', category_type: 'Equipment').first_or_create #Rolls, coil coating
Category.where(name: 'Separators, coil', category_type: 'Equipment').first_or_create #Separators, coil
Category.where(name: 'Side trim lines', category_type: 'Equipment').first_or_create #Side trim lines
Category.where(name: 'Slitting lines', category_type: 'Equipment').first_or_create #Slitting lines
Category.where(name: 'Software, coil optimization', category_type: 'Equipment').first_or_create #Software, coil optimization
Category.where(name: 'Straighteners, coil', category_type: 'Equipment').first_or_create #Straighteners, coil
Category.where(name: 'Tension leveling lines', category_type: 'Equipment').first_or_create #Tension leveling lines
Category.where(name: 'Uncoilers', category_type: 'Equipment').first_or_create #Uncoilers
Category.where(name: 'Billet & die heaters', category_type: 'Equipment').first_or_create #Billet & die heaters
Category.where(name: 'Blowers, fans & exhausters', category_type: 'Equipment').first_or_create #Blowers, fans & exhausters
Category.where(name: 'Burners, furnace & oven', category_type: 'Equipment').first_or_create #Burners, furnace & oven
Category.where(name: 'Control systems, temperature', category_type: 'Equipment').first_or_create #Control systems, temperature
Category.where(name: 'Cooling equipment', category_type: 'Equipment').first_or_create #Cooling equipment
Category.where(name: 'Dryers & ovens', category_type: 'Equipment').first_or_create #Dryers & ovens
Category.where(name: 'Drying systems, infrared', category_type: 'Equipment').first_or_create #Drying systems, infrared
Category.where(name: 'Exchangers, heating & cooling', category_type: 'Equipment').first_or_create #Exchangers, heating & cooling
Category.where(name: 'Fans, industrial', category_type: 'Equipment').first_or_create #Fans, industrial
Category.where(name: 'Furnace camera', category_type: 'Equipment').first_or_create #Furnace camera
Category.where(name: 'Furnace controls', category_type: 'Equipment').first_or_create #Furnace controls
Category.where(name: 'Furnace frames & doors', category_type: 'Equipment').first_or_create #Furnace frames & doors
Category.where(name: 'Furnace heating elements', category_type: 'Equipment').first_or_create #Furnace heating elements
Category.where(name: 'Furnace linings', category_type: 'Equipment').first_or_create #Furnace linings
Category.where(name: 'Furnaces, heat-treating', category_type: 'Equipment').first_or_create #Furnaces, heat-treating
Category.where(name: 'Furnaces, log homogenizing', category_type: 'Equipment').first_or_create #Furnaces, log homogenizing
Category.where(name: 'Furnaces, melting/holding', category_type: 'Equipment').first_or_create #Furnaces, melting/holding
Category.where(name: 'Furnaces, other', category_type: 'Equipment').first_or_create #Furnaces, other
Category.where(name: 'Immersion tube burners', category_type: 'Equipment').first_or_create #Immersion tube burners
Category.where(name: 'Incinerators', category_type: 'Equipment').first_or_create #Incinerators
Category.where(name: 'Oven controls, gas', category_type: 'Equipment').first_or_create #Oven controls, gas
Category.where(name: 'Ovens, coil', category_type: 'Equipment').first_or_create #Ovens, coil
Category.where(name: 'Ovens, paint baking', category_type: 'Equipment').first_or_create #Ovens, paint baking
Category.where(name: 'Abrasive finishing, arbor machines', category_type: 'Equipment').first_or_create #Abrasive finishing, arbor machines
Category.where(name: 'Buffing & polishing equipment', category_type: 'Equipment').first_or_create #Buffing & polishing equipment
Category.where(name: 'Coating lines, roller coating', category_type: 'Equipment').first_or_create #Coating lines, roller coating
Category.where(name: 'Deburring equipment', category_type: 'Equipment').first_or_create #Deburring equipment
Category.where(name: 'Edge conditioning lines, skiving', category_type: 'Equipment').first_or_create #Edge conditioning lines, skiving
Category.where(name: 'Electrocoating systems', category_type: 'Equipment').first_or_create #Electrocoating systems
Category.where(name: 'Electroplating equipment', category_type: 'Equipment').first_or_create #Electroplating equipment
Category.where(name: 'Embossing equipment & rolls', category_type: 'Equipment').first_or_create #Embossing equipment & rolls
Category.where(name: 'Finishing systems', category_type: 'Equipment').first_or_create #Finishing systems
Category.where(name: 'Galvalume processing', category_type: 'Equipment').first_or_create #Galvalume processing
Category.where(name: 'Galvanizing lines', category_type: 'Equipment').first_or_create #Galvanizing lines
Category.where(name: 'Galvanneal processing', category_type: 'Equipment').first_or_create #Galvanneal processing
Category.where(name: 'Grinding and polishing lines', category_type: 'Equipment').first_or_create #Grinding and polishing lines
Category.where(name: 'Grinding machines', category_type: 'Equipment').first_or_create #Grinding machines
Category.where(name: 'Grinding machines, precision', category_type: 'Equipment').first_or_create #Grinding machines, precision
Category.where(name: 'Metal cleaning equipment', category_type: 'Equipment').first_or_create #Metal cleaning equipment
Category.where(name: 'Powder coating equipment', category_type: 'Equipment').first_or_create #Powder coating equipment
Category.where(name: 'Roll coating machines', category_type: 'Equipment').first_or_create #Roll coating machines
Category.where(name: 'Spray booths', category_type: 'Equipment').first_or_create #Spray booths
Category.where(name: 'Spray equipment', category_type: 'Equipment').first_or_create #Spray equipment
Category.where(name: 'Tanks, metal finishing', category_type: 'Equipment').first_or_create #Tanks, metal finishing
Category.where(name: 'Tapping devices, die-mounted', category_type: 'Equipment').first_or_create #Tapping devices, die-mounted
Category.where(name: 'Laser assist gas system', category_type: 'Equipment').first_or_create #Laser assist gas system
Category.where(name: 'Laser cutting equipment', category_type: 'Equipment').first_or_create #Laser cutting equipment
Category.where(name: 'Laser cutting equipment, 3-D', category_type: 'Equipment').first_or_create #Laser cutting equipment, 3-D
Category.where(name: 'Laser cutting equipment, fiber laser', category_type: 'Equipment').first_or_create #Laser cutting equipment, fiber laser
Category.where(name: 'Laser cutting equipment, high-power', category_type: 'Equipment').first_or_create #Laser cutting equipment, high-power
Category.where(name: 'Laser cutting equipment, plasma combination', category_type: 'Equipment').first_or_create #Laser cutting equipment, plasma combination
Category.where(name: 'Laser cutting equipment, punch combination', category_type: 'Equipment').first_or_create #Laser cutting equipment, punch combination
Category.where(name: 'Laser cutting equipment, special order', category_type: 'Equipment').first_or_create #Laser cutting equipment, special order
Category.where(name: 'Laser, replacement optics', category_type: 'Equipment').first_or_create #Laser, replacement optics
Category.where(name: 'Air feeders', category_type: 'Equipment').first_or_create #Air feeders
Category.where(name: 'Automated storage & retrieval systems', category_type: 'Equipment').first_or_create #Automated storage & retrieval systems
Category.where(name: 'Baling machines', category_type: 'Equipment').first_or_create #Baling machines
Category.where(name: 'Bar feeders', category_type: 'Equipment').first_or_create #Bar feeders
Category.where(name: 'Bar handling equipment', category_type: 'Equipment').first_or_create #Bar handling equipment
Category.where(name: 'Billet handlers', category_type: 'Equipment').first_or_create #Billet handlers
Category.where(name: 'Chip handling systems', category_type: 'Equipment').first_or_create #Chip handling systems
Category.where(name: 'Conveyors & conveying systems', category_type: 'Equipment').first_or_create #Conveyors & conveying systems
Category.where(name: 'Cranes & hoists', category_type: 'Equipment').first_or_create #Cranes & hoists
Category.where(name: 'Destackers, sheet', category_type: 'Equipment').first_or_create #Destackers, sheet
Category.where(name: 'Extrusion handling equipment', category_type: 'Equipment').first_or_create #Extrusion handling equipment
Category.where(name: 'Forklifts', category_type: 'Equipment').first_or_create #Forklifts
Category.where(name: 'Magnets, electro lifting', category_type: 'Equipment').first_or_create #Magnets, electro lifting
Category.where(name: 'Magnets, material handling', category_type: 'Equipment').first_or_create #Magnets, material handling
Category.where(name: 'Racks, cantilever', category_type: 'Equipment').first_or_create #Racks, cantilever
Category.where(name: 'Racks, extrusion', category_type: 'Equipment').first_or_create #Racks, extrusion
Category.where(name: 'Racks, storage', category_type: 'Equipment').first_or_create #Racks, storage
Category.where(name: 'Sheet fanners/feeders', category_type: 'Equipment').first_or_create #Sheet fanners/feeders
Category.where(name: 'Sideloaders', category_type: 'Equipment').first_or_create #Sideloaders
Category.where(name: 'Stackers, extrusion', category_type: 'Equipment').first_or_create #Stackers, extrusion
Category.where(name: 'Stackers, plate', category_type: 'Equipment').first_or_create #Stackers, plate
Category.where(name: 'Stackers, sheet', category_type: 'Equipment').first_or_create #Stackers, sheet
Category.where(name: 'Stackers/destackers, plate & sheet', category_type: 'Equipment').first_or_create #Stackers/destackers, plate & sheet
Category.where(name: 'Strapping equipment', category_type: 'Equipment').first_or_create #Strapping equipment
Category.where(name: 'Stretch wrapping equipment', category_type: 'Equipment').first_or_create #Stretch wrapping equipment
Category.where(name: 'Under-the-hook equipment', category_type: 'Equipment').first_or_create #Under-the-hook equipment
Category.where(name: 'Vacuum lifts', category_type: 'Equipment').first_or_create #Vacuum lifts
Category.where(name: 'Press brake gauges, back/front', category_type: 'Equipment').first_or_create #Press brake gauges, back/front
Category.where(name: 'Press brakes', category_type: 'Equipment').first_or_create #Press brakes
Category.where(name: 'Press brakes, electric/servo', category_type: 'Equipment').first_or_create #Press brakes, electric/servo
Category.where(name: 'Press brakes, hand', category_type: 'Equipment').first_or_create #Press brakes, hand
Category.where(name: 'Press brakes, hydraulic', category_type: 'Equipment').first_or_create #Press brakes, hydraulic
Category.where(name: 'Press brakes, mechanical', category_type: 'Equipment').first_or_create #Press brakes, mechanical
Category.where(name: 'Cutoff presses', category_type: 'Equipment').first_or_create #Cutoff presses
Category.where(name: 'Extrusion press tools', category_type: 'Equipment').first_or_create #Extrusion press tools
Category.where(name: 'Extrusion pullers', category_type: 'Equipment').first_or_create #Extrusion pullers
Category.where(name: 'Feeders, sheet', category_type: 'Equipment').first_or_create #Feeders, sheet
Category.where(name: 'Feeds, electronic', category_type: 'Equipment').first_or_create #Feeds, electronic
Category.where(name: 'Feeds, mechanical', category_type: 'Equipment').first_or_create #Feeds, mechanical
Category.where(name: 'Foil mills', category_type: 'Equipment').first_or_create #Foil mills
Category.where(name: 'Forging presses, cold flow', category_type: 'Equipment').first_or_create #Forging presses, cold flow
Category.where(name: 'Forging presses, open die', category_type: 'Equipment').first_or_create #Forging presses, open die
Category.where(name: 'Press automation & controls', category_type: 'Equipment').first_or_create #Press automation & controls
Category.where(name: 'Press automation equipment', category_type: 'Equipment').first_or_create #Press automation equipment
Category.where(name: 'Press counter balance controller', category_type: 'Equipment').first_or_create #Press counter balance controller
Category.where(name: 'Press counter balances', category_type: 'Equipment').first_or_create #Press counter balances
Category.where(name: 'Press feed robots', category_type: 'Equipment').first_or_create #Press feed robots
Category.where(name: 'Press feeders, pneumatic', category_type: 'Equipment').first_or_create #Press feeders, pneumatic
Category.where(name: 'Press feeders, roll', category_type: 'Equipment').first_or_create #Press feeders, roll
Category.where(name: 'Press feeders, servo', category_type: 'Equipment').first_or_create #Press feeders, servo
Category.where(name: 'Press feeds', category_type: 'Equipment').first_or_create #Press feeds
Category.where(name: 'Press feeds, electronic', category_type: 'Equipment').first_or_create #Press feeds, electronic
Category.where(name: 'Press monitoring, sensors', category_type: 'Equipment').first_or_create #Press monitoring, sensors
Category.where(name: 'Press part-transfer mechanisms', category_type: 'Equipment').first_or_create #Press part-transfer mechanisms
Category.where(name: 'Press room equipment', category_type: 'Equipment').first_or_create #Press room equipment
Category.where(name: 'Presses, arbor', category_type: 'Equipment').first_or_create #Presses, arbor
Category.where(name: 'Presses, bending', category_type: 'Equipment').first_or_create #Presses, bending
Category.where(name: 'Presses, coining', category_type: 'Equipment').first_or_create #Presses, coining
Category.where(name: 'Presses, deep drawing', category_type: 'Equipment').first_or_create #Presses, deep drawing
Category.where(name: 'Presses, electric', category_type: 'Equipment').first_or_create #Presses, electric
Category.where(name: 'Presses, extrusion', category_type: 'Equipment').first_or_create #Presses, extrusion
Category.where(name: 'Presses, extrusion, stretch', category_type: 'Equipment').first_or_create #Presses, extrusion, stretch
Category.where(name: 'Presses, fineblanking', category_type: 'Equipment').first_or_create #Presses, fineblanking
Category.where(name: 'Presses, forging', category_type: 'Equipment').first_or_create #Presses, forging
Category.where(name: 'Presses, gap-frame, hydraulic', category_type: 'Equipment').first_or_create #Presses, gap-frame, hydraulic
Category.where(name: 'Presses, gap-frame, mechanical', category_type: 'Equipment').first_or_create #Presses, gap-frame, mechanical
Category.where(name: 'Presses, hardware inspection', category_type: 'Equipment').first_or_create #Presses, hardware inspection
Category.where(name: 'Presses, horning', category_type: 'Equipment').first_or_create #Presses, horning
Category.where(name: 'Presses, hydraulic', category_type: 'Equipment').first_or_create #Presses, hydraulic
Category.where(name: 'Presses, hydroforming', category_type: 'Equipment').first_or_create #Presses, hydroforming
Category.where(name: 'Presses, hydroforming, sheet', category_type: 'Equipment').first_or_create #Presses, hydroforming, sheet
Category.where(name: 'Presses, hydroforming, tube', category_type: 'Equipment').first_or_create #Presses, hydroforming, tube
Category.where(name: 'Presses, knuckle-joint', category_type: 'Equipment').first_or_create #Presses, knuckle-joint
Category.where(name: 'Presses, loading & unloading', category_type: 'Equipment').first_or_create #Presses, loading & unloading
Category.where(name: 'Presses, mechanical', category_type: 'Equipment').first_or_create #Presses, mechanical
Category.where(name: 'Presses, pneumatic', category_type: 'Equipment').first_or_create #Presses, pneumatic
Category.where(name: 'Presses, powder compacting', category_type: 'Equipment').first_or_create #Presses, powder compacting
Category.where(name: 'Presses, rubber-pad forming', category_type: 'Equipment').first_or_create #Presses, rubber-pad forming
Category.where(name: 'Presses, servo', category_type: 'Equipment').first_or_create #Presses, servo
Category.where(name: 'Presses, slide forming', category_type: 'Equipment').first_or_create #Presses, slide forming
Category.where(name: 'Presses, straightside, hydraulic', category_type: 'Equipment').first_or_create #Presses, straightside, hydraulic
Category.where(name: 'Presses, straightside, mechanical', category_type: 'Equipment').first_or_create #Presses, straightside, mechanical
Category.where(name: 'Presses, transfer', category_type: 'Equipment').first_or_create #Presses, transfer
Category.where(name: 'Presses, trimming', category_type: 'Equipment').first_or_create #Presses, trimming
Category.where(name: 'Presses, tryout', category_type: 'Equipment').first_or_create #Presses, tryout
Category.where(name: 'Software, stamping simulation', category_type: 'Equipment').first_or_create #Software, stamping simulation
Category.where(name: 'Stamping presses', category_type: 'Equipment').first_or_create #Stamping presses
Category.where(name: 'Stamping presses, servo', category_type: 'Equipment').first_or_create #Stamping presses, servo
Category.where(name: 'Valves, press safety', category_type: 'Equipment').first_or_create #Valves, press safety
Category.where(name: 'Drilling machines, multiple', category_type: 'Equipment').first_or_create #Drilling machines, multiple
Category.where(name: 'Punch presses', category_type: 'Equipment').first_or_create #Punch presses
Category.where(name: 'Punch/shear combinations', category_type: 'Equipment').first_or_create #Punch/shear combinations
Category.where(name: 'Punches', category_type: 'Equipment').first_or_create #Punches
Category.where(name: 'Punches & dies, perforating', category_type: 'Equipment').first_or_create #Punches & dies, perforating
Category.where(name: 'Punches, hydraulic', category_type: 'Equipment').first_or_create #Punches, hydraulic
Category.where(name: 'Punching machines & nibblers', category_type: 'Equipment').first_or_create #Punching machines & nibblers
Category.where(name: 'Turret punch presses, hydraulic', category_type: 'Equipment').first_or_create #Turret punch presses, hydraulic
Category.where(name: 'Turret punch presses, mechanical', category_type: 'Equipment').first_or_create #Turret punch presses, mechanical
Category.where(name: 'Turret punch presses, with plasma', category_type: 'Equipment').first_or_create #Turret punch presses, with plasma
Category.where(name: 'Robot tooling/grippers', category_type: 'Equipment').first_or_create #Robot tooling/grippers
Category.where(name: 'Robots, industrial', category_type: 'Equipment').first_or_create #Robots, industrial
Category.where(name: 'Robots, material handling', category_type: 'Equipment').first_or_create #Robots, material handling
Category.where(name: 'Robots, peripherals', category_type: 'Equipment').first_or_create #Robots, peripherals
Category.where(name: 'Robots, welding', category_type: 'Equipment').first_or_create #Robots, welding
Category.where(name: 'Angle rolls', category_type: 'Equipment').first_or_create #Angle rolls
Category.where(name: 'Plate rolls', category_type: 'Equipment').first_or_create #Plate rolls
Category.where(name: 'Roll forming mills', category_type: 'Equipment').first_or_create #Roll forming mills
Category.where(name: 'Roll forming rolls', category_type: 'Equipment').first_or_create #Roll forming rolls
Category.where(name: 'Roll grinders', category_type: 'Equipment').first_or_create #Roll grinders
Category.where(name: 'Rolling mills/equipment', category_type: 'Equipment').first_or_create #Rolling mills/equipment
Category.where(name: 'Rolls, embossing', category_type: 'Equipment').first_or_create #Rolls, embossing
Category.where(name: 'Rolls, rolling mill', category_type: 'Equipment').first_or_create #Rolls, rolling mill
Category.where(name: 'Rolls, rubber & polyurethane', category_type: 'Equipment').first_or_create #Rolls, rubber & polyurethane
Category.where(name: 'Shape control, rolling mills', category_type: 'Equipment').first_or_create #Shape control, rolling mills
Category.where(name: 'Air purifying systems', category_type: 'Equipment').first_or_create #Air purifying systems
Category.where(name: 'Control systems, pollution', category_type: 'Equipment').first_or_create #Control systems, pollution
Category.where(name: 'Dust collectors', category_type: 'Equipment').first_or_create #Dust collectors
Category.where(name: 'Pollution control systems', category_type: 'Equipment').first_or_create #Pollution control systems
Category.where(name: 'Safety equipment, apparel', category_type: 'Equipment').first_or_create #Safety equipment, apparel
Category.where(name: 'Safety equipment, barriers & machine guards', category_type: 'Equipment').first_or_create #Safety equipment, barriers & machine guards
Category.where(name: 'Safety equipment, brake monitors', category_type: 'Equipment').first_or_create #Safety equipment, brake monitors
Category.where(name: 'Safety equipment, clutches & brakes', category_type: 'Equipment').first_or_create #Safety equipment, clutches & brakes
Category.where(name: 'Safety equipment, floor mats', category_type: 'Equipment').first_or_create #Safety equipment, floor mats
Category.where(name: 'Safety equipment, light curtains', category_type: 'Equipment').first_or_create #Safety equipment, light curtains
Category.where(name: 'Safety equipment, lockout/tagout devices', category_type: 'Equipment').first_or_create #Safety equipment, lockout/tagout devices
Category.where(name: 'Safety equipment, machine guards', category_type: 'Equipment').first_or_create #Safety equipment, machine guards
Category.where(name: 'Safety equipment, palm buttons', category_type: 'Equipment').first_or_create #Safety equipment, palm buttons
Category.where(name: 'Safety equipment, presence-sensing devices', category_type: 'Equipment').first_or_create #Safety equipment, presence-sensing devices
Category.where(name: 'Safety equipment, welding protection', category_type: 'Equipment').first_or_create #Safety equipment, welding protection
Category.where(name: 'Abrasive cutoff machines', category_type: 'Equipment').first_or_create #Abrasive cutoff machines
Category.where(name: 'Air knife, drying', category_type: 'Equipment').first_or_create #Air knife, drying
Category.where(name: 'Cutoff machines, saws', category_type: 'Equipment').first_or_create #Cutoff machines, saws
Category.where(name: 'Cutoff machines, tube & pipe', category_type: 'Equipment').first_or_create #Cutoff machines, tube & pipe
Category.where(name: 'Cutting cells & systems', category_type: 'Equipment').first_or_create #Cutting cells & systems
Category.where(name: 'Flame cutting equipment', category_type: 'Equipment').first_or_create #Flame cutting equipment
Category.where(name: 'Miter cutoff saws, single & double', category_type: 'Equipment').first_or_create #Miter cutoff saws, single & double
Category.where(name: 'Notching machines', category_type: 'Equipment').first_or_create #Notching machines
Category.where(name: 'Oxy-fuel cutting equipment', category_type: 'Equipment').first_or_create #Oxy-fuel cutting equipment
Category.where(name: 'Plasma cutting equipment', category_type: 'Equipment').first_or_create #Plasma cutting equipment
Category.where(name: 'Saw blades, all types', category_type: 'Equipment').first_or_create #Saw blades, all types
Category.where(name: 'Saws, band', category_type: 'Equipment').first_or_create #Saws, band
Category.where(name: 'Saws, bar & billet', category_type: 'Equipment').first_or_create #Saws, bar & billet
Category.where(name: 'Saws, circular', category_type: 'Equipment').first_or_create #Saws, circular
Category.where(name: 'Saws, circular cutoff (cold)', category_type: 'Equipment').first_or_create #Saws, circular cutoff (cold)
Category.where(name: 'Saws, contour', category_type: 'Equipment').first_or_create #Saws, contour
Category.where(name: 'Saws, other', category_type: 'Equipment').first_or_create #Saws, other
Category.where(name: 'Saws/shears, extrusion', category_type: 'Equipment').first_or_create #Saws/shears, extrusion
Category.where(name: 'Shear knives', category_type: 'Equipment').first_or_create #Shear knives
Category.where(name: 'Shearing machines', category_type: 'Equipment').first_or_create #Shearing machines
Category.where(name: 'Shearing machines, flying', category_type: 'Equipment').first_or_create #Shearing machines, flying
Category.where(name: 'Spacers, shear', category_type: 'Equipment').first_or_create #Spacers, shear
Category.where(name: 'Waterjet cutting equipment', category_type: 'Equipment').first_or_create #Waterjet cutting equipment
Category.where(name: 'Bending', category_type: 'Equipment').first_or_create #Bending
Category.where(name: 'CAD/CAM', category_type: 'Equipment').first_or_create #CAD/CAM
Category.where(name: 'ERP/MRP Supply chain management', category_type: 'Equipment').first_or_create #ERP/MRP Supply chain management
Category.where(name: 'Job costing & estimating', category_type: 'Equipment').first_or_create #Job costing & estimating
Category.where(name: 'NC/CNC programming', category_type: 'Equipment').first_or_create #NC/CNC programming
Category.where(name: 'Nesting', category_type: 'Equipment').first_or_create #Nesting
Category.where(name: 'Process planning & scheduling', category_type: 'Equipment').first_or_create #Process planning & scheduling
Category.where(name: 'Sheet metal layout, flat pattern', category_type: 'Equipment').first_or_create #Sheet metal layout, flat pattern
Category.where(name: 'Shop-floor tracking & flow control', category_type: 'Equipment').first_or_create #Shop-floor tracking & flow control
Category.where(name: 'Simulation, process modeling', category_type: 'Equipment').first_or_create #Simulation, process modeling
Category.where(name: 'Tool management & storage', category_type: 'Equipment').first_or_create #Tool management & storage
Category.where(name: 'Carbide dies', category_type: 'Equipment').first_or_create #Carbide dies
Category.where(name: 'Die buttons', category_type: 'Equipment').first_or_create #Die buttons
Category.where(name: 'Die carts/lift tables', category_type: 'Equipment').first_or_create #Die carts/lift tables
Category.where(name: 'Die changing equipment', category_type: 'Equipment').first_or_create #Die changing equipment
Category.where(name: 'Die clamps', category_type: 'Equipment').first_or_create #Die clamps
Category.where(name: 'Die cushions', category_type: 'Equipment').first_or_create #Die cushions
Category.where(name: 'Die design', category_type: 'Equipment').first_or_create #Die design
Category.where(name: 'Die film', category_type: 'Equipment').first_or_create #Die film
Category.where(name: 'Die holders', category_type: 'Equipment').first_or_create #Die holders
Category.where(name: 'Die inserts', category_type: 'Equipment').first_or_create #Die inserts
Category.where(name: 'Die inserts', category_type: 'Equipment').first_or_create #Die lifters
Category.where(name: 'Die lubrication systems', category_type: 'Equipment').first_or_create #Die lubrication systems
Category.where(name: 'Die pins', category_type: 'Equipment').first_or_create #Die pins
Category.where(name: 'Die protection systems', category_type: 'Equipment').first_or_create #Die protection systems
Category.where(name: 'Die separators', category_type: 'Equipment').first_or_create #Die separators
Category.where(name: 'Die sets & accessories', category_type: 'Equipment').first_or_create #Die sets & accessories
Category.where(name: 'Die springs', category_type: 'Equipment').first_or_create #Die springs
Category.where(name: 'Die storage & retrieval systems', category_type: 'Equipment').first_or_create #Die storage & retrieval systems
Category.where(name: 'Die transfer, handling systems', category_type: 'Equipment').first_or_create #Die transfer, handling systems
Category.where(name: 'Dies, blank & form', category_type: 'Equipment').first_or_create #Dies, blank & form
Category.where(name: 'Dies, blanking', category_type: 'Equipment').first_or_create #Dies, blanking
Category.where(name: 'Dies, drawing/forming', category_type: 'Equipment').first_or_create #Dies, drawing/forming
Category.where(name: 'Dies, extrusion', category_type: 'Equipment').first_or_create #Dies, extrusion
Category.where(name: 'Dies, permanent mold casting', category_type: 'Equipment').first_or_create #Dies, permanent mold casting
Category.where(name: 'Dies, piercing & notching', category_type: 'Equipment').first_or_create #Dies, piercing & notching
Category.where(name: 'Dies, progressive', category_type: 'Equipment').first_or_create #Dies, progressive
Category.where(name: 'Dies, punch press', category_type: 'Equipment').first_or_create #Dies, punch press
Category.where(name: 'Dies, roll forming', category_type: 'Equipment').first_or_create #Dies, roll forming
Category.where(name: 'Quick die change systems', category_type: 'Equipment').first_or_create #Quick die change systems
Category.where(name: 'Tooling, bending', category_type: 'Equipment').first_or_create #Tooling, bending
Category.where(name: 'Tooling, ceramic', category_type: 'Equipment').first_or_create #Tooling, ceramic
Category.where(name: 'Tooling, die casting', category_type: 'Equipment').first_or_create #Tooling, die casting
Category.where(name: 'Tooling, extrusion', category_type: 'Equipment').first_or_create #Tooling, extrusion
Category.where(name: 'Tooling, ironworker', category_type: 'Equipment').first_or_create #Tooling, ironworker
Category.where(name: 'Tooling, press brake', category_type: 'Equipment').first_or_create #Tooling, press brake
Category.where(name: 'Tooling, presses', category_type: 'Equipment').first_or_create #Tooling, presses
Category.where(name: 'Tooling, punch & die sets', category_type: 'Equipment').first_or_create #Tooling, punch & die sets
Category.where(name: 'Tooling, roll forming', category_type: 'Equipment').first_or_create #Tooling, roll forming
Category.where(name: 'Tooling, short-run', category_type: 'Equipment').first_or_create #Tooling, short-run
Category.where(name: 'Tooling, tube & pipe mills', category_type: 'Equipment').first_or_create #Tooling, tube & pipe mills
Category.where(name: 'Tooling, tube bending', category_type: 'Equipment').first_or_create #Tooling, tube bending
Category.where(name: 'Tooling, turret punch press', category_type: 'Equipment').first_or_create #Tooling, turret punch press
Category.where(name: 'Tooling, unitized', category_type: 'Equipment').first_or_create #Tooling, unitized
Category.where(name: 'Tooling, urethane', category_type: 'Equipment').first_or_create #Tooling, urethane
Category.where(name: 'Tools, carbide cutting', category_type: 'Equipment').first_or_create #Tools, carbide cutting
Category.where(name: 'Tube perforating machines', category_type: 'Equipment').first_or_create #Tube perforating machines
Category.where(name: 'Tungsten carbide tooling', category_type: 'Equipment').first_or_create #Tungsten carbide tooling
Category.where(name: 'Cold draw equipment', category_type: 'Equipment').first_or_create #Cold draw equipment
Category.where(name: 'Drawbenches', category_type: 'Equipment').first_or_create #Drawbenches
Category.where(name: 'Mandrels', category_type: 'Equipment').first_or_create #Mandrels
Category.where(name: 'Tube & pipe mills', category_type: 'Equipment').first_or_create #Tube & pipe mills
Category.where(name: 'Tube cutting machinery', category_type: 'Equipment').first_or_create #Tube cutting machinery
Category.where(name: 'Tube louvers', category_type: 'Equipment').first_or_create #Tube louvers
Category.where(name: 'Tube-end forming equipment', category_type: 'Equipment').first_or_create #Tube-end forming equipment
Category.where(name: 'Tube/pipe bending machines', category_type: 'Equipment').first_or_create #Tube/pipe bending machines
Category.where(name: 'Automatic inspection systems', category_type: 'Equipment').first_or_create #Automatic inspection systems
Category.where(name: 'Coating thickness testers', category_type: 'Equipment').first_or_create #Coating thickness testers
Category.where(name: 'Coordinate measuring machines', category_type: 'Equipment').first_or_create #Coordinate measuring machines
Category.where(name: 'Gauges, cutoff', category_type: 'Equipment').first_or_create #Gauges, cutoff
Category.where(name: 'Gauges, dimensional', category_type: 'Equipment').first_or_create #Gauges, dimensional
Category.where(name: 'Gauges, thickness', category_type: 'Equipment').first_or_create #Gauges, thickness
Category.where(name: 'Gauges, thickness, noncontact', category_type: 'Equipment').first_or_create #Gauges, thickness, noncontact
Category.where(name: 'Gauges, thickness, ultrasonic', category_type: 'Equipment').first_or_create #Gauges, thickness, ultrasonic
Category.where(name: 'Hardness testers', category_type: 'Equipment').first_or_create #Hardness testers
Category.where(name: 'Inspection lights', category_type: 'Equipment').first_or_create #Inspection lights
Category.where(name: 'Inspection systems', category_type: 'Equipment').first_or_create #Inspection systems
Category.where(name: 'Inspection/measurement equipment, sheet/plate', category_type: 'Equipment').first_or_create #Inspection/measurement equipment, sheet/plate
Category.where(name: 'Inspection/measurement equipment, tube & pipe', category_type: 'Equipment').first_or_create #Inspection/measurement equipment, tube & pipe
Category.where(name: 'Load monitors', category_type: 'Equipment').first_or_create #Load monitors
Category.where(name: 'Measuring equipment', category_type: 'Equipment').first_or_create #Measuring equipment
Category.where(name: 'Metrology systems', category_type: 'Equipment').first_or_create #Metrology systems
Category.where(name: 'SPC (statistical process control) gauging', category_type: 'Equipment').first_or_create #SPC (statistical process control) gauging
Category.where(name: 'Spectrometers', category_type: 'Equipment').first_or_create #Spectrometers
Category.where(name: 'Ultrasonic testing equipment', category_type: 'Equipment').first_or_create #Ultrasonic testing equipment
Category.where(name: 'Accessories (gloves, holders, etc.)', category_type: 'Equipment').first_or_create #Accessories (gloves, holders, etc.)
Category.where(name: 'Arc welding equipment', category_type: 'Equipment').first_or_create #Arc welding equipment
Category.where(name: 'Beveling machines', category_type: 'Equipment').first_or_create #Beveling machines
Category.where(name: 'Brazing/soldering equipment', category_type: 'Equipment').first_or_create #Brazing/soldering equipment
Category.where(name: 'Cells & systems', category_type: 'Equipment').first_or_create #Cells & systems
Category.where(name: 'Consumables (electrodes, gases)', category_type: 'Equipment').first_or_create #Consumables (electrodes, gases)
Category.where(name: 'Coolers/chillers', category_type: 'Equipment').first_or_create #Coolers/chillers
Category.where(name: 'Deslagging machines', category_type: 'Equipment').first_or_create #Deslagging machines
Category.where(name: 'Dross systems', category_type: 'Equipment').first_or_create #Dross systems
Category.where(name: 'Electronic controls', category_type: 'Equipment').first_or_create #Electronic controls
Category.where(name: 'Fume ducting', category_type: 'Equipment').first_or_create #Fume ducting
Category.where(name: 'Fume removal systems/equipment', category_type: 'Equipment').first_or_create #Fume removal systems/equipment
Category.where(name: 'GMAW/GTAW', category_type: 'Equipment').first_or_create #GMAW/GTAW
Category.where(name: 'Guns', category_type: 'Equipment').first_or_create #Guns
Category.where(name: 'Helmets', category_type: 'Equipment').first_or_create #Helmets
Category.where(name: 'High-frequency', category_type: 'Equipment').first_or_create #High-frequency
Category.where(name: 'Laser', category_type: 'Equipment').first_or_create #Laser
Category.where(name: 'Plasma', category_type: 'Equipment').first_or_create #Plasma
Category.where(name: 'Platens/work tables', category_type: 'Equipment').first_or_create #Platens/work tables
Category.where(name: 'Positioners', category_type: 'Equipment').first_or_create #Positioners
Category.where(name: 'Resistance welding, flash', category_type: 'Equipment').first_or_create #Resistance welding, flash
Category.where(name: 'Resistance welding, seam', category_type: 'Equipment').first_or_create #Resistance welding, seam
Category.where(name: 'Resistance welding, spot, stud', category_type: 'Equipment').first_or_create #Resistance welding, spot, stud
Category.where(name: 'Robotic Welding Cells', category_type: 'Equipment').first_or_create #Robotic Welding Cells
Category.where(name: 'Torches', category_type: 'Equipment').first_or_create #Torches
Category.where(name: 'Weld fittings', category_type: 'Equipment').first_or_create #Weld fittings
Category.where(name: 'Weld-nut/stud feeders', category_type: 'Equipment').first_or_create #Weld-nut/stud feeders
Category.where(name: 'Welding wire', category_type: 'Equipment').first_or_create #Welding wire
Category.where(name: 'Workholding equipment', category_type: 'Equipment').first_or_create #Workholding equipment
Category.where(name: 'Acid purification equipment', category_type: 'Equipment').first_or_create #Acid purification equipment
Category.where(name: 'Air ejection equipment', category_type: 'Equipment').first_or_create #Air ejection equipment
Category.where(name: 'Automated assembly systems', category_type: 'Equipment').first_or_create #Automated assembly systems
Category.where(name: 'Automatic nut feeder', category_type: 'Equipment').first_or_create #Automatic nut feeder
Category.where(name: 'Canisters, extrusion', category_type: 'Equipment').first_or_create #Canisters, extrusion
Category.where(name: 'Clamps, anodizing, plating', category_type: 'Equipment').first_or_create #Clamps, anodizing, plating
Category.where(name: 'Cleaning equipment, aqueous, high-pressure', category_type: 'Equipment').first_or_create #Cleaning equipment, aqueous, high-pressure
Category.where(name: 'Cleaning equipment, ultrasonic', category_type: 'Equipment').first_or_create #Cleaning equipment, ultrasonic
Category.where(name: 'Cleaning equipment, vapor/mist', category_type: 'Equipment').first_or_create #Cleaning equipment, vapor/mist
Category.where(name: 'Containers, extrusion', category_type: 'Equipment').first_or_create #Containers, extrusion
Category.where(name: 'Containers, packaging', category_type: 'Equipment').first_or_create #Containers, packaging
Category.where(name: 'Control systems', category_type: 'Equipment').first_or_create #Control systems
Category.where(name: 'Controls, motion', category_type: 'Equipment').first_or_create #Controls, motion
Category.where(name: 'Controls, noise/vibration', category_type: 'Equipment').first_or_create #Controls, noise/vibration
Category.where(name: 'Controls, remote', category_type: 'Equipment').first_or_create #Controls, remote
Category.where(name: 'Cylinders, hydraulic & pneumatic', category_type: 'Equipment').first_or_create #Cylinders, hydraulic & pneumatic
Category.where(name: 'Cylinders, nitrogen die', category_type: 'Equipment').first_or_create #Cylinders, nitrogen die
Category.where(name: 'Deoilers', category_type: 'Equipment').first_or_create #Deoilers
Category.where(name: 'Erecting machinery', category_type: 'Equipment').first_or_create #Erecting machinery
Category.where(name: 'Expander rings', category_type: 'Equipment').first_or_create #Expander rings
Category.where(name: 'Fasteners, self-forming for sheet metal', category_type: 'Equipment').first_or_create #Fasteners, self-forming for sheet metal
Category.where(name: 'Filtration systems', category_type: 'Equipment').first_or_create #Filtration systems
Category.where(name: 'Forming & flanging machines', category_type: 'Equipment').first_or_create #Forming & flanging machines
Category.where(name: 'Injection molding equipment', category_type: 'Equipment').first_or_create #Injection molding equipment
Category.where(name: 'Ironworkers', category_type: 'Equipment').first_or_create #Ironworkers
Category.where(name: 'Lubricant applicators', category_type: 'Equipment').first_or_create #Lubricant applicators
Category.where(name: 'Machine monitors', category_type: 'Equipment').first_or_create #Machine monitors
Category.where(name: 'Machinery mounts', category_type: 'Equipment').first_or_create #Machinery mounts
Category.where(name: 'Machinery moving & erecting', category_type: 'Equipment').first_or_create #Machinery moving & erecting
Category.where(name: 'Manipulators', category_type: 'Equipment').first_or_create #Manipulators
Category.where(name: 'Marking', category_type: 'Equipment').first_or_create #Marking
Category.where(name: 'Mining equipment', category_type: 'Equipment').first_or_create #Mining equipment
Category.where(name: 'Optical sensing/gauging systems', category_type: 'Equipment').first_or_create #Optical sensing/gauging systems
Category.where(name: 'Panel, roll and linear cutting optimization', category_type: 'Equipment').first_or_create #Panel, roll and linear cutting optimization
Category.where(name: 'Parts identification & marking systems', category_type: 'Equipment').first_or_create #Parts identification & marking systems
Category.where(name: 'Payoff reels', category_type: 'Equipment').first_or_create #Payoff reels
Category.where(name: 'Portable tools, beveling', category_type: 'Equipment').first_or_create #Portable tools, beveling
Category.where(name: 'Portable tools, cutting', category_type: 'Equipment').first_or_create #Portable tools, cutting
Category.where(name: 'Portable tools, drilling', category_type: 'Equipment').first_or_create #Portable tools, drilling
Category.where(name: 'Portable tools, grinding', category_type: 'Equipment').first_or_create #Portable tools, grinding
Category.where(name: 'Portable tools, punching', category_type: 'Equipment').first_or_create #Portable tools, punching
Category.where(name: 'Programmable controls & switches', category_type: 'Equipment').first_or_create #Programmable controls & switches
Category.where(name: 'Proximity switches', category_type: 'Equipment').first_or_create #Proximity switches
Category.where(name: 'Pulley machines', category_type: 'Equipment').first_or_create #Pulley machines
Category.where(name: 'Rectifiers', category_type: 'Equipment').first_or_create #Rectifiers
Category.where(name: 'Recycling equipment', category_type: 'Equipment').first_or_create #Recycling equipment
Category.where(name: 'Riveting', category_type: 'Equipment').first_or_create #Riveting
Category.where(name: 'Runout tables', category_type: 'Equipment').first_or_create #Runout tables
Category.where(name: 'Scrap choppers', category_type: 'Equipment').first_or_create #Scrap choppers
Category.where(name: 'Scrap processing equipment', category_type: 'Equipment').first_or_create #Scrap processing equipment
Category.where(name: 'Sensors, color', category_type: 'Equipment').first_or_create #Sensors, color
Category.where(name: 'Sensors, load', category_type: 'Equipment').first_or_create #Sensors, load
Category.where(name: 'Sensors, noncontact', category_type: 'Equipment').first_or_create #Sensors, noncontact
Category.where(name: 'Servo feeds', category_type: 'Equipment').first_or_create #Servo feeds
Category.where(name: 'Sheeting lines', category_type: 'Equipment').first_or_create #Sheeting lines
Category.where(name: 'Slide forming & spring machines', category_type: 'Equipment').first_or_create #Slide forming & spring machines
Category.where(name: 'Spring forming machines', category_type: 'Equipment').first_or_create #Spring forming machines
Category.where(name: 'Stems, extrusion', category_type: 'Equipment').first_or_create #Stems, extrusion
Category.where(name: 'Straighteners, tube & bar', category_type: 'Equipment').first_or_create #Straighteners, tube & bar
Category.where(name: 'Stretchers, extrusion', category_type: 'Equipment').first_or_create #Stretchers, extrusion
Category.where(name: 'Swaging machines', category_type: 'Equipment').first_or_create #Swaging machines
Category.where(name: 'Thermocouples', category_type: 'Equipment').first_or_create #Thermocouples
Category.where(name: 'Transformers', category_type: 'Equipment').first_or_create #Transformers
Category.where(name: 'Trim handling systems', category_type: 'Equipment').first_or_create #Trim handling systems
Category.where(name: 'Upsetters', category_type: 'Equipment').first_or_create #Upsetters
Category.where(name: 'Used equipment', category_type: 'Equipment').first_or_create #Used equipment
Category.where(name: 'Valves, proportional', category_type: 'Equipment').first_or_create #Valves, proportional
Category.where(name: 'Vision systems', category_type: 'Equipment').first_or_create #Vision systems
Category.where(name: 'Washers', category_type: 'Equipment').first_or_create #Washers
Category.where(name: 'Waste treatment systems', category_type: 'Equipment').first_or_create #Waste treatment systems
Category.where(name: 'Winders, traverse', category_type: 'Equipment').first_or_create #Winders, traverse
Category.where(name: 'Wire forming machinery', category_type: 'Equipment').first_or_create #Wire forming machinery


puts 'Create Material Categories'
Category.where(name: 'Bar & rod, exotic alloys', category_type: 'Material').first_or_create
Category.where(name: 'Bonderized', category_type: 'Material').first_or_create #Bonderized
Category.where(name: 'Cobalt', category_type: 'Material').first_or_create #Cobalt
Category.where(name: 'Galvalume', category_type: 'Material').first_or_create #Galvalume
Category.where(name: 'Hastelloy', category_type: 'Material').first_or_create #Hastelloy
Category.where(name: 'Inconel', category_type: 'Material').first_or_create #Inconel
Category.where(name: 'Low-melt alloys', category_type: 'Material').first_or_create #Low-melt alloys
Category.where(name: 'Plate, alloy steel', category_type: 'Material').first_or_create #Plate, alloy steel
Category.where(name: 'Plate, exotic alloys', category_type: 'Material').first_or_create #Plate, exotic alloys
Category.where(name: 'Sheet & coil, exotic alloys', category_type: 'Material').first_or_create #Sheet & coil, exotic alloys
Category.where(name: 'Strip, exotic alloys', category_type: 'Material').first_or_create #Strip, exotic alloys
Category.where(name: 'Tube & pipe, alloy', category_type: 'Material').first_or_create #Tube & pipe, alloy
Category.where(name: 'Tube & pipe, chrome/moly', category_type: 'Material').first_or_create #Tube & pipe, chrome/moly
Category.where(name: 'Tube & pipe, exotic alloys', category_type: 'Material').first_or_create #Tube & pipe, exotic alloys
Category.where(name: 'Bar & rod', category_type: 'Material').first_or_create #Bar & rod
Category.where(name: 'Bar & rod, aluminum alloys', category_type: 'Material').first_or_create #Bar & rod, aluminum alloys
Category.where(name: 'Bar & rod, extruded', category_type: 'Material').first_or_create #Bar & rod, extruded
Category.where(name: 'Casting alloys', category_type: 'Material').first_or_create #Casting alloys
Category.where(name: 'Coiled sheet', category_type: 'Material').first_or_create #Coiled sheet
Category.where(name: 'Filters', category_type: 'Material').first_or_create #Filters
Category.where(name: 'Ingot', category_type: 'Material').first_or_create #Ingot
Category.where(name: 'Plate', category_type: 'Material').first_or_create #Plate
Category.where(name: 'Plate, aluminum alloys', category_type: 'Material').first_or_create #Plate, aluminum alloys
Category.where(name: 'Sheet & coil', category_type: 'Material').first_or_create #Sheet & coil
Category.where(name: 'Sheet & coil, aluminum alloys', category_type: 'Material').first_or_create #Sheet & coil, aluminum alloys
Category.where(name: 'Strip', category_type: 'Material').first_or_create #Strip
Category.where(name: 'Strip, aluminum alloys', category_type: 'Material').first_or_create #Strip, aluminum alloys
Category.where(name: 'Tooling plate', category_type: 'Material').first_or_create #Tooling plate
Category.where(name: 'Tube & pipe', category_type: 'Material').first_or_create #Tube & pipe
Category.where(name: 'Tube & pipe, aluminum alloys', category_type: 'Material').first_or_create #Tube & pipe, aluminum alloys
Category.where(name: 'Bar & rod', category_type: 'Material').first_or_create #Bar & rod
Category.where(name: 'Plate', category_type: 'Material').first_or_create #Plate
Category.where(name: 'Sheet & coil', category_type: 'Material').first_or_create #Sheet & coil
Category.where(name: 'Strip', category_type: 'Material').first_or_create #Strip
Category.where(name: 'Tube & pipe', category_type: 'Material').first_or_create #Tube & pipe
Category.where(name: 'Bar & rod', category_type: 'Material').first_or_create #Bar & rod
Category.where(name: 'Bearing bronze', category_type: 'Material').first_or_create #Bearing bronze
Category.where(name: 'Plate', category_type: 'Material').first_or_create #Plate
Category.where(name: 'Sheet & coil', category_type: 'Material').first_or_create #Sheet & coil
Category.where(name: 'Strip', category_type: 'Material').first_or_create #Strip
Category.where(name: 'Tube & pipe', category_type: 'Material').first_or_create #Tube & pipe
Category.where(name: 'Bar & rod', category_type: 'Material').first_or_create #Bar & rod
Category.where(name: 'Bar & rod, beryllium copper', category_type: 'Material').first_or_create #Bar & rod, beryllium copper
Category.where(name: 'Bar & rod, copper alloys', category_type: 'Material').first_or_create #Bar & rod, copper alloys
Category.where(name: 'Bar and rod', category_type: 'Material').first_or_create #Bar and rod
Category.where(name: 'Plate', category_type: 'Material').first_or_create #Plate
Category.where(name: 'Plate, beryllium copper', category_type: 'Material').first_or_create #Plate, beryllium copper
Category.where(name: 'Plate, copper alloys', category_type: 'Material').first_or_create #Plate, copper alloys
Category.where(name: 'Sheet & coil', category_type: 'Material').first_or_create #Sheet & coil
Category.where(name: 'Sheet & coil, beryllium copper', category_type: 'Material').first_or_create #Sheet & coil, beryllium copper
Category.where(name: 'Sheet & coil, copper alloys', category_type: 'Material').first_or_create #Sheet & coil, copper alloys
Category.where(name: 'Strip', category_type: 'Material').first_or_create #Strip
Category.where(name: 'Strip, beryllium copper', category_type: 'Material').first_or_create #Strip, beryllium copper
Category.where(name: 'Strip, copper alloys', category_type: 'Material').first_or_create #Strip, copper alloys
Category.where(name: 'Tube & pipe', category_type: 'Material').first_or_create #Tube & pipe
Category.where(name: 'Tube & pipe, beryllium copper', category_type: 'Material').first_or_create #Tube & pipe, beryllium copper
Category.where(name: 'Tube & pipe, copper alloys', category_type: 'Material').first_or_create #Tube & pipe, copper alloys
Category.where(name: 'Wire', category_type: 'Material').first_or_create #Wire
Category.where(name: 'Anodes', category_type: 'Material').first_or_create #Anodes
Category.where(name: 'Casting alloys', category_type: 'Material').first_or_create #Casting alloys
Category.where(name: 'Tooling plate', category_type: 'Material').first_or_create #Tooling plate
Category.where(name: 'Bar & rod, nickel & nickel alloys', category_type: 'Material').first_or_create #Bar & rod, nickel & nickel alloys
Category.where(name: 'Plate', category_type: 'Material').first_or_create	 #Plate
Category.where(name: 'Plate, nickel alloys', category_type: 'Material').first_or_create	 #Plate, nickel alloys
Category.where(name: 'Sheet & coil', category_type: 'Material').first_or_create	 #Sheet & coil
Category.where(name: 'Sheet & coil, nickel alloys', category_type: 'Material').first_or_create	 #Sheet & coil, nickel alloys
Category.where(name: 'Strip', category_type: 'Material').first_or_create	 #Strip
Category.where(name: 'Strip, nickel alloys', category_type: 'Material').first_or_create	 #Strip, nickel alloys
Category.where(name: 'Tube & pipe', category_type: 'Material').first_or_create	 #Tube & pipe
Category.where(name: 'Tube & pipe, nickel alloy', category_type: 'Material').first_or_create	 #Tube & pipe, nickel alloy
Category.where(name: 'Bar & rod', category_type: 'Material').first_or_create	 #Bar & rod
Category.where(name: 'Bar & rod, cold finished', category_type: 'Material').first_or_create	 #Bar & rod, cold finished
Category.where(name: 'Bar & rod, cold rolled', category_type: 'Material').first_or_create	 #Bar & rod, cold rolled
Category.where(name: 'Bar & rod, hot rolled', category_type: 'Material').first_or_create	 #Bar & rod, hot rolled
Category.where(name: 'Bar & rod, stainless steel', category_type: 'Material').first_or_create	 #Bar & rod, stainless steel
Category.where(name: 'Bar, cold finished', category_type: 'Material').first_or_create	 #Bar, cold finished
Category.where(name: 'Bar, hot rolled', category_type: 'Material').first_or_create #Bar, hot rolled
Category.where(name: 'Cold rolled', category_type: 'Material').first_or_create #Cold rolled
Category.where(name: 'Die steels', category_type: 'Material').first_or_create #Die steels
Category.where(name: 'EPS (eco pickled surface)', category_type: 'Material').first_or_create #EPS (eco pickled surface)
Category.where(name: 'Galvanized', category_type: 'Material').first_or_create #Galvanized
Category.where(name: 'Galvannealed', category_type: 'Material').first_or_create #Galvannealed
Category.where(name: 'Hot rolled', category_type: 'Material').first_or_create #Hot rolled
Category.where(name: 'Hot rolled pickled & oiled', category_type: 'Material').first_or_create #Hot rolled pickled & oiled
Category.where(name: 'Plate', category_type: 'Material').first_or_create #Plate
Category.where(name: 'Plate, carbon steel', category_type: 'Material').first_or_create #Plate, carbon steel
Category.where(name: 'Plate, cold rolled', category_type: 'Material').first_or_create #Plate, cold rolled
Category.where(name: 'Plate, hot rolled', category_type: 'Material').first_or_create #Plate, hot rolled
Category.where(name: 'Plate, stainless steel', category_type: 'Material').first_or_create #Plate, stainless steel
Category.where(name: 'Rebar/mesh', category_type: 'Material').first_or_create #Rebar/mesh
Category.where(name: 'SCS (smooth clean surface)', category_type: 'Material').first_or_create #SCS (smooth clean surface)
Category.where(name: 'Sheet & coil', category_type: 'Material').first_or_create #Sheet & coil
Category.where(name: 'Sheet & coil, cold rolled', category_type: 'Material').first_or_create #Sheet & coil, cold rolled
Category.where(name: 'Sheet & coil, hot rolled', category_type: 'Material').first_or_create #Sheet & coil, hot rolled
Category.where(name: 'Sheet & coil, stainless steel', category_type: 'Material').first_or_create #Sheet & coil, stainless steel
Category.where(name: 'Sheet and coil, galvanized', category_type: 'Material').first_or_create #Sheet and coil, galvanized
Category.where(name: 'Squares, cold roll formed', category_type: 'Material').first_or_create #Squares, cold roll formed
Category.where(name: 'Strip', category_type: 'Material').first_or_create #Strip
Category.where(name: 'Strip, cold rolled', category_type: 'Material').first_or_create #Strip, cold rolled
Category.where(name: 'Strip, hot rolled', category_type: 'Material').first_or_create #Strip, hot rolled
Category.where(name: 'Strip, stainless steel', category_type: 'Material').first_or_create #Strip, stainless steel
Category.where(name: 'Tool steel', category_type: 'Material').first_or_create #Tool steel
Category.where(name: 'Tube & pipe', category_type: 'Material').first_or_create #Tube & pipe
Category.where(name: 'Tube & pipe, carbon', category_type: 'Material').first_or_create #Tube & pipe, carbon
Category.where(name: 'Tube & pipe, cold rolled', category_type: 'Material').first_or_create #Tube & pipe, cold rolled
Category.where(name: 'Tube & pipe, hot rolled', category_type: 'Material').first_or_create #Tube & pipe, hot rolled
Category.where(name: 'Tube & pipe, stainless steel', category_type: 'Material').first_or_create #Tube & pipe, stainless steel
Category.where(name: 'Tubes, cold roll formed', category_type: 'Material').first_or_create #Tubes, cold roll formed
Category.where(name: 'Weathering grades', category_type: 'Material').first_or_create #Weathering grades
Category.where(name: 'Bar & rod', category_type: 'Material').first_or_create #Bar & rod
Category.where(name: 'Forging', category_type: 'Material').first_or_create #Forging
Category.where(name: 'Plate', category_type: 'Material').first_or_create #Plate
Category.where(name: 'Sheets', category_type: 'Material').first_or_create #Sheets
Category.where(name: 'Strip', category_type: 'Material').first_or_create #Strip
Category.where(name: 'Tube & pipe', category_type: 'Material').first_or_create #Tube & pipe
Category.where(name: 'Anodes', category_type: 'Material').first_or_create #Anodes
Category.where(name: 'Bar & rod', category_type: 'Material').first_or_create #Bar & rod
Category.where(name: 'Ingot', category_type: 'Material').first_or_create #Ingot
Category.where(name: 'Strip', category_type: 'Material').first_or_create #Strip
Category.where(name: 'Zinc carbon alloys', category_type: 'Material').first_or_create #Zinc carbon alloys
Category.where(name: 'Clad metals', category_type: 'Material').first_or_create #Clad metals
Category.where(name: 'Coatings, ceramic', category_type: 'Material').first_or_create #Coatings, ceramic
Category.where(name: 'Coatings, conversion', category_type: 'Material').first_or_create #Coatings, conversion
Category.where(name: 'Coatings, enamel', category_type: 'Material').first_or_create #Coatings, enamel
Category.where(name: 'Coatings, extrusion', category_type: 'Material').first_or_create #Coatings, extrusion
Category.where(name: 'Coatings, other', category_type: 'Material').first_or_create #Coatings, other
Category.where(name: 'Coatings, physical vapor deposition', category_type: 'Material').first_or_create #Coatings, physical vapor deposition
Category.where(name: 'Coatings, powder', category_type: 'Material').first_or_create #Coatings, powder
Category.where(name: 'Coatings, ultraviolet', category_type: 'Material').first_or_create #Coatings, ultraviolet
Category.where(name: 'Coatings, water-based', category_type: 'Material').first_or_create #Coatings, water-based
Category.where(name: 'Coil coating finishes', category_type: 'Material').first_or_create #Coil coating finishes
Category.where(name: 'Laminated panels, aluminum & stainless', category_type: 'Material').first_or_create #Laminated panels, aluminum & stainless
Category.where(name: 'Laminates, vinyl/metal', category_type: 'Material').first_or_create #Laminates, vinyl/metal
Category.where(name: 'Laminating films, decorative, appliances', category_type: 'Material').first_or_create #Laminating films, decorative, appliances
Category.where(name: 'Powder metal parts', category_type: 'Material').first_or_create #Powder metal parts
Category.where(name: 'Preanodized sheet/coil', category_type: 'Material').first_or_create #Preanodized sheet/coil
Category.where(name: 'Prefinished metals', category_type: 'Material').first_or_create #Prefinished metals
Category.where(name: 'Prepainted metals', category_type: 'Material').first_or_create #Prepainted metals
Category.where(name: 'Preplated metals', category_type: 'Material').first_or_create #Preplated metals
Category.where(name: 'Sheet & coil, aluminized', category_type: 'Material').first_or_create #Sheet & coil, aluminized
Category.where(name: 'Specialty coated metals', category_type: 'Material').first_or_create #Specialty coated metals
Category.where(name: 'Tool coatings', category_type: 'Material').first_or_create #Tool coatings
Category.where(name: 'Angles/channels/profiles', category_type: 'Material').first_or_create #Angles/channels/profiles
Category.where(name: 'Bar, forged', category_type: 'Material').first_or_create #Bar, forged
Category.where(name: 'Billet', category_type: 'Material').first_or_create #Billet
Category.where(name: 'Blocks, forged', category_type: 'Material').first_or_create #Blocks, forged
Category.where(name: 'Containers', category_type: 'Material').first_or_create #Containers
Category.where(name: 'Cylinders, forged', category_type: 'Material').first_or_create #Cylinders, forged
Category.where(name: 'Expanded metals', category_type: 'Material').first_or_create #Expanded metals
Category.where(name: 'Foil', category_type: 'Material').first_or_create #Foil
Category.where(name: 'Frames', category_type: 'Material').first_or_create #Frames
Category.where(name: 'Gratings', category_type: 'Material').first_or_create #Gratings
Category.where(name: 'High chairs', category_type: 'Material').first_or_create #High chairs
Category.where(name: 'Insulated panels', category_type: 'Material').first_or_create #Insulated panels
Category.where(name: 'Metal building systems', category_type: 'Material').first_or_create #Metal building systems
Category.where(name: 'Perforated metals', category_type: 'Material').first_or_create #Perforated metals
Category.where(name: 'Prepolished metals', category_type: 'Material').first_or_create #Prepolished metals
Category.where(name: 'Rings, forged', category_type: 'Material').first_or_create #Rings, forged
Category.where(name: 'Safety gratings', category_type: 'Material').first_or_create #Safety gratings
Category.where(name: 'Screw machine products', category_type: 'Material').first_or_create #Screw machine products
Category.where(name: 'Shafts, forged', category_type: 'Material').first_or_create #Shafts, forged
Category.where(name: 'Slab bolster', category_type: 'Material').first_or_create #Slab bolster
Category.where(name: 'Sound dampening materials', category_type: 'Material').first_or_create #Sound dampening materials
Category.where(name: 'Strapping', category_type: 'Material').first_or_create #Strapping
Category.where(name: 'Structural reinforcement material', category_type: 'Material').first_or_create #Structural reinforcement material
Category.where(name: 'Textured metals', category_type: 'Material').first_or_create #Textured metals
Category.where(name: 'Thermal barrier systems', category_type: 'Material').first_or_create #Thermal barrier systems
Category.where(name: 'Thermal insulation', category_type: 'Material').first_or_create #Thermal insulation
Category.where(name: 'Tie wire', category_type: 'Material').first_or_create #Tie wire
Category.where(name: 'Tube & pipe, corrosion resistant', category_type: 'Material').first_or_create #Tube & pipe, corrosion resistant
Category.where(name: 'Tube & pipe, high-temperature', category_type: 'Material').first_or_create #Tube & pipe, high-temperature
Category.where(name: 'Tubing, DOM', category_type: 'Material').first_or_create #Tubing, DOM
Category.where(name: 'Tubing, lock seam/open seam', category_type: 'Material').first_or_create #Tubing, lock seam/open seam
Category.where(name: 'Wire cloth', category_type: 'Material').first_or_create #Wire cloth
Category.where(name: 'Wire, other', category_type: 'Material').first_or_create #Wire, other
Category.where(name: 'Wrought mill products', category_type: 'Material').first_or_create #Wrought mill products
Category.where(name: 'Z-sections', category_type: 'Material').first_or_create #Z-sections
Category.where(name: 'Composites', category_type: 'Material').first_or_create #Composites
Category.where(name: 'Graphite', category_type: 'Material').first_or_create #Graphite
Category.where(name: 'Industrial felt & textiles', category_type: 'Material').first_or_create #Industrial felt & textiles
Category.where(name: 'Paint', category_type: 'Material').first_or_create #Paint
Category.where(name: 'Plastics, engineered', category_type: 'Material').first_or_create #Plastics, engineered
Category.where(name: 'Protective adhesive masking', category_type: 'Material').first_or_create #Protective adhesive masking
Category.where(name: 'Refractory products', category_type: 'Material').first_or_create #Refractory products
Category.where(name: 'Stretch film', category_type: 'Material').first_or_create #Stretch film
Category.where(name: 'Abrasives', category_type: 'Material').first_or_create #Abrasives
Category.where(name: 'Adhesives', category_type: 'Material').first_or_create #Adhesives
Category.where(name: 'Biocides', category_type: 'Material').first_or_create #Biocides
Category.where(name: 'Brazing/soldering, fillers & fluxes', category_type: 'Material').first_or_create #Brazing/soldering, fillers & fluxes
Category.where(name: 'Carbides & ceramics', category_type: 'Material').first_or_create #Carbides & ceramics
Category.where(name: 'Carbon black', category_type: 'Material').first_or_create #Carbon black
Category.where(name: 'Cleaners, metals', category_type: 'Material').first_or_create #Cleaners, metals
Category.where(name: 'Cleaning, solvents/degreasing equipment agents', category_type: 'Material').first_or_create #Cleaning, solvents/degreasing equipment agents
Category.where(name: 'Clutches and brakes', category_type: 'Material').first_or_create #Clutches and brakes
Category.where(name: 'Compounds, cutting & drawing', category_type: 'Material').first_or_create #Compounds, cutting & drawing
Category.where(name: 'Degreasers', category_type: 'Material').first_or_create #Degreasers
Category.where(name: 'Environmental & industrial hygiene products', category_type: 'Material').first_or_create #Environmental & industrial hygiene products
Category.where(name: 'Etchants', category_type: 'Material').first_or_create #Etchants
Category.where(name: 'Filter media, air & liquid', category_type: 'Material').first_or_create #Filter media, air & liquid
Category.where(name: 'Finishes & coatings', category_type: 'Material').first_or_create #Finishes & coatings
Category.where(name: 'Fittings', category_type: 'Material').first_or_create #Fittings
Category.where(name: 'Fluids, cutting', category_type: 'Material').first_or_create #Fluids, cutting
Category.where(name: 'Fluids, drawing/stamping', category_type: 'Material').first_or_create #Fluids, drawing/stamping
Category.where(name: 'Fluids, equipment lubrication', category_type: 'Material').first_or_create #Fluids, equipment lubrication
Category.where(name: 'Gases, nitrogen regeneration', category_type: 'Material').first_or_create #Gases, nitrogen regeneration
Category.where(name: 'Hydraulic fluids', category_type: 'Material').first_or_create #Hydraulic fluids
Category.where(name: 'Labeling', category_type: 'Material').first_or_create #Labeling
Category.where(name: 'Laser assist gases', category_type: 'Material').first_or_create #Laser assist gases
Category.where(name: 'Lubricant, applicators/systems', category_type: 'Material').first_or_create #Lubricant, applicators/systems
Category.where(name: 'Lubricants', category_type: 'Material').first_or_create #Lubricants
Category.where(name: 'Lubricants, forming', category_type: 'Material').first_or_create #Lubricants, forming
Category.where(name: 'Lubricants, recycling', category_type: 'Material').first_or_create #Lubricants, recycling
Category.where(name: 'Packaging materials', category_type: 'Material').first_or_create #Packaging materials
Category.where(name: 'Permanent bond adhesive tapes', category_type: 'Material').first_or_create #Permanent bond adhesive tapes
Category.where(name: 'Polishing, buffing compounds', category_type: 'Material').first_or_create #Polishing, buffing compounds
Category.where(name: 'Pollution control catalysts', category_type: 'Material').first_or_create #Pollution control catalysts
Category.where(name: 'Pretreatment chemicals', category_type: 'Material').first_or_create #Pretreatment chemicals
Category.where(name: 'Release agents', category_type: 'Material').first_or_create #Release agents
Category.where(name: 'Resins', category_type: 'Material').first_or_create #Resins
Category.where(name: 'Rings', category_type: 'Material').first_or_create #Rings
Category.where(name: 'Rolls, embossing', category_type: 'Material').first_or_create #Rolls, embossing
Category.where(name: 'Rubber products', category_type: 'Material').first_or_create #Rubber products
Category.where(name: 'Rust inhibitors', category_type: 'Material').first_or_create #Rust inhibitors
Category.where(name: 'Strip coil separators', category_type: 'Material').first_or_create #Strip coil separators


puts 'Create Service Categories'
Category.where(name: 'Bar & rod, exotic alloys', category_type: 'Service').first_or_create
Category.where(name: 'Consulting, business', category_type: 'Service').first_or_create #Consulting, business
Category.where(name: 'Consulting, recruitment', category_type: 'Service').first_or_create #Consulting, recruitment
Category.where(name: 'Data collection/market research', category_type: 'Service').first_or_create #Data collection/market research
Category.where(name: 'Depot stock availability', category_type: 'Service').first_or_create #Depot stock availability
Category.where(name: 'Distribution', category_type: 'Service').first_or_create #Distribution
Category.where(name: 'E-commerce', category_type: 'Service').first_or_create #E-commerce
Category.where(name: 'Economic analysis', category_type: 'Service').first_or_create #Economic analysis
Category.where(name: 'Enterprise resource planning software (ERP)', category_type: 'Service').first_or_create #Enterprise resource planning software (ERP)
Category.where(name: 'Financial services', category_type: 'Service').first_or_create #Financial services
Category.where(name: 'Freight management', category_type: 'Service').first_or_create #Freight management
Category.where(name: 'Industrial auctioneer', category_type: 'Service').first_or_create #Industrial auctioneer
Category.where(name: 'Industrial equipment appraisals & inspections', category_type: 'Service').first_or_create #Industrial equipment appraisals & inspections
Category.where(name: 'Insurance, risk management and loss prevention', category_type: 'Service').first_or_create #Insurance, risk management and loss prevention
Category.where(name: 'Investment banking', category_type: 'Service').first_or_create #Investment banking
Category.where(name: 'Material execution system software (MES)', category_type: 'Service').first_or_create #Material execution system software (MES)
Category.where(name: 'Material resource planning software (MRP)', category_type: 'Service').first_or_create #Material resource planning software (MRP)
Category.where(name: 'Mergers & acquisitions', category_type: 'Service').first_or_create #Mergers & acquisitions
Category.where(name: 'Real estate leasing', category_type: 'Service').first_or_create #Real estate leasing
Category.where(name: 'Software development', category_type: 'Service').first_or_create #Software development
Category.where(name: 'Supply chain management', category_type: 'Service').first_or_create #Supply chain management
Category.where(name: 'Systems integrators', category_type: 'Service').first_or_create #Systems integrators
Category.where(name: 'Training', category_type: 'Service').first_or_create #Training
Category.where(name: 'CNC programming', category_type: 'Service').first_or_create #CNC programming
Category.where(name: 'Cutting', category_type: 'Service').first_or_create #Cutting
Category.where(name: 'Die & fixtures', category_type: 'Service').first_or_create #Die & fixtures
Category.where(name: 'Fabricating', category_type: 'Service').first_or_create #Fabricating
Category.where(name: 'Finishing', category_type: 'Service').first_or_create #Finishing
Category.where(name: 'Machine rebuilding', category_type: 'Service').first_or_create #Machine rebuilding
Category.where(name: 'Roll forming', category_type: 'Service').first_or_create #Roll forming
Category.where(name: 'Stamping/drawing', category_type: 'Service').first_or_create #Stamping/drawing
Category.where(name: 'Welding', category_type: 'Service').first_or_create #Welding
Category.where(name: 'Aluminum', category_type: 'Service').first_or_create #Aluminum
Category.where(name: 'Copper', category_type: 'Service').first_or_create #Copper
Category.where(name: 'Impact', category_type: 'Service').first_or_create #Impact
Category.where(name: 'Magnesium', category_type: 'Service').first_or_create #Magnesium
Category.where(name: 'Steel', category_type: 'Service').first_or_create #Steel
Category.where(name: 'Vinyl', category_type: 'Service').first_or_create #Vinyl
Category.where(name: 'Clutch/brake controls', category_type: 'Service').first_or_create #Clutch/brake controls
Category.where(name: 'Computerized maintenance management software (CMMS)', category_type: 'Service').first_or_create #Computerized maintenance management software (CMMS)
Category.where(name: 'Press rebuilding', category_type: 'Service').first_or_create #Press rebuilding
Category.where(name: 'Printed circuit boards repair', category_type: 'Service').first_or_create #Printed circuit boards repair
Category.where(name: 'Rebuild', category_type: 'Service').first_or_create #Rebuild
Category.where(name: 'Retrofit', category_type: 'Service').first_or_create #Retrofit
Category.where(name: 'Additives & testers', category_type: 'Service').first_or_create #Additives & testers
Category.where(name: 'Calibrating, noncontact thickness gauges', category_type: 'Service').first_or_create #Calibrating, noncontact thickness gauges
Category.where(name: 'Charpy impact testing', category_type: 'Service').first_or_create #Charpy impact testing
Category.where(name: 'Indoor air quality testing', category_type: 'Service').first_or_create #Indoor air quality testing
Category.where(name: 'Laboratory services, chemical & spectrographic', category_type: 'Service').first_or_create #Laboratory services, chemical & spectrographic
Category.where(name: 'Laboratory services, metallurgical & physical', category_type: 'Service').first_or_create #Laboratory services, metallurgical & physical
Category.where(name: 'Nondestructive testing', category_type: 'Service').first_or_create #Nondestructive testing
Category.where(name: 'Quality inspection', category_type: 'Service').first_or_create #Quality inspection
Category.where(name: 'Signature analysis', category_type: 'Service').first_or_create #Signature analysis
Category.where(name: 'Anodizing', category_type: 'Service').first_or_create #Anodizing
Category.where(name: 'Blanchard grinding', category_type: 'Service').first_or_create #Blanchard grinding
Category.where(name: 'Cleaning, paint stripping', category_type: 'Service').first_or_create #Cleaning, paint stripping
Category.where(name: 'Coil coating', category_type: 'Service').first_or_create #Coil coating
Category.where(name: 'Deburring', category_type: 'Service').first_or_create #Deburring
Category.where(name: 'Edge conditioning', category_type: 'Service').first_or_create #Edge conditioning
Category.where(name: 'Edging, skiving', category_type: 'Service').first_or_create #Edging, skiving
Category.where(name: 'Electrogalvanizing', category_type: 'Service').first_or_create #Electrogalvanizing
Category.where(name: 'Electropolishing', category_type: 'Service').first_or_create #Electropolishing
Category.where(name: 'Finishing', category_type: 'Service').first_or_create #Finishing
Category.where(name: 'Galvanizing', category_type: 'Service').first_or_create #Galvanizing
Category.where(name: 'Gauering flat bars', category_type: 'Service').first_or_create #Gauering flat bars
Category.where(name: 'Metal finishing', category_type: 'Service').first_or_create #Metal finishing
Category.where(name: 'Painting', category_type: 'Service').first_or_create #Painting
Category.where(name: 'Pickling', category_type: 'Service').first_or_create #Pickling
Category.where(name: 'Plating', category_type: 'Service').first_or_create #Plating
Category.where(name: 'Polishing', category_type: 'Service').first_or_create #Polishing
Category.where(name: 'Powder coating', category_type: 'Service').first_or_create #Powder coating
Category.where(name: 'Sandblasting', category_type: 'Service').first_or_create #Sandblasting
Category.where(name: 'Shot blasting', category_type: 'Service').first_or_create #Shot blasting
Category.where(name: 'Surface grinding', category_type: 'Service').first_or_create #Surface grinding
Category.where(name: 'Thermal spray coating', category_type: 'Service').first_or_create #Thermal spray coating
Category.where(name: 'Annealing', category_type: 'Service').first_or_create #Annealing
Category.where(name: 'Blanking and sheeting', category_type: 'Service').first_or_create #Blanking and sheeting
Category.where(name: 'Cambering', category_type: 'Service').first_or_create #Cambering
Category.where(name: 'Casting, copper-based', category_type: 'Service').first_or_create #Casting, copper-based
Category.where(name: 'Casting, die', category_type: 'Service').first_or_create #Casting, die
Category.where(name: 'Casting, die, aluminum', category_type: 'Service').first_or_create #Casting, die, aluminum
Category.where(name: 'Casting, die, magnesium', category_type: 'Service').first_or_create #Casting, die, magnesium
Category.where(name: 'Casting, die, zinc', category_type: 'Service').first_or_create #Casting, die, zinc
Category.where(name: 'Casting, investment', category_type: 'Service').first_or_create #Casting, investment
Category.where(name: 'Casting, permanent mold', category_type: 'Service').first_or_create #Casting, permanent mold
Category.where(name: 'Casting, titanium', category_type: 'Service').first_or_create #Casting, titanium
Category.where(name: 'Coil processing', category_type: 'Service').first_or_create #Coil processing
Category.where(name: 'Cold drawing', category_type: 'Service').first_or_create #Cold drawing
Category.where(name: 'Cold finishing', category_type: 'Service').first_or_create #Cold finishing
Category.where(name: 'Cold rolling', category_type: 'Service').first_or_create #Cold rolling
Category.where(name: 'Custom roll forming', category_type: 'Service').first_or_create #Custom roll forming
Category.where(name: 'Custom rolling', category_type: 'Service').first_or_create #Custom rolling
Category.where(name: 'Cut-to-length', category_type: 'Service').first_or_create #Cut-to-length
Category.where(name: 'Drawforming', category_type: 'Service').first_or_create #Drawforming
Category.where(name: 'Edge trimming', category_type: 'Service').first_or_create #Edge trimming
Category.where(name: 'Embossing', category_type: 'Service').first_or_create #Embossing
Category.where(name: 'EPS (eco pickled surface) processing', category_type: 'Service').first_or_create #EPS (eco pickled surface) processing
Category.where(name: 'Fabricating', category_type: 'Service').first_or_create #Fabricating
Category.where(name: 'Fineblanking', category_type: 'Service').first_or_create #Fineblanking
Category.where(name: 'Flame cutting', category_type: 'Service').first_or_create #Flame cutting
Category.where(name: 'Flattening', category_type: 'Service').first_or_create #Flattening
Category.where(name: 'Forging', category_type: 'Service').first_or_create #Forging
Category.where(name: 'Grinding', category_type: 'Service').first_or_create #Grinding
Category.where(name: 'Heat treating', category_type: 'Service').first_or_create #Heat treating
Category.where(name: 'Hydroforming', category_type: 'Service').first_or_create #Hydroforming
Category.where(name: 'Impregnation', category_type: 'Service').first_or_create #Impregnation
Category.where(name: 'Ion nitriding', category_type: 'Service').first_or_create #Ion nitriding
Category.where(name: 'Laser cutting', category_type: 'Service').first_or_create #Laser cutting
Category.where(name: 'Leveling', category_type: 'Service').first_or_create #Leveling
Category.where(name: 'Perforation', category_type: 'Service').first_or_create #Perforation
Category.where(name: 'Planer milling', category_type: 'Service').first_or_create #Planer milling
Category.where(name: 'Plasma cutting', category_type: 'Service').first_or_create #Plasma cutting
Category.where(name: 'Plate cutting', category_type: 'Service').first_or_create #Plate cutting
Category.where(name: 'Plate forming & rolling', category_type: 'Service').first_or_create #Plate forming & rolling
Category.where(name: 'Plate, fabricating', category_type: 'Service').first_or_create #Plate, fabricating
Category.where(name: 'Punching, drilling, notching', category_type: 'Service').first_or_create #Punching, drilling, notching
Category.where(name: 'Rebar, fabricating', category_type: 'Service').first_or_create #Rebar, fabricating
Category.where(name: 'Roll forming', category_type: 'Service').first_or_create #Roll forming
Category.where(name: 'Roll texturing', category_type: 'Service').first_or_create #Roll texturing
Category.where(name: 'Roller leveling', category_type: 'Service').first_or_create #Roller leveling
Category.where(name: 'Rolling', category_type: 'Service').first_or_create #Rolling
Category.where(name: 'Rolls, surface conditioning', category_type: 'Service').first_or_create #Rolls, surface conditioning
Category.where(name: 'Sawing, band', category_type: 'Service').first_or_create #Sawing, band
Category.where(name: 'Sawing, circle/ring', category_type: 'Service').first_or_create #Sawing, circle/ring
Category.where(name: 'Sawing, miter', category_type: 'Service').first_or_create #Sawing, miter
Category.where(name: 'Sawing, other', category_type: 'Service').first_or_create #Sawing, other
Category.where(name: 'SCS (surface clean steel) processing', category_type: 'Service').first_or_create #SCS (surface clean steel) processing
Category.where(name: 'Shearing', category_type: 'Service').first_or_create #Shearing
Category.where(name: 'Sheet, fabricating', category_type: 'Service').first_or_create #Sheet, fabricating
Category.where(name: 'Slitting', category_type: 'Service').first_or_create #Slitting
Category.where(name: 'Stamping, custom', category_type: 'Service').first_or_create #Stamping, custom
Category.where(name: 'Stamping, other', category_type: 'Service').first_or_create #Stamping, other
Category.where(name: 'Stress relieving', category_type: 'Service').first_or_create #Stress relieving
Category.where(name: 'Temper rolling', category_type: 'Service').first_or_create #Temper rolling
Category.where(name: 'Tempering', category_type: 'Service').first_or_create #Tempering
Category.where(name: 'Tension leveling', category_type: 'Service').first_or_create #Tension leveling
Category.where(name: 'Toll processing', category_type: 'Service').first_or_create #Toll processing
Category.where(name: 'Traverse winding', category_type: 'Service').first_or_create #Traverse winding
Category.where(name: 'Trepanning', category_type: 'Service').first_or_create #Trepanning
Category.where(name: 'Tube & pipe, fabricating', category_type: 'Service').first_or_create #Tube & pipe, fabricating
Category.where(name: 'Tube bending', category_type: 'Service').first_or_create #Tube bending
Category.where(name: 'Tube deburring', category_type: 'Service').first_or_create #Tube deburring
Category.where(name: 'Tube drilling', category_type: 'Service').first_or_create #Tube drilling
Category.where(name: 'Tube endfinishing', category_type: 'Service').first_or_create #Tube endfinishing
Category.where(name: 'Tube flanging', category_type: 'Service').first_or_create #Tube flanging
Category.where(name: 'Tube flaring', category_type: 'Service').first_or_create #Tube flaring
Category.where(name: 'Tube forming', category_type: 'Service').first_or_create #Tube forming
Category.where(name: 'Tube notching', category_type: 'Service').first_or_create #Tube notching
Category.where(name: 'Tube punching', category_type: 'Service').first_or_create #Tube punching
Category.where(name: 'Tube rolling', category_type: 'Service').first_or_create #Tube rolling
Category.where(name: 'Waterjet cutting', category_type: 'Service').first_or_create #Waterjet cutting
Category.where(name: 'Welding', category_type: 'Service').first_or_create #Welding
Category.where(name: 'Light assembly', category_type: 'Service').first_or_create #Light assembly
Category.where(name: 'Rapid prototyping', category_type: 'Service').first_or_create #Rapid prototyping
Category.where(name: 'Steel bar labels', category_type: 'Service').first_or_create #Steel bar labels
Category.where(name: 'Steel coil tags', category_type: 'Service').first_or_create #Steel coil tags
Category.where(name: 'Steel tube labels', category_type: 'Service').first_or_create #Steel tube labels
Category.where(name: 'Steel wire tags', category_type: 'Service').first_or_create #Steel wire tags
Category.where(name: 'Air purification services', category_type: 'Service').first_or_create #Air purification services
Category.where(name: 'Custom equipment', category_type: 'Service').first_or_create #Custom equipment
Category.where(name: 'Custom molding', category_type: 'Service').first_or_create #Custom molding
Category.where(name: 'Design/construction', category_type: 'Service').first_or_create #Design/construction
Category.where(name: 'Die protection systems', category_type: 'Service').first_or_create #Die protection systems
Category.where(name: 'Engineering/analysis', category_type: 'Service').first_or_create #Engineering/analysis
Category.where(name: 'Industrial hygiene monitoring', category_type: 'Service').first_or_create #Industrial hygiene monitoring
Category.where(name: 'Installation', category_type: 'Service').first_or_create #Installation
Category.where(name: 'Labeling', category_type: 'Service').first_or_create #Labeling
Category.where(name: 'Machine foundations', category_type: 'Service').first_or_create #Machine foundations
Category.where(name: 'Material storage', category_type: 'Service').first_or_create #Material storage
Category.where(name: 'Materials standards and specifications', category_type: 'Service').first_or_create #Materials standards and specifications
Category.where(name: 'Molding, polyurethane', category_type: 'Service').first_or_create #Molding, polyurethane
Category.where(name: 'Press pits', category_type: 'Service').first_or_create #Press pits
Category.where(name: 'Scrap buying', category_type: 'Service').first_or_create #Scrap buying
