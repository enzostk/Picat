class MainController < ApplicationController
  def index
    @items = Item.all
  end
end
