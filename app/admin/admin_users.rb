ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :admin_role

  index do
    selectable_column
    id_column
    column :email
    column :admin_role
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :admin_role
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation

      if can? :change_role, AdminUser
        f.input :admin_role, as: :select, collection: AdminRole.to_a
      end
    end
    f.actions
  end

end
