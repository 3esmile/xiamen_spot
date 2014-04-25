class TopController < ApplicationController
  def index
  	@spots = Spot.all
  	@spots_recent = Spot.limit(6)
  	@spots_ranking = Spot.limit(6).order('rate desc')
  	@spots_featured = Spot.where(featured: true).limit(4)
  	@categories = Category.all
  	@areas = Area.all
  end
end
