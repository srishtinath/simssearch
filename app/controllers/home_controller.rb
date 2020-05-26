class HomeController < ApplicationController

    def profile
    end

    def welcome
        @featured_room = Room.all.sample
    end

end