class Product < ApplicationRecord
  #shortcut tro have ruby write the method for you

  belongs_to :supplier
  has_many :images
  has_many :orders

  def is_discounted?
    if price <= 10
      return true
    else
      return false
    end
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end
end
