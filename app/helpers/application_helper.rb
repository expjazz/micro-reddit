module ApplicationHelper
  def comments_size(comments)
    return comments if comments.size.positive?

    []
  end

  def comm(comm)
    if comm
      comm.comment
    else
      false
    end
  end

  def aut(comm)
    if comm
      comm.user.username
    else
      false
    end
  end
end
