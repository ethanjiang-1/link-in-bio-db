class ItemsController < ApplicationController
  def index
    @item_listing = Item.all.order({:created_at => :desc})
    render({ :template => "item_templates/list" })
  end
end
