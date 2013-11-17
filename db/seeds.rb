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
LogoPackage.create(name: 'GOLD, 2 INCH LOGO')
LogoPackage.create(name: 'GOLD, 1 INCH LOGO')
LogoPackage.create(name: 'SILVER, 2 INCH LOGO')
LogoPackage.create(name: 'SILVER, 1 INCH LOGO')
LogoPackage.create(name: 'FREE LISTING, NO LOGO')

puts 'Create Equipment Categories'
Category.where(name: 'Folding machines', category_type: 'Equipment').first_or_initialize
#Roll benders, angle or sheet/plate
#Sheet/plate, folding
#Sheet/plate, panel
#Tube & pipe benders
#Billet cutters
#Billet molds
#Casting equipment, die
#Casting equipment, direct chill
#Casting equipment, permanent mold
#Casting systems, continuous
#Filters, molten metal
#Forging die lubricators
#Forging equipment
#Forging manipulators
#Ladles, automatic
#Sensors, molten metal level
#Strip accumulators
#Strip casting machines, continuous
#Strip guides
#Blanking lines
#Blanking machines
#Coil cars
#Coil coating lines
#Coil cradles
#Coil end joiners
#Coil equipment, accumulators
#Coil equipment, coil coating/lubricating
#Coil equipment, coil reels, grabs
#Coil equipment, cradles/carts
#Coil equipment, cut-to-length
#Coil equipment, end joining
#Coil equipment, slitting
#Coil equipment, straighteners/levelers
#Coil equipment, tension control
#Coil equipment, winders, dereelers, uncoilers
#Coil grabs
#Coil pickling lines
#Coil prep lines
#Coil processing lines
#Cut-to-length lines
#Decamberers
#Decoilers
#Drums, coil winding
#End mills
#Flatteners
#Knives, rotary slitter
#Levelers, roller & stretcher
#Levelers, tension
#Liners, extrusion
#Loop controls
#Multi-blanking lines
#Pickling lines
#Recoilers
#Roller straighteners
#Rolls, coil coating
#Separators, coil
#Side trim lines
#Slitting lines
#Software, coil optimization
#Straighteners, coil
#Tension leveling lines
#Uncoilers
#Billet & die heaters
#Blowers, fans & exhausters
#Burners, furnace & oven
#Control systems, temperature
#Cooling equipment
#Dryers & ovens
#Drying systems, infrared
#Exchangers, heating & cooling
#Fans, industrial
#Furnace camera
#Furnace controls
#Furnace frames & doors
#Furnace heating elements
#Furnace linings
#Furnaces, heat-treating
#Furnaces, log homogenizing
#Furnaces, melting/holding
#Furnaces, other
#Immersion tube burners
#Incinerators
#Oven controls, gas
#Ovens, coil
#Ovens, paint baking
#Abrasive finishing, arbor machines
#Buffing & polishing equipment
#Coating lines, roller coating
#Deburring equipment
#Edge conditioning lines, skiving
#Electrocoating systems
#Electroplating equipment
#Embossing equipment & rolls
#Finishing systems
#Galvalume processing
#Galvanizing lines
#Galvanneal processing
#Grinding and polishing lines
#Grinding machines
#Grinding machines, precision
#Metal cleaning equipment
#Powder coating equipment
#Roll coating machines
#Spray booths
#Spray equipment
#Tanks, metal finishing
#Tapping devices, die-mounted
#Laser assist gas system
#Laser cutting equipment
#Laser cutting equipment, 3-D
#Laser cutting equipment, fiber laser
#Laser cutting equipment, high-power
#Laser cutting equipment, plasma combination
#Laser cutting equipment, punch combination
#Laser cutting equipment, special order
#Laser, replacement optics
#Air feeders
#Automated storage & retrieval systems
#Baling machines
#Bar feeders
#Bar handling equipment
#Billet handlers
#Chip handling systems
#Conveyors & conveying systems
#Cranes & hoists
#Destackers, sheet
#Extrusion handling equipment
#Forklifts
#Magnets, electro lifting
#Magnets, material handling
#Racks, cantilever
#Racks, extrusion
#Racks, storage
#Sheet fanners/feeders
#Sideloaders
#Stackers, extrusion
#Stackers, plate
#Stackers, sheet
#Stackers/destackers, plate & sheet
#Strapping equipment
#Stretch wrapping equipment
#Under-the-hook equipment
#Vacuum lifts
#Press brake gauges, back/front
#Press brakes
#Press brakes, electric/servo
#Press brakes, hand
#Press brakes, hydraulic
#Press brakes, mechanical
#Cutoff presses
#Extrusion press tools
#Extrusion pullers
#Feeders, sheet
#Feeds, electronic
#Feeds, mechanical
#Foil mills
#Forging presses, cold flow
#Forging presses, open die
#Press automation & controls
#Press automation equipment
#Press counter balance controller
#Press counter balances
#Press feed robots
#Press feeders, pneumatic
#Press feeders, roll
#Press feeders, servo
#Press feeds
#Press feeds, electronic
#Press monitoring, sensors
#Press part-transfer mechanisms
#Press room equipment
#Presses, arbor
#Presses, bending
#Presses, coining
#Presses, deep drawing
#Presses, electric
#Presses, extrusion
#Presses, extrusion, stretch
#Presses, fineblanking
#Presses, forging
#Presses, gap-frame, hydraulic
#Presses, gap-frame, mechanical
#Presses, hardware inspection
#Presses, horning
#Presses, hydraulic
#Presses, hydroforming
#Presses, hydroforming, sheet
#Presses, hydroforming, tube
#Presses, knuckle-joint
#Presses, loading & unloading
#Presses, mechanical
#Presses, pneumatic
#Presses, powder compacting
#Presses, rubber-pad forming
#Presses, servo
#Presses, slide forming
#Presses, straightside, hydraulic
#Presses, straightside, mechanical
#Presses, transfer
#Presses, trimming
#Presses, tryout
#Software, stamping simulation
#Stamping presses
#Stamping presses, servo
#Valves, press safety
#Drilling machines, multiple
#Punch presses
#Punch/shear combinations
#Punches
#Punches & dies, perforating
#Punches, hydraulic
#Punching machines & nibblers
#Turret punch presses, hydraulic
#Turret punch presses, mechanical
#Turret punch presses, with plasma
#Robot tooling/grippers
#Robots, industrial
#Robots, material handling
#Robots, peripherals
#Robots, welding
#Angle rolls
#Plate rolls
#Roll forming mills
#Roll forming rolls
#Roll grinders
#Rolling mills/equipment
#Rolls, embossing
#Rolls, rolling mill
#Rolls, rubber & polyurethane
#Shape control, rolling mills
#Air purifying systems
#Control systems, pollution
#Dust collectors
#Pollution control systems
#Safety equipment, apparel
#Safety equipment, barriers & machine guards
#Safety equipment, brake monitors
#Safety equipment, clutches & brakes
#Safety equipment, floor mats
#Safety equipment, light curtains
#Safety equipment, lockout/tagout devices
#Safety equipment, machine guards
#Safety equipment, palm buttons
#Safety equipment, presence-sensing devices
#Safety equipment, welding protection
#Abrasive cutoff machines
#Air knife, drying
#Cutoff machines, saws
#Cutoff machines, tube & pipe
#Cutting cells & systems
#Flame cutting equipment
#Miter cutoff saws, single & double
#Notching machines
#Oxy-fuel cutting equipment
#Plasma cutting equipment
#Saw blades, all types
#Saws, band
#Saws, bar & billet
#Saws, circular
#Saws, circular cutoff (cold)
#Saws, contour
#Saws, other
#Saws/shears, extrusion
#Shear knives
#Shearing machines
#Shearing machines, flying
#Spacers, shear
#Waterjet cutting equipment
#Bending
#CAD/CAM
#ERP/MRP Supply chain management
#Job costing & estimating
#NC/CNC programming
#Nesting
#Process planning & scheduling
#Sheet metal layout, flat pattern
#Shop-floor tracking & flow control
#Simulation, process modeling
#Tool management & storage
#Carbide dies
#Die buttons
#Die carts/lift tables
#Die changing equipment
#Die clamps
#Die cushions
#Die design
#Die film
#Die holders
#Die inserts
#Die lifters
#Die lubrication systems
#Die pins
#Die protection systems
#Die separators
#Die sets & accessories
#Die springs
#Die storage & retrieval systems
#Die transfer, handling systems
#Dies, blank & form
#Dies, blanking
#Dies, drawing/forming
#Dies, extrusion
#Dies, permanent mold casting
#Dies, piercing & notching
#Dies, progressive
#Dies, punch press
#Dies, roll forming
#Quick die change systems
#Tooling, bending
#Tooling, ceramic
#Tooling, die casting
#Tooling, extrusion
#Tooling, ironworker
#Tooling, press brake
#Tooling, presses
#Tooling, punch & die sets
#Tooling, roll forming
#Tooling, short-run
#Tooling, tube & pipe mills
#Tooling, tube bending
#Tooling, turret punch press
#Tooling, unitized
#Tooling, urethane
#Tools, carbide cutting
#Tube perforating machines
#Tungsten carbide tooling
#Cold draw equipment
#Drawbenches
#Mandrels
#Tube & pipe mills
#Tube cutting machinery
#Tube louvers
#Tube-end forming equipment
#Tube/pipe bending machines
#Automatic inspection systems
#Coating thickness testers
#Coordinate measuring machines
#Gauges, cutoff
#Gauges, dimensional
#Gauges, thickness
#Gauges, thickness, noncontact
#Gauges, thickness, ultrasonic
#Hardness testers
#Inspection lights
#Inspection systems
#Inspection/measurement equipment, sheet/plate
#Inspection/measurement equipment, tube & pipe
#Load monitors
#Measuring equipment
#Metrology systems
#SPC (statistical process control) gauging
#Spectrometers
#Ultrasonic testing equipment
#Accessories (gloves, holders, etc.)
#Arc welding equipment
#Beveling machines
#Brazing/soldering equipment
#Cells & systems
#Consumables (electrodes, gases)
#Coolers/chillers
#Deslagging machines
#Dross systems
#Electronic controls
#Fume ducting
#Fume removal systems/equipment
#GMAW/GTAW
#Guns
#Helmets
#High-frequency
#Laser
#Plasma
#Platens/work tables
#Positioners
#Resistance welding, flash
#Resistance welding, seam
#Resistance welding, spot, stud
#Robotic Welding Cells
#Torches
#Weld fittings
#Weld-nut/stud feeders
#Welding wire
#Workholding equipment
#Acid purification equipment
#Air ejection equipment
#Automated assembly systems
#Automatic nut feeder
#Canisters, extrusion
#Clamps, anodizing, plating
#Cleaning equipment, aqueous, high-pressure
#Cleaning equipment, ultrasonic
#Cleaning equipment, vapor/mist
#Containers, extrusion
#Containers, packaging
#Control systems
#Controls, motion
#Controls, noise/vibration
#Controls, remote
#Cylinders, hydraulic & pneumatic
#Cylinders, nitrogen die
#Deoilers
#Erecting machinery
#Expander rings
#Fasteners, self-forming for sheet metal
#Filtration systems
#Forming & flanging machines
#Injection molding equipment
#Ironworkers
#Lubricant applicators
#Machine monitors
#Machinery mounts
#Machinery moving & erecting
#Manipulators
#Marking
#Mining equipment
#Optical sensing/gauging systems
#Panel, roll and linear cutting optimization
#Parts identification & marking systems
#Payoff reels
#Portable tools, beveling
#Portable tools, cutting
#Portable tools, drilling
#Portable tools, grinding
#Portable tools, punching
#Programmable controls & switches
#Proximity switches
#Pulley machines
#Rectifiers
#Recycling equipment
#Riveting
#Runout tables
#Scrap choppers
#Scrap processing equipment
#Sensors, color
#Sensors, load
#Sensors, noncontact
#Servo feeds
#Sheeting lines
#Slide forming & spring machines
#Spring forming machines
#Stems, extrusion
#Straighteners, tube & bar
#Stretchers, extrusion
#Swaging machines
#Thermocouples
#Transformers
#Trim handling systems
#Upsetters
#Used equipment
#Valves, proportional
#Vision systems
#Washers
#Waste treatment systems
#Winders, traverse
#Wire forming machinery


