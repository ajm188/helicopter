$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'helicopter'

def undefine(*classes)
  classes.each do |klass|
    Object.send(:remove_const, klass.to_s.to_sym)
  end
end
