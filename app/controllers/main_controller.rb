class MainController < ApplicationController
  # GET /menus
  # GET /menus.json
  def index
    #@menus = Menu.all
    @categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      # format.json { render json: @menus }
      format.xml { render xml: @categories }


    end
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
    #@menu = Menu.find(params[:id])
    @categories = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      # format.json { render json: @menu } 
      format.xml{ render xml: @categories }

    end
  end
end
