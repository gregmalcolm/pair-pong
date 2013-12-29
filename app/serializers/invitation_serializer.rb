class InvitationSerializer < ActiveModel::Serializer
  attributes :id, :github_repository, :invite_message, :recipient
  has_one :exercise
end

