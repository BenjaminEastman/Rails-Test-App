
class Dog < ApplicationRecord
    validates :name, presence: true, uniqueness: true

    has_many(:toys, {
        primary_key: :id,
        foreign_key: :dog_id,
        class_name: :Toy
    })

    belongs_to(:house, {
        primary_key: :id,
        foreign_key: :house_id,
        class_name: :House
    })

end
