class Ability
  include CanCan::Ability

  def initialize(user)

    can :read, :all
    can :read, :all
    can :create, :all
    can :destroy, Ad do |ad|
    profile.updated_by.to_s == user.id.to_s

  end
end
