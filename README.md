# 💻 My Dotfiles | ملفات إعدادات بيئة العمل

> ملفات الإعدادات (Dotfiles) الشخصية لتهيئة بيئة العمل الخاصة بي على Linux/Unix، مع التركيز على الكفاءة والجمالية.

هنا بتحفظ كل إعدادات البرامج عشان أقدر أنقلها بسهولة لأي جهاز جديد.

---

## 🚀 نظرة سريعة على المكونات الأساسية

| المكون | الوصف | المسار التقريبي |
| :--- | :--- | :--- |
| **🖼️ Hyprland** | مدير النوافذ (Window Manager) على Wayland. | `~/.config/hypr/` |
| **📝 LazyVim** | إعدادات محرر النصوص Neovim مع الإضافات الخاصة بي. | `~/.config/nvim/` |
| **🐚 Shell** | الإعدادات الخاصة بـ [Zsh/Bash] مع الـPrompt. | `~/.config/zsh/` أو `~/.bashrc` |
| **⌨️ Terminal** | إعدادات برنامج الطرفية (مثل Kitty, Alacritty, WezTerm). | `~/.config/[Terminal Name]/` |
| **📊 Bar/Panel** | إعدادات الشريط العلوي/الجانبي (مثل Waybar أو Polybar). | `~/.config/waybar/` |

---

## 🛠️ تفاصيل الإعدادات (Configuration Deep Dive)

### 1. 🖼️ Hyprland (Wayland)

الإعدادات الرئيسية لبيئة سطح المكتب. بتشمل تقسيم الشاشات، الـKeybinds (اختصارات لوحة المفاتيح)، والمؤثرات البصرية (Animations).

* **المميزات الرئيسية:**
    * [اذكر ميزة: مثلاً Keybinds مخصصة للتنقل].
    * [اذكر ميزة: مثلاً ثيم ألوان مريح].

### 2. 📝 LazyVim / Neovim

الإعدادات المتقدمة لـNeovim، مبنية على LazyVim. موجهة لتطوير [اذكر التخصص: مثلاً Python, Web Development, إلخ].

* **الإضافات المهمة (Plugins):**
    * [اسم إضافة: مثلاً Telescope] للبحث السريع.
    * [اسم إضافة: مثلاً LSPs] لدعم اللغات البرمجية.

### 3. ⌨️ Shell & Terminal

تخصيص كامل للـShell لتوفير بيئة طرفية سريعة وسهلة الاستخدام.

* **Shell:** [Zsh] مع Framework [Oh My Zsh / Zinit / Prezto].
* **Prompt:** بستخدم [اسم الـPrompt: مثلاً Starship أو Powerlevel10k].

---

## 📦 التثبيت والاستخدام (Installation Guide)

عشان تستخدم الـDotfiles دي على جهازك، يُفضل استخدام أداة لإدارة الـDotfiles مثل **GNU Stow** أو ببساطة عمل **Symlinks** يدويًا.

### ⚠️ تحذير:

قبل التثبيت، يجب عمل نسخة احتياطية من ملفات الإعدادات الحالية بتاعتك. التثبيت ده هيمسح أي إعدادات قديمة موجودة في مسارات الـ`.config`.

### الخطوات (Symlinks Example):

1.  **استنساخ الريبوزيتوري (Clone):**
    ```bash
    git clone [https://github.com/](https://github.com/)[اسم المستخدم بتاعك]/[اسم الريبوزيتوري].git ~/Dotfiles
    cd ~/Dotfiles
    ```

2.  **إنشاء الروابط الرمزية (Symlinks):**
    ```bash
    # مثال لربط Hyprland
    ln -sfn "$PWD/.config/hypr" "$HOME/.config/hypr"

    # مثال لربط Neovim/LazyVim
    ln -sfn "$PWD/.config/nvim" "$HOME/.config/nvim"

    # كرر الخطوة دي لكل المجلدات اللي عندك في الريبوزيتوري
    ```
    *(ممكن تعمل سكريبت Bash بسيط يسهل عملية إنشاء الـSymlinks بدل ما تعملهم واحد واحد.)*

---

## ✨ لقطات شاشة (Showcase)

*(ضيف هنا صور حلوة للإعدادات بتاعتك وهي شغالة عشان الناس تشوف شكلها النهائي)*

---

## 📜 الترخيص (License)

المشروع ده مرخص تحت رخصة **MIT License**. تقدر تشوف الملف الكامل للترخيص [LICENSE.md](LICENSE.md) لو حبيت.
