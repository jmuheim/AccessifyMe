class AllController < ApplicationController
  def index
    @virtues = Virtue.all
  end
end
