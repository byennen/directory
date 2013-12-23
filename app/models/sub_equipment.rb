class SubEquipment < Equipment
  belongs_to :parent, class_name: "Equipment"
end