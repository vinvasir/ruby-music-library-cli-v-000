require 'bundler'
Bundler.require

module Concerns
  module Findable #class methods
    def find_by_name(name)
      self.all.detect {|instance| instance.name == name}
    end
    
    def find_or_create_by_name(name)
      if self.find_by_name(name)
        self.find_by_name(name)
      else
        self.create(name)
      end      
    end
  end    
end

require_all 'lib'