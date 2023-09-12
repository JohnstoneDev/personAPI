class ApplicationController < ActionController::API
    include ActionController::Cookies

    # Rescue from validation errors
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index
        render json: { message: "Hello World!"}
    end

    private

    def record_not_found record
        render json: { error: record }, status: :not_found
    end

    def record_invalid invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end