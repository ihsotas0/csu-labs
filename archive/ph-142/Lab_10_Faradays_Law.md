---
title: "Lab 10: Faraday's Law"
author: "Elias Faughn, Alec Gray, Jonah Spector"
date: 2025-04-10
---

# Introduction

Magnetic induction is a core principle in electronics, especially in electricity
generation and transformers. Faraday’s law of induction,
$\mathcal{E}=-N\frac{d\Phi_B}{dt}$, describes how a changing magnetic field
induces an electromotive force in a conductor (N is normally 1 but represents
the number of turns of a coil). This principle is what allows generators to
create a voltage from mechanical rotation caused by steam, wind, water, and
other natural forces. Transformers use this principle to transform electricity
between high and low voltage, while not wasting power like a resistor, since the
current adjusts to preserve the expression $P=VI$. Induction is used extensively
in power generation and delivery making it essential for a functioning
electrical grid.

# Problem 1: Induction and the AC Question

**Materials:** Magnet, coil, Galvanometer.

**Methods:** Assemble Galvanometer--coil circuit, move bar magnet through the
coil, take note of galvanometer reading as magnet is moved. The coil should be
coiled counterclockwise when viewed from the top.

**Results:** As the south pole of the magnet is inserted into the top of the
coil, the reading on the galvanometer jumps to the negative side. As the south
pole is removed, the galvanometer jumps to the positive side. The opposite
occurs when the North pole is used.

**Analysis:** To produce a constant e.m.f. of positive 10 V, the change in
magnetic flux would have to be constant. This could be achieved by rotating the
magnet at a constant velocity. To get the largest deflection of the needle, you
would need to get the largest change in magnetic flux, which is simply done by
moving the magnet as fast as possible. When the magnet spins instead of moving
in and out, the direction of the change in magnetic flux alternatives, which in
term creates an alternating e.m.f., which creates an alternating (AC) current.

# Problem 2: Coils and Coils

**Materials:** 2 coils with different numbers of loops, an iron core, the
Galvanometer, 10 V AC power supply.

**Methods:** Assemble the two coils on the iron core, and connect these to both
the galvanometer and the power supply. Power up the power supply and take note
of the behavior of the galvanometer. 

**Results:** Upon powering up the coils with a DC current, the galvanometer
immediately jumps to one side (the positive one in our case although it depends
on how it is wired, then falls back to zero). Upon turning off the DC current,
the galvanometer jumped in the other direction, negative, before falling back to
zero.

Applying an AC current to the coils will cause the needle on the galvanometer to
rapidly alternate between the positive and negative. Having a smaller number of
turns hooked up to the AC than the galvanometer creates a larger impulse while
the opposite ratio creates a smaller movement. Having a larger ratio between the
number of turns on each coil increases this effect.

When the top of the iron core was removed with the current on, it rattled and
shook. Upon turning off the power supply, the top was difficult to remove as it
had been magnetized to the rest of the core. When replacing the galvanometer for
a multimeter set to measure voltage for alternating current, the resulting
voltage is the ratio of turns on the coils times the voltage of the attached
power supply.

**Analysis:** Transformers work using magnetization and induction on two sets of
coils connected by a ferrous core. The first coil creates a changing magnetic
flux in the core as its current alternates. The changing magnetic flux then
induces a current in the second coil which creates another alternating current.
This can be shown like so, with two coils (a) and (b):

$$ V_A = -N_A\frac{d\Phi_B}{dt} \qquad V_B = -N_B\frac{d\Phi_B}{dt}$$

Since the magnetic flux is carryed through the core, it can be assumed equal at
each coil. Solving for the flux and substituting:

$$ \frac{V_A}{N_A} = \frac{V_B}{N_B} $$

$$ \frac{V_A}{V_B} = \frac{N_A}{N_B} $$

The ratio of the voltages between the coils is directly proportional to the
ratio of the number of turns. Since power is also conserved (there is no
resistor to disipate power as heat), the ratio of currents in each coil is:

$$ P = V_A I_A = V_B I_B \implies \boxed{\frac{V_A}{V_B} = \frac{N_A}{N_B}
=\frac{I_B}{I_A}} $$

Moreover, the reason the top part of the iron core stays magnetized and attracts
the bottom part is because it's field lines (the magnetic flux) form North and
South poles, which attract the opposite poles of the two connecting portions of
the magnetized "U-shaped" bottom part.

# Problem 3: The AM Radio

**Materials:** 200 turn coil, 800 turn coil, multimeter, 10 V AC power supply.

**Methods:** Connect the 200 turn coil to the power supply, and the 800 turn
coil to the multimeter. Power up the power supply and move the coils around each
other. Take note of the resultant voltage. Take the top of the iron core and
place it within the 200 turn coil, Take note of the resultant voltage as it is
moved around.

**Results:** When the 200 and 800 turn coils were put side by side, oriented the
same way, a 0.4 V voltage was detected on the voltmeter. When they were oriented
in opposite directions a 0.3 V was detected. When they were stacked in the same
orientation a 1.1 V was detected. When they were stacked in opposite directions,
a 0.9 V was detected. After the iron core was inserted into the 800 turn coil,
all the voltages were much larger. Side by side with the same orientation was
2.2 V while opposite was 1.9 V. Vertically stacked with the same orientation was
15 V while the opposite orientation was also 15 V.

**Analysis:** The reason that the two coils sensed each other without the
magnetized iron cores connecting them was due to the propagation of magnetic
fields in free space (air). The orientation mattered because the strength of the
magnetic field differs at different points relative to the source coil (200
turns). The antenna (800 turns) was able to sense the AM radio because when the
switching current in the source induces a switching magnetic field, this creates
a change in magnetic flux which creates an electric field and therefore a
current and voltage in the antenna as dictated by Maxwell's Laws, specifically
the Maxwell--Faraday Law of Induction: $\nabla\times\vec E = -\frac{\partial\vec
B}{\partial t}$ The iron core increased the sensing dramatically because the
magnetic field magnetized the core which increases the change in magnetic flux
which in turn increases the electric field which increases the current and
therefore the voltage.



# Conclusion

Electromagnetic induction is a prime example demonstrating the
interconnectedness between electricity and magnetism, the experiments we ran
helped us to understand this relationship in further detail. We started by
understanding that magnets can induce a current when moved through a coil. In
experiment two we determined that a transformer acts almost as an electrical
gearbox, with a relationship that follows $\frac{N_2}{N_1}V_S = V_R$. We finally
experimented with interacting magnetic fields between two coils, and by adding
the iron core to the coil, we ended up with an amplifier, showing a massive
increase in voltage, for example when vertically stacked inline, the measured
voltage went from 1.1V to 15V, and when inline and side by side, the voltage
went from 0.4V to 2.2V. These concepts are essential in electrical
generation/transmission and communications, where induction is either the
driving principle or a significant component of the concepts at play. Being able
to step between voltages is essential as the extreme voltages generated would
easily fry most consumer electronics almost instantly.