puts 'Create Material Categories'
Category.where(name: 'Bar & rod, exotic alloys', category_type: 'Material').first_or_initialize
#Bonderized
#Cobalt
#Galvalume
#Hastelloy
#Inconel
#Low-melt alloys
#Plate, alloy steel
#Plate, exotic alloys
#Sheet & coil, exotic alloys
#Strip, exotic alloys
#Tube & pipe, alloy
#Tube & pipe, chrome/moly
#Tube & pipe, exotic alloys
#Bar & rod
#Bar & rod, aluminum alloys
#Bar & rod, extruded
#Casting alloys
#Coiled sheet
#Filters
#Ingot
#Plate
#Plate, aluminum alloys
#Sheet & coil
#Sheet & coil, aluminum alloys
#Strip
#Strip, aluminum alloys
#Tooling plate
#Tube & pipe
#Tube & pipe, aluminum alloys
#Bar & rod
#Plate
#Sheet & coil
#Strip
#Tube & pipe
#Bar & rod
#Bearing bronze
#Plate
#Sheet & coil
#Strip
#Tube & pipe
#Bar & rod
#Bar & rod, beryllium copper
#Bar & rod, copper alloys
#Bar and rod
#Plate
#Plate, beryllium copper
#Plate, copper alloys
#Sheet & coil
#Sheet & coil, beryllium copper
#Sheet & coil, copper alloys
#Strip
#Strip, beryllium copper
#Strip, copper alloys
#Tube & pipe
#Tube & pipe, beryllium copper
#Tube & pipe, copper alloys
#Wire
#Anodes
#Casting alloys
#Tooling plate
#Bar & rod, nickel & nickel alloys
#Plate
#Plate, nickel alloys
#Sheet & coil
#Sheet & coil, nickel alloys
#Strip
#Strip, nickel alloys
#Tube & pipe
#Tube & pipe, nickel alloy
#Bar & rod
#Bar & rod, cold finished
#Bar & rod, cold rolled
#Bar & rod, hot rolled
#Bar & rod, stainless steel
#Bar, cold finished
#Bar, hot rolled
#Cold rolled
#Die steels
#EPS (eco pickled surface)
#Galvanized
#Galvannealed
#Hot rolled
#Hot rolled pickled & oiled
#Plate
#Plate, carbon steel
#Plate, cold rolled
#Plate, hot rolled
#Plate, stainless steel
#Rebar/mesh
#SCS (smooth clean surface)
#Sheet & coil
#Sheet & coil, cold rolled
#Sheet & coil, hot rolled
#Sheet & coil, stainless steel
#Sheet and coil, galvanized
#Squares, cold roll formed
#Strip
#Strip, cold rolled
#Strip, hot rolled
#Strip, stainless steel
#Tool steel
#Tube & pipe
#Tube & pipe, carbon
#Tube & pipe, cold rolled
#Tube & pipe, hot rolled
#Tube & pipe, stainless steel
#Tubes, cold roll formed
#Weathering grades
#Bar & rod
#Forging
#Plate
#Sheets
#Strip
#Tube & pipe
#Anodes
#Bar & rod
#Ingot
#Strip
#Zinc carbon alloys
#Clad metals
#Coatings, ceramic
#Coatings, conversion
#Coatings, enamel
#Coatings, extrusion
#Coatings, other
#Coatings, physical vapor deposition
#Coatings, powder
#Coatings, ultraviolet
#Coatings, water-based
#Coil coating finishes
#Laminated panels, aluminum & stainless
#Laminates, vinyl/metal
#Laminating films, decorative, appliances
#Powder metal parts
#Preanodized sheet/coil
#Prefinished metals
#Prepainted metals
#Preplated metals
#Sheet & coil, aluminized
#Specialty coated metals
#Tool coatings
#Angles/channels/profiles
#Bar, forged
#Billet
#Blocks, forged
#Containers
#Cylinders, forged
#Expanded metals
#Foil
#Frames
#Gratings
#High chairs
#Insulated panels
#Metal building systems
#Perforated metals
#Prepolished metals
#Rings, forged
#Safety gratings
#Screw machine products
#Shafts, forged
#Slab bolster
#Sound dampening materials
#Strapping
#Structural reinforcement material
#Textured metals
#Thermal barrier systems
#Thermal insulation
#Tie wire
#Tube & pipe, corrosion resistant
#Tube & pipe, high-temperature
#Tubing, DOM
#Tubing, lock seam/open seam
#Wire cloth
#Wire, other
#Wrought mill products
#Z-sections
#Composites
#Graphite
#Industrial felt & textiles
#Paint
#Plastics, engineered
#Protective adhesive masking
#Refractory products
#Stretch film
#Abrasives
#Adhesives
#Biocides
#Brazing/soldering, fillers & fluxes
#Carbides & ceramics
#Carbon black
#Cleaners, metals
#Cleaning, solvents/degreasing equipment agents
#Clutches and brakes
#Compounds, cutting & drawing
#Degreasers
#Environmental & industrial hygiene products
#Etchants
#Filter media, air & liquid
#Finishes & coatings
#Fittings
#Fluids, cutting
#Fluids, drawing/stamping
#Fluids, equipment lubrication
#Gases, nitrogen regeneration
#Hydraulic fluids
#Labeling
#Laser assist gases
#Lubricant, applicators/systems
#Lubricants
#Lubricants, forming
#Lubricants, recycling
#Packaging materials
#Permanent bond adhesive tapes
#Polishing, buffing compounds
#Pollution control catalysts
#Pretreatment chemicals
#Release agents
#Resins
#Rings
#Rolls, embossing
#Rubber products
#Rust inhibitors
#Strip coil separators


