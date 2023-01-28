function comp_midpoint_rule(f,lowl, upl,nsteps, varargin)
% HELP. COMPOSITE midpoint rule method. Some numerical calculations
%       and analysis exercises of Numeric Integration for comparison analysis
%
%       f function is given in terms of a symbolic variable x and expressed
%       as an inline function. E.g., f=inline('x^2+2*x-2'). Also, if the
%       function f is trigonometric function, the 4th argument can be 
%       entered as 'trigonom' or just 'trig' or 1. X is expected to be in 
%       degrees for trigonometric function evaluations. The number of steps 
%       NSTEPS has to be even.
%       upl and lowl are upper and lower limits. NB: Sequence order of
%       limits is unnecessary to follow, 'if' conditions will take care of 
%       lower and upper limits accordingly.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Written by Sulaymon L. ESHKABILOV, Ph.D
%                         October, 2011
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
if rem(nsteps,2)~=0
    
    display(' So re-enter new even NSTEPS!!!')
    error(' NSTEPS must be even ')
    
end
if nargin==4
    if upl>lowl
        hsize =(upl-lowl)/(nsteps+2);
        x0 = lowl;
        n  = 0:1:nsteps;
        x  = x0+(n-1).*hsize;
        F  = 2*hsize*f(x(1));
        
        for jj = 2:nsteps/2;
            F  = F+2*hsize*(f(x(2*jj)));
        end
        
    else
        hsize =(lowl-upl)/(nsteps+2);
        x0 = upl;
        mm = 0:nsteps;
        x  = x0+(mm-1).*hsize;
        F  = 2*hsize*f(x(1));
        for ii=2:nsteps/2;
            F=F+2*hsize*f(x(2*ii));
        end
        
    end
else
    if upl>lowl
        hsize =(upl-lowl)/(nsteps+2);
        x0 = lowl;
        k  = 0:nsteps;
        x  = deg2rad(x0+(k-1).*hsize);
        F  = 2*hsize*f(deg2rad(x(1)));
        for jj=2:nsteps/2;
            F=F+2*deg2rad(hsize)*f(x(2*jj));
        end
        
    else
        hsize =(lowl-upl)/(nsteps+2);
        x0 = upl;
        m  = 0:nsteps;
        x  = deg2rad(x0+(m-1).*hsize);
        F  = 2*hsize*f(deg2rad(x(1)));
        for ii=2:nsteps/2;
            F=F+2*deg2rad(hsize)*f(x(2*ii));
        end
        
    end
end
display(F);
return;