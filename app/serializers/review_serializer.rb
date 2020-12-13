class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :item_id

end
