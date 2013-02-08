class MenusController < ApplicationController
  # GET /menus
  # GET /menus.json
  def index
    @menus = Menu.all
    
    respond_to do |format|
      format.html # index.html.erb
      # format.json { render json: @menus }
      format.xml { render xml: @menus }


    end
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
    @menu = Menu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      # format.json { render json: @menu } 
      format.xml{ render xml: @menus }

    end
  end

  # GET /menus/new
  # GET /menus/new.json
  def new
    @menu = Menu.new
    @categories = Category.all
  end

  # GET /menus/1/edit
  def edit
    @menu = Menu.find(params[:id])
    @categories = Category.all
  end

  # POST /menus
  # POST /menus.json
  def create
    @menu = Menu.new(params[:menu])

    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: 'Menu was successfully created.' }
        # format.json { render json: @menu, status: :created, location: @menu }
      else
        format.html { render action: "new" }
        #format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end

  end

  # PUT /menus/1
  # PUT /menus/1.json
  def update
    @menu = Menu.find(params[:id])
  end


  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy

    respond_to do |format|
      format.html { redirect_to menus_url }
    end

  end
end
