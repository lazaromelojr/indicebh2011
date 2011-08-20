class IndicePincipalsController < ApplicationController
  # GET /indice_pincipals
  # GET /indice_pincipals.xml
  def index
    @indice_pincipals = IndicePincipal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @indice_pincipals }
    end
  end

  # GET /indice_pincipals/1
  # GET /indice_pincipals/1.xml
  def show
    @indice_pincipal = IndicePincipal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @indice_pincipal }
    end
  end

  # GET /indice_pincipals/new
  # GET /indice_pincipals/new.xml
  def new
    @indice_pincipal = IndicePincipal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @indice_pincipal }
    end
  end

  # GET /indice_pincipals/1/edit
  def edit
    @indice_pincipal = IndicePincipal.find(params[:id])
  end

  # POST /indice_pincipals
  # POST /indice_pincipals.xml
  def create
    @indice_pincipal = IndicePincipal.new(params[:indice_pincipal])

    respond_to do |format|
      if @indice_pincipal.save
        format.html { redirect_to(@indice_pincipal, :notice => 'Indice pincipal was successfully created.') }
        format.xml  { render :xml => @indice_pincipal, :status => :created, :location => @indice_pincipal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @indice_pincipal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /indice_pincipals/1
  # PUT /indice_pincipals/1.xml
  def update
    @indice_pincipal = IndicePincipal.find(params[:id])

    respond_to do |format|
      if @indice_pincipal.update_attributes(params[:indice_pincipal])
        format.html { redirect_to(@indice_pincipal, :notice => 'Indice pincipal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @indice_pincipal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /indice_pincipals/1
  # DELETE /indice_pincipals/1.xml
  def destroy
    @indice_pincipal = IndicePincipal.find(params[:id])
    @indice_pincipal.destroy

    respond_to do |format|
      format.html { redirect_to(indice_pincipals_url) }
      format.xml  { head :ok }
    end
  end
end
