-module(queues). 
-import(lists,[append/2]). 
-export([start/0]). 

start() -> 
    Lst1 = [1,2,3], 
    Lst2 = lists:append(Lst1, [4,5]),
    io:fwrite("~w~n", [Lst1]),
    io:fwrite("~w~n", [Lst2]).
