class Api::V1::LocationsController < ApplicationController

    def index
        @location = Location.all
    end
end
