module ApplicationHelper

  def is_author?(item)
    current_user.id == item.user.id
  end

  def has_role?(role)
    current_user && current_user.has_role?(role)
  end

  def alternate_locales
    I18n.available_locales.map{|l|
      yield(l)
    }.join.html_safe
  end

  def user_avatar_tag(user, size = 128)
    if user.avatar.attached?
      image_tag user.avatar.variant(resize: "#{size}x#{size}!"), alt: user.name
    else
      gravatar_image_tag(user.email, size: size, alt: user.name, :gravatar => { :default => :monsterid, :size => size })
    end
  end

  def at_username(user)
    "@#{user.username}"
  end
end
