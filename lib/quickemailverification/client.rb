require "faraday"
require "json"

require "quickemailverification/api/quickemailverification"

module QuickEmailVerification

  class Client

    def initialize(auth = {}, options = {})
      @http_client = QuickEmailVerification::HttpClient::HttpClient.new(auth, options)
    end

    # QuickEmailVerification Class for email verification
    def quickemailverification()
      QuickEmailVerification::Api::Quickemailverification.new(@http_client)
    end

  end

end
