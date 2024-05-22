.class public final Lcom/miui/systemui/MiuiKeyboardShortcuts;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# static fields
.field public static instance:Lcom/miui/systemui/MiuiKeyboardShortcuts;

.field public static isSystem:Z


# instance fields
.field public backupKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field public blurContainer:Landroid/view/View;

.field public final context:Landroid/content/Context;

.field public final handler:Landroid/os/Handler;

.field public final indicatorList:Ljava/util/ArrayList;

.field public keyCharacterMap:Landroid/view/KeyCharacterMap;

.field public keyboardShortcutsDialog:Landroid/app/Dialog;

.field public final modifierList:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->context:Landroid/content/Context;

    .line 5
    sget-object v0, Lcom/miui/systemui/MiuiKeyboardShortcutsData;->specialCharacterNames:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    const v1, 0x7f130582    # @string/keyboard_key_home 'Home'

    .line 15
    const/4 v2, 0x3

    .line 18
    const v3, 0x7f130578    # @string/keyboard_key_back 'Back'

    .line 19
    invoke-static {p1, v1, v0, v2, v3}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    const/4 v2, 0x4

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    const v1, 0x7f13057f    # @string/keyboard_key_dpad_up 'Up'

    .line 30
    const/16 v3, 0x13

    .line 33
    const v4, 0x7f13057c    # @string/keyboard_key_dpad_down 'Down'

    .line 35
    invoke-static {p1, v1, v0, v3, v4}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 41
    const/16 v4, 0x14

    .line 42
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    const v1, 0x7f13057d    # @string/keyboard_key_dpad_left 'Left'

    .line 47
    const/16 v5, 0x15

    .line 50
    const v6, 0x7f13057e    # @string/keyboard_key_dpad_right 'Right'

    .line 52
    invoke-static {p1, v1, v0, v5, v6}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 58
    const/16 v6, 0x16

    .line 59
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    const v1, 0x7f13057b    # @string/keyboard_key_dpad_center 'Center'

    .line 64
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 70
    const/16 v7, 0x17

    .line 71
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    const/16 v1, 0x38

    .line 76
    const-string v7, "."

    .line 78
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    const v1, 0x7f130591    # @string/keyboard_key_tab 'Tab'

    .line 83
    const/16 v8, 0x3d

    .line 86
    const v9, 0x7f130590    # @string/keyboard_key_space 'Space'

    .line 88
    invoke-static {p1, v1, v0, v8, v9}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 94
    const/16 v8, 0x3e

    .line 95
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    const v1, 0x7f130580    # @string/keyboard_key_enter 'Enter'

    .line 100
    const/16 v8, 0x42

    .line 103
    const v9, 0x7f130579    # @string/keyboard_key_backspace 'Backspace'

    .line 105
    invoke-static {p1, v1, v0, v8, v9}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 108
    move-result-object v9

    .line 111
    const/16 v10, 0x43

    .line 112
    invoke-virtual {v0, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    const v9, 0x7f130586    # @string/keyboard_key_media_play_pause 'Play/Pause'

    .line 117
    const/16 v11, 0x55

    .line 120
    const v12, 0x7f130589    # @string/keyboard_key_media_stop 'Stop'

    .line 122
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 125
    move-result-object v9

    .line 128
    const/16 v11, 0x56

    .line 129
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    const v9, 0x7f130585    # @string/keyboard_key_media_next 'Next'

    .line 134
    const/16 v11, 0x57

    .line 137
    const v12, 0x7f130587    # @string/keyboard_key_media_previous 'Previous'

    .line 139
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 142
    move-result-object v9

    .line 145
    const/16 v11, 0x58

    .line 146
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    const v9, 0x7f130588    # @string/keyboard_key_media_rewind 'Rewind'

    .line 151
    const/16 v11, 0x59

    .line 154
    const v12, 0x7f130584    # @string/keyboard_key_media_fast_forward 'Fast Forward'

    .line 156
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 159
    move-result-object v9

    .line 162
    const/16 v11, 0x5a

    .line 163
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    const v9, 0x7f13058f    # @string/keyboard_key_page_up 'Page Up'

    .line 168
    const/16 v11, 0x5c

    .line 171
    const v12, 0x7f13058e    # @string/keyboard_key_page_down 'Page Down'

    .line 173
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 176
    move-result-object v9

    .line 179
    const/16 v11, 0x5d

    .line 180
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    const-string v9, "A"

    .line 185
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 187
    move-result-object v9

    .line 190
    const v11, 0x7f13057a    # @string/keyboard_key_button_template 'Button %1$s'

    .line 191
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    move-result-object v9

    .line 197
    const/16 v12, 0x60

    .line 198
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    const-string v9, "B"

    .line 203
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 205
    move-result-object v9

    .line 208
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    move-result-object v9

    .line 212
    const/16 v12, 0x61

    .line 213
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    const-string v9, "C"

    .line 218
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 220
    move-result-object v9

    .line 223
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    move-result-object v9

    .line 227
    const/16 v12, 0x62

    .line 228
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    const-string v9, "X"

    .line 233
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 235
    move-result-object v9

    .line 238
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    move-result-object v9

    .line 242
    const/16 v12, 0x63

    .line 243
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    const-string v9, "Y"

    .line 248
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 250
    move-result-object v9

    .line 253
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    move-result-object v9

    .line 257
    const/16 v12, 0x64

    .line 258
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    const-string v9, "Z"

    .line 263
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 265
    move-result-object v9

    .line 268
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 269
    move-result-object v9

    .line 272
    const/16 v12, 0x65

    .line 273
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    const-string v9, "L1"

    .line 278
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 280
    move-result-object v9

    .line 283
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 284
    move-result-object v9

    .line 287
    const/16 v12, 0x66

    .line 288
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    const-string v9, "R1"

    .line 293
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 295
    move-result-object v9

    .line 298
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 299
    move-result-object v9

    .line 302
    const/16 v12, 0x67

    .line 303
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    const-string v9, "L2"

    .line 308
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 310
    move-result-object v9

    .line 313
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 314
    move-result-object v9

    .line 317
    const/16 v12, 0x68

    .line 318
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    const-string v9, "R2"

    .line 323
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 325
    move-result-object v9

    .line 328
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 329
    move-result-object v9

    .line 332
    const/16 v12, 0x69

    .line 333
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    const-string v9, "Start"

    .line 338
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 340
    move-result-object v9

    .line 343
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 344
    move-result-object v9

    .line 347
    const/16 v12, 0x6c

    .line 348
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    const-string v9, "Select"

    .line 353
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 355
    move-result-object v9

    .line 358
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 359
    move-result-object v9

    .line 362
    const/16 v12, 0x6d

    .line 363
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    const-string v9, "Mode"

    .line 368
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 370
    move-result-object v9

    .line 373
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 374
    move-result-object v9

    .line 377
    const/16 v11, 0x6e

    .line 378
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    const v9, 0x7f130581    # @string/keyboard_key_forward_del 'Delete'

    .line 383
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 386
    move-result-object v9

    .line 389
    const/16 v11, 0x70

    .line 390
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    const/16 v9, 0x6f

    .line 395
    const-string v11, "Esc"

    .line 397
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    const/16 v9, 0x78

    .line 402
    const-string v11, "SysRq"

    .line 404
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    const/16 v9, 0x79

    .line 409
    const-string v11, "Break"

    .line 411
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    const/16 v9, 0x74

    .line 416
    const-string v11, "Scroll Lock"

    .line 418
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 420
    const v9, 0x7f13058b    # @string/keyboard_key_move_home 'Home'

    .line 423
    const/16 v11, 0x7a

    .line 426
    const v12, 0x7f13058a    # @string/keyboard_key_move_end 'End'

    .line 428
    invoke-static {p1, v9, v0, v11, v12}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 431
    move-result-object v9

    .line 434
    const/16 v11, 0x7b

    .line 435
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    const v9, 0x7f130583    # @string/keyboard_key_insert 'Insert'

    .line 440
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 443
    move-result-object v9

    .line 446
    const/16 v11, 0x7c

    .line 447
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    const/16 v9, 0x83

    .line 452
    const-string v11, "F1"

    .line 454
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    const/16 v9, 0x84

    .line 459
    const-string v11, "F2"

    .line 461
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    const/16 v9, 0x85

    .line 466
    const-string v11, "F3"

    .line 468
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    const/16 v9, 0x86

    .line 473
    const-string v11, "F4"

    .line 475
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    const/16 v9, 0x87

    .line 480
    const-string v11, "F5"

    .line 482
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    const/16 v9, 0x88

    .line 487
    const-string v11, "F6"

    .line 489
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    const/16 v9, 0x89

    .line 494
    const-string v11, "F7"

    .line 496
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    const/16 v9, 0x8a

    .line 501
    const-string v11, "F8"

    .line 503
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 505
    const/16 v9, 0x8b

    .line 508
    const-string v11, "F9"

    .line 510
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 512
    const/16 v9, 0x8c

    .line 515
    const-string v11, "F10"

    .line 517
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 519
    const/16 v9, 0x8d

    .line 522
    const-string v11, "F11"

    .line 524
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 526
    const/16 v9, 0x8e

    .line 529
    const-string v11, "F12"

    .line 531
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 533
    const v9, 0x7f13058c    # @string/keyboard_key_num_lock 'Num Lock'

    .line 536
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 539
    move-result-object v9

    .line 542
    const/16 v11, 0x8f

    .line 543
    invoke-virtual {v0, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    const-string v9, "0"

    .line 548
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 550
    move-result-object v9

    .line 553
    const v11, 0x7f13058d    # @string/keyboard_key_numpad_template 'Numpad %1$s'

    .line 554
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 557
    move-result-object v9

    .line 560
    const/16 v12, 0x90

    .line 561
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 563
    const-string v9, "1"

    .line 566
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 568
    move-result-object v9

    .line 571
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 572
    move-result-object v9

    .line 575
    const/16 v12, 0x91

    .line 576
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 578
    const-string v9, "2"

    .line 581
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 583
    move-result-object v9

    .line 586
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 587
    move-result-object v9

    .line 590
    const/16 v12, 0x92

    .line 591
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 593
    const-string v9, "3"

    .line 596
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 598
    move-result-object v9

    .line 601
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 602
    move-result-object v9

    .line 605
    const/16 v12, 0x93

    .line 606
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 608
    const-string v9, "4"

    .line 611
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 613
    move-result-object v9

    .line 616
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 617
    move-result-object v9

    .line 620
    const/16 v12, 0x94

    .line 621
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 623
    const-string v9, "5"

    .line 626
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 628
    move-result-object v9

    .line 631
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 632
    move-result-object v9

    .line 635
    const/16 v12, 0x95

    .line 636
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 638
    const-string v9, "6"

    .line 641
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 643
    move-result-object v9

    .line 646
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 647
    move-result-object v9

    .line 650
    const/16 v12, 0x96

    .line 651
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 653
    const-string v9, "7"

    .line 656
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 658
    move-result-object v9

    .line 661
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 662
    move-result-object v9

    .line 665
    const/16 v12, 0x97

    .line 666
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 668
    const-string v9, "8"

    .line 671
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 673
    move-result-object v9

    .line 676
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 677
    move-result-object v9

    .line 680
    const/16 v12, 0x98

    .line 681
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 683
    const-string v9, "9"

    .line 686
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 688
    move-result-object v9

    .line 691
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 692
    move-result-object v9

    .line 695
    const/16 v12, 0x99

    .line 696
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 698
    const-string v9, "/"

    .line 701
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 703
    move-result-object v9

    .line 706
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 707
    move-result-object v9

    .line 710
    const/16 v12, 0x9a

    .line 711
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 713
    const-string v9, "*"

    .line 716
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 718
    move-result-object v9

    .line 721
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 722
    move-result-object v9

    .line 725
    const/16 v12, 0x9b

    .line 726
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 728
    const-string v9, "-"

    .line 731
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 733
    move-result-object v9

    .line 736
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 737
    move-result-object v9

    .line 740
    const/16 v12, 0x9c

    .line 741
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 743
    const-string v9, "+"

    .line 746
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 748
    move-result-object v9

    .line 751
    invoke-virtual {p1, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 752
    move-result-object v9

    .line 755
    const/16 v12, 0x9d

    .line 756
    invoke-virtual {v0, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 758
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 761
    move-result-object v7

    .line 764
    invoke-virtual {p1, v11, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 765
    move-result-object v7

    .line 768
    const/16 v9, 0x9e

    .line 769
    invoke-virtual {v0, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 771
    const-string v7, ","

    .line 774
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 776
    move-result-object v7

    .line 779
    invoke-virtual {p1, v11, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 780
    move-result-object v7

    .line 783
    const/16 v9, 0x9f

    .line 784
    invoke-virtual {v0, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 786
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 789
    move-result-object v1

    .line 792
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 793
    move-result-object v1

    .line 796
    invoke-virtual {p1, v11, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 797
    move-result-object v1

    .line 800
    const/16 v7, 0xa0

    .line 801
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 803
    const-string v1, "="

    .line 806
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 808
    move-result-object v1

    .line 811
    invoke-virtual {p1, v11, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 812
    move-result-object v1

    .line 815
    const/16 v7, 0xa1

    .line 816
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 818
    const-string v1, "("

    .line 821
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 823
    move-result-object v1

    .line 826
    invoke-virtual {p1, v11, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 827
    move-result-object v1

    .line 830
    const/16 v7, 0xa2

    .line 831
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 833
    const-string v1, ")"

    .line 836
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 838
    move-result-object v1

    .line 841
    invoke-virtual {p1, v11, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 842
    move-result-object v1

    .line 845
    const/16 v7, 0xa3

    .line 846
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 848
    const/16 v1, 0x75

    .line 851
    const-string v7, "Meta"

    .line 853
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 855
    const/16 v9, 0xd3

    .line 858
    const-string/jumbo v11, "\u534a\u89d2/\u5168\u89d2"

    .line 860
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 863
    const/16 v9, 0xd4

    .line 866
    const-string/jumbo v11, "\u82f1\u6570"

    .line 868
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 871
    const/16 v9, 0xd5

    .line 874
    const-string/jumbo v11, "\u7121\u5909\u63db"

    .line 876
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 879
    const/16 v9, 0xd6

    .line 882
    const-string/jumbo v11, "\u5909\u63db"

    .line 884
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 887
    const/16 v9, 0xd7

    .line 890
    const-string/jumbo v11, "\u304b\u306a"

    .line 892
    invoke-virtual {v0, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 895
    sget-object v0, Lcom/miui/systemui/MiuiKeyboardShortcutsData;->modifierNames:Landroid/util/SparseArray;

    .line 898
    const/high16 v9, 0x10000

    .line 900
    invoke-virtual {v0, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 902
    const/16 v7, 0x1000

    .line 905
    const-string v11, "Ctrl"

    .line 907
    invoke-virtual {v0, v7, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 909
    const/4 v7, 0x2

    .line 912
    const-string v11, "Alt"

    .line 913
    invoke-virtual {v0, v7, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 915
    const/4 v7, 0x1

    .line 918
    const-string v11, "Shift"

    .line 919
    invoke-virtual {v0, v7, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 921
    const-string v7, "Sym"

    .line 924
    invoke-virtual {v0, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 926
    const/16 v2, 0x8

    .line 929
    const-string v7, "Fn"

    .line 931
    invoke-virtual {v0, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 933
    sget-object v0, Lcom/miui/systemui/MiuiKeyboardShortcutsData;->specialCharacterDrawables:Landroid/util/SparseArray;

    .line 936
    const v2, 0x7f081073    # @drawable/ic_miui_ksh_meta_wrapper 'res/drawable/ic_miui_ksh_meta_wrapper.xml'

    .line 938
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 941
    move-result-object v7

    .line 944
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 945
    const v1, 0x7f08102e    # @drawable/ic_ksh_key_backspace 'res/drawable/ic_ksh_key_backspace.xml'

    .line 948
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 951
    move-result-object v1

    .line 954
    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 955
    const v1, 0x7f081030    # @drawable/ic_ksh_key_enter 'res/drawable/ic_ksh_key_enter.xml'

    .line 958
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 961
    move-result-object v1

    .line 964
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 965
    const v1, 0x7f081034    # @drawable/ic_ksh_key_up 'res/drawable/ic_ksh_key_up.xml'

    .line 968
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 971
    move-result-object v1

    .line 974
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 975
    const v1, 0x7f081033    # @drawable/ic_ksh_key_right 'res/drawable/ic_ksh_key_right.xml'

    .line 978
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 981
    move-result-object v1

    .line 984
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 985
    const v1, 0x7f08102f    # @drawable/ic_ksh_key_down 'res/drawable/ic_ksh_key_down.xml'

    .line 988
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 991
    move-result-object v1

    .line 994
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 995
    const v1, 0x7f081031    # @drawable/ic_ksh_key_left 'res/drawable/ic_ksh_key_left.xml'

    .line 998
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1001
    move-result-object v1

    .line 1004
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1005
    sget-object v0, Lcom/miui/systemui/MiuiKeyboardShortcutsData;->modifierDrawables:Landroid/util/SparseArray;

    .line 1008
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1010
    move-result-object p1

    .line 1013
    invoke-virtual {v0, v9, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1014
    :cond_0
    new-instance p1, Lcom/miui/systemui/MiuiKeyboardShortcuts$configurationListener$1;

    .line 1017
    invoke-direct {p1, p0}, Lcom/miui/systemui/MiuiKeyboardShortcuts$configurationListener$1;-><init>(Lcom/miui/systemui/MiuiKeyboardShortcuts;)V

    .line 1019
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 1022
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1024
    move-result-object v0

    .line 1027
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 1028
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 1030
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 1032
    new-instance p1, Landroid/os/Handler;

    .line 1035
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 1037
    move-result-object v0

    .line 1040
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1041
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->handler:Landroid/os/Handler;

    .line 1044
    const/4 p1, 0x6

    .line 1046
    new-array p1, p1, [I

    .line 1047
    fill-array-data p1, :array_0

    .line 1049
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->modifierList:[I

    .line 1052
    new-instance p1, Ljava/util/ArrayList;

    .line 1054
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->indicatorList:Ljava/util/ArrayList;

    .line 1059
    return-void

    .line 1061
    :array_0
    .array-data 4
        0x10000
        0x1000
        0x2
        0x1
        0x4
        0x8
    .end array-data
    .line 1062
.end method

.method public static final access$dismissDialog(Lcom/miui/systemui/MiuiKeyboardShortcuts;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->keyboardShortcutsDialog:Landroid/app/Dialog;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_2

    .line 9
    if-nez p0, :cond_1

    .line 11
    const/4 p0, 0x0

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    :cond_2
    return-void
    .line 17
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onPageSelected(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->indicatorList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/ImageView;

    .line 18
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    if-le v0, v1, :cond_1

    .line 30
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 35
    check-cast p0, Landroid/widget/ImageView;

    .line 36
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 38
    :cond_1
    return-void
    .line 41
.end method
