# Memory Safety

> ARM 13.9.1discusses data validity and ways an invalid value can be created. It does not mention address overlays, unchecked unions, dereferencing address-to-access conversions, or dereferencing an access to reallocated memory.
>
> -- [jrcarter](https://www.reddit.com/r/ada/comments/mfle4d/not_counting_readbeforewrite_is_ada_memorysafe/)

* Only allow addresses to be assigned once?
* Only allow in unsafe modules/functions.
  * See rust's unsafe pollution, at which point does a module become safe?
* Disallow assignment of zero to an address? Some MCU's do have things at address zero, like Cortex-M0's boot vector. Might want to be able to access it from higher level code. Put in another restriction for this?? Allow_Null_Address aspect?
* Allow different allocators, i.e. for GC, Heap, Arena, etc.
  * e.g. ```thing := new (Allocators.GC) object (params)```
