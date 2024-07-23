module ApplicationHelper
  def unique_error_messages(object)
    object.errors.full_messages.uniq
  end
end
