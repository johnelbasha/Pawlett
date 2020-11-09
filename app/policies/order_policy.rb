class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create? #pundit scope or authentication scope??
    true      #pundit scope or authentication scope??
  end         #pundit scope or authentication scope??
end
