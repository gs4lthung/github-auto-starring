# ⭐ GitHub Auto-Star Script (AutoHotkey)

This is an **AutoHotkey automation script** that automatically stars repositories on a GitHub user's profile page by visually detecting the "Star" button and clicking it. It's useful for demonstrations, batch starring, or testing automation techniques.

---

## 📦 Features

- ✅ Automatically clicks visible "Star" buttons on a GitHub user page
- 🔄 Scrolls down the page to find more repositories
- 🖼️ Uses image recognition (pixel-perfect matching)
- ⚡ Lightweight and runs locally on Windows

---

## 🖥️ Requirements

- Windows OS
- [AutoHotkey](https://www.autohotkey.com/) installed
- A GitHub account (signed in)
- A screenshot of the "Star" button (`star_button.png`)

---

## 🚀 Setup Instructions

### 1. Clone or Download

Place these two files in a folder:

- `index.ahk` (the script)
- `star_button.png` (your screenshot of the GitHub "Star" button)

### 2. Take a Screenshot of the "Star" Button

- Open any GitHub repo list (e.g., `https://github.com/gs4lthung`)
- Use **Snipping Tool** or **ShareX**
- Save the image as `star_button.png`
- The image **must be cropped tightly** around the star icon and button

### 3. Run the Script

- Open the GitHub page and **maximize** your browser
- Double-click `index.ahk`
- Sit back and let it click and scroll automatically

---

## 🛠️ Optional: Hotkey Activation

To run the script with a hotkey like `Ctrl + Alt + S`, change the top of your script like this:

```ahk
^!s::  ; Ctrl + Alt + S
; [Insert main code here]
return
