module Delayed
  module Dashboard
    class Job::Double
      attr_accessor :id

      def initialize attributes = {}
        @id = attributes[:id]
      end

      def self.find *args
        new id: 1
      end

      def self.all
        5.times.map do |id|
          new id: id
        end
      end
    end
  end
end
