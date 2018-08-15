# frozen_string_literal: true

module Ideas
  module Wizard
    # Defines access rules to create author
    class RegistrationPolicy < ApplicationPolicy
      def create?
        user.nil?
      end
      alias_method :new?, :create?
      alias_method :authorized?, :create?
    end
  end
end
