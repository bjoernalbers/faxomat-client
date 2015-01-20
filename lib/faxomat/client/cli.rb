module Faxomat
  module Client
    class CLI
      def parse(argv)
        Slop.parse(argv) do |o|
          o.string '-p', '--phone', 'phone number of recipient'
          o.string '-t', '--title', 'title of fax'
        end
      end
    end
  end
end
