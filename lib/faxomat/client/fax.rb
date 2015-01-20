module Faxomat
  module Client
    class Fax
      attr_reader :phone, :title, :path

      def initialize(opts={})
        @phone = opts[:phone]
        @title = opts[:title]
        @path  = opts[:path]
      end

      def deliver
        RestClient.post url, params
      ensure
        file.close unless file.closed?
      end

      private

      def url
        'http://faxomat/faxes'
      end

      def params
        {
          fax: {
            phone:    phone,
            title:    title,
            document: file
          }
        }
      end

      def file
        @file ||= File.new(path, 'rb')
      end
    end
  end
end
