class PartialsController < ApplicationController

	def partial
    	render :partials => 'partials/' + params[:path], :layout => nil
 	end

end
