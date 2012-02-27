class UsresController < ApplicationController
  # GET /usres
  # GET /usres.json
  def index
    @usres = Usre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usres }
    end
  end

  # GET /usres/1
  # GET /usres/1.json
  def show
    @usre = Usre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usre }
    end
  end

  # GET /usres/new
  # GET /usres/new.json
  def new
    @usre = Usre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usre }
    end
  end

  # GET /usres/1/edit
  def edit
    @usre = Usre.find(params[:id])
  end

  # POST /usres
  # POST /usres.json
  def create
    @usre = Usre.new(params[:usre])

    respond_to do |format|
      if @usre.save
        format.html { redirect_to @usre, notice: 'Usre was successfully created.' }
        format.json { render json: @usre, status: :created, location: @usre }
      else
        format.html { render action: "new" }
        format.json { render json: @usre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usres/1
  # PUT /usres/1.json
  def update
    @usre = Usre.find(params[:id])

    respond_to do |format|
      if @usre.update_attributes(params[:usre])
        format.html { redirect_to @usre, notice: 'Usre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usres/1
  # DELETE /usres/1.json
  def destroy
    @usre = Usre.find(params[:id])
    @usre.destroy

    respond_to do |format|
      format.html { redirect_to usres_url }
      format.json { head :no_content }
    end
  end
end
