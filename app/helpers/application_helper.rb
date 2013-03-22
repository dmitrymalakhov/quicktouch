module ApplicationHelper
	def logo
		image_tag("logo.png", :alt => "QuickTouch")
	end
	def partner_banner_path
		return String.new("partner_promo_#{I18n.locale}.png")
	end
end