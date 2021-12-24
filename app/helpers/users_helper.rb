module UsersHelper
    NOTICE = {
        create: 'User created successfully',
        update: 'User updated successfully',
        delete: 'User deleted successfully',
        like: 'User has been liked',
        error: 'Something went wrong'
      }.freeze
    
      def notice_stream(message:, status:)
        turbo_stream.replace 'notice', partial: 'notice', locals: { notice: NOTICE[message], status: status }
      end
    
      def form_user_stream(user:)
        turbo_stream.replace 'form', partial: 'form', locals: { user: user }
      end
end
