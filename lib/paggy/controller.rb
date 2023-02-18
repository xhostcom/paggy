module Paggy
	module Controller
		def set_page_and_extract_portion_from(collection)
			@page = Paggy::Page.new(current_page_params, collection)
			@page.records
		end 

		def current_page_params 
			params[:page].to_i > 0 ? params[:page].to_i : 1
		end 

	end 
end