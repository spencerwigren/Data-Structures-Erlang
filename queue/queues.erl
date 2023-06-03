-module(queues).
-import(lists, [delete/2, nth/2, append/2]).
-export([start/0, remove_var_queue/1, increase_queue/2, user_input/0, output/1]).


start() ->
    Lst = [1,2,3],
    output(Lst),
    
    UserInput = user_input(),
    Lst6 = increase_queue(Lst, UserInput),
    io:fwrite("New List: ~w~n", [Lst6]),

    Lst5 = remove_var_queue(Lst6),
    io:fwrite("Final List: ~w~n", [Lst5]).


remove_var_queue(Lst) ->
    Term = nth(1, Lst),
    io:fwrite("Term: ~w~n", [Term]),
    io:fwrite("List: ~w~n", [Lst]),

    Lst1 = lists:delete(Term, Lst),

    Term1 = nth(1, Lst1),
    io:fwrite("Term: ~w~n", [Term1]),
    io:fwrite("List: ~w~n", [Lst1]),

    Lst2 = lists:delete(Term1, Lst1),
    
    Term2 = nth(1, Lst2),
    io:fwrite("Term: ~w~n", [Term2]),
    io:fwrite("List: ~w~n", [Lst2]),

    Lst3 = lists:delete(Term2, Lst2),  
    
    Term3 = nth(1, Lst3),
    io:fwrite("Term: ~w~n", [Term3]),
    io:fwrite("List: ~w~n", [Lst3]),

    Lst7 =  lists:delete(Term3, Lst3),

    Lst7.


increase_queue(Lst, I) -> 
    Lst4 = lists:append(Lst, [I]),
    Lst4. 


user_input() -> 
    {ok, I} = io:read("Enter a number: "),
    io:format("The number you enterd is: ~w~n", [I]),
    I.


output(Lst) -> 
    io:fwrite("~w~n", [Lst]).

