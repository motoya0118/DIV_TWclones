module ClonesHelper
  def new_edit
    if action_name == 'new' || action_name == 'create'
      clones_path
    elsif action_name == 'edit' || action_name == 'update'
      clone_path
    end

  end
end
