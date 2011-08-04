class IndiceconexaosController < ApplicationController
  # GET /indiceconexaos
  # GET /indiceconexaos.xml
  def index
    @indiceconexaos = Indiceconexao.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @indiceconexaos }
    end
  end

  # GET /indiceconexaos/1
  # GET /indiceconexaos/1.xml
  def show
    @indiceconexao = Indiceconexao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @indiceconexao }
    end
  end

  # GET /indiceconexaos/new
  # GET /indiceconexaos/new.xml
  def new
    @indiceconexao = Indiceconexao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @indiceconexao }
    end
  end

  # GET /indiceconexaos/1/edit
  def edit
    @indiceconexao = Indiceconexao.find(params[:id])
  end

  # POST /indiceconexaos
  # POST /indiceconexaos.xml
  def create
    @indiceconexao = Indiceconexao.new(params[:indiceconexao])

    respond_to do |format|
      if @indiceconexao.save
        format.html { redirect_to(@indiceconexao, :notice => 'Indiceconexao was successfully created.') }
        format.xml  { render :xml => @indiceconexao, :status => :created, :location => @indiceconexao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @indiceconexao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /indiceconexaos/1
  # PUT /indiceconexaos/1.xml
  def update
    @indiceconexao = Indiceconexao.find(params[:id])

    respond_to do |format|
      if @indiceconexao.update_attributes(params[:indiceconexao])
        format.html { redirect_to(@indiceconexao, :notice => 'Indiceconexao was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @indiceconexao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /indiceconexaos/1
  # DELETE /indiceconexaos/1.xml
  def destroy
    @indiceconexao = Indiceconexao.find(params[:id])
    @indiceconexao.destroy

    respond_to do |format|
      format.html { redirect_to(indiceconexaos_url) }
      format.xml  { head :ok }
    end
  end
end
