% -module(helloworld). 
% -export([len/1,start/0]). 

% len([]) -> 0; 
% len([_|T]) -> 1 + len(T). 

% start() -> 
%    X = [1,2,3,4], 
%    Y = len(X), 
%    io:fwrite("~w",[Y]).

-module(helloworld). 
-export([fac/1,start/0]). 

fac(N) when N == 0 -> 1; 
fac(N) when N > 0 -> N*fac(N-1). 

start() -> 
   X = fac(4), 
   io:fwrite("~w",[X]).