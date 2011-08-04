class CadastroClientesController < ApplicationController
  # GET /cadastro_clientes
  # GET /cadastro_clientes.xml
  def index
    @cadastro_clientes = CadastroCliente.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cadastro_clientes }
    end
  end

  # GET /cadastro_clientes/1
  # GET /cadastro_clientes/1.xml
  def show
    @cadastro_cliente = CadastroCliente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cadastro_cliente }
    end
  end

  # GET /cadastro_clientes/new
  # GET /cadastro_clientes/new.xml
  def new
    @cadastro_cliente = CadastroCliente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cadastro_cliente }
    end
  end

  # GET /cadastro_clientes/1/edit
  def edit
    @cadastro_cliente = CadastroCliente.find(params[:id])
  end

  # POST /cadastro_clientes
  # POST /cadastro_clientes.xml
  def create
    @cadastro_cliente = CadastroCliente.new(params[:cadastro_cliente])

    respond_to do |format|
      if @cadastro_cliente.save
        format.html { redirect_to(@cadastro_cliente, :notice => 'Cadastro cliente was successfully created.') }
        format.xml  { render :xml => @cadastro_cliente, :status => :created, :location => @cadastro_cliente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cadastro_cliente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cadastro_clientes/1
  # PUT /cadastro_clientes/1.xml
  def update
    @cadastro_cliente = CadastroCliente.find(params[:id])

    respond_to do |format|
      if @cadastro_cliente.update_attributes(params[:cadastro_cliente])
        format.html { redirect_to(@cadastro_cliente, :notice => 'Cadastro cliente was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cadastro_cliente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_clientes/1
  # DELETE /cadastro_clientes/1.xml
  def destroy
    @cadastro_cliente = CadastroCliente.find(params[:id])
    @cadastro_cliente.destroy

    respond_to do |format|
      format.html { redirect_to(cadastro_clientes_url) }
      format.xml  { head :ok }
    end
  end
end
