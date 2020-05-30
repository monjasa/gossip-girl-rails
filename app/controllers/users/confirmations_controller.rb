class Users::ConfirmationsController < Devise::ConfirmationsController
  def show
    super do |resource|
      sign_in(resource) if resource.errors.empty?
    end
  end
end