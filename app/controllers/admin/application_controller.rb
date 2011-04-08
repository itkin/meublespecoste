class Admin::ApplicationController < ApplicationController

  skip_before_filter :verify_authenticity_token

  before_filter :authenticate_user!


  def choose_layout
    if request.xhr?
      false
    else
      'admin'
    end
  end
end