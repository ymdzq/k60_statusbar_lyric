.class public final Lcom/android/systemui/statusbar/KeyboardShortcuts;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field static sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final mApplicationItemsComparator:Lcom/android/systemui/statusbar/KeyboardShortcuts$2;

.field public mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field mContext:Landroid/content/Context;

.field public final mDialogCloseListener:Lcom/android/systemui/statusbar/KeyboardShortcuts$1;

.field public final mHandler:Landroid/os/Handler;

.field public mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field mKeyboardShortcutsDialog:Landroid/app/Dialog;

.field public final mModifierDrawables:Landroid/util/SparseArray;

.field public final mModifierList:[I

.field public final mModifierNames:Landroid/util/SparseArray;

.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mSpecialCharacterDrawables:Landroid/util/SparseArray;

.field public final mSpecialCharacterNames:Landroid/util/SparseArray;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    .line 17
    new-instance v2, Landroid/util/SparseArray;

    .line 19
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 21
    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 24
    new-instance v3, Landroid/util/SparseArray;

    .line 26
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 28
    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    .line 31
    const/4 v4, 0x6

    .line 33
    new-array v4, v4, [I

    .line 34
    fill-array-data v4, :array_0

    .line 36
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierList:[I

    .line 39
    new-instance v4, Landroid/os/Handler;

    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 43
    move-result-object v5

    .line 46
    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v4, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;

    .line 52
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    .line 54
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDialogCloseListener:Lcom/android/systemui/statusbar/KeyboardShortcuts$1;

    .line 57
    new-instance v4, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;

    .line 59
    invoke-direct {v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;-><init>()V

    .line 61
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mApplicationItemsComparator:Lcom/android/systemui/statusbar/KeyboardShortcuts$2;

    .line 64
    new-instance v4, Landroid/view/ContextThemeWrapper;

    .line 66
    const v5, 0x1030223    # @android:style/Theme.DeviceDefault.Settings

    .line 68
    invoke-direct {v4, p1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 71
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 76
    move-result-object v4

    .line 79
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 80
    if-eqz p2, :cond_0

    .line 82
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mWindowManager:Landroid/view/WindowManager;

    .line 84
    goto :goto_0

    .line 86
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 87
    const-class v4, Landroid/view/WindowManager;

    .line 89
    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    move-result-object p2

    .line 94
    check-cast p2, Landroid/view/WindowManager;

    .line 95
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mWindowManager:Landroid/view/WindowManager;

    .line 97
    :goto_0
    const p0, 0x7f130582    # @string/keyboard_key_home 'Home'

    .line 99
    const/4 p2, 0x3

    .line 102
    const v4, 0x7f130578    # @string/keyboard_key_back 'Back'

    .line 103
    invoke-static {p1, p0, v0, p2, v4}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 109
    const/4 p2, 0x4

    .line 110
    invoke-virtual {v0, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    const p0, 0x7f13057f    # @string/keyboard_key_dpad_up 'Up'

    .line 114
    const/16 v4, 0x13

    .line 117
    const v5, 0x7f13057c    # @string/keyboard_key_dpad_down 'Down'

    .line 119
    invoke-static {p1, p0, v0, v4, v5}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 125
    const/16 v5, 0x14

    .line 126
    invoke-virtual {v0, v5, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    const p0, 0x7f13057d    # @string/keyboard_key_dpad_left 'Left'

    .line 131
    const/16 v6, 0x15

    .line 134
    const v7, 0x7f13057e    # @string/keyboard_key_dpad_right 'Right'

    .line 136
    invoke-static {p1, p0, v0, v6, v7}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 142
    const/16 v6, 0x16

    .line 143
    invoke-virtual {v0, v6, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    const p0, 0x7f13057b    # @string/keyboard_key_dpad_center 'Center'

    .line 148
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 154
    const/16 v7, 0x17

    .line 155
    invoke-virtual {v0, v7, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    const/16 p0, 0x38

    .line 160
    const-string v7, "."

    .line 162
    invoke-virtual {v0, p0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    const p0, 0x7f130591    # @string/keyboard_key_tab 'Tab'

    .line 167
    const/16 v8, 0x3d

    .line 170
    const v9, 0x7f130590    # @string/keyboard_key_space 'Space'

    .line 172
    invoke-static {p1, p0, v0, v8, v9}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 175
    move-result-object p0

    .line 178
    const/16 v8, 0x3e

    .line 179
    invoke-virtual {v0, v8, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    const p0, 0x7f130580    # @string/keyboard_key_enter 'Enter'

    .line 184
    const/16 v8, 0x42

    .line 187
    const v9, 0x7f130579    # @string/keyboard_key_backspace 'Backspace'

    .line 189
    invoke-static {p1, p0, v0, v8, v9}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 192
    move-result-object v9

    .line 195
    const/16 v10, 0x43

    .line 196
    invoke-virtual {v0, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    const v9, 0x7f130586    # @string/keyboard_key_media_play_pause 'Play/Pause'

    .line 201
    const/16 v11, 0x55

    .line 204
    const v12, 0x7f130589    # @string/keyboard_key_media_stop 'Stop'

    .line 206
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 209
    move-result-object v9

    .line 212
    const/16 v11, 0x56

    .line 213
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    const v9, 0x7f130585    # @string/keyboard_key_media_next 'Next'

    .line 218
    const/16 v11, 0x57

    .line 221
    const v12, 0x7f130587    # @string/keyboard_key_media_previous 'Previous'

    .line 223
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 226
    move-result-object v9

    .line 229
    const/16 v11, 0x58

    .line 230
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    const v9, 0x7f130588    # @string/keyboard_key_media_rewind 'Rewind'

    .line 235
    const/16 v11, 0x59

    .line 238
    const v12, 0x7f130584    # @string/keyboard_key_media_fast_forward 'Fast Forward'

    .line 240
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 243
    move-result-object v9

    .line 246
    const/16 v11, 0x5a

    .line 247
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    const v9, 0x7f13058f    # @string/keyboard_key_page_up 'Page Up'

    .line 252
    const/16 v11, 0x5c

    .line 255
    const v12, 0x7f13058e    # @string/keyboard_key_page_down 'Page Down'

    .line 257
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 260
    move-result-object v9

    .line 263
    const/16 v11, 0x5d

    .line 264
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    const-string v9, "A"

    .line 269
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 271
    move-result-object v9

    .line 274
    const v11, 0x7f13057a    # @string/keyboard_key_button_template 'Button %1$s'

    .line 275
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 278
    move-result-object v9

    .line 281
    const/16 v12, 0x60

    .line 282
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    const-string v9, "B"

    .line 287
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 289
    move-result-object v9

    .line 292
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 293
    move-result-object v9

    .line 296
    const/16 v12, 0x61

    .line 297
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    const-string v9, "C"

    .line 302
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 304
    move-result-object v9

    .line 307
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 308
    move-result-object v9

    .line 311
    const/16 v12, 0x62

    .line 312
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    const-string v9, "X"

    .line 317
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 319
    move-result-object v9

    .line 322
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 323
    move-result-object v9

    .line 326
    const/16 v12, 0x63

    .line 327
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    const-string v9, "Y"

    .line 332
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 334
    move-result-object v9

    .line 337
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 338
    move-result-object v9

    .line 341
    const/16 v12, 0x64

    .line 342
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    const-string v9, "Z"

    .line 347
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 349
    move-result-object v9

    .line 352
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    move-result-object v9

    .line 356
    const/16 v12, 0x65

    .line 357
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    const-string v9, "L1"

    .line 362
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 364
    move-result-object v9

    .line 367
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 368
    move-result-object v9

    .line 371
    const/16 v12, 0x66

    .line 372
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    const-string v9, "R1"

    .line 377
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 379
    move-result-object v9

    .line 382
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 383
    move-result-object v9

    .line 386
    const/16 v12, 0x67

    .line 387
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 389
    const-string v9, "L2"

    .line 392
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 394
    move-result-object v9

    .line 397
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 398
    move-result-object v9

    .line 401
    const/16 v12, 0x68

    .line 402
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    const-string v9, "R2"

    .line 407
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 409
    move-result-object v9

    .line 412
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 413
    move-result-object v9

    .line 416
    const/16 v12, 0x69

    .line 417
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 419
    const-string v9, "Start"

    .line 422
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 424
    move-result-object v9

    .line 427
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 428
    move-result-object v9

    .line 431
    const/16 v12, 0x6c

    .line 432
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    const-string v9, "Select"

    .line 437
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 439
    move-result-object v9

    .line 442
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 443
    move-result-object v9

    .line 446
    const/16 v12, 0x6d

    .line 447
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    const-string v9, "Mode"

    .line 452
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 454
    move-result-object v9

    .line 457
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 458
    move-result-object v9

    .line 461
    const/16 v11, 0x6e

    .line 462
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    const v9, 0x7f130581    # @string/keyboard_key_forward_del 'Delete'

    .line 467
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 470
    move-result-object v9

    .line 473
    const/16 v11, 0x70

    .line 474
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    const/16 v9, 0x6f

    .line 479
    const-string v11, "Esc"

    .line 481
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    const/16 v9, 0x78

    .line 486
    const-string v11, "SysRq"

    .line 488
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    const/16 v9, 0x79

    .line 493
    const-string v11, "Break"

    .line 495
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    const/16 v9, 0x74

    .line 500
    const-string v11, "Scroll Lock"

    .line 502
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 504
    const v9, 0x7f13058b    # @string/keyboard_key_move_home 'Home'

    .line 507
    const/16 v11, 0x7a

    .line 510
    const v12, 0x7f13058a    # @string/keyboard_key_move_end 'End'

    .line 512
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 515
    move-result-object v9

    .line 518
    const/16 v11, 0x7b

    .line 519
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 521
    const v9, 0x7f130583    # @string/keyboard_key_insert 'Insert'

    .line 524
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 527
    move-result-object v9

    .line 530
    const/16 v11, 0x7c

    .line 531
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 533
    const/16 v9, 0x83

    .line 536
    const-string v11, "F1"

    .line 538
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 540
    const/16 v9, 0x84

    .line 543
    const-string v11, "F2"

    .line 545
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 547
    const/16 v9, 0x85

    .line 550
    const-string v11, "F3"

    .line 552
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 554
    const/16 v9, 0x86

    .line 557
    const-string v11, "F4"

    .line 559
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 561
    const/16 v9, 0x87

    .line 564
    const-string v11, "F5"

    .line 566
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 568
    const/16 v9, 0x88

    .line 571
    const-string v11, "F6"

    .line 573
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 575
    const/16 v9, 0x89

    .line 578
    const-string v11, "F7"

    .line 580
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 582
    const/16 v9, 0x8a

    .line 585
    const-string v11, "F8"

    .line 587
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 589
    const/16 v9, 0x8b

    .line 592
    const-string v11, "F9"

    .line 594
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 596
    const/16 v9, 0x8c

    .line 599
    const-string v11, "F10"

    .line 601
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 603
    const/16 v9, 0x8d

    .line 606
    const-string v11, "F11"

    .line 608
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 610
    const/16 v9, 0x8e

    .line 613
    const-string v11, "F12"

    .line 615
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 617
    const v9, 0x7f13058c    # @string/keyboard_key_num_lock 'Num Lock'

    .line 620
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 623
    move-result-object v9

    .line 626
    const/16 v11, 0x8f

    .line 627
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 629
    const-string v9, "0"

    .line 632
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 634
    move-result-object v9

    .line 637
    const v11, 0x7f13058d    # @string/keyboard_key_numpad_template 'Numpad %1$s'

    .line 638
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 641
    move-result-object v9

    .line 644
    const/16 v12, 0x90

    .line 645
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 647
    const-string v9, "1"

    .line 650
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 652
    move-result-object v9

    .line 655
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 656
    move-result-object v9

    .line 659
    const/16 v12, 0x91

    .line 660
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 662
    const-string v9, "2"

    .line 665
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 667
    move-result-object v9

    .line 670
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 671
    move-result-object v9

    .line 674
    const/16 v12, 0x92

    .line 675
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 677
    const-string v9, "3"

    .line 680
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 682
    move-result-object v9

    .line 685
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 686
    move-result-object v9

    .line 689
    const/16 v12, 0x93

    .line 690
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 692
    const-string v9, "4"

    .line 695
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 697
    move-result-object v9

    .line 700
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 701
    move-result-object v9

    .line 704
    const/16 v12, 0x94

    .line 705
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 707
    const-string v9, "5"

    .line 710
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 712
    move-result-object v9

    .line 715
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 716
    move-result-object v9

    .line 719
    const/16 v12, 0x95

    .line 720
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 722
    const-string v9, "6"

    .line 725
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 727
    move-result-object v9

    .line 730
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 731
    move-result-object v9

    .line 734
    const/16 v12, 0x96

    .line 735
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 737
    const-string v9, "7"

    .line 740
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 742
    move-result-object v9

    .line 745
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 746
    move-result-object v9

    .line 749
    const/16 v12, 0x97

    .line 750
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 752
    const-string v9, "8"

    .line 755
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 757
    move-result-object v9

    .line 760
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 761
    move-result-object v9

    .line 764
    const/16 v12, 0x98

    .line 765
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 767
    const-string v9, "9"

    .line 770
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 772
    move-result-object v9

    .line 775
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 776
    move-result-object v9

    .line 779
    const/16 v12, 0x99

    .line 780
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 782
    const-string v9, "/"

    .line 785
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 787
    move-result-object v9

    .line 790
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 791
    move-result-object v9

    .line 794
    const/16 v12, 0x9a

    .line 795
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 797
    const-string v9, "*"

    .line 800
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 802
    move-result-object v9

    .line 805
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 806
    move-result-object v9

    .line 809
    const/16 v12, 0x9b

    .line 810
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 812
    const-string v9, "-"

    .line 815
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 817
    move-result-object v9

    .line 820
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 821
    move-result-object v9

    .line 824
    const/16 v12, 0x9c

    .line 825
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 827
    const-string v9, "+"

    .line 830
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 832
    move-result-object v9

    .line 835
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 836
    move-result-object v9

    .line 839
    const/16 v12, 0x9d

    .line 840
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 842
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 845
    move-result-object v7

    .line 848
    invoke-virtual {p1, v11, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 849
    move-result-object v7

    .line 852
    const/16 v9, 0x9e

    .line 853
    invoke-virtual {v0, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 855
    const-string v7, ","

    .line 858
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 860
    move-result-object v7

    .line 863
    invoke-virtual {p1, v11, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 864
    move-result-object v7

    .line 867
    const/16 v9, 0x9f

    .line 868
    invoke-virtual {v0, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 870
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 873
    move-result-object p0

    .line 876
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 877
    move-result-object p0

    .line 880
    invoke-virtual {p1, v11, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 881
    move-result-object p0

    .line 884
    const/16 v7, 0xa0

    .line 885
    invoke-virtual {v0, v7, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 887
    const-string p0, "="

    .line 890
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 892
    move-result-object p0

    .line 895
    invoke-virtual {p1, v11, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 896
    move-result-object p0

    .line 899
    const/16 v7, 0xa1

    .line 900
    invoke-virtual {v0, v7, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 902
    const-string p0, "("

    .line 905
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 907
    move-result-object p0

    .line 910
    invoke-virtual {p1, v11, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 911
    move-result-object p0

    .line 914
    const/16 v7, 0xa2

    .line 915
    invoke-virtual {v0, v7, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 917
    const-string p0, ")"

    .line 920
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 922
    move-result-object p0

    .line 925
    invoke-virtual {p1, v11, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 926
    move-result-object p0

    .line 929
    const/16 v7, 0xa3

    .line 930
    invoke-virtual {v0, v7, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 932
    const/16 p0, 0xd3

    .line 935
    const-string/jumbo v7, "\u534a\u89d2/\u5168\u89d2"

    .line 937
    invoke-virtual {v0, p0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 940
    const/16 p0, 0xd4

    .line 943
    const-string/jumbo v7, "\u82f1\u6570"

    .line 945
    invoke-virtual {v0, p0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 948
    const/16 p0, 0xd5

    .line 951
    const-string/jumbo v7, "\u7121\u5909\u63db"

    .line 953
    invoke-virtual {v0, p0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 956
    const/16 p0, 0xd6

    .line 959
    const-string/jumbo v7, "\u5909\u63db"

    .line 961
    invoke-virtual {v0, p0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 964
    const/16 p0, 0xd7

    .line 967
    const-string/jumbo v7, "\u304b\u306a"

    .line 969
    invoke-virtual {v0, p0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 972
    const-string p0, "Meta"

    .line 975
    const/high16 v0, 0x10000

    .line 977
    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 979
    const/16 p0, 0x1000

    .line 982
    const-string v7, "Ctrl"

    .line 984
    invoke-virtual {v1, p0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 986
    const/4 p0, 0x2

    .line 989
    const-string v7, "Alt"

    .line 990
    invoke-virtual {v1, p0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 992
    const/4 p0, 0x1

    .line 995
    const-string v7, "Shift"

    .line 996
    invoke-virtual {v1, p0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 998
    const-string p0, "Sym"

    .line 1001
    invoke-virtual {v1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1003
    const/16 p0, 0x8

    .line 1006
    const-string p2, "Fn"

    .line 1008
    invoke-virtual {v1, p0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1010
    const p0, 0x7f08102e    # @drawable/ic_ksh_key_backspace 'res/drawable/ic_ksh_key_backspace.xml'

    .line 1013
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1016
    move-result-object p0

    .line 1019
    invoke-virtual {v2, v10, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1020
    const p0, 0x7f081030    # @drawable/ic_ksh_key_enter 'res/drawable/ic_ksh_key_enter.xml'

    .line 1023
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1026
    move-result-object p0

    .line 1029
    invoke-virtual {v2, v8, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1030
    const p0, 0x7f081034    # @drawable/ic_ksh_key_up 'res/drawable/ic_ksh_key_up.xml'

    .line 1033
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1036
    move-result-object p0

    .line 1039
    invoke-virtual {v2, v4, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1040
    const p0, 0x7f081033    # @drawable/ic_ksh_key_right 'res/drawable/ic_ksh_key_right.xml'

    .line 1043
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1046
    move-result-object p0

    .line 1049
    invoke-virtual {v2, v6, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1050
    const p0, 0x7f08102f    # @drawable/ic_ksh_key_down 'res/drawable/ic_ksh_key_down.xml'

    .line 1053
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1056
    move-result-object p0

    .line 1059
    invoke-virtual {v2, v5, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1060
    const p0, 0x7f081031    # @drawable/ic_ksh_key_left 'res/drawable/ic_ksh_key_left.xml'

    .line 1063
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1066
    move-result-object p0

    .line 1069
    const/16 p2, 0x15

    .line 1070
    invoke-virtual {v2, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1072
    const p0, 0x7f081032    # @drawable/ic_ksh_key_meta 'res/drawable/ic_ksh_key_meta.xml'

    .line 1075
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1078
    move-result-object p0

    .line 1081
    invoke-virtual {v3, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1082
    return-void

    .line 1085
    :array_0
    .array-data 4
        0x10000
        0x1000
        0x2
        0x1
        0x4
        0x8
    .end array-data
    .line 1086
.end method

.method public static dismiss()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 5
    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 9
    const/16 v2, 0x1f4

    .line 11
    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 13
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    .line 16
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    sget-object v1, Lcom/miui/systemui/MiuiKeyboardShortcuts;->instance:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 21
    if-eqz v1, :cond_1

    .line 23
    invoke-static {v1}, Lcom/miui/systemui/MiuiKeyboardShortcuts;->access$dismissDialog(Lcom/miui/systemui/MiuiKeyboardShortcuts;)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 29
    iget-object v3, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 31
    if-eqz v3, :cond_1

    .line 33
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 35
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 38
    :cond_1
    :goto_0
    sput-object v2, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 40
    :cond_2
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v1
    .line 46
.end method

.method public static show(ILandroid/content/Context;)V
    .locals 3

    .line 1
    const/16 v0, 0x1f4

    .line 2
    invoke-static {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 4
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 22
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    .line 25
    if-eqz v1, :cond_1

    .line 27
    const/4 v1, 0x1

    .line 29
    invoke-static {p0, v1, p1}, Lcom/miui/systemui/MiuiKeyboardShortcuts$Companion;->show(IZLandroid/content/Context;)V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 34
    if-nez v1, :cond_2

    .line 36
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 38
    const/4 v2, 0x0

    .line 40
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/KeyboardShortcuts;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    .line 41
    sput-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 44
    :cond_2
    sget-object p1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 46
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcuts(I)V

    .line 48
    :goto_0
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
    .line 55
.end method

.method public static toggle(ILandroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-eqz v1, :cond_1

    .line 22
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 24
    goto :goto_1

    .line 27
    :cond_1
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->show(ILandroid/content/Context;)V

    .line 28
    :goto_1
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2
    .line 36
.end method


# virtual methods
.method public final getIconForIntentCategory(ILjava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 6

    .line 1
    new-instance v1, Landroid/content/Intent;

    .line 2
    const-string v0, "android.intent.action.MAIN"

    .line 4
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    const/4 p2, 0x0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 13
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 24
    const-wide/16 v3, 0x0

    .line 25
    move v5, p1

    .line 27
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    .line 28
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 34
    if-nez v0, :cond_0

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 39
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 41
    const-wide/16 v1, 0x0

    .line 43
    invoke-interface {p0, v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 45
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    const-string p1, "KeyboardShortcuts"

    .line 51
    const-string v0, "PackageManagerService is dead"

    .line 53
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :cond_1
    :goto_0
    move-object p0, p2

    .line 58
    :goto_1
    if-eqz p0, :cond_2

    .line 59
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 61
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 63
    if-eqz p1, :cond_2

    .line 65
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 67
    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 69
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_2
    return-object p2
    .line 74
.end method

.method public showKeyboardShortcuts(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 2
    const-class v1, Landroid/hardware/input/InputManager;

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 10
    const/4 v1, -0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 13
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 17
    move-result-object v2

    .line 20
    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 21
    if-eq p1, v1, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 25
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 31
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 35
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 38
    move-result-object v2

    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_0
    array-length v4, v2

    .line 43
    if-ge v3, v4, :cond_2

    .line 44
    aget v4, v2, v3

    .line 46
    invoke-virtual {v0, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 48
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    .line 52
    move-result v5

    .line 55
    if-eq v5, v1, :cond_1

    .line 56
    invoke-virtual {v4}, Landroid/view/InputDevice;->isFullKeyboard()Z

    .line 58
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    invoke-virtual {v4}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 64
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 68
    goto :goto_1

    .line 70
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 74
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 76
    :goto_1
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;

    .line 78
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mWindowManager:Landroid/view/WindowManager;

    .line 83
    invoke-interface {p0, v0, p1}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    .line 85
    return-void
    .line 88
.end method
