class Devicedetail < ApplicationRecord
	include HTTParty
	require 'rubygems'
	require "uri"
	require "net/http"
	
	BASE_URL = "imei.info/api/checkimei?"
	API_PARTIAL_URL = "ENV[KEY]"
	IMEI = "354871048978072"

	def query
		@imei_check = ImeiCheckerApi.new
		request = HTTParty.post(BASE_URL+API_PARTIAL_URL+IMEI)
		@request_hash = JSON.parse(request)
	end

	def print_imei
		@request_hash["response"]["results"].each do |imeicheck|
			puts imeicheck["imei"]
	    end
    end

	def get_device_info
		url = URI("https://www.imei.info/api/checkimei")
		https = Net::HTTP.new(url.host, url.port)
		https.use_ssl = true
		request = Net::HTTP::Post.new(url)
		form_data = [['key', ENV["KEY"]],['imei', self.imei]]
		request.set_form form_data, 'multipart/form-data'
		response = https.request(request)
		response.read_body
	end
end
