class IndiceBhsController < ApplicationController
  # GET /indice_bhs
  # GET /indice_bhs.xml
  def index
    @indice_bhs = IndiceBh.all

    respond_to do |format|
      format.html  #index.html.erb
      format.xml  { render :xml => @indice_bhs }
    end
  end

  # GET /indice_bhs/1
  # GET /indice_bhs/1.xml
  def show
    @indice_bh = IndiceBh.find(params[:id])

    respond_to do |format|
      format.html #show.html.erb
      format.xml  { render :xml => @indice_bh }
    end
  end

  # GET /indice_bhs/new
  # GET /indice_bhs/new.xml
  def new
    @indice_bh = IndiceBh.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @indice_bh }
    end
  end

  # GET /indice_bhs/1/edit
  def edit
    @indice_bh = IndiceBh.find(params[:id])
  end

  # POST /indice_bhs
  # POST /indice_bhs.xml
  def create
    @indice_bh = IndiceBh.new(params[:indice_bh])

    respond_to do |format|
      if @indice_bh.save
        format.html { redirect_to(@indice_bh, :notice => 'Texto foi criado com sucesso!!!') }
        format.xml  { render :xml => @indice_bh, :status => :created, :location => @indice_bh }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @indice_bh.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /indice_bhs/1
  # PUT /indice_bhs/1.xml
  def update
    @indice_bh = IndiceBh.find(params[:id])

    respond_to do |format|
      if @indice_bh.update_attributes(params[:indice_bh])
        format.html { redirect_to(@indice_bh, :notice => 'Texto foi Alterado com sucesso!!!') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @indice_bh.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /indice_bhs/1
  # DELETE /indice_bhs/1.xml
  def destroy
    @indice_bh = IndiceBh.find(params[:id])
    @indice_bh.destroy

    respond_to do |format|
      format.html { redirect_to(indice_bhs_url) }
      format.xml  { head :ok }
    end
  end
end
