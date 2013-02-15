class DealsController < ApplicationController
  # GET /specials
  # GET /specials.json
  helper_method :sort_column, :sort_direction
  
  
  def index
     @specials = Special.order(sort_column + ' ' + sort_direction).where("day = ?", Time.now.wday)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @specials }
	end
  end
  
  def show
    @upcoming = Special.order(sort_column + ' ' + sort_direction).where("day > ?", Time.now.wday)
	 
	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @specials }
	end
  end 
  
  private
  def sort_column
    Special.column_names.include?(params[:sort]) ? params[:sort] : "bar_id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"  
  end
end
