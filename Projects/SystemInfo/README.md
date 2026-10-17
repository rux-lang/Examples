# SystemInfo

Open a window that shows the Windows edition, version and build, the processor, and the memory. The values come from the Win32 calls in the Windows package, and the program draws them with GDI in a classic window with a message loop.

**You'll need:** Parts 1–24 — this project is a checkpoint for Platform, and leans on [Extern](https://rux-lang.dev/docs/learn/extern), [CInterop](https://rux-lang.dev/docs/learn/c-interop), [Target](https://rux-lang.dev/docs/learn/target) and [CompileError](https://rux-lang.dev/docs/learn/compile-error).

**Windows only**, written for Windows 11, which it tells apart from Windows 10 by its build number. Windows 10 from version 1703 runs it too, since that is when the per-monitor scaling it asks for arrived. On any other system the build stops with an error that says so.

```sh
rux run
```

A window titled "System Information" opens and stays until you close it. On an 8-core machine it reads:

```text
Windows
  Edition             Windows 11 Pro
  Version             26H2
  OS build            26300.9711
  Kernel version      10.0.26300
  Architecture        64-bit, x64
Processor
  Name                11th Gen Intel(R) Core(TM) i9-11900KF @ 3.50GHz
  Base speed          3.50 GHz
  Cores               8
  Logical processors  16
Memory
  Installed           64.0 GB
  Usable              63.8 GB
  Available           51.1 GB
  In use              19%
```

Read the project: https://rux-lang.dev/docs/learn/system-info
