class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :price, :description, :slug

  has_many :reviews
end

