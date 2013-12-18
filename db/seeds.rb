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
LogoPackage.where(name: 'GOLD, 2 INCH LOGO 4-color logo').first_or_create
LogoPackage.where(name: 'GOLD, 1 INCH LOGO 4-color logo').first_or_create
LogoPackage.where(name: 'SILVER, 2 INCH LOGO B/W logo').first_or_create
LogoPackage.where(name: 'SILVER, 1 INCH LOGO B/W logo').first_or_create
LogoPackage.where(name: 'FREE LISTING, NO LOGO').first_or_create

puts 'Create Equipment Categories'
Equipment.where(name: 'Folding machines').first_or_create
Equipment.where(name: 'Roll benders, angle or sheet/plate').first_or_create
Equipment.where(name: 'Sheet/plate, folding').first_or_create
Equipment.where(name: 'Sheet/plate, panel').first_or_create
Equipment.where(name: 'Tube & pipe benders').first_or_create
Equipment.where(name: 'Billet cutters').first_or_create
Equipment.where(name: 'Billet molds').first_or_create
Equipment.where(name: 'Casting equipment, die').first_or_create #Casting equipment, die
Equipment.where(name: 'Casting equipment, direct chill').first_or_create #Casting equipment, direct chill
Equipment.where(name: 'Casting equipment, permanent mold').first_or_create #Casting equipment, permanent mold
Equipment.where(name: 'Casting systems, continuous').first_or_create #Casting systems, continuous
Equipment.where(name: 'Filters, molten metal').first_or_create #Filters, molten metal
Equipment.where(name: 'Forging die lubricators').first_or_create #Forging die lubricators
Equipment.where(name: 'Forging equipment').first_or_create #Forging equipment
Equipment.where(name: 'Forging manipulators').first_or_create #Forging manipulators
Equipment.where(name: 'Ladles, automatic').first_or_create #Ladles, automatic
Equipment.where(name: 'Sensors, molten metal level').first_or_create #Sensors, molten metal level
Equipment.where(name: 'Strip accumulators').first_or_create #Strip accumulators
Equipment.where(name: 'Strip casting machines, continuous').first_or_create #Strip casting machines, continuous
Equipment.where(name: 'Strip guides').first_or_create #Strip guides
Equipment.where(name: 'Blanking lines').first_or_create #Blanking lines
Equipment.where(name: 'Blanking machines').first_or_create #Blanking machines
Equipment.where(name: 'Coil cars').first_or_create #Coil cars
Equipment.where(name: 'Coil coating lines').first_or_create #Coil coating lines
Equipment.where(name: 'Coil cradles').first_or_create #Coil cradles
Equipment.where(name: 'Coil end joiners').first_or_create #Coil end joiners
Equipment.where(name: 'Coil equipment, accumulators').first_or_create #Coil equipment, accumulators
Equipment.where(name: 'Coil equipment, coil coating/lubricating').first_or_create #Coil equipment, coil coating/lubricating
Equipment.where(name: 'Coil equipment, coil reels, grabs').first_or_create #Coil equipment, coil reels, grabs
Equipment.where(name: 'Coil equipment, cradles/carts').first_or_create #Coil equipment, cradles/carts
Equipment.where(name: 'Coil equipment, cut-to-length').first_or_create #Coil equipment, cut-to-length
Equipment.where(name: 'Coil equipment, end joining').first_or_create #Coil equipment, end joining
Equipment.where(name: 'Coil equipment, slitting').first_or_create #Coil equipment, slitting
Equipment.where(name: 'Coil equipment, straighteners/levelers').first_or_create #Coil equipment, straighteners/levelers
Equipment.where(name: 'Coil equipment, tension control').first_or_create #Coil equipment, tension control
Equipment.where(name: 'Coil equipment, winders, dereelers, uncoilers').first_or_create #Coil equipment, winders, dereelers, uncoilers
Equipment.where(name: 'Coil grabs').first_or_create #Coil grabs
Equipment.where(name: 'Coil pickling lines').first_or_create #Coil pickling lines
Equipment.where(name: 'Coil prep lines').first_or_create #Coil prep lines
Equipment.where(name: 'Coil processing lines').first_or_create #Coil processing lines
Equipment.where(name: 'Cut-to-length lines').first_or_create #Cut-to-length lines
Equipment.where(name: 'Decamberers').first_or_create #Decamberers
Equipment.where(name: 'Decoilers').first_or_create #Decoilers
Equipment.where(name: 'Drums, coil winding').first_or_create #Drums, coil winding
Equipment.where(name: 'End mills').first_or_create #End mills
Equipment.where(name: 'Flatteners').first_or_create #Flatteners
Equipment.where(name: 'Knives, rotary slitter').first_or_create #Knives, rotary slitter
Equipment.where(name: 'Levelers, roller & stretcher').first_or_create #Levelers, roller & stretcher
Equipment.where(name: 'Levelers, tension').first_or_create #Levelers, tension
Equipment.where(name: 'Liners, extrusion').first_or_create #Liners, extrusion
Equipment.where(name: 'Loop controls').first_or_create #Loop controls
Equipment.where(name: 'Multi-blanking lines').first_or_create #Multi-blanking lines
Equipment.where(name: 'Pickling lines').first_or_create #Pickling lines
Equipment.where(name: 'Recoilers').first_or_create #Recoilers
Equipment.where(name: 'Roller straighteners').first_or_create #Roller straighteners
Equipment.where(name: 'Rolls, coil coating').first_or_create #Rolls, coil coating
Equipment.where(name: 'Separators, coil').first_or_create #Separators, coil
Equipment.where(name: 'Side trim lines').first_or_create #Side trim lines
Equipment.where(name: 'Slitting lines').first_or_create #Slitting lines
Equipment.where(name: 'Software, coil optimization').first_or_create #Software, coil optimization
Equipment.where(name: 'Straighteners, coil').first_or_create #Straighteners, coil
Equipment.where(name: 'Tension leveling lines').first_or_create #Tension leveling lines
Equipment.where(name: 'Uncoilers').first_or_create #Uncoilers
Equipment.where(name: 'Billet & die heaters').first_or_create #Billet & die heaters
Equipment.where(name: 'Blowers, fans & exhausters').first_or_create #Blowers, fans & exhausters
Equipment.where(name: 'Burners, furnace & oven').first_or_create #Burners, furnace & oven
Equipment.where(name: 'Control systems, temperature').first_or_create #Control systems, temperature
Equipment.where(name: 'Cooling equipment').first_or_create #Cooling equipment
Equipment.where(name: 'Dryers & ovens').first_or_create #Dryers & ovens
Equipment.where(name: 'Drying systems, infrared').first_or_create #Drying systems, infrared
Equipment.where(name: 'Exchangers, heating & cooling').first_or_create #Exchangers, heating & cooling
Equipment.where(name: 'Fans, industrial').first_or_create #Fans, industrial
Equipment.where(name: 'Furnace camera').first_or_create #Furnace camera
Equipment.where(name: 'Furnace controls').first_or_create #Furnace controls
Equipment.where(name: 'Furnace frames & doors').first_or_create #Furnace frames & doors
Equipment.where(name: 'Furnace heating elements').first_or_create #Furnace heating elements
Equipment.where(name: 'Furnace linings').first_or_create #Furnace linings
Equipment.where(name: 'Furnaces, heat-treating').first_or_create #Furnaces, heat-treating
Equipment.where(name: 'Furnaces, log homogenizing').first_or_create #Furnaces, log homogenizing
Equipment.where(name: 'Furnaces, melting/holding').first_or_create #Furnaces, melting/holding
Equipment.where(name: 'Furnaces, other').first_or_create #Furnaces, other
Equipment.where(name: 'Immersion tube burners').first_or_create #Immersion tube burners
Equipment.where(name: 'Incinerators').first_or_create #Incinerators
Equipment.where(name: 'Oven controls, gas').first_or_create #Oven controls, gas
Equipment.where(name: 'Ovens, coil').first_or_create #Ovens, coil
Equipment.where(name: 'Ovens, paint baking').first_or_create #Ovens, paint baking
Equipment.where(name: 'Abrasive finishing, arbor machines').first_or_create #Abrasive finishing, arbor machines
Equipment.where(name: 'Buffing & polishing equipment').first_or_create #Buffing & polishing equipment
Equipment.where(name: 'Coating lines, roller coating').first_or_create #Coating lines, roller coating
Equipment.where(name: 'Deburring equipment').first_or_create #Deburring equipment
Equipment.where(name: 'Edge conditioning lines, skiving').first_or_create #Edge conditioning lines, skiving
Equipment.where(name: 'Electrocoating systems').first_or_create #Electrocoating systems
Equipment.where(name: 'Electroplating equipment').first_or_create #Electroplating equipment
Equipment.where(name: 'Embossing equipment & rolls').first_or_create #Embossing equipment & rolls
Equipment.where(name: 'Finishing systems').first_or_create #Finishing systems
Equipment.where(name: 'Galvalume processing').first_or_create #Galvalume processing
Equipment.where(name: 'Galvanizing lines').first_or_create #Galvanizing lines
Equipment.where(name: 'Galvanneal processing').first_or_create #Galvanneal processing
Equipment.where(name: 'Grinding and polishing lines').first_or_create #Grinding and polishing lines
Equipment.where(name: 'Grinding machines').first_or_create #Grinding machines
Equipment.where(name: 'Grinding machines, precision').first_or_create #Grinding machines, precision
Equipment.where(name: 'Metal cleaning equipment').first_or_create #Metal cleaning equipment
Equipment.where(name: 'Powder coating equipment').first_or_create #Powder coating equipment
Equipment.where(name: 'Roll coating machines').first_or_create #Roll coating machines
Equipment.where(name: 'Spray booths').first_or_create #Spray booths
Equipment.where(name: 'Spray equipment').first_or_create #Spray equipment
Equipment.where(name: 'Tanks, metal finishing').first_or_create #Tanks, metal finishing
Equipment.where(name: 'Tapping devices, die-mounted').first_or_create #Tapping devices, die-mounted
Equipment.where(name: 'Laser assist gas system').first_or_create #Laser assist gas system
Equipment.where(name: 'Laser cutting equipment').first_or_create #Laser cutting equipment
Equipment.where(name: 'Laser cutting equipment, 3-D').first_or_create #Laser cutting equipment, 3-D
Equipment.where(name: 'Laser cutting equipment, fiber laser').first_or_create #Laser cutting equipment, fiber laser
Equipment.where(name: 'Laser cutting equipment, high-power').first_or_create #Laser cutting equipment, high-power
Equipment.where(name: 'Laser cutting equipment, plasma combination').first_or_create #Laser cutting equipment, plasma combination
Equipment.where(name: 'Laser cutting equipment, punch combination').first_or_create #Laser cutting equipment, punch combination
Equipment.where(name: 'Laser cutting equipment, special order').first_or_create #Laser cutting equipment, special order
Equipment.where(name: 'Laser, replacement optics').first_or_create #Laser, replacement optics
Equipment.where(name: 'Air feeders').first_or_create #Air feeders
Equipment.where(name: 'Automated storage & retrieval systems').first_or_create #Automated storage & retrieval systems
Equipment.where(name: 'Baling machines').first_or_create #Baling machines
Equipment.where(name: 'Bar feeders').first_or_create #Bar feeders
Equipment.where(name: 'Bar handling equipment').first_or_create #Bar handling equipment
Equipment.where(name: 'Billet handlers').first_or_create #Billet handlers
Equipment.where(name: 'Chip handling systems').first_or_create #Chip handling systems
Equipment.where(name: 'Conveyors & conveying systems').first_or_create #Conveyors & conveying systems
Equipment.where(name: 'Cranes & hoists').first_or_create #Cranes & hoists
Equipment.where(name: 'Destackers, sheet').first_or_create #Destackers, sheet
Equipment.where(name: 'Extrusion handling equipment').first_or_create #Extrusion handling equipment
Equipment.where(name: 'Forklifts').first_or_create #Forklifts
Equipment.where(name: 'Magnets, electro lifting').first_or_create #Magnets, electro lifting
Equipment.where(name: 'Magnets, material handling').first_or_create #Magnets, material handling
Equipment.where(name: 'Racks, cantilever').first_or_create #Racks, cantilever
Equipment.where(name: 'Racks, extrusion').first_or_create #Racks, extrusion
Equipment.where(name: 'Racks, storage').first_or_create #Racks, storage
Equipment.where(name: 'Sheet fanners/feeders').first_or_create #Sheet fanners/feeders
Equipment.where(name: 'Sideloaders').first_or_create #Sideloaders
Equipment.where(name: 'Stackers, extrusion').first_or_create #Stackers, extrusion
Equipment.where(name: 'Stackers, plate').first_or_create #Stackers, plate
Equipment.where(name: 'Stackers, sheet').first_or_create #Stackers, sheet
Equipment.where(name: 'Stackers/destackers, plate & sheet').first_or_create #Stackers/destackers, plate & sheet
Equipment.where(name: 'Strapping equipment').first_or_create #Strapping equipment
Equipment.where(name: 'Stretch wrapping equipment').first_or_create #Stretch wrapping equipment
Equipment.where(name: 'Under-the-hook equipment').first_or_create #Under-the-hook equipment
Equipment.where(name: 'Vacuum lifts').first_or_create #Vacuum lifts
Equipment.where(name: 'Press brake gauges, back/front').first_or_create #Press brake gauges, back/front
Equipment.where(name: 'Press brakes').first_or_create #Press brakes
Equipment.where(name: 'Press brakes, electric/servo').first_or_create #Press brakes, electric/servo
Equipment.where(name: 'Press brakes, hand').first_or_create #Press brakes, hand
Equipment.where(name: 'Press brakes, hydraulic').first_or_create #Press brakes, hydraulic
Equipment.where(name: 'Press brakes, mechanical').first_or_create #Press brakes, mechanical
Equipment.where(name: 'Cutoff presses').first_or_create #Cutoff presses
Equipment.where(name: 'Extrusion press tools').first_or_create #Extrusion press tools
Equipment.where(name: 'Extrusion pullers').first_or_create #Extrusion pullers
Equipment.where(name: 'Feeders, sheet').first_or_create #Feeders, sheet
Equipment.where(name: 'Feeds, electronic').first_or_create #Feeds, electronic
Equipment.where(name: 'Feeds, mechanical').first_or_create #Feeds, mechanical
Equipment.where(name: 'Foil mills').first_or_create #Foil mills
Equipment.where(name: 'Forging presses, cold flow').first_or_create #Forging presses, cold flow
Equipment.where(name: 'Forging presses, open die').first_or_create #Forging presses, open die
Equipment.where(name: 'Press automation & controls').first_or_create #Press automation & controls
Equipment.where(name: 'Press automation equipment').first_or_create #Press automation equipment
Equipment.where(name: 'Press counter balance controller').first_or_create #Press counter balance controller
Equipment.where(name: 'Press counter balances').first_or_create #Press counter balances
Equipment.where(name: 'Press feed robots').first_or_create #Press feed robots
Equipment.where(name: 'Press feeders, pneumatic').first_or_create #Press feeders, pneumatic
Equipment.where(name: 'Press feeders, roll').first_or_create #Press feeders, roll
Equipment.where(name: 'Press feeders, servo').first_or_create #Press feeders, servo
Equipment.where(name: 'Press feeds').first_or_create #Press feeds
Equipment.where(name: 'Press feeds, electronic').first_or_create #Press feeds, electronic
Equipment.where(name: 'Press monitoring, sensors').first_or_create #Press monitoring, sensors
Equipment.where(name: 'Press part-transfer mechanisms').first_or_create #Press part-transfer mechanisms
Equipment.where(name: 'Press room equipment').first_or_create #Press room equipment
Equipment.where(name: 'Presses, arbor').first_or_create #Presses, arbor
Equipment.where(name: 'Presses, bending').first_or_create #Presses, bending
Equipment.where(name: 'Presses, coining').first_or_create #Presses, coining
Equipment.where(name: 'Presses, deep drawing').first_or_create #Presses, deep drawing
Equipment.where(name: 'Presses, electric').first_or_create #Presses, electric
Equipment.where(name: 'Presses, extrusion').first_or_create #Presses, extrusion
Equipment.where(name: 'Presses, extrusion, stretch').first_or_create #Presses, extrusion, stretch
Equipment.where(name: 'Presses, fineblanking').first_or_create #Presses, fineblanking
Equipment.where(name: 'Presses, forging').first_or_create #Presses, forging
Equipment.where(name: 'Presses, gap-frame, hydraulic').first_or_create #Presses, gap-frame, hydraulic
Equipment.where(name: 'Presses, gap-frame, mechanical').first_or_create #Presses, gap-frame, mechanical
Equipment.where(name: 'Presses, hardware inspection').first_or_create #Presses, hardware inspection
Equipment.where(name: 'Presses, horning').first_or_create #Presses, horning
Equipment.where(name: 'Presses, hydraulic').first_or_create #Presses, hydraulic
Equipment.where(name: 'Presses, hydroforming').first_or_create #Presses, hydroforming
Equipment.where(name: 'Presses, hydroforming, sheet').first_or_create #Presses, hydroforming, sheet
Equipment.where(name: 'Presses, hydroforming, tube').first_or_create #Presses, hydroforming, tube
Equipment.where(name: 'Presses, knuckle-joint').first_or_create #Presses, knuckle-joint
Equipment.where(name: 'Presses, loading & unloading').first_or_create #Presses, loading & unloading
Equipment.where(name: 'Presses, mechanical').first_or_create #Presses, mechanical
Equipment.where(name: 'Presses, pneumatic').first_or_create #Presses, pneumatic
Equipment.where(name: 'Presses, powder compacting').first_or_create #Presses, powder compacting
Equipment.where(name: 'Presses, rubber-pad forming').first_or_create #Presses, rubber-pad forming
Equipment.where(name: 'Presses, servo').first_or_create #Presses, servo
Equipment.where(name: 'Presses, slide forming').first_or_create #Presses, slide forming
Equipment.where(name: 'Presses, straightside, hydraulic').first_or_create #Presses, straightside, hydraulic
Equipment.where(name: 'Presses, straightside, mechanical').first_or_create #Presses, straightside, mechanical
Equipment.where(name: 'Presses, transfer').first_or_create #Presses, transfer
Equipment.where(name: 'Presses, trimming').first_or_create #Presses, trimming
Equipment.where(name: 'Presses, tryout').first_or_create #Presses, tryout
Equipment.where(name: 'Software, stamping simulation').first_or_create #Software, stamping simulation
Equipment.where(name: 'Stamping presses').first_or_create #Stamping presses
Equipment.where(name: 'Stamping presses, servo').first_or_create #Stamping presses, servo
Equipment.where(name: 'Valves, press safety').first_or_create #Valves, press safety
Equipment.where(name: 'Drilling machines, multiple').first_or_create #Drilling machines, multiple
Equipment.where(name: 'Punch presses').first_or_create #Punch presses
Equipment.where(name: 'Punch/shear combinations').first_or_create #Punch/shear combinations
Equipment.where(name: 'Punches').first_or_create #Punches
Equipment.where(name: 'Punches & dies, perforating').first_or_create #Punches & dies, perforating
Equipment.where(name: 'Punches, hydraulic').first_or_create #Punches, hydraulic
Equipment.where(name: 'Punching machines & nibblers').first_or_create #Punching machines & nibblers
Equipment.where(name: 'Turret punch presses, hydraulic').first_or_create #Turret punch presses, hydraulic
Equipment.where(name: 'Turret punch presses, mechanical').first_or_create #Turret punch presses, mechanical
Equipment.where(name: 'Turret punch presses, with plasma').first_or_create #Turret punch presses, with plasma
Equipment.where(name: 'Robot tooling/grippers').first_or_create #Robot tooling/grippers
Equipment.where(name: 'Robots, industrial').first_or_create #Robots, industrial
Equipment.where(name: 'Robots, material handling').first_or_create #Robots, material handling
Equipment.where(name: 'Robots, peripherals').first_or_create #Robots, peripherals
Equipment.where(name: 'Robots, welding').first_or_create #Robots, welding
Equipment.where(name: 'Angle rolls').first_or_create #Angle rolls
Equipment.where(name: 'Plate rolls').first_or_create #Plate rolls
Equipment.where(name: 'Roll forming mills').first_or_create #Roll forming mills
Equipment.where(name: 'Roll forming rolls').first_or_create #Roll forming rolls
Equipment.where(name: 'Roll grinders').first_or_create #Roll grinders
Equipment.where(name: 'Rolling mills/equipment').first_or_create #Rolling mills/equipment
Equipment.where(name: 'Rolls, embossing').first_or_create #Rolls, embossing
Equipment.where(name: 'Rolls, rolling mill').first_or_create #Rolls, rolling mill
Equipment.where(name: 'Rolls, rubber & polyurethane').first_or_create #Rolls, rubber & polyurethane
Equipment.where(name: 'Shape control, rolling mills').first_or_create #Shape control, rolling mills
Equipment.where(name: 'Air purifying systems').first_or_create #Air purifying systems
Equipment.where(name: 'Control systems, pollution').first_or_create #Control systems, pollution
Equipment.where(name: 'Dust collectors').first_or_create #Dust collectors
Equipment.where(name: 'Pollution control systems').first_or_create #Pollution control systems
Equipment.where(name: 'Safety equipment, apparel').first_or_create #Safety equipment, apparel
Equipment.where(name: 'Safety equipment, barriers & machine guards').first_or_create #Safety equipment, barriers & machine guards
Equipment.where(name: 'Safety equipment, brake monitors').first_or_create #Safety equipment, brake monitors
Equipment.where(name: 'Safety equipment, clutches & brakes').first_or_create #Safety equipment, clutches & brakes
Equipment.where(name: 'Safety equipment, floor mats').first_or_create #Safety equipment, floor mats
Equipment.where(name: 'Safety equipment, light curtains').first_or_create #Safety equipment, light curtains
Equipment.where(name: 'Safety equipment, lockout/tagout devices').first_or_create #Safety equipment, lockout/tagout devices
Equipment.where(name: 'Safety equipment, machine guards').first_or_create #Safety equipment, machine guards
Equipment.where(name: 'Safety equipment, palm buttons').first_or_create #Safety equipment, palm buttons
Equipment.where(name: 'Safety equipment, presence-sensing devices').first_or_create #Safety equipment, presence-sensing devices
Equipment.where(name: 'Safety equipment, welding protection').first_or_create #Safety equipment, welding protection
Equipment.where(name: 'Abrasive cutoff machines').first_or_create #Abrasive cutoff machines
Equipment.where(name: 'Air knife, drying').first_or_create #Air knife, drying
Equipment.where(name: 'Cutoff machines, saws').first_or_create #Cutoff machines, saws
Equipment.where(name: 'Cutoff machines, tube & pipe').first_or_create #Cutoff machines, tube & pipe
Equipment.where(name: 'Cutting cells & systems').first_or_create #Cutting cells & systems
Equipment.where(name: 'Flame cutting equipment').first_or_create #Flame cutting equipment
Equipment.where(name: 'Miter cutoff saws, single & double').first_or_create #Miter cutoff saws, single & double
Equipment.where(name: 'Notching machines').first_or_create #Notching machines
Equipment.where(name: 'Oxy-fuel cutting equipment').first_or_create #Oxy-fuel cutting equipment
Equipment.where(name: 'Plasma cutting equipment').first_or_create #Plasma cutting equipment
Equipment.where(name: 'Saw blades, all types').first_or_create #Saw blades, all types
Equipment.where(name: 'Saws, band').first_or_create #Saws, band
Equipment.where(name: 'Saws, bar & billet').first_or_create #Saws, bar & billet
Equipment.where(name: 'Saws, circular').first_or_create #Saws, circular
Equipment.where(name: 'Saws, circular cutoff (cold)').first_or_create #Saws, circular cutoff (cold)
Equipment.where(name: 'Saws, contour').first_or_create #Saws, contour
Equipment.where(name: 'Saws, other').first_or_create #Saws, other
Equipment.where(name: 'Saws/shears, extrusion').first_or_create #Saws/shears, extrusion
Equipment.where(name: 'Shear knives').first_or_create #Shear knives
Equipment.where(name: 'Shearing machines').first_or_create #Shearing machines
Equipment.where(name: 'Shearing machines, flying').first_or_create #Shearing machines, flying
Equipment.where(name: 'Spacers, shear').first_or_create #Spacers, shear
Equipment.where(name: 'Waterjet cutting equipment').first_or_create #Waterjet cutting equipment
Equipment.where(name: 'Bending').first_or_create #Bending
Equipment.where(name: 'CAD/CAM').first_or_create #CAD/CAM
Equipment.where(name: 'ERP/MRP Supply chain management').first_or_create #ERP/MRP Supply chain management
Equipment.where(name: 'Job costing & estimating').first_or_create #Job costing & estimating
Equipment.where(name: 'NC/CNC programming').first_or_create #NC/CNC programming
Equipment.where(name: 'Nesting').first_or_create #Nesting
Equipment.where(name: 'Process planning & scheduling').first_or_create #Process planning & scheduling
Equipment.where(name: 'Sheet metal layout, flat pattern').first_or_create #Sheet metal layout, flat pattern
Equipment.where(name: 'Shop-floor tracking & flow control').first_or_create #Shop-floor tracking & flow control
Equipment.where(name: 'Simulation, process modeling').first_or_create #Simulation, process modeling
Equipment.where(name: 'Tool management & storage').first_or_create #Tool management & storage
Equipment.where(name: 'Carbide dies').first_or_create #Carbide dies
Equipment.where(name: 'Die buttons').first_or_create #Die buttons
Equipment.where(name: 'Die carts/lift tables').first_or_create #Die carts/lift tables
Equipment.where(name: 'Die changing equipment').first_or_create #Die changing equipment
Equipment.where(name: 'Die clamps').first_or_create #Die clamps
Equipment.where(name: 'Die cushions').first_or_create #Die cushions
Equipment.where(name: 'Die design').first_or_create #Die design
Equipment.where(name: 'Die film').first_or_create #Die film
Equipment.where(name: 'Die holders').first_or_create #Die holders
Equipment.where(name: 'Die inserts').first_or_create #Die inserts
Equipment.where(name: 'Die inserts').first_or_create #Die lifters
Equipment.where(name: 'Die lubrication systems').first_or_create #Die lubrication systems
Equipment.where(name: 'Die pins').first_or_create #Die pins
Equipment.where(name: 'Die protection systems').first_or_create #Die protection systems
Equipment.where(name: 'Die separators').first_or_create #Die separators
Equipment.where(name: 'Die sets & accessories').first_or_create #Die sets & accessories
Equipment.where(name: 'Die springs').first_or_create #Die springs
Equipment.where(name: 'Die storage & retrieval systems').first_or_create #Die storage & retrieval systems
Equipment.where(name: 'Die transfer, handling systems').first_or_create #Die transfer, handling systems
Equipment.where(name: 'Dies, blank & form').first_or_create #Dies, blank & form
Equipment.where(name: 'Dies, blanking').first_or_create #Dies, blanking
Equipment.where(name: 'Dies, drawing/forming').first_or_create #Dies, drawing/forming
Equipment.where(name: 'Dies, extrusion').first_or_create #Dies, extrusion
Equipment.where(name: 'Dies, permanent mold casting').first_or_create #Dies, permanent mold casting
Equipment.where(name: 'Dies, piercing & notching').first_or_create #Dies, piercing & notching
Equipment.where(name: 'Dies, progressive').first_or_create #Dies, progressive
Equipment.where(name: 'Dies, punch press').first_or_create #Dies, punch press
Equipment.where(name: 'Dies, roll forming').first_or_create #Dies, roll forming
Equipment.where(name: 'Quick die change systems').first_or_create #Quick die change systems
Equipment.where(name: 'Tooling, bending').first_or_create #Tooling, bending
Equipment.where(name: 'Tooling, ceramic').first_or_create #Tooling, ceramic
Equipment.where(name: 'Tooling, die casting').first_or_create #Tooling, die casting
Equipment.where(name: 'Tooling, extrusion').first_or_create #Tooling, extrusion
Equipment.where(name: 'Tooling, ironworker').first_or_create #Tooling, ironworker
Equipment.where(name: 'Tooling, press brake').first_or_create #Tooling, press brake
Equipment.where(name: 'Tooling, presses').first_or_create #Tooling, presses
Equipment.where(name: 'Tooling, punch & die sets').first_or_create #Tooling, punch & die sets
Equipment.where(name: 'Tooling, roll forming').first_or_create #Tooling, roll forming
Equipment.where(name: 'Tooling, short-run').first_or_create #Tooling, short-run
Equipment.where(name: 'Tooling, tube & pipe mills').first_or_create #Tooling, tube & pipe mills
Equipment.where(name: 'Tooling, tube bending').first_or_create #Tooling, tube bending
Equipment.where(name: 'Tooling, turret punch press').first_or_create #Tooling, turret punch press
Equipment.where(name: 'Tooling, unitized').first_or_create #Tooling, unitized
Equipment.where(name: 'Tooling, urethane').first_or_create #Tooling, urethane
Equipment.where(name: 'Tools, carbide cutting').first_or_create #Tools, carbide cutting
Equipment.where(name: 'Tube perforating machines').first_or_create #Tube perforating machines
Equipment.where(name: 'Tungsten carbide tooling').first_or_create #Tungsten carbide tooling
Equipment.where(name: 'Cold draw equipment').first_or_create #Cold draw equipment
Equipment.where(name: 'Drawbenches').first_or_create #Drawbenches
Equipment.where(name: 'Mandrels').first_or_create #Mandrels
Equipment.where(name: 'Tube & pipe mills').first_or_create #Tube & pipe mills
Equipment.where(name: 'Tube cutting machinery').first_or_create #Tube cutting machinery
Equipment.where(name: 'Tube louvers').first_or_create #Tube louvers
Equipment.where(name: 'Tube-end forming equipment').first_or_create #Tube-end forming equipment
Equipment.where(name: 'Tube/pipe bending machines').first_or_create #Tube/pipe bending machines
Equipment.where(name: 'Automatic inspection systems').first_or_create #Automatic inspection systems
Equipment.where(name: 'Coating thickness testers').first_or_create #Coating thickness testers
Equipment.where(name: 'Coordinate measuring machines').first_or_create #Coordinate measuring machines
Equipment.where(name: 'Gauges, cutoff').first_or_create #Gauges, cutoff
Equipment.where(name: 'Gauges, dimensional').first_or_create #Gauges, dimensional
Equipment.where(name: 'Gauges, thickness').first_or_create #Gauges, thickness
Equipment.where(name: 'Gauges, thickness, noncontact').first_or_create #Gauges, thickness, noncontact
Equipment.where(name: 'Gauges, thickness, ultrasonic').first_or_create #Gauges, thickness, ultrasonic
Equipment.where(name: 'Hardness testers').first_or_create #Hardness testers
Equipment.where(name: 'Inspection lights').first_or_create #Inspection lights
Equipment.where(name: 'Inspection systems').first_or_create #Inspection systems
Equipment.where(name: 'Inspection/measurement equipment, sheet/plate').first_or_create #Inspection/measurement equipment, sheet/plate
Equipment.where(name: 'Inspection/measurement equipment, tube & pipe').first_or_create #Inspection/measurement equipment, tube & pipe
Equipment.where(name: 'Load monitors').first_or_create #Load monitors
Equipment.where(name: 'Measuring equipment').first_or_create #Measuring equipment
Equipment.where(name: 'Metrology systems').first_or_create #Metrology systems
Equipment.where(name: 'SPC (statistical process control) gauging').first_or_create #SPC (statistical process control) gauging
Equipment.where(name: 'Spectrometers').first_or_create #Spectrometers
Equipment.where(name: 'Ultrasonic testing equipment').first_or_create #Ultrasonic testing equipment
Equipment.where(name: 'Accessories (gloves, holders, etc.)').first_or_create #Accessories (gloves, holders, etc.)
Equipment.where(name: 'Arc welding equipment').first_or_create #Arc welding equipment
Equipment.where(name: 'Beveling machines').first_or_create #Beveling machines
Equipment.where(name: 'Brazing/soldering equipment').first_or_create #Brazing/soldering equipment
Equipment.where(name: 'Cells & systems').first_or_create #Cells & systems
Equipment.where(name: 'Consumables (electrodes, gases)').first_or_create #Consumables (electrodes, gases)
Equipment.where(name: 'Coolers/chillers').first_or_create #Coolers/chillers
Equipment.where(name: 'Deslagging machines').first_or_create #Deslagging machines
Equipment.where(name: 'Dross systems').first_or_create #Dross systems
Equipment.where(name: 'Electronic controls').first_or_create #Electronic controls
Equipment.where(name: 'Fume ducting').first_or_create #Fume ducting
Equipment.where(name: 'Fume removal systems/equipment').first_or_create #Fume removal systems/equipment
Equipment.where(name: 'GMAW/GTAW').first_or_create #GMAW/GTAW
Equipment.where(name: 'Guns').first_or_create #Guns
Equipment.where(name: 'Helmets').first_or_create #Helmets
Equipment.where(name: 'High-frequency').first_or_create #High-frequency
Equipment.where(name: 'Laser').first_or_create #Laser
Equipment.where(name: 'Plasma').first_or_create #Plasma
Equipment.where(name: 'Platens/work tables').first_or_create #Platens/work tables
Equipment.where(name: 'Positioners').first_or_create #Positioners
Equipment.where(name: 'Resistance welding, flash').first_or_create #Resistance welding, flash
Equipment.where(name: 'Resistance welding, seam').first_or_create #Resistance welding, seam
Equipment.where(name: 'Resistance welding, spot, stud').first_or_create #Resistance welding, spot, stud
Equipment.where(name: 'Robotic Welding Cells').first_or_create #Robotic Welding Cells
Equipment.where(name: 'Torches').first_or_create #Torches
Equipment.where(name: 'Weld fittings').first_or_create #Weld fittings
Equipment.where(name: 'Weld-nut/stud feeders').first_or_create #Weld-nut/stud feeders
Equipment.where(name: 'Welding wire').first_or_create #Welding wire
Equipment.where(name: 'Workholding equipment').first_or_create #Workholding equipment
Equipment.where(name: 'Acid purification equipment').first_or_create #Acid purification equipment
Equipment.where(name: 'Air ejection equipment').first_or_create #Air ejection equipment
Equipment.where(name: 'Automated assembly systems').first_or_create #Automated assembly systems
Equipment.where(name: 'Automatic nut feeder').first_or_create #Automatic nut feeder
Equipment.where(name: 'Canisters, extrusion').first_or_create #Canisters, extrusion
Equipment.where(name: 'Clamps, anodizing, plating').first_or_create #Clamps, anodizing, plating
Equipment.where(name: 'Cleaning equipment, aqueous, high-pressure').first_or_create #Cleaning equipment, aqueous, high-pressure
Equipment.where(name: 'Cleaning equipment, ultrasonic').first_or_create #Cleaning equipment, ultrasonic
Equipment.where(name: 'Cleaning equipment, vapor/mist').first_or_create #Cleaning equipment, vapor/mist
Equipment.where(name: 'Containers, extrusion').first_or_create #Containers, extrusion
Equipment.where(name: 'Containers, packaging').first_or_create #Containers, packaging
Equipment.where(name: 'Control systems').first_or_create #Control systems
Equipment.where(name: 'Controls, motion').first_or_create #Controls, motion
Equipment.where(name: 'Controls, noise/vibration').first_or_create #Controls, noise/vibration
Equipment.where(name: 'Controls, remote').first_or_create #Controls, remote
Equipment.where(name: 'Cylinders, hydraulic & pneumatic').first_or_create #Cylinders, hydraulic & pneumatic
Equipment.where(name: 'Cylinders, nitrogen die').first_or_create #Cylinders, nitrogen die
Equipment.where(name: 'Deoilers').first_or_create #Deoilers
Equipment.where(name: 'Erecting machinery').first_or_create #Erecting machinery
Equipment.where(name: 'Expander rings').first_or_create #Expander rings
Equipment.where(name: 'Fasteners, self-forming for sheet metal').first_or_create #Fasteners, self-forming for sheet metal
Equipment.where(name: 'Filtration systems').first_or_create #Filtration systems
Equipment.where(name: 'Forming & flanging machines').first_or_create #Forming & flanging machines
Equipment.where(name: 'Injection molding equipment').first_or_create #Injection molding equipment
Equipment.where(name: 'Ironworkers').first_or_create #Ironworkers
Equipment.where(name: 'Lubricant applicators').first_or_create #Lubricant applicators
Equipment.where(name: 'Machine monitors').first_or_create #Machine monitors
Equipment.where(name: 'Machinery mounts').first_or_create #Machinery mounts
Equipment.where(name: 'Machinery moving & erecting').first_or_create #Machinery moving & erecting
Equipment.where(name: 'Manipulators').first_or_create #Manipulators
Equipment.where(name: 'Marking').first_or_create #Marking
Equipment.where(name: 'Mining equipment').first_or_create #Mining equipment
Equipment.where(name: 'Optical sensing/gauging systems').first_or_create #Optical sensing/gauging systems
Equipment.where(name: 'Panel, roll and linear cutting optimization').first_or_create #Panel, roll and linear cutting optimization
Equipment.where(name: 'Parts identification & marking systems').first_or_create #Parts identification & marking systems
Equipment.where(name: 'Payoff reels').first_or_create #Payoff reels
Equipment.where(name: 'Portable tools, beveling').first_or_create #Portable tools, beveling
Equipment.where(name: 'Portable tools, cutting').first_or_create #Portable tools, cutting
Equipment.where(name: 'Portable tools, drilling').first_or_create #Portable tools, drilling
Equipment.where(name: 'Portable tools, grinding').first_or_create #Portable tools, grinding
Equipment.where(name: 'Portable tools, punching').first_or_create #Portable tools, punching
Equipment.where(name: 'Programmable controls & switches').first_or_create #Programmable controls & switches
Equipment.where(name: 'Proximity switches').first_or_create #Proximity switches
Equipment.where(name: 'Pulley machines').first_or_create #Pulley machines
Equipment.where(name: 'Rectifiers').first_or_create #Rectifiers
Equipment.where(name: 'Recycling equipment').first_or_create #Recycling equipment
Equipment.where(name: 'Riveting').first_or_create #Riveting
Equipment.where(name: 'Runout tables').first_or_create #Runout tables
Equipment.where(name: 'Scrap choppers').first_or_create #Scrap choppers
Equipment.where(name: 'Scrap processing equipment').first_or_create #Scrap processing equipment
Equipment.where(name: 'Sensors, color').first_or_create #Sensors, color
Equipment.where(name: 'Sensors, load').first_or_create #Sensors, load
Equipment.where(name: 'Sensors, noncontact').first_or_create #Sensors, noncontact
Equipment.where(name: 'Servo feeds').first_or_create #Servo feeds
Equipment.where(name: 'Sheeting lines').first_or_create #Sheeting lines
Equipment.where(name: 'Slide forming & spring machines').first_or_create #Slide forming & spring machines
Equipment.where(name: 'Spring forming machines').first_or_create #Spring forming machines
Equipment.where(name: 'Stems, extrusion').first_or_create #Stems, extrusion
Equipment.where(name: 'Straighteners, tube & bar').first_or_create #Straighteners, tube & bar
Equipment.where(name: 'Stretchers, extrusion').first_or_create #Stretchers, extrusion
Equipment.where(name: 'Swaging machines').first_or_create #Swaging machines
Equipment.where(name: 'Thermocouples').first_or_create #Thermocouples
Equipment.where(name: 'Transformers').first_or_create #Transformers
Equipment.where(name: 'Trim handling systems').first_or_create #Trim handling systems
Equipment.where(name: 'Upsetters').first_or_create #Upsetters
Equipment.where(name: 'Used equipment').first_or_create #Used equipment
Equipment.where(name: 'Valves, proportional').first_or_create #Valves, proportional
Equipment.where(name: 'Vision systems').first_or_create #Vision systems
Equipment.where(name: 'Washers').first_or_create #Washers
Equipment.where(name: 'Waste treatment systems').first_or_create #Waste treatment systems
Equipment.where(name: 'Winders, traverse').first_or_create #Winders, traverse
Equipment.where(name: 'Wire forming machinery').first_or_create #Wire forming machinery

