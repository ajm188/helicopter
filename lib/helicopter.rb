require "helicopter/version"

module Helicopter
  def self.extended(base)
    class << base
      define_method "subclasses" do
        @subclasses ||= []
      end

      define_method "inherited" do |subclass|
        super(subclass)
        subclasses << subclass
      end
    end
  end
end
