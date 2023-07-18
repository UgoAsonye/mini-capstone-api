class Supplier < ApplicationRecord
  #shortcut tro have ruby write the method for you
  has_many :products
end
