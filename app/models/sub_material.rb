class SubMaterial < Material
  belongs_to :parent, class_name: "Material"
end