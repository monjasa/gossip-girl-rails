class DeviseCustomMailer < Devise::Mailer
  helper :application
  default template_path: 'devise/mailer'
  layout 'mailer'
  add_template_helper EmailHelper
  add_template_helper ApplicationHelper

  def confirmation_instructions(record, token, opts={})
    super
  end
end