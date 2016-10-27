class List < ApplicationRecord
  has_many :itemizes
  has_many :items, through: :itemizes
end
