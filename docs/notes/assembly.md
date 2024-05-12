# Assembly Language

It should be possible to insert assembly language into a function somewhere.

* It's a possibly unsafe operation as the user could do anything here, the ```asm``` keyword is implicitly unsafe, i.e. no need to write ```unsafe asm```, but the function should be marked as unsafe.

```orenda
unsafe function Asm_Test is
    Label_Name: asm // TODO - Add a way to specify type of ASM? AT&T/Intel, do we need to?
        mov #1, r1
        mov #100, r2
        add r1, r2, r3
    end Label_Name
end Asm_Test
```
