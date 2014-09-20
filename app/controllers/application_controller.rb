class ApplicationController < ActionController::API
  
  private

  def render_unprocessable_error(model)
    errors = model.errors
    render status: 422, json: { errors: errors.to_hash(true) }
  end

  def save_or_render_error(model)
    render_unprocessable_error(model) unless model.save
  end
end


