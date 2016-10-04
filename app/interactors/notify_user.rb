class SendEmail
  include Interactor
  def call
    Rails.logger.debug '----------------------------------------------------------------------------------------------------'
    Rails.logger.info 'SendEmail Intreactor called!!!'
    Rails.logger.debug '----------------------------------------------------------------------------------------------------'
  end
end

class SendSms
  include Interactor
  def call
    Rails.logger.debug '----------------------------------------------------------------------------------------------------'
    Rails.logger.info 'SendSms Intreactor called!!!'
    Rails.logger.debug '----------------------------------------------------------------------------------------------------'
  end
end

class NotifyUser
  include Interactor::Organizer

  organize *WorkflowMap.call('notify_user').map(&:constantize)
end
