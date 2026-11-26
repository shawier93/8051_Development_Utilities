# LCD Greeting

Display a null-terminated message stored in program memory. DPTR advances through the message, and each character is sent to the LCD.

## Program flow

1. Load the address of the message.
2. Read a character using MOVC.
3. If the character is zero, stop. Otherwise, write it to the LCD and increment DPTR.

[Assembly source](source.asm) · [Control flow](Control%20Flow.md)
