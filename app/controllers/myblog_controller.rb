    
class MyblogController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        render json: Myblog.all        
    end

    def create     
        v = !params[:blogtitle].empty?
        if (v)   
            Myblog.create('blogtitle': params[:blogtitle], 'img_url': params[:img_url], 'content': params[:content])
            puts p
            render json: "Data Added"
        else
            render json: "Data not Added"
        end
    end 

    def show
        render json: Myblog.find(params[:id])
    end
end
