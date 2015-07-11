class Place < ActiveRecord::Base
  def self.types
    ["Ancient","Natural","Underwater","Industrial"]
  end

end