puts 'Create Service Categories'
Category.where(name: 'Bar & rod, exotic alloys', category_type: 'Service').first_or_initialize
#Consulting, business
#Consulting, recruitment
#Data collection/market research
#Depot stock availability
#Distribution
#E-commerce
#Economic analysis
#Enterprise resource planning software (ERP)
#Financial services
#Freight management
#Industrial auctioneer
#Industrial equipment appraisals & inspections
#Insurance, risk management and loss prevention
#Investment banking
#Material execution system software (MES)
#Material resource planning software (MRP)
#Mergers & acquisitions
#Real estate leasing
#Software development
#Supply chain management
#Systems integrators
#Training
#CNC programming
#Cutting
#Die & fixtures
#Fabricating
#Finishing
#Machine rebuilding
#Roll forming
#Stamping/drawing
#Welding
#Aluminum
#Copper
#Impact
#Magnesium
#Steel
#Vinyl
#Clutch/brake controls
#Computerized maintenance management software (CMMS)
#Press rebuilding
#Printed circuit boards repair
#Rebuild
#Retrofit
#Additives & testers
#Calibrating, noncontact thickness gauges
#Charpy impact testing
#Indoor air quality testing
#Laboratory services, chemical & spectrographic
#Laboratory services, metallurgical & physical
#Nondestructive testing
#Quality inspection
#Signature analysis
#Anodizing
#Blanchard grinding
#Cleaning, paint stripping
#Coil coating
#Deburring
#Edge conditioning
#Edging, skiving
#Electrogalvanizing
#Electropolishing
#Finishing
#Galvanizing
#Gauering flat bars
#Metal finishing
#Painting
#Pickling
#Plating
#Polishing
#Powder coating
#Sandblasting
#Shot blasting
#Surface grinding
#Thermal spray coating
#Annealing
#Blanking and sheeting
#Cambering
#Casting, copper-based
#Casting, die
#Casting, die, aluminum
#Casting, die, magnesium
#Casting, die, zinc
#Casting, investment
#Casting, permanent mold
#Casting, titanium
#Coil processing
#Cold drawing
#Cold finishing
#Cold rolling
#Custom roll forming
#Custom rolling
#Cut-to-length
#Drawforming
#Edge trimming
#Embossing
#EPS (eco pickled surface) processing
#Fabricating
#Fineblanking
#Flame cutting
#Flattening
#Forging
#Grinding
#Heat treating
#Hydroforming
#Impregnation
#Ion nitriding
#Laser cutting
#Leveling
#Perforation
#Planer milling
#Plasma cutting
#Plate cutting
#Plate forming & rolling
#Plate, fabricating
#Punching, drilling, notching
#Rebar, fabricating
#Roll forming
#Roll texturing
#Roller leveling
#Rolling
#Rolls, surface conditioning
#Sawing, band
#Sawing, circle/ring
#Sawing, miter
#Sawing, other
#SCS (surface clean steel) processing
#Shearing
#Sheet, fabricating
#Slitting
#Stamping, custom
#Stamping, other
#Stress relieving
#Temper rolling
#Tempering
#Tension leveling
#Toll processing
#Traverse winding
#Trepanning
#Tube & pipe, fabricating
#Tube bending
#Tube deburring
#Tube drilling
#Tube endfinishing
#Tube flanging
#Tube flaring
#Tube forming
#Tube notching
#Tube punching
#Tube rolling
#Waterjet cutting
#Welding
#Light assembly
#Rapid prototyping
#Steel bar labels
#Steel coil tags
#Steel tube labels
#Steel wire tags
#Air purification services
#Custom equipment
#Custom molding
#Design/construction
#Die protection systems
#Engineering/analysis
#Industrial hygiene monitoring
#Installation
#Labeling
#Machine foundations
#Material storage
#Materials standards and specifications
#Molding, polyurethane
#Press pits
#Scrap buying
