ActiveAdmin.register Product do
  form do |f|
    f.inputs "Details" do # physician's fields
      f.input :title
      f.input :photo, :as => :file, :hint => f.template.image_tag(f.object.photo.url(:thumb))
      f.input :locale
      f.input :description, :as => :ckeditor

      f.actions
    end
  end  
end
