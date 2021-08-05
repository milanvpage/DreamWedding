class ApplicationController < ActionController::Base
    self.abstract_class = true
    #telling us we din't actually use this model for anything, only used so every controller can grab from ActiveRecord::Base (single source of truth example)
end
