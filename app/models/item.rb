class Item < ApplicationRecord
  has_many :itemizes
  has_many :lists, through: :itemizes
end
