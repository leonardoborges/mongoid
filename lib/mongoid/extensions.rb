# encoding: utf-8
require "mongoid/extensions/array/accessors"
require "mongoid/extensions/array/assimilation"
require "mongoid/extensions/array/conversions"
require "mongoid/extensions/array/parentization"
require "mongoid/extensions/boolean/conversions"
require "mongoid/extensions/date/conversions"
require "mongoid/extensions/datetime/conversions"
require "mongoid/extensions/float/conversions"
require "mongoid/extensions/hash/accessors"
require "mongoid/extensions/hash/assimilation"
require "mongoid/extensions/hash/conversions"
require "mongoid/extensions/hash/criteria_helpers"
require "mongoid/extensions/integer/conversions"
require "mongoid/extensions/object/conversions"
require "mongoid/extensions/string/conversions"
require "mongoid/extensions/string/inflections"
require "mongoid/extensions/symbol/inflections"
require "mongoid/extensions/time/conversions"

class Array #:nodoc:
  include Mongoid::Extensions::Array::Accessors
  include Mongoid::Extensions::Array::Assimilation
  include Mongoid::Extensions::Array::Conversions
  include Mongoid::Extensions::Array::Parentization
end

class Boolean #:nodoc
  extend Mongoid::Extensions::Boolean::Conversions
end

class Date #:nodoc
  extend Mongoid::Extensions::Date::Conversions
end

class DateTime #:nodoc
  extend Mongoid::Extensions::DateTime::Conversions
end

class Float #:nodoc
  extend Mongoid::Extensions::Float::Conversions
end

class Hash #:nodoc
  include Mongoid::Extensions::Hash::Accessors
  include Mongoid::Extensions::Hash::Assimilation
  extend Mongoid::Extensions::Hash::Conversions
  include Mongoid::Extensions::Hash::CriteriaHelpers
end

class Integer #:nodoc
  extend Mongoid::Extensions::Integer::Conversions
end

class Object #:nodoc:
  include Mongoid::Extensions::Object::Conversions
end

class String #:nodoc
  extend Mongoid::Extensions::String::Conversions
  include Mongoid::Extensions::String::Inflections
end

class Symbol #:nodoc
  include Mongoid::Extensions::Symbol::Inflections
end

class Time #:nodoc
  extend Mongoid::Extensions::Time::Conversions
end
