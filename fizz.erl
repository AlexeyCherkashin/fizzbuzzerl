-module(fizz).
-export([print/0]).

print() -> forEach(lists:seq(1, 100)).

forEach([Head|Tail]) -> print(Head), forEach(Tail);
forEach([]) -> ok.


print(Head) when (Head rem 3 =:= 0) and (Head rem 5 =:= 0) -> io:format("FizzBuzz~n");
print(Head) when Head rem 3 =:= 0 -> io:format("Buzz~n");
print(Head) when Head rem 5 =:= 0 -> io:format("Buzz~n");
print(Head) -> io:format("~p~n", [Head]).