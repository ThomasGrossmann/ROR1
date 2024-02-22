module ApplicationHelper
  def is_active?(controller)
    params[:controller] == controller ? "text-slate-200" : nil
  end
end
