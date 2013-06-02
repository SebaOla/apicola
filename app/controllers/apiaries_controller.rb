class ApiariesController < ApplicationController
  # GET /apiaries
  def index
    @apiaries = Apiary.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /apiaries/1
  def show
    @apiary = Apiary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end
  
  # GET /beehives/new
  def new
    @apiary = Apiary.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /beehives/1/edit
  def edit
    @apiary = Apiary.find(params[:id])
  end

  # POST /apiaries
  def create
    # @apiary = Apiary.new(name: params[:name], adress: params[:adress], coordinates: params[:coordinates])
    @apiary = Apiary.new(params[:apiary])
    respond_to do |format|
      if @apiary.save
        format.html { redirect_to @apiary, notice: 'Apiary was successfully created.' }
      end
    end
  end

  # PUT /apiaries/1
  def update
    @apiary = Apiary.find(params[:id])

    respond_to do |format|
      if @apiary.update_attributes(name: params[:name], adress: params[:adress], coordinates: params[:coordinates])
        format.html { redirect_to @apiary, notice: 'Apiary was successfully updated.' }
      end
    end
  end

  # DELETE /apiaries/1
  def destroy
    @apiary = Apiary.find(params[:id])
    @apiary.destroy

    respond_to do |format|
      format.html { redirect_to apiaries_url }
    end
  end
end