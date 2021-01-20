# Functions

As I want a multi-paradigm language we need a way of specifying functions of various forms.

## Imperative

```
function do_something (<params>) is
end function do_something
```

## Oberon-2 syntax for objects

So it would be something like this:

```
function (object : object_type) do_something (<params>) is
    object.x := 3
end function do_something
```

Or?

```
function (object_type) do_something (<params>) is
    self.x := 3
end function do_something
```

Or something else?

```
function object_type::do_something (<params>) is
    self.x := 3
end function do_something
```

There is a trend towards using name first then a delimiter, then a keyword, e.g. ```main :: proc...``` from Odin and ```sum :: (x: float, y: float, z: float) -> float {``` from Jai.

```orenda
// Normal function.
add : function (left, right : in integer) return integer is
add : end

// Parametrised with T and with receiver o of type T.
function <T> (o : T) name (param : in out b) is
end name

// Different syntax to the above.
a : function <T> {o : T} (param : in out b) is
a : end

// Receiver defined in an aspect.
a : function <T> (param : in out b) with
  Receiver => (o : T)
```

I do want to be able to use [UFCS](http://ddili.org/ders/d.en/ufcs.html) which will enable dot function call syntax, i.e. ```object.op(args)```, so maybe the receiver type isn't necessary?

## Main functions

In languages such as C, C++, Java, etc. there exists the idea of a "main" function which is the entry point to an application. C and C++ require you to rename the resulting binary file, Java doesn't because it's "Main" function is static and embedded within a class which the filename is named after.

GNAT uses a different approach in that whatever file you pass to the compiler is used as the executable's filename. You can even use a subprogram which is a child unit of another module.

In this language, I intend to use a similar approach, but unlike Ada which takes any procedure or function, I will defined a specific main function.

```
function <name> is
    ...
end function <name>
```
