
class Transactions < ActiveRecord::Base

  belongs_to :business_day
  belongs_to :product

end
