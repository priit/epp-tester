class EppTestController < ApplicationController
  def index; end

  def create
    server = Epp::Server.new({server: 'localhost', tag: 'gitlab', password: 'ghyt9e4fu', port: 700})
    @result = server.request(params[:payload])
    render :index
  end
end
