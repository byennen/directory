class SubService < Service
  belongs_to :parent, class_name: "Service"
end