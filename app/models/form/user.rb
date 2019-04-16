class Form::User < User
  REGISTRABLE_ATTRIBUTES = %i()

  has_many :category_users, class_name: 'Form::CategoryUser'
end