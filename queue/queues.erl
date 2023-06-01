-module(queues). 
-import(lists,[append/2, delete/2, nth/2]). 
-export([start/0, user_input/0, add_to_queue/2, check_queue_len/1, remove_var_queue/1]). 


start() -> 
    Lst1 = [1,2,3], 
    io:fwrite("~w~n", [Lst1]),

    Term = user_input(),
    Lst2 = add_to_queue(Term, Lst1),
    Check = check_queue_len(Lst2),
    io:fwrite(Check),
    Lst3 = remove_var_queue(Lst2).


user_input() ->
    {ok, Term} = io:read("Enter a number: "),
    io:format("The number you entered is: ~w~n", [Term]),
    Term.


add_to_queue(Term, Lst1) ->    
    Lst2 = lists:append(Lst1, [Term]),
    io:fwrite("~w~n", [Lst2]),
    Lst2.

remove_var_queue(Lst) ->
    Var = nth(1,Lst),
    Lst3 = delete(Var, Lst),
    % io:fwrite("~w~n\n", [Lst4]).
    Lst3.


check_queue_len(Lst2) ->
    % Queue len is set to 4
    % Checks to see if the len of queue is at 4
    if 
      length(Lst2) == 4 -> 
        % io:fwrite("True\n"),
        Check = true;
        
      true -> 
        % io:fwrite("False\n"),
        Check = false
    end,
    Check.


