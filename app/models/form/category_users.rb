class Form::CategoryUser < CategoryUser
  REGISTRABLE_ATTRIBUTES = %i(id category_id user_id _destroy)

  def selectable_categories
    Category.all
  end
end