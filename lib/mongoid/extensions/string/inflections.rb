# encoding: utf-8
module Mongoid #:nodoc:
  module Extensions #:nodoc:
    module String #:nodoc:
      module Inflections #:nodoc:

        ActiveSupport::Inflector.inflections do |inflect|
          inflect.singular "address", "address"
          inflect.singular "addresses", "address"
          inflect.plural "address", "addresses"
        end

        REVERSALS = {
          "asc" => "desc",
          "ascending" => "descending",
          "desc" => "asc",
          "descending" => "ascending"
        }

        def invert
          REVERSALS[self]
        end

        def singular?
          singularize == self
        end

        def plural?
          pluralize == self
        end
      end
    end
  end
end
