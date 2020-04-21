module svopt

"Newton Raphson method"

function NR_fun(f, fp, x0; ϵ=1e-5, maxiter=1e6)
           x_new, x_old = x0, Inf
           f_new, f_old = f(x_new), Inf

           i = 0

           while i <= maxiter && abs(x_new-x_old) >= ϵ && abs(f_new-f_old) >= ϵ
               x_pocket = x_new - f(x_new)/fp(x_new)
               x_new, x_old = x_pocket, x_new
               f_new, f_old = f(x_new), f_new
               i += 1

           end

           if i >= maxiter
               error("Function itered over ",maxiter," times.")
           else
               return x_new, i
           end
	end




export NR_fun;

end # module
