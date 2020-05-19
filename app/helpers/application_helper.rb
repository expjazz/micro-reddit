module ApplicationHelper

  def comments_size(comments)
    return comments if comments.size.positive?
    []
  end

  def comm(comm)
    if comm
      return comm.comment
    else
      return false 
    end
  end
  def aut(comm)
    if comm
      return comm.user.username
    else
      return false 
    end
  end

end
