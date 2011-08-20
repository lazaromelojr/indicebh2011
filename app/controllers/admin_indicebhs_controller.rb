class AdminIndicebhsController < ApplicationController
  # GET /admin_indicebhs
  # GET /admin_indicebhs.xml
  def index
    @admin_indicebhs = AdminIndicebh.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_indicebhs }
    end
  end

  # GET /admin_indicebhs/1
  # GET /admin_indicebhs/1.xml
  def show
    @admin_indicebh = AdminIndicebh.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_indicebh }
    end
  end

  # GET /admin_indicebhs/new
  # GET /admin_indicebhs/new.xml
  def new
    @admin_indicebh = AdminIndicebh.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_indicebh }
    end
  end

  # GET /admin_indicebhs/1/edit
  def edit
    @admin_indicebh = AdminIndicebh.find(params[:id])
  end

  # POST /admin_indicebhs
  # POST /admin_indicebhs.xml
  def create
    @admin_indicebh = AdminIndicebh.new(params[:admin_indicebh])

    respond_to do |format|
      if @admin_indicebh.save
        format.html { redirect_to(@admin_indicebh, :notice => 'Admin indicebh was successfully created.') }
        format.xml  { render :xml => @admin_indicebh, :status => :created, :location => @admin_indicebh }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_indicebh.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin_indicebhs/1
  # PUT /admin_indicebhs/1.xml
  def update
    @admin_indicebh = AdminIndicebh.find(params[:id])

    respond_to do |format|
      if @admin_indicebh.update_attributes(params[:admin_indicebh])
        format.html { redirect_to(@admin_indicebh, :notice => 'Admin indicebh was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_indicebh.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_indicebhs/1
  # DELETE /admin_indicebhs/1.xml
  def destroy
    @admin_indicebh = AdminIndicebh.find(params[:id])
    @admin_indicebh.destroy

    respond_to do |format|
      format.html { redirect_to(admin_indicebhs_url) }
      format.xml  { head :ok }
    end
  end
end
