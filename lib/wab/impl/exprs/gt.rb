
module WAB
  module Impl

    # Matches a node that has a value greater than the provided value. If a
    # integer or float is provided then both integer and floats are
    # checked. If the value provided is a time then only time nodes are
    # checked. Any other type results in an error.
    class Gt < PathExpr

      # Creates a new instance with the provided parameters.
      #
      # path:: path to the value to compare
      # value:: value to compare against
      def initialize(path, value)
        super(path)
        @value = value
      end

      def eval(data)
        data.get(@path) > @value
      end

      def native()
        ['GT', @path, @value]
      end

    end # Gt
  end # Impl
end # WAB
