class PagesController < ApplicationController
	layout "main"

	def contact
		@workers = Worker.where("locale = '#{I18n.locale}'").order("id desc")
	end

	def portfolio
		@applications = Application.where("locale = '#{I18n.locale}'").order("id desc")
	end

	def client
		@products = Product.where("locale = '#{I18n.locale}'")
	end
end
