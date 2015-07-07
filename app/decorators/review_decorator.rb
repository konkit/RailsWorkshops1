class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    review.user.firstname + ' ' + review.user.lastname
  end

  def formatted_date
    created_at.strftime("%d-%m-%y")
  end
end
