class Item < ApplicationRecord
    has_many :reviews

    #set the slug for the menu item before we create in our db
    before_create :slugify

    #slugiy menu item (make it url safe(.parameterize does this))
    def slugify
        self.slug = name.parameterize
    end

    #find avg of scores
    def avg_score
        reviews.average(:score).round(2).to_f
    end
end
