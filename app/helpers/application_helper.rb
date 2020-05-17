module ApplicationHelper
  def alternate_locales
    I18n.available_locales.map{|l|
      yield(l)
    }.join.html_safe
  end
end
