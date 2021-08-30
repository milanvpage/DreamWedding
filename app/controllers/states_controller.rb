class StatesController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new
        @state = State.new(state_params)
    end

    def create
        if @state = State.new(state_params).valid?
        @state.save
        end
    end 

    private

    def state_params
        params.require(:state).permit(:name)
    end
end
