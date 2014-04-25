class CategoriesController < ApplicationController
  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
    @areas = Area.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
  end



  # GET /categories/1
  # GET /categories/1.json
  def show
    @category = Category.find(params[:id])
    #@spots_ranking = Spot.limit(6).order('rate desc')
    #@category = Spot.all
    @areas = Area.all
    @categories = Category.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category }
    end
  end

  # GET /categories/list/1
  # GET /categories/list/1.json
  def list
    @category = Category.find(params[:id])
    @areas = Area.all
    @categories = Category.all
    @posts = Spot.where(category_id: @category.id).paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category }
    end
  end

  # GET /categories/new
  # GET /categories/new.json
  def new
    @category = Category.new
    @areas = Area.all
    @categories = Category.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @category }
    end
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find(params[:id])
    @areas = Area.all
    @categories = Category.all

  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(params[:category])
    @areas = Area.all
    @categories = Category.all

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render json: @category, status: :created, location: @category }
      else
        format.html { render action: "new" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.json
  def update
    @category = Category.find(params[:id])
    @areas = Area.all
    @categories = Category.all

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    @areas = Area.all
    @categories = Category.all

    respond_to do |format|
      format.html { redirect_to categories_url }
      format.json { head :no_content }
    end
  end


end
