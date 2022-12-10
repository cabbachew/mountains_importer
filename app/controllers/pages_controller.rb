class PagesController < ApplicationController
  include MountainsHelper
  def home
    @mountains = Mountain.all
    @chart_data = counts_by_difficulty(Mountain)
  end
end
