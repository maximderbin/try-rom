class ApplicationController < ActionController::API
  rescue_from ROM::TupleCountMismatchError do
    render json: { error: 'not_found' }, status: :not_found
  end
end
