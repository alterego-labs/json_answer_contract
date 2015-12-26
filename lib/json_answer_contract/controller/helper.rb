module JsonAnswerContract
  module Controller
    module Helper
      def success_json_response(data = {}, status = 200)
        build_json_response true, data, status
      end

      def failure_json_response(data = {}, status = 500)
        build_json_response false, data, status
      end

      def build_json_response(is_success, data, status)
        render json: { success: is_success, data: data }, status: status
      end
    end
  end
end
