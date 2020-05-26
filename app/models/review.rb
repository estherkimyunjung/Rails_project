class Review < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant

    validates :user, uniqueness: {scope: :restaurant_id}
end
