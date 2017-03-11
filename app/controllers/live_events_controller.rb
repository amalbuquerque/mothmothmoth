class LiveEventsController < ApplicationController
  def all
    render json: {something: "live"}
  end
end
