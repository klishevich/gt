module CurriculumHelper
  def lecture_info(number_and_date, title)
    content_tag(:div, class: 'row') do
      content_tag(:div, content_tag(:b, number_and_date), class: 'col-lg-4') +
      content_tag(:div, title, class: 'col-lg-8')
    end

    # arr = ['col-lg-4', 'col-lg-8']
    # content_tag :div do
    #   arr.collect do |cls| 
    #     content_tag(:div, cls)
    #   end.join.html_safe
    # end
  end

  def lecture_module(title)
    content_tag(:div, class: 'row module-block') do
      content_tag(:div, class: 'col-lg-12') do
        content_tag(:span, title, class: 'badge badge-primary')
      end
    end
  end
end
