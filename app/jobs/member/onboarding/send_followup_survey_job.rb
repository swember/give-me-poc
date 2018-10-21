# frozen_string_literal: true

module Member
  class Onboarding
    # Select users who hasn't finished onboarding survey
    # based on 'feedback_status:feedback_pending' column value
    # and launch followup mailer
    class SendFollowupSurveyJob < ApplicationJob
      queue_as :default

      def perform
        Ops::Member::Onboarding::SendSurveyFollowup.call
      end
    end
  end
end