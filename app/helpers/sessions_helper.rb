module SessionsHelper
  
  #Logs in the given author
  def log_in(author)
    session[:author_id] = author.id
  end

  #Returns current logged-in author
  def current_author
    @current_author ||= Author.find_by(id: session[:author_id])
  end

  #returns if a author is logged or not
  def logged_in?
    !current_author.nil?
  end


  def log_out
    session.delete(:author_id)
    @current_author = nil
  end
end
