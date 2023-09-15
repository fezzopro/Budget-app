class HomeController < ApplicationController
  before_action :signed_in

  def index
    redirect_to category_index_path
  end
end
