class InvitationsController < ApplicationController
  respond_to :json
  before_action :set_invitation, only: [:show, :edit, :update, :destroy]

  def show
    respond_with @invitation
  end

  def create
    @invitation = Invitation.new(invitation_params)
    respond_to do |format|
      if @invitation.save
        format.json { render json: @invitation, status: :created }
      else
        format.json { render json: @invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_invitation
    @invitation = Invitation.find(params[:id])
  end

  def invitation_params
    params.require(:invitation).permit(:github_repository,
                                       :invite_message,
                                       :recipient,
                                       :exercise_id)
  end
end
