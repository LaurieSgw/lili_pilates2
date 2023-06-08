ActiveAdmin.register Course do

  permit_params :date, :available_places

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :date
      f.input :available_places
    end
    f.actions
  end

end
