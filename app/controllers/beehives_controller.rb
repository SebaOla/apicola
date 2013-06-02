class BeehivesController < ApplicationController
  # GET /beehives
  # GET /beehives.json
  def index
    @beehives = Beehive.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /beehives/1
  # GET /beehives/1.json
  def show
    @beehive = Beehive.find(params[:id])
    @qr = RQRCode::QRCode.new( "http://192.168.0.17:3000/beehives/" + @beehive.id.to_s, :size => 10, :level => :l)
    
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /beehives/new
  # GET /beehives/new.json
  def new
    @beehive = Beehive.new(apiary_id: params[:apiary_id])

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /beehives/1/edit
  def edit
    @beehive = Beehive.find(params[:id])
  end

  # POST /beehives
  # POST /beehives.json
  def create
    @beehive = Beehive.new(params[:beehive].except :apiary, :beehive)
    @beehive.apiary_id = params[:beehive][:apiary][:apiary_id].to_i
    @beehive.beehive_id = params[:beehive][:beehive][:beehive_id].to_i

    respond_to do |format|
      if @beehive.save
        format.html { redirect_to @beehive, notice: 'Beehive was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /beehives/1
  # PUT /beehives/1.json
  def update
    @beehive = Beehive.find(params[:id])
    params[:beehive][:apiary_id] = params[:beehive][:apiary][:apiary_id].to_i
    params[:beehive][:beehive_id] = params[:beehive][:beehive][:beehive_id].to_i

    respond_to do |format|
      if @beehive.update_attributes(params[:beehive].except :apiary, :beehive)
        format.html { redirect_to @beehive, notice: 'Beehive was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /beehives/1
  # DELETE /beehives/1.json
  def destroy
    @beehive = Beehive.find(params[:id])
    @beehive.destroy

    respond_to do |format|
      format.html { redirect_to beehives_url }
    end
  end
end
