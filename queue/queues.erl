-module(queues). 
-import(lists,[append/2]). 
-export([start/0, user_input/0, increase_queue/2]). 



start() -> 
    Lst1 = [1,2,3], 
    % Lst2 = lists:append(Lst1, [4,5]),
    io:fwrite("~w~n", [Lst1]),
    % io:fwrite("~w~n", [Lst2]),

    Term = user_input(),
    increase_queue(Term, Lst1).

user_input() ->
    {ok, Term} = io:read("Enter a number: "),
    io:format("The number you entered is: ~w~n", [Term]),
    Term.

increase_queue(Term, Lst1) ->    
    Lst2 = lists:append(Lst1, [Term]),
    io:fwrite("~w~n", [Lst2]).

    % Lst1.


