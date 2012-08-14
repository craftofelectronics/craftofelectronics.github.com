---
layout: default
title: Flow for the Arduino
---

# Electronics... without programming

The challenge we face in *Craft of Electronics* is that we only have 14 weeks.
As we learn digital (and some analog) electronics in the context of the [Berea
Contrast House]({{ site.base }}/bereacontrasthouse/), we don't have time to program an Arduino in C++. **There simply is not time**.

## Getting Flow

Flow is available for [Mac](http://goo.gl/HNalJ),
[Windows](https://github.com/craftofelectronics/flow), and
[Linux](https://github.com/craftofelectronics/flow). If you have any problems,
please join the [users mailing
list](http://concurrency.cc/docs/mailinglists.html) at concurrency.cc. 

<p align="center">
  <img src="{{ site.base }}/images/flow-for-the-arduino.png" />
</p>

## How Does It Work?

Flow was developed to provide students a powerful way to program their Arduino.
Specifically, we look at our code as a **flow** of data from one block to the
next. Looking at the diagram above:

1. The first block says *Read Sensor*. It reads from pin A0, and sends the value (0-100) over the wire.
1. The second block says *Fade*. It reads a value flowing over the wire, and then sets the fade level of an LED on a pin. Here, we've selected pin 3.

That's it. We have a program that makes an LED brighter when a sensor is active, and lower when it is dormant. Because the data flows from one block to the next, we don't call these programs, but **flows**. 

# License

Flow is free and open software available under a GPL license. If you want to contribute to Flow in any way, join the [developers list](http://concurrency.cc/docs/mailinglists.html) at concurrency.cc. Or, give Matt an email directly.

The [Flow source](https://github.com/craftofelectronics/flow) can be found on Github.

Things that need doing:

* **Documentation**. It might be nice to have a series of flows that introduce the environment to new users.
* **Block sets**. It is easy to produce separate sets of blocks for different tasks. 
* **Python porting**. We have the beginnings of a pure-Python version of Flow. A bit of love, and we can re-implement things... without the web browser and wacky server component. 
* **Libraries**. If you're hardcore, we could use help developing libraries to support a wide array of Arduino sensors, motors, and peripherals.

