class NoticeboardController < ApplicationController
    def board
        
    end
    
    def write
        
        @title=params[:title]
        @content = params[:content]
        
    end
end
