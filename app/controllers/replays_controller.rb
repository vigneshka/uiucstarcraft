class ReplaysController < ApplicationController
  def new
  end

  def create
    from = params[:replay][:from]
    body = params[:replay][:body]
    file = params[:replay][:file]

    if body.blank?
      flash[:error] = "Email was not sent. Please enter some text."
    else
      if from.blank?
        flash[:error] = "Email was not sent. Please enter your email address."

      elsif file.blank?
        flash[:error] = "Email was not sent. Please attach a replay."

      # max file size is 300kb
      elsif file.size>307200
        flash[:error] = "Attachment is too large!"

      else
        Mailer.replay(from, body, file).deliver
        flash[:success] = "Thank you for submitting!"
      end
    end

    redirect_to '/'
  end
end

private
def large

end
