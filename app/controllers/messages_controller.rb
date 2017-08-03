class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.new_message(@message).deliver
      flash[:alert] = t('controllers.messages.success')
    else
      flash[:alert] = t('controllers.messages.error')
    end

    redirect_to contacts_path
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :content)
  end
end
