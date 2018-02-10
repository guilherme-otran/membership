ActiveAdmin.register Member do
  permit_params :name,
                :email,
                :address,
                :number,
                :complement,
                :city_id,
                :phone1,
                :phone2,
                :phone3,
                :birthdate,
                :baptism_date


  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone1
    column :phone2
    column :phone3

    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
      f.input :email

      f.input :address
      f.input :number
      f.input :complement
      f.input :city_id, collection: City.all, as: :select

      f.input :phone1
      f.input :phone2
      f.input :phone3

      f.input :birthdate, start_year: 1920
      f.input :baptism_date, start_year: 1920
    end
    f.actions
  end

end
