class GameSerializer < ActiveModel::Serializer
    attributes :location, :group_name, :details, :id
  end
  