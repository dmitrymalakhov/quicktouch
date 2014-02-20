class ApplicationController < ActionController::Base
	protect_from_forgery
	before_filter :set_locale

	def home
		@applications = Application.where("locale = '#{I18n.locale}' AND priority > 0").order("priority desc")
	end

	def contact
		@workers = Worker.where("locale = '#{I18n.locale}'").order("id desc")
	end

	def portfolio
		@applications = Application.where("locale = '#{I18n.locale}' AND priority > 0").order("priority desc")
	end

	def client
		@products = Product.where("locale = '#{I18n.locale}'")
	end

	def appview
		@application = Application.find(params[:id])
		@applications = Application.where("locale = '#{I18n.locale}' AND priority > 0").order("priority desc")
	end
	
	private
		
	def set_locale
		I18n.locale = params[:locale] || I18n.default_locale
		Rails.application.routes.default_url_options[:locale]= I18n.locale
	end

	#def default_url_options(options={})
	#	logger.debug "default_url_options is passed options: #{options.inspect}\n"
	#	{ :locale => I18n.locale }
	#end
end