puts 'Create Material Categories'
Material.where(name: 'Bar & rod, exotic alloys').first_or_create
Material.where(name: 'Bonderized').first_or_create #Bonderized
Material.where(name: 'Cobalt').first_or_create #Cobalt
Material.where(name: 'Galvalume').first_or_create #Galvalume
Material.where(name: 'Hastelloy').first_or_create #Hastelloy
Material.where(name: 'Inconel').first_or_create #Inconel
Material.where(name: 'Low-melt alloys').first_or_create #Low-melt alloys
Material.where(name: 'Plate, alloy steel').first_or_create #Plate, alloy steel
Material.where(name: 'Plate, exotic alloys').first_or_create #Plate, exotic alloys
Material.where(name: 'Sheet & coil, exotic alloys').first_or_create #Sheet & coil, exotic alloys
Material.where(name: 'Strip, exotic alloys').first_or_create #Strip, exotic alloys
Material.where(name: 'Tube & pipe, alloy').first_or_create #Tube & pipe, alloy
Material.where(name: 'Tube & pipe, chrome/moly').first_or_create #Tube & pipe, chrome/moly
Material.where(name: 'Tube & pipe, exotic alloys').first_or_create #Tube & pipe, exotic alloys
Material.where(name: 'Bar & rod').first_or_create #Bar & rod
Material.where(name: 'Bar & rod, aluminum alloys').first_or_create #Bar & rod, aluminum alloys
Material.where(name: 'Bar & rod, extruded').first_or_create #Bar & rod, extruded
Material.where(name: 'Casting alloys').first_or_create #Casting alloys
Material.where(name: 'Coiled sheet').first_or_create #Coiled sheet
Material.where(name: 'Filters').first_or_create #Filters
Material.where(name: 'Ingot').first_or_create #Ingot
Material.where(name: 'Plate').first_or_create #Plate
Material.where(name: 'Plate, aluminum alloys').first_or_create #Plate, aluminum alloys
Material.where(name: 'Sheet & coil').first_or_create #Sheet & coil
Material.where(name: 'Sheet & coil, aluminum alloys').first_or_create #Sheet & coil, aluminum alloys
Material.where(name: 'Strip').first_or_create #Strip
Material.where(name: 'Strip, aluminum alloys').first_or_create #Strip, aluminum alloys
Material.where(name: 'Tooling plate').first_or_create #Tooling plate
Material.where(name: 'Tube & pipe').first_or_create #Tube & pipe
Material.where(name: 'Tube & pipe, aluminum alloys').first_or_create #Tube & pipe, aluminum alloys
Material.where(name: 'Bar & rod').first_or_create #Bar & rod
Material.where(name: 'Plate').first_or_create #Plate
Material.where(name: 'Sheet & coil').first_or_create #Sheet & coil
Material.where(name: 'Strip').first_or_create #Strip
Material.where(name: 'Tube & pipe').first_or_create #Tube & pipe
Material.where(name: 'Bar & rod').first_or_create #Bar & rod
Material.where(name: 'Bearing bronze').first_or_create #Bearing bronze
Material.where(name: 'Plate').first_or_create #Plate
Material.where(name: 'Sheet & coil').first_or_create #Sheet & coil
Material.where(name: 'Strip').first_or_create #Strip
Material.where(name: 'Tube & pipe').first_or_create #Tube & pipe
Material.where(name: 'Bar & rod').first_or_create #Bar & rod
Material.where(name: 'Bar & rod, beryllium copper').first_or_create #Bar & rod, beryllium copper
Material.where(name: 'Bar & rod, copper alloys').first_or_create #Bar & rod, copper alloys
Material.where(name: 'Bar and rod').first_or_create #Bar and rod
Material.where(name: 'Plate').first_or_create #Plate
Material.where(name: 'Plate, beryllium copper').first_or_create #Plate, beryllium copper
Material.where(name: 'Plate, copper alloys').first_or_create #Plate, copper alloys
Material.where(name: 'Sheet & coil').first_or_create #Sheet & coil
Material.where(name: 'Sheet & coil, beryllium copper').first_or_create #Sheet & coil, beryllium copper
Material.where(name: 'Sheet & coil, copper alloys').first_or_create #Sheet & coil, copper alloys
Material.where(name: 'Strip').first_or_create #Strip
Material.where(name: 'Strip, beryllium copper').first_or_create #Strip, beryllium copper
Material.where(name: 'Strip, copper alloys').first_or_create #Strip, copper alloys
Material.where(name: 'Tube & pipe').first_or_create #Tube & pipe
Material.where(name: 'Tube & pipe, beryllium copper').first_or_create #Tube & pipe, beryllium copper
Material.where(name: 'Tube & pipe, copper alloys').first_or_create #Tube & pipe, copper alloys
Material.where(name: 'Wire').first_or_create #Wire
Material.where(name: 'Anodes').first_or_create #Anodes
Material.where(name: 'Casting alloys').first_or_create #Casting alloys
Material.where(name: 'Tooling plate').first_or_create #Tooling plate
Material.where(name: 'Bar & rod, nickel & nickel alloys').first_or_create #Bar & rod, nickel & nickel alloys
Material.where(name: 'Plate').first_or_create	 #Plate
Material.where(name: 'Plate, nickel alloys').first_or_create	 #Plate, nickel alloys
Material.where(name: 'Sheet & coil').first_or_create	 #Sheet & coil
Material.where(name: 'Sheet & coil, nickel alloys').first_or_create	 #Sheet & coil, nickel alloys
Material.where(name: 'Strip').first_or_create	 #Strip
Material.where(name: 'Strip, nickel alloys').first_or_create	 #Strip, nickel alloys
Material.where(name: 'Tube & pipe').first_or_create	 #Tube & pipe
Material.where(name: 'Tube & pipe, nickel alloy').first_or_create	 #Tube & pipe, nickel alloy
Material.where(name: 'Bar & rod').first_or_create	 #Bar & rod
Material.where(name: 'Bar & rod, cold finished').first_or_create	 #Bar & rod, cold finished
Material.where(name: 'Bar & rod, cold rolled').first_or_create	 #Bar & rod, cold rolled
Material.where(name: 'Bar & rod, hot rolled').first_or_create	 #Bar & rod, hot rolled
Material.where(name: 'Bar & rod, stainless steel').first_or_create	 #Bar & rod, stainless steel
Material.where(name: 'Bar, cold finished').first_or_create	 #Bar, cold finished
Material.where(name: 'Bar, hot rolled').first_or_create #Bar, hot rolled
Material.where(name: 'Cold rolled').first_or_create #Cold rolled
Material.where(name: 'Die steels').first_or_create #Die steels
Material.where(name: 'EPS (eco pickled surface)').first_or_create #EPS (eco pickled surface)
Material.where(name: 'Galvanized').first_or_create #Galvanized
Material.where(name: 'Galvannealed').first_or_create #Galvannealed
Material.where(name: 'Hot rolled').first_or_create #Hot rolled
Material.where(name: 'Hot rolled pickled & oiled').first_or_create #Hot rolled pickled & oiled
Material.where(name: 'Plate').first_or_create #Plate
Material.where(name: 'Plate, carbon steel').first_or_create #Plate, carbon steel
Material.where(name: 'Plate, cold rolled').first_or_create #Plate, cold rolled
Material.where(name: 'Plate, hot rolled').first_or_create #Plate, hot rolled
Material.where(name: 'Plate, stainless steel').first_or_create #Plate, stainless steel
Material.where(name: 'Rebar/mesh').first_or_create #Rebar/mesh
Material.where(name: 'SCS (smooth clean surface)').first_or_create #SCS (smooth clean surface)
Material.where(name: 'Sheet & coil').first_or_create #Sheet & coil
Material.where(name: 'Sheet & coil, cold rolled').first_or_create #Sheet & coil, cold rolled
Material.where(name: 'Sheet & coil, hot rolled').first_or_create #Sheet & coil, hot rolled
Material.where(name: 'Sheet & coil, stainless steel').first_or_create #Sheet & coil, stainless steel
Material.where(name: 'Sheet and coil, galvanized').first_or_create #Sheet and coil, galvanized
Material.where(name: 'Squares, cold roll formed').first_or_create #Squares, cold roll formed
Material.where(name: 'Strip').first_or_create #Strip
Material.where(name: 'Strip, cold rolled').first_or_create #Strip, cold rolled
Material.where(name: 'Strip, hot rolled').first_or_create #Strip, hot rolled
Material.where(name: 'Strip, stainless steel').first_or_create #Strip, stainless steel
Material.where(name: 'Tool steel').first_or_create #Tool steel
Material.where(name: 'Tube & pipe').first_or_create #Tube & pipe
Material.where(name: 'Tube & pipe, carbon').first_or_create #Tube & pipe, carbon
Material.where(name: 'Tube & pipe, cold rolled').first_or_create #Tube & pipe, cold rolled
Material.where(name: 'Tube & pipe, hot rolled').first_or_create #Tube & pipe, hot rolled
Material.where(name: 'Tube & pipe, stainless steel').first_or_create #Tube & pipe, stainless steel
Material.where(name: 'Tubes, cold roll formed').first_or_create #Tubes, cold roll formed
Material.where(name: 'Weathering grades').first_or_create #Weathering grades
Material.where(name: 'Bar & rod').first_or_create #Bar & rod
Material.where(name: 'Forging').first_or_create #Forging
Material.where(name: 'Plate').first_or_create #Plate
Material.where(name: 'Sheets').first_or_create #Sheets
Material.where(name: 'Strip').first_or_create #Strip
Material.where(name: 'Tube & pipe').first_or_create #Tube & pipe
Material.where(name: 'Anodes').first_or_create #Anodes
Material.where(name: 'Bar & rod').first_or_create #Bar & rod
Material.where(name: 'Ingot').first_or_create #Ingot
Material.where(name: 'Strip').first_or_create #Strip
Material.where(name: 'Zinc carbon alloys').first_or_create #Zinc carbon alloys
Material.where(name: 'Clad metals').first_or_create #Clad metals
Material.where(name: 'Coatings, ceramic').first_or_create #Coatings, ceramic
Material.where(name: 'Coatings, conversion').first_or_create #Coatings, conversion
Material.where(name: 'Coatings, enamel').first_or_create #Coatings, enamel
Material.where(name: 'Coatings, extrusion').first_or_create #Coatings, extrusion
Material.where(name: 'Coatings, other').first_or_create #Coatings, other
Material.where(name: 'Coatings, physical vapor deposition').first_or_create #Coatings, physical vapor deposition
Material.where(name: 'Coatings, powder').first_or_create #Coatings, powder
Material.where(name: 'Coatings, ultraviolet').first_or_create #Coatings, ultraviolet
Material.where(name: 'Coatings, water-based').first_or_create #Coatings, water-based
Material.where(name: 'Coil coating finishes').first_or_create #Coil coating finishes
Material.where(name: 'Laminated panels, aluminum & stainless').first_or_create #Laminated panels, aluminum & stainless
Material.where(name: 'Laminates, vinyl/metal').first_or_create #Laminates, vinyl/metal
Material.where(name: 'Laminating films, decorative, appliances').first_or_create #Laminating films, decorative, appliances
Material.where(name: 'Powder metal parts').first_or_create #Powder metal parts
Material.where(name: 'Preanodized sheet/coil').first_or_create #Preanodized sheet/coil
Material.where(name: 'Prefinished metals').first_or_create #Prefinished metals
Material.where(name: 'Prepainted metals').first_or_create #Prepainted metals
Material.where(name: 'Preplated metals').first_or_create #Preplated metals
Material.where(name: 'Sheet & coil, aluminized').first_or_create #Sheet & coil, aluminized
Material.where(name: 'Specialty coated metals').first_or_create #Specialty coated metals
Material.where(name: 'Tool coatings').first_or_create #Tool coatings
Material.where(name: 'Angles/channels/profiles').first_or_create #Angles/channels/profiles
Material.where(name: 'Bar, forged').first_or_create #Bar, forged
Material.where(name: 'Billet').first_or_create #Billet
Material.where(name: 'Blocks, forged').first_or_create #Blocks, forged
Material.where(name: 'Containers').first_or_create #Containers
Material.where(name: 'Cylinders, forged').first_or_create #Cylinders, forged
Material.where(name: 'Expanded metals').first_or_create #Expanded metals
Material.where(name: 'Foil').first_or_create #Foil
Material.where(name: 'Frames').first_or_create #Frames
Material.where(name: 'Gratings').first_or_create #Gratings
Material.where(name: 'High chairs').first_or_create #High chairs
Material.where(name: 'Insulated panels').first_or_create #Insulated panels
Material.where(name: 'Metal building systems').first_or_create #Metal building systems
Material.where(name: 'Perforated metals').first_or_create #Perforated metals
Material.where(name: 'Prepolished metals').first_or_create #Prepolished metals
Material.where(name: 'Rings, forged').first_or_create #Rings, forged
Material.where(name: 'Safety gratings').first_or_create #Safety gratings
Material.where(name: 'Screw machine products').first_or_create #Screw machine products
Material.where(name: 'Shafts, forged').first_or_create #Shafts, forged
Material.where(name: 'Slab bolster').first_or_create #Slab bolster
Material.where(name: 'Sound dampening materials').first_or_create #Sound dampening materials
Material.where(name: 'Strapping').first_or_create #Strapping
Material.where(name: 'Structural reinforcement material').first_or_create #Structural reinforcement material
Material.where(name: 'Textured metals').first_or_create #Textured metals
Material.where(name: 'Thermal barrier systems').first_or_create #Thermal barrier systems
Material.where(name: 'Thermal insulation').first_or_create #Thermal insulation
Material.where(name: 'Tie wire').first_or_create #Tie wire
Material.where(name: 'Tube & pipe, corrosion resistant').first_or_create #Tube & pipe, corrosion resistant
Material.where(name: 'Tube & pipe, high-temperature').first_or_create #Tube & pipe, high-temperature
Material.where(name: 'Tubing, DOM').first_or_create #Tubing, DOM
Material.where(name: 'Tubing, lock seam/open seam').first_or_create #Tubing, lock seam/open seam
Material.where(name: 'Wire cloth').first_or_create #Wire cloth
Material.where(name: 'Wire, other').first_or_create #Wire, other
Material.where(name: 'Wrought mill products').first_or_create #Wrought mill products
Material.where(name: 'Z-sections').first_or_create #Z-sections
Material.where(name: 'Composites').first_or_create #Composites
Material.where(name: 'Graphite').first_or_create #Graphite
Material.where(name: 'Industrial felt & textiles').first_or_create #Industrial felt & textiles
Material.where(name: 'Paint').first_or_create #Paint
Material.where(name: 'Plastics, engineered').first_or_create #Plastics, engineered
Material.where(name: 'Protective adhesive masking').first_or_create #Protective adhesive masking
Material.where(name: 'Refractory products').first_or_create #Refractory products
Material.where(name: 'Stretch film').first_or_create #Stretch film
Material.where(name: 'Abrasives').first_or_create #Abrasives
Material.where(name: 'Adhesives').first_or_create #Adhesives
Material.where(name: 'Biocides').first_or_create #Biocides
Material.where(name: 'Brazing/soldering, fillers & fluxes').first_or_create #Brazing/soldering, fillers & fluxes
Material.where(name: 'Carbides & ceramics').first_or_create #Carbides & ceramics
Material.where(name: 'Carbon black').first_or_create #Carbon black
Material.where(name: 'Cleaners, metals').first_or_create #Cleaners, metals
Material.where(name: 'Cleaning, solvents/degreasing equipment agents').first_or_create #Cleaning, solvents/degreasing equipment agents
Material.where(name: 'Clutches and brakes').first_or_create #Clutches and brakes
Material.where(name: 'Compounds, cutting & drawing').first_or_create #Compounds, cutting & drawing
Material.where(name: 'Degreasers').first_or_create #Degreasers
Material.where(name: 'Environmental & industrial hygiene products').first_or_create #Environmental & industrial hygiene products
Material.where(name: 'Etchants').first_or_create #Etchants
Material.where(name: 'Filter media, air & liquid').first_or_create #Filter media, air & liquid
Material.where(name: 'Finishes & coatings').first_or_create #Finishes & coatings
Material.where(name: 'Fittings').first_or_create #Fittings
Material.where(name: 'Fluids, cutting').first_or_create #Fluids, cutting
Material.where(name: 'Fluids, drawing/stamping').first_or_create #Fluids, drawing/stamping
Material.where(name: 'Fluids, equipment lubrication').first_or_create #Fluids, equipment lubrication
Material.where(name: 'Gases, nitrogen regeneration').first_or_create #Gases, nitrogen regeneration
Material.where(name: 'Hydraulic fluids').first_or_create #Hydraulic fluids
Material.where(name: 'Labeling').first_or_create #Labeling
Material.where(name: 'Laser assist gases').first_or_create #Laser assist gases
Material.where(name: 'Lubricant, applicators/systems').first_or_create #Lubricant, applicators/systems
Material.where(name: 'Lubricants').first_or_create #Lubricants
Material.where(name: 'Lubricants, forming').first_or_create #Lubricants, forming
Material.where(name: 'Lubricants, recycling').first_or_create #Lubricants, recycling
Material.where(name: 'Packaging materials').first_or_create #Packaging materials
Material.where(name: 'Permanent bond adhesive tapes').first_or_create #Permanent bond adhesive tapes
Material.where(name: 'Polishing, buffing compounds').first_or_create #Polishing, buffing compounds
Material.where(name: 'Pollution control catalysts').first_or_create #Pollution control catalysts
Material.where(name: 'Pretreatment chemicals').first_or_create #Pretreatment chemicals
Material.where(name: 'Release agents').first_or_create #Release agents
Material.where(name: 'Resins').first_or_create #Resins
Material.where(name: 'Rings').first_or_create #Rings
Material.where(name: 'Rolls, embossing').first_or_create #Rolls, embossing
Material.where(name: 'Rubber products').first_or_create #Rubber products
Material.where(name: 'Rust inhibitors').first_or_create #Rust inhibitors
Material.where(name: 'Strip coil separators').first_or_create #Strip coil separators



