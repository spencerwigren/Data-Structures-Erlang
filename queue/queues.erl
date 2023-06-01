-module(queues). 
-import(lists,[append/2]). 
-export([start/0, user_input/0, add_to_queue/2, check_queue_len/1]). 


start() -> 
    Lst1 = [1,2,3], 
    io:fwrite("~w~n", [Lst1]),

    Term = user_input(),
    Lst3 = add_to_queue(Term, Lst1),
    Check = check_queue_len(Lst3),
    io:fwrite(Check).


user_input() ->
    {ok, Term} = io:read("Enter a number: "),
    io:format("The number you entered is: ~w~n", [Term]),
    Term.


add_to_queue(Term, Lst1) ->    
    Lst2 = lists:append(Lst1, [Term]),
    io:fwrite("~w~n", [Lst2]),
    Lst2.


check_queue_len(Lst3) ->
    if 
      length(Lst3) == 4 -> 
        % io:fwrite("True\n"),
        Check = true;
        
      true -> 
        % io:fwrite("False\n"),
        Check = false
    end,
    Check.


