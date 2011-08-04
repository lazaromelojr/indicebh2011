class NossosServicosController < ApplicationController
  # GET /nossos_servicos
  # GET /nossos_servicos.xml
  def index
    @nossos_servicos = NossosServico.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nossos_servicos }
    end
  end

  # GET /nossos_servicos/1
  # GET /nossos_servicos/1.xml
  def show
    @nossos_servico = NossosServico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nossos_servico }
    end
  end

  # GET /nossos_servicos/new
  # GET /nossos_servicos/new.xml
  def new
    @nossos_servico = NossosServico.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nossos_servico }
    end
  end

  # GET /nossos_servicos/1/edit
  def edit
    @nossos_servico = NossosServico.find(params[:id])
  end

  # POST /nossos_servicos
  # POST /nossos_servicos.xml
  def create
    @nossos_servico = NossosServico.new(params[:nossos_servico])

    respond_to do |format|
      if @nossos_servico.save
        format.html { redirect_to(@nossos_servico, :notice => 'Nossos servico was successfully created.') }
        format.xml  { render :xml => @nossos_servico, :status => :created, :location => @nossos_servico }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nossos_servico.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nossos_servicos/1
  # PUT /nossos_servicos/1.xml
  def update
    @nossos_servico = NossosServico.find(params[:id])

    respond_to do |format|
      if @nossos_servico.update_attributes(params[:nossos_servico])
        format.html { redirect_to(@nossos_servico, :notice => 'Nossos servico was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nossos_servico.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nossos_servicos/1
  # DELETE /nossos_servicos/1.xml
  def destroy
    @nossos_servico = NossosServico.find(params[:id])
    @nossos_servico.destroy

    respond_to do |format|
      format.html { redirect_to(nossos_servicos_url) }
      format.xml  { head :ok }
    end
  end
end
