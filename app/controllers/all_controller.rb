class AllController < ApplicationController
  def virtues
    @virtues = Virtue.all
  end

  def bloopers
    @bloopers = Blooper.all
  end
end
