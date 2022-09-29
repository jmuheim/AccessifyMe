class LearnController < ApplicationController
  def index
    @virtues = Virtue.all
  end
end
