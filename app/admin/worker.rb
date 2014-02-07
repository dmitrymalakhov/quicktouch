ActiveAdmin.register Worker do

  form do |f|
    f.inputs "Details" do # physician's fields
      f.input :email
      f.input :photo, :as => :file, :hint => f.template.image_tag(f.object.photo.url(:thumb))
      f.input :name
      f.input :job
      f.input :phone
      f.input :region
      f.input :skype
      f.input :locale

      f.actions
    end
  end

  index do
    selectable_column
    column "Image" do |worker|
      image_tag(worker.photo.url(:thumb))
    end    
    column :name
    column :locale
    column :region

    actions
  end

  show do
    attributes_table do
      row :name
      row "Images" do |worker|
          image_tag(worker.photo.url(:thumb))
      end
      row :phone
      row :email
      row :skype
      row :locale
      row :region     
    end
  end
end
