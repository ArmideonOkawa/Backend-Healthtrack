class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :goal, :lifestyle, :age, :weight, :bf_current, :bf_goal, :waist, :arm, :thigh, :chest
end
