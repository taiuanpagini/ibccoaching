class HomeController < ApplicationController
    def index
        if params[:query] == nil
            @pinterests = Pinterest.all 
        else
            @pinterests = Pinterest.text_search(params[:query]).order("id DESC")
        end
    end
end
