class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :markdown_parser

  def markdown_parser(content)
    markdown = Redcarpet::Markdown.new Redcarpet::Render::HTML, autolink: true, tables: true
    markdown.render content
  end
end