puts 'Create Service Categories'
Service.where(name: 'Bar & rod, exotic alloys').first_or_create
Service.where(name: 'Consulting, business').first_or_create #Consulting, business
Service.where(name: 'Consulting, recruitment').first_or_create #Consulting, recruitment
Service.where(name: 'Data collection/market research').first_or_create #Data collection/market research
Service.where(name: 'Depot stock availability').first_or_create #Depot stock availability
Service.where(name: 'Distribution').first_or_create #Distribution
Service.where(name: 'E-commerce').first_or_create #E-commerce
Service.where(name: 'Economic analysis').first_or_create #Economic analysis
Service.where(name: 'Enterprise resource planning software (ERP)').first_or_create #Enterprise resource planning software (ERP)
Service.where(name: 'Financial services').first_or_create #Financial services
Service.where(name: 'Freight management').first_or_create #Freight management
Service.where(name: 'Industrial auctioneer').first_or_create #Industrial auctioneer
Service.where(name: 'Industrial equipment appraisals & inspections').first_or_create #Industrial equipment appraisals & inspections
Service.where(name: 'Insurance, risk management and loss prevention').first_or_create #Insurance, risk management and loss prevention
Service.where(name: 'Investment banking').first_or_create #Investment banking
Service.where(name: 'Material execution system software (MES)').first_or_create #Material execution system software (MES)
Service.where(name: 'Material resource planning software (MRP)').first_or_create #Material resource planning software (MRP)
Service.where(name: 'Mergers & acquisitions').first_or_create #Mergers & acquisitions
Service.where(name: 'Real estate leasing').first_or_create #Real estate leasing
Service.where(name: 'Software development').first_or_create #Software development
Service.where(name: 'Supply chain management').first_or_create #Supply chain management
Service.where(name: 'Systems integrators').first_or_create #Systems integrators
Service.where(name: 'Training').first_or_create #Training
Service.where(name: 'CNC programming').first_or_create #CNC programming
Service.where(name: 'Cutting').first_or_create #Cutting
Service.where(name: 'Die & fixtures').first_or_create #Die & fixtures
Service.where(name: 'Fabricating').first_or_create #Fabricating
Service.where(name: 'Finishing').first_or_create #Finishing
Service.where(name: 'Machine rebuilding').first_or_create #Machine rebuilding
Service.where(name: 'Roll forming').first_or_create #Roll forming
Service.where(name: 'Stamping/drawing').first_or_create #Stamping/drawing
Service.where(name: 'Welding').first_or_create #Welding
Service.where(name: 'Aluminum').first_or_create #Aluminum
Service.where(name: 'Copper').first_or_create #Copper
Service.where(name: 'Impact').first_or_create #Impact
Service.where(name: 'Magnesium').first_or_create #Magnesium
Service.where(name: 'Steel').first_or_create #Steel
Service.where(name: 'Vinyl').first_or_create #Vinyl
Service.where(name: 'Clutch/brake controls').first_or_create #Clutch/brake controls
Service.where(name: 'Computerized maintenance management software (CMMS)').first_or_create #Computerized maintenance management software (CMMS)
Service.where(name: 'Press rebuilding').first_or_create #Press rebuilding
Service.where(name: 'Printed circuit boards repair').first_or_create #Printed circuit boards repair
Service.where(name: 'Rebuild').first_or_create #Rebuild
Service.where(name: 'Retrofit').first_or_create #Retrofit
Service.where(name: 'Additives & testers').first_or_create #Additives & testers
Service.where(name: 'Calibrating, noncontact thickness gauges').first_or_create #Calibrating, noncontact thickness gauges
Service.where(name: 'Charpy impact testing').first_or_create #Charpy impact testing
Service.where(name: 'Indoor air quality testing').first_or_create #Indoor air quality testing
Service.where(name: 'Laboratory services, chemical & spectrographic').first_or_create #Laboratory services, chemical & spectrographic
Service.where(name: 'Laboratory services, metallurgical & physical').first_or_create #Laboratory services, metallurgical & physical
Service.where(name: 'Nondestructive testing').first_or_create #Nondestructive testing
Service.where(name: 'Quality inspection').first_or_create #Quality inspection
Service.where(name: 'Signature analysis').first_or_create #Signature analysis
Service.where(name: 'Anodizing').first_or_create #Anodizing
Service.where(name: 'Blanchard grinding').first_or_create #Blanchard grinding
Service.where(name: 'Cleaning, paint stripping').first_or_create #Cleaning, paint stripping
Service.where(name: 'Coil coating').first_or_create #Coil coating
Service.where(name: 'Deburring').first_or_create #Deburring
Service.where(name: 'Edge conditioning').first_or_create #Edge conditioning
Service.where(name: 'Edging, skiving').first_or_create #Edging, skiving
Service.where(name: 'Electrogalvanizing').first_or_create #Electrogalvanizing
Service.where(name: 'Electropolishing').first_or_create #Electropolishing
Service.where(name: 'Finishing').first_or_create #Finishing
Service.where(name: 'Galvanizing').first_or_create #Galvanizing
Service.where(name: 'Gauering flat bars').first_or_create #Gauering flat bars
Service.where(name: 'Metal finishing').first_or_create #Metal finishing
Service.where(name: 'Painting').first_or_create #Painting
Service.where(name: 'Pickling').first_or_create #Pickling
Service.where(name: 'Plating').first_or_create #Plating
Service.where(name: 'Polishing').first_or_create #Polishing
Service.where(name: 'Powder coating').first_or_create #Powder coating
Service.where(name: 'Sandblasting').first_or_create #Sandblasting
Service.where(name: 'Shot blasting').first_or_create #Shot blasting
Service.where(name: 'Surface grinding').first_or_create #Surface grinding
Service.where(name: 'Thermal spray coating').first_or_create #Thermal spray coating
Service.where(name: 'Annealing').first_or_create #Annealing
Service.where(name: 'Blanking and sheeting').first_or_create #Blanking and sheeting
Service.where(name: 'Cambering').first_or_create #Cambering
Service.where(name: 'Casting, copper-based').first_or_create #Casting, copper-based
Service.where(name: 'Casting, die').first_or_create #Casting, die
Service.where(name: 'Casting, die, aluminum').first_or_create #Casting, die, aluminum
Service.where(name: 'Casting, die, magnesium').first_or_create #Casting, die, magnesium
Service.where(name: 'Casting, die, zinc').first_or_create #Casting, die, zinc
Service.where(name: 'Casting, investment').first_or_create #Casting, investment
Service.where(name: 'Casting, permanent mold').first_or_create #Casting, permanent mold
Service.where(name: 'Casting, titanium').first_or_create #Casting, titanium
Service.where(name: 'Coil processing').first_or_create #Coil processing
Service.where(name: 'Cold drawing').first_or_create #Cold drawing
Service.where(name: 'Cold finishing').first_or_create #Cold finishing
Service.where(name: 'Cold rolling').first_or_create #Cold rolling
Service.where(name: 'Custom roll forming').first_or_create #Custom roll forming
Service.where(name: 'Custom rolling').first_or_create #Custom rolling
Service.where(name: 'Cut-to-length').first_or_create #Cut-to-length
Service.where(name: 'Drawforming').first_or_create #Drawforming
Service.where(name: 'Edge trimming').first_or_create #Edge trimming
Service.where(name: 'Embossing').first_or_create #Embossing
Service.where(name: 'EPS (eco pickled surface) processing').first_or_create #EPS (eco pickled surface) processing
Service.where(name: 'Fabricating').first_or_create #Fabricating
Service.where(name: 'Fineblanking').first_or_create #Fineblanking
Service.where(name: 'Flame cutting').first_or_create #Flame cutting
Service.where(name: 'Flattening').first_or_create #Flattening
Service.where(name: 'Forging').first_or_create #Forging
Service.where(name: 'Grinding').first_or_create #Grinding
Service.where(name: 'Heat treating').first_or_create #Heat treating
Service.where(name: 'Hydroforming').first_or_create #Hydroforming
Service.where(name: 'Impregnation').first_or_create #Impregnation
Service.where(name: 'Ion nitriding').first_or_create #Ion nitriding
Service.where(name: 'Laser cutting').first_or_create #Laser cutting
Service.where(name: 'Leveling').first_or_create #Leveling
Service.where(name: 'Perforation').first_or_create #Perforation
Service.where(name: 'Planer milling').first_or_create #Planer milling
Service.where(name: 'Plasma cutting').first_or_create #Plasma cutting
Service.where(name: 'Plate cutting').first_or_create #Plate cutting
Service.where(name: 'Plate forming & rolling').first_or_create #Plate forming & rolling
Service.where(name: 'Plate, fabricating').first_or_create #Plate, fabricating
Service.where(name: 'Punching, drilling, notching').first_or_create #Punching, drilling, notching
Service.where(name: 'Rebar, fabricating').first_or_create #Rebar, fabricating
Service.where(name: 'Roll forming').first_or_create #Roll forming
Service.where(name: 'Roll texturing').first_or_create #Roll texturing
Service.where(name: 'Roller leveling').first_or_create #Roller leveling
Service.where(name: 'Rolling').first_or_create #Rolling
Service.where(name: 'Rolls, surface conditioning').first_or_create #Rolls, surface conditioning
Service.where(name: 'Sawing, band').first_or_create #Sawing, band
Service.where(name: 'Sawing, circle/ring').first_or_create #Sawing, circle/ring
Service.where(name: 'Sawing, miter').first_or_create #Sawing, miter
Service.where(name: 'Sawing, other').first_or_create #Sawing, other
Service.where(name: 'SCS (surface clean steel) processing').first_or_create #SCS (surface clean steel) processing
Service.where(name: 'Shearing').first_or_create #Shearing
Service.where(name: 'Sheet, fabricating').first_or_create #Sheet, fabricating
Service.where(name: 'Slitting').first_or_create #Slitting
Service.where(name: 'Stamping, custom').first_or_create #Stamping, custom
Service.where(name: 'Stamping, other').first_or_create #Stamping, other
Service.where(name: 'Stress relieving').first_or_create #Stress relieving
Service.where(name: 'Temper rolling').first_or_create #Temper rolling
Service.where(name: 'Tempering').first_or_create #Tempering
Service.where(name: 'Tension leveling').first_or_create #Tension leveling
Service.where(name: 'Toll processing').first_or_create #Toll processing
Service.where(name: 'Traverse winding').first_or_create #Traverse winding
Service.where(name: 'Trepanning').first_or_create #Trepanning
Service.where(name: 'Tube & pipe, fabricating').first_or_create #Tube & pipe, fabricating
Service.where(name: 'Tube bending').first_or_create #Tube bending
Service.where(name: 'Tube deburring').first_or_create #Tube deburring
Service.where(name: 'Tube drilling').first_or_create #Tube drilling
Service.where(name: 'Tube endfinishing').first_or_create #Tube endfinishing
Service.where(name: 'Tube flanging').first_or_create #Tube flanging
Service.where(name: 'Tube flaring').first_or_create #Tube flaring
Service.where(name: 'Tube forming').first_or_create #Tube forming
Service.where(name: 'Tube notching').first_or_create #Tube notching
Service.where(name: 'Tube punching').first_or_create #Tube punching
Service.where(name: 'Tube rolling').first_or_create #Tube rolling
Service.where(name: 'Waterjet cutting').first_or_create #Waterjet cutting
Service.where(name: 'Welding').first_or_create #Welding
Service.where(name: 'Light assembly').first_or_create #Light assembly
Service.where(name: 'Rapid prototyping').first_or_create #Rapid prototyping
Service.where(name: 'Steel bar labels').first_or_create #Steel bar labels
Service.where(name: 'Steel coil tags').first_or_create #Steel coil tags
Service.where(name: 'Steel tube labels').first_or_create #Steel tube labels
Service.where(name: 'Steel wire tags').first_or_create #Steel wire tags
Service.where(name: 'Air purification services').first_or_create #Air purification services
Service.where(name: 'Custom equipment').first_or_create #Custom equipment
Service.where(name: 'Custom molding').first_or_create #Custom molding
Service.where(name: 'Design/construction').first_or_create #Design/construction
Service.where(name: 'Die protection systems').first_or_create #Die protection systems
Service.where(name: 'Engineering/analysis').first_or_create #Engineering/analysis
Service.where(name: 'Industrial hygiene monitoring').first_or_create #Industrial hygiene monitoring
Service.where(name: 'Installation').first_or_create #Installation
Service.where(name: 'Labeling').first_or_create #Labeling
Service.where(name: 'Machine foundations').first_or_create #Machine foundations
Service.where(name: 'Material storage').first_or_create #Material storage
Service.where(name: 'Materials standards and specifications').first_or_create #Materials standards and specifications
Service.where(name: 'Molding, polyurethane').first_or_create #Molding, polyurethane
Service.where(name: 'Press pits').first_or_create #Press pits
Service.where(name: 'Scrap buying').first_or_create #Scrap buying
