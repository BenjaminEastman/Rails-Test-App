class House < ApplicationRecord
    validates :name, presence: true

    has_many(:dogs, {
        primary_key: :id,
        foreign_key: :house_id,
        class_name: :Dog
    })

    has_many(:toys, {
        through: :dogs
    })
end