class PesquisaqualitativasController < ApplicationController
  # GET /pesquisaqualitativas
  # GET /pesquisaqualitativas.xml
  def index
    @pesquisaqualitativas = Pesquisaqualitativa.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pesquisaqualitativas }
    end
  end

  # GET /pesquisaqualitativas/1
  # GET /pesquisaqualitativas/1.xml
  def show
    @pesquisaqualitativa = Pesquisaqualitativa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pesquisaqualitativa }
    end
  end

  # GET /pesquisaqualitativas/new
  # GET /pesquisaqualitativas/new.xml
  def new
    @pesquisaqualitativa = Pesquisaqualitativa.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pesquisaqualitativa }
    end
  end

  # GET /pesquisaqualitativas/1/edit
  def edit
    @pesquisaqualitativa = Pesquisaqualitativa.find(params[:id])
  end

  # POST /pesquisaqualitativas
  # POST /pesquisaqualitativas.xml
  def create
    @pesquisaqualitativa = Pesquisaqualitativa.new(params[:pesquisaqualitativa])

    respond_to do |format|
      if @pesquisaqualitativa.save
        format.html { redirect_to(@pesquisaqualitativa, :notice => 'Pesquisaqualitativa was successfully created.') }
        format.xml  { render :xml => @pesquisaqualitativa, :status => :created, :location => @pesquisaqualitativa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pesquisaqualitativa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pesquisaqualitativas/1
  # PUT /pesquisaqualitativas/1.xml
  def update
    @pesquisaqualitativa = Pesquisaqualitativa.find(params[:id])

    respond_to do |format|
      if @pesquisaqualitativa.update_attributes(params[:pesquisaqualitativa])
        format.html { redirect_to(@pesquisaqualitativa, :notice => 'Pesquisaqualitativa was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pesquisaqualitativa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pesquisaqualitativas/1
  # DELETE /pesquisaqualitativas/1.xml
  def destroy
    @pesquisaqualitativa = Pesquisaqualitativa.find(params[:id])
    @pesquisaqualitativa.destroy

    respond_to do |format|
      format.html { redirect_to(pesquisaqualitativas_url) }
      format.xml  { head :ok }
    end
  end
end
