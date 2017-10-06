function [ newyvals ] = inferPoints( xvals, yvals, newx, method)
if strcmp(method, 'extrap')%for extrap method...
    newyvals=[]; %set the variable
    for j=1:length(newx) %for the length of the new values (which may differ)
        if max(xvals)<newx(j) | newx(j)<min(xvals) %given the proper values...
            newyvals=[newyvals interp1(xvals, yvals, newx(j),[], 'extrap')];
            %extrapolate...
        else %else
            newyvals=[newyvals NaN]; %it doesn't work
        end
    end
elseif strcmp(method, 'interp') %for interp...
    newyvals=[];
    for j=1:length(newx)
        if max(xvals)>=newx(j) & newx(j)>=min(xvals) %given the right values
            newyvals=[newyvals interp1(xvals, yvals, newx(j))]; %interpolate...
        else
            newyvals=[newyvals NaN]; %or not...
        end
        
    end
elseif strcmp(method, 'spline') %for the spline method
    newyvals=[];
    for j=1:length(newx) %no set values needed--it always works!
       newyvals=[newyvals spline(xvals, yvals, newx(j))];
       % Alternatively, this would work, too: 
       %interp1(xvals, yvals, newx(j), 'spline')]
    end
end
% Function inferPoints takes into three vectors, x values, new xvalues
%and y values, and a preferred method of data interpolation--either 
%interp, extrap, or spline. It will then output the estimated y vals. If
%the new x values are beyond the scope the method specified, then NaN will be 
%outputed in place of that one number. 
%Usage: function [ newyvals ] = inferPoints( xvals, yvals, newx, method)

end

