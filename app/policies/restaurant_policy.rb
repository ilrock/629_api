class RestaurantPolicy < ApplicationPolicy

  def show?
    true
  end

  def update?
    record.user == user
  end

  def create?
    !user.nil?
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all

      # scope.where user: user
    end
  end
end
