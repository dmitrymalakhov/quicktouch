ActiveAdmin.register Application do
	form do |f|
	  f.inputs "Details" do # physician's fields
			f.input :title
			f.input :android_link
			f.input :ios_link
			f.input :locale
			f.input :web_link
			f.input :description, :as => :ckeditor

			f.has_many :screenshots do |ff|
			  ff.input :image, as: :file, :hint => ff.template.image_tag(ff.object.image.url(:small))
			  ff.input :_destroy, as: :boolean
			end 

			f.actions
		end
	end

	index do
		selectable_column
		column :title
		column :locale
		column :android_link
		column :ios_link

		actions
	end

	show do
		attributes_table do
			row :title
			row :locale
			row :android_link
			row :ios_link
			row :web_link

			row "Images" do
				application.screenshots.each do |img|
				  span do 
						image_tag(img.image.url(:small))
				  end
				end
			end
		end
  end
end