# godot-pigo-microbenchmarks

This are a few benchmarks for testing the pure performance of Godot on the PiGo (Raspberry Pi Zero W 2 handheld).
I also am collection example for thins that don't work. 

## Benchmarking
- Every benchmark runs for a fixed time and counts every rendered frame
- After running a benchmark it prints the final score to your terminal

You can tweak the benchmark by setting the object count in the code, change the running time or tweaking the physics engine.

## Results

**Godot 3.4.4**, Pi Zero W 2, Raspbian GNU/Linux 11 (bullseye), Linux pigo1 5.15.32-v7+ #1538 SMP Thu Mar 31 19:38:48 BST 2022 armv7l GNU/Linux, KMS

| Benchmark | Result | Parameters |
| --- | --- | --- |
| hugetilemapzoom | 311 | 128x128 |
| lights | 311 | - |
| physicspeak | 311 | 250 |
| lightsshadow | 311 | - |
| massphysics | 311 | 0.05 obj/s |
