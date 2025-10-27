
## 🚀 نظرة عامة (Overview)

الريبوزيتوري ده بيحتوي على ملفات إعدادات البرامج الرئيسية اللي بستخدمها:

| الإعداد (Configuration) | الوصف المختصر |
| :---------------------- | :------------ |
| **[اسم البيئة/البرنامج]** | الإعدادات الخاصة بالبيئة/البرنامج. |
| **[LazyVim]** | إعدادات محرر النصوص [Nvim/LazyVim] مع الإضافات الخاصة بي. |
| **[Hyprland]** | إعدادات مدير النوافذ [Hyprland] والـBar (مثل Waybar). |
| **[Zsh/Bash]** | إعدادات الـShell مع الإضافات (مثل Oh My Zsh أو Zinit). |
| **[Terminal Emulator]** | إعدادات برنامج الطرفية (مثل Kitty, Alacritty, أو WezTerm). |

---

## 🛠️ المكونات الرئيسية (Key Components)

هنا شرح مفصل لأهم الإعدادات اللي بستخدمها:

### 1. 🟣 LazyVim / Neovim Configuration

ملفات الإعدادات الخاصة بمحرر النصوص **LazyVim** (مبني على Neovim). الإعدادات دي متخصصة في [اذكر التخصص: مثلاً تطوير الويب، البايثون، إلخ] وتتضمن:

* **المسار:** `~/.config/nvim/`
* **الإضافات (Plugins):** [اذكر الإضافات المهمة زي LSP, Treesitter, إلخ]
* **المميزات:** [اذكر مميزات زي الـKeymaps الخاصة بيك أو الـThemes]

### 2. 🖥️ Hyprland Window Manager

إعدادات مدير النوافذ المتطور **Hyprland** على Wayland. الملفات دي بتحدد شكل وأداء بيئة الديسك توب بالكامل:

* **المسار:** `~/.config/hypr/`
* **الإعدادات:**
  * `hyprland.conf`: الإعدادات الأساسية والمفاتيح (Keybinds).
  * `hyprlock.conf`: إعدادات شاشة القفل.
* **الـBar (الشريط):** بستخدم [اسم الـBar مثل Waybar] وإعداداته موجودة في `~/.config/[اسم الـBar]`.

### 3. 🐚 Shell & Terminal

* **Shell:** بستخدم **[Zsh/Bash]** مع [اسم الـFramework/Plugin Manager مثل Oh My Zsh أو Zplug].
* **Terminal:** بستخدم **[اسم برنامج الطرفية]** (مثل Alacritty) بالثيم والألوان دي.

---

## 📦 التثبيت والاستخدام (Installation & Usage)

لو حابب تستخدم الإعدادات دي على جهازك:

### متطلبات التثبيت المسبقة (Prerequisites)

* [Git]
* [اللغة البرمجية المطلوبة مثل Python أو Lua لو بتستخدمها]

### طريقة النشر (Deployment)

أفضل طريقة لتثبيت الـDotfiles هي عن طريق [اذكر طريقتك: مثلاً `GNU Stow`, `Symlinks` يدوي, أو سكريبت مخصص].

#### مثال باستخدام Symlinks يدويًا

1. **استنساخ الريبوزيتوري (Clone):**

    ```bash
    git clone [https://github.com/](https://github.com/)[اسم المستخدم]/[اسم الريبوزيتوري].git
    cd [اسم الريبوزيتوري]
    ```

2. **إنشاء الـSymlinks:**
    *(تحذير: الأمر ده هيمسح إعداداتك القديمة. إعمل نسخ احتياطي الأول.)*

    ```bash
    # مثال لـLazyVim
    ln -sfn "$PWD/.config/nvim" "$HOME/.config/nvim"

    # مثال لـHyprland
    ln -sfn "$PWD/.config/hypr" "$HOME/.config/hypr"
    ```

---

## 📸 لقطات شاشة (Screenshots)

*(حط هنا صور حلوة للديسك توب بتاعك عشان الناس تشوف شكل الإعدادات في النهاية)*

---

## 🤝 المساهمة (Contributing)

أي اقتراحات أو تحسينات مرحب بيها! لو عندك فكرة:

1. اعمل Fork للريبوزيتوري.
2. اعمل Branch جديد للتعديلات بتاعتك (`git checkout -b feature/AmazingFeature`).
3. اعمل Commit للتغييرات (`git commit -m 'Add some AmazingFeature'`).
4. اعمل Push للـBranch (`git push origin feature/AmazingFeature`).
5. افتح **Pull Request**.

---

## 📜 الترخيص (License)

المشروع ده مرخص تحت رخصة [اسم الرخصة، مثل MIT].
