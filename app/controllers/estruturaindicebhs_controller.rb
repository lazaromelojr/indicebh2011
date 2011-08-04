class EstruturaindicebhsController < ApplicationController
  # GET /estruturaindicebhs
  # GET /estruturaindicebhs.xml
  def index
    @estruturaindicebhs = Estruturaindicebh.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @estruturaindicebhs }
    end
  end

  # GET /estruturaindicebhs/1
  # GET /estruturaindicebhs/1.xml
  def show
    @estruturaindicebh = Estruturaindicebh.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @estruturaindicebh }
    end
  end

  # GET /estruturaindicebhs/new
  # GET /estruturaindicebhs/new.xml
  def new
    @estruturaindicebh = Estruturaindicebh.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @estruturaindicebh }
    end
  end

  # GET /estruturaindicebhs/1/edit
  def edit
    @estruturaindicebh = Estruturaindicebh.find(params[:id])
  end

  # POST /estruturaindicebhs
  # POST /estruturaindicebhs.xml
  def create
    @estruturaindicebh = Estruturaindicebh.new(params[:estruturaindicebh])

    respond_to do |format|
      if @estruturaindicebh.save
        format.html { redirect_to(@estruturaindicebh, :notice => 'Estruturaindicebh was successfully created.') }
        format.xml  { render :xml => @estruturaindicebh, :status => :created, :location => @estruturaindicebh }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @estruturaindicebh.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /estruturaindicebhs/1
  # PUT /estruturaindicebhs/1.xml
  def update
    @estruturaindicebh = Estruturaindicebh.find(params[:id])

    respond_to do |format|
      if @estruturaindicebh.update_attributes(params[:estruturaindicebh])
        format.html { redirect_to(@estruturaindicebh, :notice => 'Estruturaindicebh was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @estruturaindicebh.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /estruturaindicebhs/1
  # DELETE /estruturaindicebhs/1.xml
  def destroy
    @estruturaindicebh = Estruturaindicebh.find(params[:id])
    @estruturaindicebh.destroy

    respond_to do |format|
      format.html { redirect_to(estruturaindicebhs_url) }
      format.xml  { head :ok }
    end
  end
end
