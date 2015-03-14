require 'spec_helper'

describe Helicopter do
  it 'has a version number' do
    expect(Helicopter::VERSION).not_to be nil
  end

  it 'defines a subclasses method on anything extending it' do
    class Foo; extend Helicopter; end
    class Bar; end

    expect(Foo).to respond_to :subclasses
    expect(Bar).to_not respond_to :subclasses

    undefine Foo, Bar
  end

  it 'allows a class to track its descendants' do
    class Foo; extend Helicopter; end
    class Bar < Foo; end
    class Baz < Foo; end

    expect(Foo.subclasses).to eq [Bar, Baz]

    undefine Foo, Bar, Baz
  end

  it 'tracks only direct descendants' do
    class Foo; extend Helicopter; end
    class Bar < Foo; end
    class Baz < Bar; end

    expect(Foo.subclasses).to eq [Bar]

    undefine Foo, Bar, Baz
  end

  it "doesn't get confused when multiple things extend it" do
    class Foo; extend Helicopter; end
    class Bar; extend Helicopter; end
    class Baz < Foo; end

    expect(Foo.subclasses).to eq [Baz]
    expect(Bar.subclasses).to eq []

    undefine Foo, Bar, Baz
  end
end
