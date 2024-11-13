function R = rndweib(varargin)
%RNDWEIB Random matrices a the Weibull distribution.
% 
% CALL:  R = rndweib(a,b,c,sz)
% 
% R      = a matrix of random numbers from the Weibull distribution
% a,b,c  = parameters of the Weibull distribution
%     sz = size(R)    (Default common size of a,b and c)
%          sz can be a comma separated list or a vector 
%          giving the size of R (see zeros for options).
%
% The Weibull distribution is defined by the distribution function
% 
%   F(x) = 1 - exp(-((x-c)/a)^b), x>=0, a,b>0
% 
% The random numbers are generated by the inverse method. 
%
% Example:
%   R = rndweib(1,10,0,1,100);
%   phat = plotweib(R);
%
%   close all;
%
% See also pdfweib,  cdfweib, invweib, fitweib, momweib

%
%     This program is free software; you can redistribute it and/or modify
%     it under the terms of the GNU Lesser General Public License as published by
%     the Free Software Foundation; either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU Lesser General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.


% Reference: Cohen & Whittle, (1988) "Parameter Estimation in Reliability
% and Life Span Models", p. 25 ff, Marcel Dekker.


% Tested on: matlab 5.3
% History: 
% revised pab 23.10.2000
%  - added comnsize
%  - added greater flexibility on the sizing of R
% rewritten ms 15.06.2000

%error(nargchk(1,inf,nargin))
narginchk(1,inf)
Np = 3;
%options = struct; % default options
options = [];
[params,options,rndsize] = parsestatsinput(Np,options,varargin{:});
% if numel(options)>1
%   error('Multidimensional struct of distribution parameter not allowed!')
% end
[a,b,c] = deal(params{:});

if isempty(c), c = 0;end


if isempty(rndsize)
  csize = comnsize(a,b,c);
else
  csize = comnsize(a,b,c,zeros(rndsize{:}));
end
if any(isnan(csize))
    error('a, b and c must be of common size or scalar.');
end

R = invweib(rand(csize),a,b, c);





