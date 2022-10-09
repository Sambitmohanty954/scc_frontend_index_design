class HomePagesController < ApplicationController
  def index
    @data = File.read(Rails.root.join("public", "public.json"))
  end
end
