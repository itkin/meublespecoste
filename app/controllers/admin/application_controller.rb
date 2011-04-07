class Admin::ApplicationController < ApplicationController

  before_filter :authenticate_user!


  def choose_layout
    if request.xhr?
      false
    else
      'admin'
    end
  end
end