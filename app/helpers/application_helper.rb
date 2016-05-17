module ApplicationHelper
  def locale_control locale
    return link_to locale.to_s, url_for(locale: locale), class: locale == I18n.locale ? "selected" : ""
  end
end
