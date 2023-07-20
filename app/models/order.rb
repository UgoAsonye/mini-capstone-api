class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
end

#Decomposition steps:
#Make an order controller
#Write the create method
#Write a test for the create method
#Test the test
#Try creating an order with an http request?
#Add in update and/or destroy methods?
# Write tests for update/destroy methods?
