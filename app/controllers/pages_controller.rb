class PagesController < ApplicationController
  def who_we_are
    @us = ['person'] * 10
  end
end
