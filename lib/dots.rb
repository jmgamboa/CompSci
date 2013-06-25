require 'eventmachine'

EM.run do
    dot = Proc.new {
        print "."

        EM.next_tick do
            dot.call
        end
    }

    dot.call
end