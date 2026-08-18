/**
 * Seeded randomness — the only randomness that exists at capture time
 * (the harness stubs Math.random to fail the build by name). A figure that
 * wants a cloud of initial conditions seeds with any string and gets the
 * same cloud on every mount, every capture, every machine.
 */

/** rng("clouds-1") → a () => number in [0, 1), deterministic in the seed. */
export function rng(seed) {
  let h = 1779033703 ^ seed.length; // xmur3 string hash → 32-bit state
  for (let i = 0; i < seed.length; i++) {
    h = Math.imul(h ^ seed.charCodeAt(i), 3432918353);
    h = (h << 13) | (h >>> 19);
  }
  let a = (h ^= h >>> 16) >>> 0;
  return () => { // mulberry32
    a |= 0; a = (a + 0x6d2b79f5) | 0;
    let t = Math.imul(a ^ (a >>> 15), 1 | a);
    t = (t + Math.imul(t ^ (t >>> 7), 61 | t)) ^ t;
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
  };
}
