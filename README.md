# FT_PRINTF

>For the ft_printf project of the 42 school core curriculum, we must recreate the famous C library printf function. 
>This project teaches us about variadic arguments as well as structures if we plan to implement printf's extra flags.

## Format specifiers
|Format<br>Specifier|Description                                                                    |
|:-----------------:|:-----------------------------------------------------------------------------:|
|%                  |% followed by another % character writes % to the screen.                      |
|s                  |writes a character string.                                                     |
|c                  |writes a single charactes.                                                     |
|p                  |writes an implementation-defined character sequence defining a pointer address.|
|i                  |writes a signed integer to decimal representation.                             |
|d                  |writes a signed integer to decimal representation.                             |
|u                  |writes an unsigned integer to decimal representation.                          |
|x or X             |writes an unsigned integer to hexadecimal representation.                      |

## Status
>Finished 22.03.2024 Grade: 100/100%
## Usage

- Run ```make``` to create an object files.

## To test it
>Lets first create a main file:
```c
/* Include the header */
#include "ft_printf.h"

int main(void)
{
	char str[] = "Student!";
	int num = 42;
	ft_printf("The result is: %d %s\n", num, str);
	ft_printf("The adress of Student is: %p\n", str);
	ft_printf("The hexadecimal of 42 is: %x\n", num);
	return (0);
}
```
>Compile the ```main.c``` file with the ft_printf library and run the program:
```
    gcc main.c libftprintf.a
    ./a.out
```
### The output should be:
```
    The result is: 42 Student!
    The adress of Student is: 0x7ff7bb3cb33f
    The hexadecimal of 42 is: 2a
```

##
  Made by **ryusupov** | ryusupov@student.42heilbronn.de | [yusucoder.com](yusucoder.vercel.app/) | [linkedIn](in/rustam-yusupov-1b0693226)
