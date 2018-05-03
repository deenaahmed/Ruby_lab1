class Calculator
    attr_accessor :firstvar, :secondvar 
    def result(fvar, svar, operator)
        @firstvar=fvar
        @secondvar=svar
        if(operator=="*" || operator=="/" || operator=="-" || operator=="+" || operator=="%")
            if(firstvar.class==String || secondvar.class==String)
                puts("invalid argumenttype")
            else
                if(firstvar.class==Float || secondvar.class==Float )
                    if(operator=="/" && secondvar==0)
                        y="Invalid division by zero"
                        puts (y) 
                    else
                    y="#{firstvar.to_f} #{operator} #{secondvar.to_f}"
                    puts eval (y) 
                    end
                else
                    if(operator=="/" && secondvar==0)
                        y="Invalid division by zero"
                        puts (y) 
                    else
                    y="#{firstvar.to_i} #{operator} #{secondvar.to_i}"
                    puts eval (y) 
                    end
                end
            end
        else
            puts("invalid operation")
        end       
     end
end

Calculator.new.result "dena",0,'0'
Calculator.new.result "5",0,'+'
Calculator.new.result 5,0,'/'
Calculator.new.result '+',2,'+'
