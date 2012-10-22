def describe(description, &block)
  ExampleGroup.new(block).evaluate!
end

class ExampleGroup
  def initialize(block)
    @block =block
  end

  def evaluate! 
    instance_eval(&@block)
  end

  def it(description)
    yield
  end
end

class Object
  def should
    Expectation.new(self)
  end
end

class Expectation
  def initialize(subject)
    @subject = subject
  end

  def ==(other)
    raise ExpectationNotMet unless @subject == other
  end
end

class ExpectationNotMet < StandardError
  
end
