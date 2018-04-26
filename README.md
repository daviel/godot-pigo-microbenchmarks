# Godot-Benchmarks

This are a few benchmarks for testing the pure performance of Godot. See https://github.com/daviel/Love2D-Benchmarks for same implementations in Love2D.
I always used a exported binary for testing the performance as they are faster.

Useful optimizations(I found so far):
- Descrease the cell size of the physics engine
- Use 32-Bit export as it has a better performance(32-Bit Floats rather than 64 bits are faster)**Only Godot 2**
- Use 64-Bit export as it has a better performance**Only Godot 3*

## Benchmarking
- Every benchmark runs for a fixed time(8 seconds by default) and counts every rendered frame
- After running a benchmark it prints the final score to your terminal

You can tweak the benchmark by setting the object count in the code, change the running time or tweaking the physics engine.

## Results

**Godot 2.1.4**, i5-6260U CPU @ 1.80GHz, Mesa 17.3.8 DRI Intel(R) Iris Graphics 540 (Skylake GT3e), Debian(testing) GNU/Linux Kernel 4.15

| Benchmark | n | Average | Minimum | Maximum | Time(sec) | Object Count |
| --- | --- | --- | --- | --- | --- | --- |
| Circle Physics | 5 | 5904.2 | 4570 | 6295 | 8 | 2000 |

**Godot 3.0.2**, i5-6260U CPU @ 1.80GHz, Mesa 17.3.8 DRI Intel(R) Iris Graphics 540 (Skylake GT3e), Debian(testing) GNU/Linux Kernel 4.15

| Benchmark | n | Average | Minimum | Maximum | Time(sec) | Object Count |
| --- | --- | --- | --- | --- | --- | --- |
| Circle Physics | 5 | 14888 | 12955 | 16115 | 8 | 2000 |


## Project
I will add some more benchmarks every now and then and will write down every optimization I found. I am open for any contribution and information on improving my benchmarks as well as suggestions what should be implemented.

## Background
I came from using the godot engine to use Love2D as I found many bottlenecks in the performance of godot. Some while ago I developed a small prototype 2D-game which had alle functionality I wanted but came to the point where the performance of godot wasn't good enough. As I targeted a Raspberry Pi 3 performance was crucial. But even on my development machine I had quite a few frame drops. Maybe I will add the same benchmarks implemented in godot later on.
