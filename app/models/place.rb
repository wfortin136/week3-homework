class Place < ActiveRecord::Base
  
  #Array of available types of Wonders of the world. Used in index and drop down
  #menu for adding/editing wonder
  def self.types
    ["Ancient","Natural","Underwater","Industrial"]
  end
end
