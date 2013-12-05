class WorkshopsController < ApplicationController



  def show
   @workshop = Workshop.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @workshop }
    end
  end

  def new
    @workshop = Workshop.new(conference_id: params[:conference_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @workshop }
    end
  end

  # GET /workshops/1/edit
  def edit
    @workshop = Workshop.find(params[:id])
  end

  # POST /workshops
  # POST /workshops.json
  def create
    @workshop = Workshop.new(params[:workshop])
    respond_to do |format|
      if @workshop.save
        format.html do 
          redirect_to conference_workshop_path(:conference_id => @workshop.conference_id, 
                                               :id => @workshop.id), 
            notice: 'Workshop was successfully created.' 
        end
        format.json { render json: @workshop, status: :created, location: @workshop }
      else
        format.html { render action: "new" }
        format.json { render json: @workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /workshops/1
  # PUT /workshops/1.json
  def update
    Rails.logger.info "Alarm1"
    @workshop = Workshop.find(params[:id])
    #@workshop = Workshop.where(conference_id: params[:id])
    Rails.logger.info "Alarm2"
    respond_to do |format|
      if @workshop.update_attributes(params[:workshop])
          Rails.logger.info "Alarm3"
        format.html do
          redirect_to conference_workshop_path(:conference_id => @workshop.conference_id, 
                                               :id => @workshop.id), 
            notice: 'Workshop was successfully updated.' 
         end
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @workshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workshops/1
  # DELETE /workshops/1.json
  def destroy
   
    @workshop = Workshop.find(params[:id])
       
    @workshop.destroy
   

    respond_to do |format|
      format.html { redirect_to conference_path(@workshop.conference_id) }
      format.json { head :no_content }
    end
  end
end
