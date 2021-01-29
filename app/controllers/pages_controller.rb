class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :covid, :reviews ]

  def home
    @services = Service.all
    @query = Query.new
  end

  def covid
  end

  def reviews
  end

  def whatwedo
  end

  def contact
  end
end
