class OrigamisController < ApplicationController
  # GET /origamis
  # GET /origamis.json
  def index
    @origamis = Origami.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @origamis }
    end
  end

  # GET /origamis/1
  # GET /origamis/1.json
  def show
    @origami = Origami.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @origami }
    end
  end

  # GET /origamis/new
  # GET /origamis/new.json
  def new
    @origami = Origami.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @origami }
    end
  end

  # GET /origamis/1/edit
  def edit
    @origami = Origami.find(params[:id])
  end

  # POST /origamis
  # POST /origamis.json
  def create
    @origami = Origami.new(params[:origami])

    respond_to do |format|
      if @origami.save
        format.html { redirect_to @origami, :notice => 'Origami was successfully created.' }
        format.json { render :json => @origami, :status => :created, :location => @origami }
      else
        format.html { render :action => "new" }
        format.json { render :json => @origami.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /origamis/1
  # PUT /origamis/1.json
  def update
    @origami = Origami.find(params[:id])

    respond_to do |format|
      if @origami.update_attributes(params[:origami])
        format.html { redirect_to @origami, :notice => 'Origami was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @origami.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /origamis/1
  # DELETE /origamis/1.json
  def destroy
    @origami = Origami.find(params[:id])
    @origami.destroy

    respond_to do |format|
      format.html { redirect_to origamis_url }
      format.json { head :ok }
    end
  end
end
