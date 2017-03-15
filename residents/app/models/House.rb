class House < ActiveRecord::Base
  has_many :people,
    primary_key: :id,
    foreign_key: :house_id,
    validates :address, :presence => true,
    validates :person, :uniqueness => true,
    class_name: 'Person'
end
