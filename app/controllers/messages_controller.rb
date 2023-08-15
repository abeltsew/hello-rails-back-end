class MessagesController < ApplicationController
    def index
        @random_message = Message.find(Message.pluck(:id).sample)
        render json: @random_message
    end
end
