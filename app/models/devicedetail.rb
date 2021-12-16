class Devicedetail < ApplicationRecord
	include HTTParty
	require 'rubygems'
	require "uri"
	require "net/http"
	

	def get_device_info
		url = URI("https://www.imei.info/api/checkimei")
		https = Net::HTTP.new(url.host, url.port)
		https.use_ssl = true
		imei_request = Net::HTTP::Post.new(url)
		form_data = [['key', ENV['KEY']],['imei', self.imei]]
		imei_request.set_form form_data, 'multipart/form-data'
		
		imei_response = https.request(imei_request)
		
		imei_response.read_body
	end
end
