#require 'pry'

class Gossip
    attr_reader :author, :content

    def initialize(author, content)
        @content = content
        @author = author
      end

      def def new
          @gossip = create_gossip.new
      end
      
      def save
        CSV.open('db/gossip.csv','a+') do |csv|
			csv << [@author, @content]
        end
      end

end

#binding.pry