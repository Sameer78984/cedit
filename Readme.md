# Cedit

![Cedit Banner](https://capsule-render.vercel.app/api?type=waving&color=0:111827,100:2563eb&height=200&section=header&text=Cedit&fontSize=80&fontColor=ffffff&animation=fadeIn)

<p align="center">

<img src="https://img.shields.io/badge/Language-C-blue?style=for-the-badge&logo=c&logoColor=white" />

<img src="https://img.shields.io/badge/Platform-Linux-orange?style=for-the-badge&logo=linux&logoColor=white" />

<img src="https://img.shields.io/badge/Terminal-Based-000000?style=for-the-badge&logo=gnometerminal&logoColor=white" />

<img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" />

<img src="https://img.shields.io/github/stars/Sameer78984/cedit?style=for-the-badge&logo=github&color=yellow" />

<img src="https://img.shields.io/github/forks/Sameer78984/cedit?style=for-the-badge&logo=github" />

<img src="https://img.shields.io/github/issues/Sameer78984/cedit?style=for-the-badge&logo=github" />

<img src="https://img.shields.io/github/last-commit/Sameer78984/cedit?style=for-the-badge&logo=git" />

</p>

<p align="center">

<b>⚡ A lightweight terminal text editor written from scratch in C</b>

</p>

---

## 🚀 About

**Cedit** is a minimal Linux terminal-based text editor built in pure C.

It uses low-level Linux APIs such as:

- `termios` for raw terminal control
- `unistd` for system-level operations
- POSIX terminal handling
- Custom rendering engine

The goal is to understand how terminal editors work internally while keeping the program lightweight and fast.

---

## ✨ Features

- ⚡ Extremely lightweight
- 🖥️ Native Linux terminal support
- ⌨️ Raw keyboard input handling
- 🎛️ Custom terminal mode management
- 📄 File opening and saving
- 🧭 Cursor navigation
- 🔥 No external dependencies
- 🧠 Built from scratch in C

---

## 🛠️ Tech Stack

<p align="center">

<img src="https://skillicons.dev/icons?i=c,linux,bash,git,vim" />

</p>

---

## 📦 Installation

### Clone repository

```bash
git clone https://github.com/Sameer78984/cedit.git
```

### Enter directory

```bash
cd cedit
```

### Build

```bash
make
```

### Run

```bash
./cedit filename.txt
```

---

## ⌨️ Controls

| Key        | Action      |
| ---------- | ----------- |
| Arrow Keys | Move cursor |
| CTRL + S   | Save file   |
| CTRL + Q   | Quit editor |
| Page Up    | Scroll up   |
| Page Down  | Scroll down |

---

## 🖥️ Preview

```text
┌──────────────────────────────────┐
│ Cedit                            │
├──────────────────────────────────┤
│                                  │
│ #include <stdio.h>               │
│                                  │
│ int main()                       │
│ {                                │
│     printf("Hello Cedit");       │
│ }                                │
│                                  │
├──────────────────────────────────┤
│ CTRL-S Save       CTRL-Q Quit    │
└──────────────────────────────────┘
```

---

## 🧩 Architecture

```text
Cedit
│
├── Terminal Layer
│   └── termios raw mode
│
├── Input System
│   └── keyboard parsing
│
├── Editor Core
│   ├── cursor management
│   ├── text buffer
│   └── screen rendering
│
└── File System
    ├── file loading
    └── file saving
```

---

## 📊 Repository Stats

<p align="center">

<img src="https://github-readme-stats.vercel.app/api/pin/?username=Sameer78984&repo=cedit&theme=tokyonight" />

</p>

---

## 🌱 Future Improvements

- Syntax highlighting
- Multiple file buffers
- Search and replace
- Undo / redo system
- Mouse support
- Configuration file

---

## 🤝 Contributing

Contributions, issues and feature requests are welcome.

Feel free to open an issue or submit a pull request.

---

## ⭐ Support

If you like Cedit, consider giving the repository a star ⭐

<p align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=2563eb&height=120&section=footer" />

</p>
