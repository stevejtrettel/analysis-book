/**
 * Frame clock reporting elapsed-while-running: pausing stops time, so a
 * figure paused off-screen resumes without jumping (the debugged-path note
 * adopted from prior art). Under capture, requestAnimationFrame timestamps
 * are frozen, so the boot frame is exactly t = 0.
 */

export function clock(onFrame) {
  let running = false;
  let raf = 0;
  let last = null; // null → first frame after (re)start contributes dt = 0
  let elapsed = 0;

  function frame(ts) {
    if (!running) return;
    const dt = last === null ? 0 : (ts - last) / 1000;
    last = ts;
    elapsed += dt;
    onFrame(dt, elapsed);
    raf = requestAnimationFrame(frame);
  }

  return {
    start() {
      if (running) return;
      running = true;
      last = null;
      raf = requestAnimationFrame(frame);
    },
    stop() {
      running = false;
      cancelAnimationFrame(raf);
    },
    get running() { return running; },
    get elapsed() { return elapsed; },
  };
}
