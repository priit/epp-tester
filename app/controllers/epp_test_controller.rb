class EppTestController < ApplicationController
  def index; end

  def create
    user, pw = 'zone', 'ghyt9e4fu' if params[:epp_request_zone]
    user, pw = 'elkdata', '8932iods' if params[:epp_request_elkdata]

    server = Epp::Server.new({server: 'localhost', tag: user, password: pw, port: 700})
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
