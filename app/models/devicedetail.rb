class Devicedetail < ApplicationRecord

	include HTTParty
	
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
end
