class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @services = Service.all
    @query = Query.new
  end

  def covid
  end

end
