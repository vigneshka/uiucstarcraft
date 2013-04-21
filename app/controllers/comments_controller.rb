class CommentsController < ApplicationController
  def new
  end

  def create
    from = params[:comment][:from]
    body = params[:comment][:body]

    if body.blank?
      flash[:error] = 'Email was not sent. Please enter some text.'
    else
      if from.blank?
        flash[:error] = 'Email was not sent. Please enter your email address.'
      else
        Mailer.comment(from, body).deliver
        flash[:success] = "Thank-you for submitting! You'll hear from us soon."
      end
    end

    redirect_to '/'
  end
end
