require "pry"

class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :shows
    belongs_to :network

   def actors_list
    self.characters.map do |character|
     character.actor.full_name
    end
   end
    
  
end