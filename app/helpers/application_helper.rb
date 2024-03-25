module ApplicationHelper
  def is_active?(controller)
    params[:controller] == controller ? "text-slate-200" : nil
  end

  def button_style(type)
    case type
    when "edit"
      "rounded-md p-2 border border-yellow-300 bg-yellow-200 hover:bg-yellow-100 hover:cursor-pointer"
    when "create"
      "rounded-md p-2 border border-green-300 bg-green-200 hover:bg-green-100 hover:cursor-pointer"
    when "delete"
      "rounded-md p-2 border border-red-300 bg-red-200 hover:bg-red-100 hover:cursor-pointer"
    when "back"
      "rounded-md p-2 border border-slate-300 bg-slate-200 hover:bg-slate-100 hover:cursor-pointer"
    when "show"
      "rounded-md p-2 border border-blue-300 bg-blue-200 hover:bg-blue-100 hover:cursor-pointer"
    end
  end
end
