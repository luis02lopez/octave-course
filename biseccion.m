a=1;
b=2 ;
tolerancia=10^(-1);

if (f(a)*f(b)< 0)

    for i=1:50
      
      m=(a+b)/2;
      
      fprintf('\t %1.0f \t %1.10f \t %1.10f \t %1.10f \n',i,a,b,m);
      
      if(f(a)*f(m)>0)
         a=m;
      else
         b=m;
      endif
                  
    endfor

    if (abs(b-a)< tolerancia)
      
      fprintf('la solucion es: %1.10f \t \n',m)
    endif

endif
