class EppTestController < ApplicationController
  def index; end

  def create
    server = Epp::Server.new({server: 'localhost', tag: 'gitlab', password: 'ghyt9e4fu', port: 700})
    begin
      @result = server.request(params[:payload])
    rescue
      @result = 'CONNECTION ERROR - Is the EPP server running?'
    end
    render :index
  end

  def load_xml
    render text: File.read("public/epp_requests/#{params[:obj]}/#{params[:epp_action]}.xml")
  end
end
