
class Toy < ApplicationRecord
    validates :name, presence: true, uniqueness: true

    belongs_to(:dog, {
        primary_key: :id,
        foreign_key: :dog_id,
        class_name: :Dog
    })

    has_one(:house, {
        through: :dog
    })

end