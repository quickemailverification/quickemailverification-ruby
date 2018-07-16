module QuickEmailVerification

  module Api

    # QuickEmailVerification Class for email verification
    class Quickemailverification

      def initialize(client)
        @client = client
      end

      # Verify email address and get detailed response
      #
      # '/verify?email=:email' GET
      #
      # email - send email address in query parameter
      def verify(email, options = {})
        body = options.fetch("query", {})
	
        email = CGI::escape(email)

        @client.get("/verify?email=#{email}", body, options)
      end

      # Return predefined response for predefined email address
      #
      # '/verify/sandbox?email=:email' GET
      #
      # email - send email address in query parameter
      def sandbox(email, options = {})
        body = options.fetch("query", {})
	
        email = CGI::escape(email)

        @client.get("/verify/sandbox?email=#{email}", body, options)
      end

    end

  end

end
