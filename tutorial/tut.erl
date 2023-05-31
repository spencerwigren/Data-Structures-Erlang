-module(tut).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

% -export([hello_world/0, add/2, add/3]).
-export([main/0]).


%  Tutorial
% hello_world() ->
%     io:fwrite("Hello World\n").

% add(A,B) ->
%     hello_world(),
%     A + B.

% add(A, B, C) ->
%     A + B + C.

main() ->
    atom_stuff(),
    do_math(5, 4),
    create_map(),
    create_list(),
    go_through_list().

atom_stuff() ->
    io:fwrite("Hello World\n").

do_math(A, B) ->
    A + B,
    A rem B,
    math:log10(1000).

create_map() ->
    M = #{ a => 1, b => 2 },
    io:format("~Kp~n", [reversed, M]).

create_list() ->
    lists:append([[1,2,3],[a,b],[4,5,6]]).

go_through_list() ->
    lists:enumerate(2, [1, 2, 3]).