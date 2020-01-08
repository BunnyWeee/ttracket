module ApplicationHelper
  def icon_link_to(label, path, icon)
    link_to path do
      content_tag :span, class: "btn btn-sm btn-primary glyphicon glyphicon-#{icon}" do
        label  
      end
    end
  end
end
