class Place < ActiveRecord::Base
  def self.types
    ["Ancient","Natural","Underwater","Industrial"]
  end

  def self.price_dollars
    return number_to_currency(self.admis_price*100)
  end
end
