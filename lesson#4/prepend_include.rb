  # In this task you should use #prepend and #include methods
  # in different combinations to achieve desired result, described at the bottom
  # Hint: class method #ancestors should help you to understand ancestors chain in different cases
  # Good Luck!
  
  module A
    def hello
      super if defined?(super)
      puts "hello from A"
    end
  end

  module B
    def hello
      super if defined?(super)
      puts "hello from B"
    end
  end

  class C1 # should be called in order => A,C,B
    # your code goes here, for example
    # include A
    # include B

    def hello
      super if defined?(super)
      puts "hello from C"
    end
  end

  class C2 # should be called in order => A,B,C
    # your code goes here, for example
    include A
    include B

    def hello
      super if defined?(super)
      puts "hello from C"
    end
  end

  class C3 # should be called in order => B,A,C
    # your code goes here, for example
    # include A
    # include B

    def hello # should be called in order => C,B,A
      super if defined?(super)
      puts "hello from C"
    end
  end

  class C4
    # your code goes here, for example
    # include A
    # include B

    def hello
      super if defined?(super)
      puts "hello from C"
    end
  end

  class C5 # should be called in order => C,A,B
    # your code goes here, for example
    # include A
    # include B

    def hello
      super if defined?(super)
      puts "hello from C"
    end
  end

# c = C.new
# C1.new.hello # should be called in order => A,C,B
C2.new.hello # should be called in order => A,B,C #DONE
#C3.new.hello # should be called in order => B,A,C
# C4.new.hello # should be called in order => C,B,A
# C5.new.hello # should be called in order => C,A,B