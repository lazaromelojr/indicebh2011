class ServicosindicesController < ApplicationController
  # GET /servicosindices
  # GET /servicosindices.xml
  def index
    @servicosindices = Servicosindice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @servicosindices }
    end
  end

  # GET /servicosindices/1
  # GET /servicosindices/1.xml
  def show
    @servicosindex = Servicosindice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @servicosindex }
    end
  end

  # GET /servicosindices/new
  # GET /servicosindices/new.xml
  def new
    @servicosindex = Servicosindice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @servicosindex }
    end
  end

  # GET /servicosindices/1/edit
  def edit
    @servicosindex = Servicosindice.find(params[:id])
  end

  # POST /servicosindices
  # POST /servicosindices.xml
  def create
    @servicosindex = Servicosindice.new(params[:servicosindex])

    respond_to do |format|
      if @servicosindex.save
        format.html { redirect_to(@servicosindex, :notice => 'Servicosindice was successfully created.') }
        format.xml  { render :xml => @servicosindex, :status => :created, :location => @servicosindex }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @servicosindex.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /servicosindices/1
  # PUT /servicosindices/1.xml
  def update
    @servicosindex = Servicosindice.find(params[:id])

    respond_to do |format|
      if @servicosindex.update_attributes(params[:servicosindex])
        format.html { redirect_to(@servicosindex, :notice => 'Servicosindice was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @servicosindex.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /servicosindices/1
  # DELETE /servicosindices/1.xml
  def destroy
    @servicosindex = Servicosindice.find(params[:id])
    @servicosindex.destroy

    respond_to do |format|
      format.html { redirect_to(servicosindices_url) }
      format.xml  { head :ok }
    end
  end
end
