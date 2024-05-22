.class public abstract Lcom/miui/systemui/MiuiKeyboardShortcuts$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static show(IZLandroid/content/Context;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->instance:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    iget-object v3, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->keyboardShortcutsDialog:Landroid/app/Dialog;

    .line 8
    const/4 v4, 0x1

    .line 10
    if-eqz v3, :cond_0

    .line 11
    move v3, v4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v2

    .line 15
    :goto_0
    if-eqz v3, :cond_2

    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    iget-object v0, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->keyboardShortcutsDialog:Landroid/app/Dialog;

    .line 21
    if-nez v0, :cond_1

    .line 23
    move-object v0, v1

    .line 25
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    goto :goto_1

    .line 32
    :cond_2
    move v4, v2

    .line 33
    :goto_1
    if-eqz v4, :cond_4

    .line 34
    sget-object p0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->instance:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 36
    if-eqz p0, :cond_3

    .line 38
    invoke-static {p0}, Lcom/miui/systemui/MiuiKeyboardShortcuts;->access$dismissDialog(Lcom/miui/systemui/MiuiKeyboardShortcuts;)V

    .line 40
    :cond_3
    return-void

    .line 43
    :cond_4
    sget-object v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->instance:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 44
    if-nez v0, :cond_5

    .line 46
    new-instance v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    move-result-object v3

    .line 53
    invoke-direct {v0, v3}, Lcom/miui/systemui/MiuiKeyboardShortcuts;-><init>(Landroid/content/Context;)V

    .line 54
    sput-object v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->instance:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 57
    :cond_5
    sget-object v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->instance:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 59
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    sget-object v3, Lcom/miui/systemui/MiuiKeyboardShortcutsData;->specialCharacterDrawables:Landroid/util/SparseArray;

    .line 64
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 66
    sget-object v4, Lcom/miui/systemui/MiuiKeyboardShortcutsData;->modifierDrawables:Landroid/util/SparseArray;

    .line 69
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 71
    const v5, 0x7f081073    # @drawable/ic_miui_ksh_meta_wrapper 'res/drawable/ic_miui_ksh_meta_wrapper.xml'

    .line 74
    invoke-virtual {p2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 77
    move-result-object v6

    .line 80
    const/16 v7, 0x75

    .line 81
    invoke-virtual {v3, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    const v6, 0x7f08102e    # @drawable/ic_ksh_key_backspace 'res/drawable/ic_ksh_key_backspace.xml'

    .line 86
    invoke-virtual {p2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 89
    move-result-object v6

    .line 92
    const/16 v7, 0x43

    .line 93
    invoke-virtual {v3, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    const v6, 0x7f081030    # @drawable/ic_ksh_key_enter 'res/drawable/ic_ksh_key_enter.xml'

    .line 98
    invoke-virtual {p2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 101
    move-result-object v6

    .line 104
    const/16 v7, 0x42

    .line 105
    invoke-virtual {v3, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    const v6, 0x7f081034    # @drawable/ic_ksh_key_up 'res/drawable/ic_ksh_key_up.xml'

    .line 110
    invoke-virtual {p2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 113
    move-result-object v6

    .line 116
    const/16 v7, 0x13

    .line 117
    invoke-virtual {v3, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    const v6, 0x7f081033    # @drawable/ic_ksh_key_right 'res/drawable/ic_ksh_key_right.xml'

    .line 122
    invoke-virtual {p2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 125
    move-result-object v6

    .line 128
    const/16 v7, 0x16

    .line 129
    invoke-virtual {v3, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    const v6, 0x7f08102f    # @drawable/ic_ksh_key_down 'res/drawable/ic_ksh_key_down.xml'

    .line 134
    invoke-virtual {p2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 137
    move-result-object v6

    .line 140
    const/16 v7, 0x14

    .line 141
    invoke-virtual {v3, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    const v6, 0x7f081031    # @drawable/ic_ksh_key_left 'res/drawable/ic_ksh_key_left.xml'

    .line 146
    invoke-virtual {p2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 149
    move-result-object v6

    .line 152
    const/16 v7, 0x15

    .line 153
    invoke-virtual {v3, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    const/high16 v3, 0x10000

    .line 158
    invoke-virtual {p2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 160
    move-result-object v5

    .line 163
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 167
    move-result-object v3

    .line 170
    const/4 v4, -0x1

    .line 171
    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 172
    move-result-object v5

    .line 175
    invoke-virtual {v5}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 176
    move-result-object v5

    .line 179
    iput-object v5, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->backupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 180
    if-eq p0, v4, :cond_6

    .line 182
    invoke-virtual {v3, p0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 184
    move-result-object v5

    .line 187
    if-eqz v5, :cond_6

    .line 188
    invoke-virtual {v5}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 190
    move-result-object v1

    .line 193
    iput-object v1, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->keyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 194
    goto :goto_4

    .line 196
    :cond_6
    invoke-virtual {v3}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 197
    move-result-object v5

    .line 200
    array-length v6, v5

    .line 201
    :goto_2
    if-ge v2, v6, :cond_8

    .line 202
    aget v7, v5, v2

    .line 204
    invoke-virtual {v3, v7}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 206
    move-result-object v7

    .line 209
    invoke-virtual {v7}, Landroid/view/InputDevice;->getId()I

    .line 210
    move-result v8

    .line 213
    if-eq v8, v4, :cond_7

    .line 214
    invoke-virtual {v7}, Landroid/view/InputDevice;->isFullKeyboard()Z

    .line 216
    move-result v8

    .line 219
    if-eqz v8, :cond_7

    .line 220
    invoke-virtual {v7}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 222
    move-result-object v1

    .line 225
    iput-object v1, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->keyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 226
    goto :goto_4

    .line 228
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 229
    goto :goto_2

    .line 231
    :cond_8
    iget-object v2, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->backupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 232
    if-nez v2, :cond_9

    .line 234
    goto :goto_3

    .line 236
    :cond_9
    move-object v1, v2

    .line 237
    :goto_3
    iput-object v1, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->keyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 238
    :goto_4
    const-string/jumbo v1, "window"

    .line 240
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 243
    move-result-object v1

    .line 246
    check-cast v1, Landroid/view/WindowManager;

    .line 247
    new-instance v2, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcuts$listener$1;

    .line 249
    invoke-direct {v2, p2, v0}, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcuts$listener$1;-><init>(Landroid/content/Context;Lcom/miui/systemui/MiuiKeyboardShortcuts;)V

    .line 251
    invoke-interface {v1, v2, p0}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    .line 254
    sput-boolean p1, Lcom/miui/systemui/MiuiKeyboardShortcuts;->isSystem:Z

    .line 257
    return-void
    .line 259
.end method
