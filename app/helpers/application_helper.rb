module ApplicationHelper
  def change_locale_nav_item(locale, url)
    elClass = (I18n.locale == locale) ? "nav-item active" : "nav-item"
    content_tag(:li, link_to(locale.to_s.upcase, url, class: "nav-link"), class: elClass)
  end

  def page_nav_item(text, path)
    elClass = current_page?(path) ? "nav-item active" : "nav-item"
    content_tag(:li, link_to(text, path, class: "nav-link"), class: elClass)
  end

  def page_dropdown_item(text, path)
    elClass = current_page?(path) ? "dropdown-item active" : "dropdown-item"
    link_to(text, path, class: elClass)
  end

  def flash_class(level)
    case level
        when 'notice' then 'alert alert-info'
        when 'success' then 'alert alert-success'
        when 'error' then 'alert alert-danger'
        when 'alert' then 'alert alert-danger'
    end
  end

  def apply_now_button(large=false)
    cls = large ? 'btn btn-success btn-lg' : 'btn btn-success'
    apply_text = 'Apply Now'
    apply_step2 = 'Step 2: Fill the Application'
    view_text = 'View my Application'
    if !user_signed_in?
      return link_to(apply_text, new_user_registration_path, role: 'button', class: cls)
    else
      if current_user.applic&.persisted?
        return link_to(view_text, applic_path(current_user.applic.id), role: 'button', class: cls)
      else
        return link_to(apply_step2, new_applic_path, role: 'button', class: cls)
      end
    end
  end
end
