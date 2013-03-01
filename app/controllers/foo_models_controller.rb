class FooModelsController < ApplicationController
  # GET /foo_models
  # GET /foo_models.json
  def index
    @foo_models = FooModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foo_models }
    end
  end

  # GET /foo_models/1
  # GET /foo_models/1.json
  def show
    @foo_model = FooModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @foo_model }
    end
  end

  # GET /foo_models/new
  # GET /foo_models/new.json
  def new
    @foo_model = FooModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @foo_model }
    end
  end

  # GET /foo_models/1/edit
  def edit
    @foo_model = FooModel.find(params[:id])
  end

  # POST /foo_models
  # POST /foo_models.json
  def create
    @foo_model = FooModel.new(params[:foo_model])

    respond_to do |format|
      if @foo_model.save
        format.html { redirect_to @foo_model, notice: 'Foo model was successfully created.' }
        format.json { render json: @foo_model, status: :created, location: @foo_model }
      else
        format.html { render action: "new" }
        format.json { render json: @foo_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /foo_models/1
  # PUT /foo_models/1.json
  def update
    @foo_model = FooModel.find(params[:id])

    respond_to do |format|
      if @foo_model.update_attributes(params[:foo_model])
        format.html { redirect_to @foo_model, notice: 'Foo model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @foo_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo_models/1
  # DELETE /foo_models/1.json
  def destroy
    @foo_model = FooModel.find(params[:id])
    @foo_model.destroy

    respond_to do |format|
      format.html { redirect_to foo_models_url }
      format.json { head :no_content }
    end
  end
end
