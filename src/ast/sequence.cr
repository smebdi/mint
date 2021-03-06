module Mint
  class Ast
    class Sequence < Node
      getter statements, catches, finally, comments, catch_all

      def initialize(@statements : Array(Statement),
                     @comments : Array(Comment),
                     @finally : Finally | Nil,
                     @catches : Array(Catch),
                     @catch_all : CatchAll?,
                     @input : Data,
                     @from : Int32,
                     @to : Int32)
      end
    end
  end
end
