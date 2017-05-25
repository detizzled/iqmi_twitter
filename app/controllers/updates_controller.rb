class UpdatesController < ApplicationController

  def index
    response = RestClient.get("https://devtestapiapp.herokuapp.com/tweets.json")
    data = JSON.parse(response.body)
    keywords = ["coke", "coca-cola", "diet-cola"]

    if data.include?("error")
      @error = data
      @error["message"] = "OMG THERE'S AN ERRORZ"
    else
      data.each do |item|
        if Update.where(id: item["id"]).empty?
          Update.create(item)
        end
      end
      @updates = Update.where( (keywords.map { |kw| "message LIKE \'%#{kw}%\'" }).join(" OR ") ).order(sentiment: :desc)
    end
  end

  def show
    @update = Update.find(params[:id])
  end

end