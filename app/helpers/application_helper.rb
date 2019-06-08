module ApplicationHelper
  def genre_submit_text
    if controller.action_name == "new"
       return "Add Genre"
    else controller.action_name == "edit"
       return "Update Genre"
    end
  end
end
