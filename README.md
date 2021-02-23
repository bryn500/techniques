# techniques
repo of useful stuff

## Code performance
__Frugal Object__:
Collection that is specialized for holding 0, 1, 2 and falls back to array/list for more items
(Create your own collection)

__Pooling__:
Often used objects
Put them in a shared pool and rent them
Can change the data within, 
(Use ArrayPool)

__ZeroCopy__:
Getting subdata from intial data
Rather than copying, use slice
(Use Span<T>)

__Struct__:
Less references than class

__Struct of Arrays__:
Rather than a class that represents one, have a struct that contains arrays for each member property, fast but very ugly

__Buffered Builder__:
When making sequential changes to immutable type use a buffer.
(e.g. StringBuilder)
