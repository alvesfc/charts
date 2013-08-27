class Quote < ActiveRecord::Base
  attr_accessible :name, :price
  def total_on
    count(:group => "minute(created_at) as a").to_a
  end
end
