class EntriesController < ApplicationController

  def new
  end

  def create
  if @current_user == nil
    redirect_to "/login"
    return
  end

  @entry = Entry.new
  @entry.place_id = params["place_id"]
  @entry.title = params["title"]
  @entry.description = params["description"]
  @entry.occurred_on = params["occurred_on"]
  @entry.user_id = @current_user.id
  @entry.image.attach(params["image"])

  if @entry.save
    redirect_to "/places/#{@entry.place_id}"
  else
    redirect_to "/places"
    end
  end
end