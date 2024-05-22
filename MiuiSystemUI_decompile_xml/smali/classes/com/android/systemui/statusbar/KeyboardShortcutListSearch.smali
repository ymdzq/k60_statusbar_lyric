.class public final Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field static sInstance:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field public mButtonInput:Landroid/widget/Button;

.field public mButtonOpenApps:Landroid/widget/Button;

.field public mButtonSpecificApp:Landroid/widget/Button;

.field public mButtonSystem:Landroid/widget/Button;

.field mContext:Landroid/content/Context;

.field public mCurrentCategoryIndex:I

.field public final mFullButtonList:Ljava/util/ArrayList;

.field public final mFullShortsGroup:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputGroup:Ljava/util/List;

.field public mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field public final mKeySearchResultMap:Ljava/util/Map;

.field mKeyboardShortcutsBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field public final mModifierDrawables:Landroid/util/SparseArray;

.field public final mModifierList:[I

.field public final mModifierNames:Landroid/util/SparseArray;

.field public mNoSearchResults:Landroid/widget/TextView;

.field public mOpenAppsGroup:Ljava/util/List;

.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public mQueryString:Ljava/lang/String;

.field public mSearchEditText:Landroid/widget/EditText;

.field public final mSpecialCharacterDrawables:Landroid/util/SparseArray;

.field public final mSpecialCharacterNames:Landroid/util/SparseArray;

.field public mSpecificAppGroup:Ljava/util/List;

.field public final mSystemGroup:Ljava/util/List;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sLock:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v3, 0x0

    .line 11
    iput v3, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mCurrentCategoryIndex:I

    .line 12
    new-instance v3, Ljava/util/HashMap;

    .line 14
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v3, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeySearchResultMap:Ljava/util/Map;

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mFullShortsGroup:Ljava/util/List;

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mSpecificAppGroup:Ljava/util/List;

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mSystemGroup:Ljava/util/List;

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mInputGroup:Ljava/util/List;

    .line 47
    new-instance v4, Ljava/util/ArrayList;

    .line 49
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mOpenAppsGroup:Ljava/util/List;

    .line 54
    new-instance v4, Ljava/util/ArrayList;

    .line 56
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mFullButtonList:Ljava/util/ArrayList;

    .line 61
    new-instance v4, Landroid/util/SparseArray;

    .line 63
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 65
    iput-object v4, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 68
    new-instance v5, Landroid/util/SparseArray;

    .line 70
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 72
    iput-object v5, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mModifierNames:Landroid/util/SparseArray;

    .line 75
    new-instance v6, Landroid/util/SparseArray;

    .line 77
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 79
    iput-object v6, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 82
    new-instance v7, Landroid/util/SparseArray;

    .line 84
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 86
    iput-object v7, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mModifierDrawables:Landroid/util/SparseArray;

    .line 89
    const/4 v8, 0x6

    .line 91
    new-array v8, v8, [I

    .line 92
    fill-array-data v8, :array_0

    .line 94
    iput-object v8, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mModifierList:[I

    .line 97
    new-instance v8, Landroid/os/Handler;

    .line 99
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 101
    move-result-object v9

    .line 104
    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    iput-object v8, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v8, Landroid/view/ContextThemeWrapper;

    .line 110
    const v9, 0x1030223    # @android:style/Theme.DeviceDefault.Settings

    .line 112
    invoke-direct {v8, v0, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 115
    iput-object v8, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 120
    move-result-object v8

    .line 123
    iput-object v8, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 124
    if-eqz v2, :cond_0

    .line 126
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mWindowManager:Landroid/view/WindowManager;

    .line 128
    goto :goto_0

    .line 130
    :cond_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 131
    const-class v8, Landroid/view/WindowManager;

    .line 133
    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 135
    move-result-object v2

    .line 138
    check-cast v2, Landroid/view/WindowManager;

    .line 139
    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mWindowManager:Landroid/view/WindowManager;

    .line 141
    :goto_0
    const v2, 0x7f130582    # @string/keyboard_key_home 'Home'

    .line 143
    const/4 v8, 0x3

    .line 146
    const v9, 0x7f130578    # @string/keyboard_key_back 'Back'

    .line 147
    invoke-static {v0, v2, v4, v8, v9}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 150
    move-result-object v2

    .line 153
    const/4 v8, 0x4

    .line 154
    invoke-virtual {v4, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    const v2, 0x7f13057f    # @string/keyboard_key_dpad_up 'Up'

    .line 158
    const/16 v9, 0x13

    .line 161
    const v10, 0x7f13057c    # @string/keyboard_key_dpad_down 'Down'

    .line 163
    invoke-static {v0, v2, v4, v9, v10}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 169
    const/16 v9, 0x14

    .line 170
    invoke-virtual {v4, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    const v2, 0x7f13057d    # @string/keyboard_key_dpad_left 'Left'

    .line 175
    const/16 v9, 0x15

    .line 178
    const v10, 0x7f13057e    # @string/keyboard_key_dpad_right 'Right'

    .line 180
    invoke-static {v0, v2, v4, v9, v10}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 183
    move-result-object v2

    .line 186
    const/16 v9, 0x16

    .line 187
    invoke-virtual {v4, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    const v2, 0x7f13057b    # @string/keyboard_key_dpad_center 'Center'

    .line 192
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 195
    move-result-object v2

    .line 198
    const/16 v9, 0x17

    .line 199
    invoke-virtual {v4, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    const/16 v2, 0x38

    .line 204
    const-string v9, "."

    .line 206
    invoke-virtual {v4, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    const v2, 0x7f130591    # @string/keyboard_key_tab 'Tab'

    .line 211
    const/16 v10, 0x3d

    .line 214
    const v11, 0x7f130590    # @string/keyboard_key_space 'Space'

    .line 216
    invoke-static {v0, v2, v4, v10, v11}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 219
    move-result-object v2

    .line 222
    const/16 v10, 0x3e

    .line 223
    invoke-virtual {v4, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    const v2, 0x7f130580    # @string/keyboard_key_enter 'Enter'

    .line 228
    const/16 v10, 0x42

    .line 231
    const v11, 0x7f130579    # @string/keyboard_key_backspace 'Backspace'

    .line 233
    invoke-static {v0, v2, v4, v10, v11}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 236
    move-result-object v10

    .line 239
    const/16 v11, 0x43

    .line 240
    invoke-virtual {v4, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    const v10, 0x7f130586    # @string/keyboard_key_media_play_pause 'Play/Pause'

    .line 245
    const/16 v12, 0x55

    .line 248
    const v13, 0x7f130589    # @string/keyboard_key_media_stop 'Stop'

    .line 250
    invoke-static {v0, v10, v4, v12, v13}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 253
    move-result-object v10

    .line 256
    const/16 v12, 0x56

    .line 257
    invoke-virtual {v4, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    const v10, 0x7f130585    # @string/keyboard_key_media_next 'Next'

    .line 262
    const/16 v12, 0x57

    .line 265
    const v13, 0x7f130587    # @string/keyboard_key_media_previous 'Previous'

    .line 267
    invoke-static {v0, v10, v4, v12, v13}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 270
    move-result-object v10

    .line 273
    const/16 v12, 0x58

    .line 274
    invoke-virtual {v4, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    const v10, 0x7f130588    # @string/keyboard_key_media_rewind 'Rewind'

    .line 279
    const/16 v12, 0x59

    .line 282
    const v13, 0x7f130584    # @string/keyboard_key_media_fast_forward 'Fast Forward'

    .line 284
    invoke-static {v0, v10, v4, v12, v13}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 287
    move-result-object v10

    .line 290
    const/16 v12, 0x5a

    .line 291
    invoke-virtual {v4, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 293
    const v10, 0x7f13058f    # @string/keyboard_key_page_up 'Page Up'

    .line 296
    const/16 v12, 0x5c

    .line 299
    const v13, 0x7f13058e    # @string/keyboard_key_page_down 'Page Down'

    .line 301
    invoke-static {v0, v10, v4, v12, v13}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 304
    move-result-object v10

    .line 307
    const/16 v12, 0x5d

    .line 308
    invoke-virtual {v4, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    const-string v10, "A"

    .line 313
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 315
    move-result-object v10

    .line 318
    const v12, 0x7f13057a    # @string/keyboard_key_button_template 'Button %1$s'

    .line 319
    invoke-virtual {v0, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 322
    move-result-object v10

    .line 325
    const/16 v13, 0x60

    .line 326
    invoke-virtual {v4, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 328
    const-string v10, "B"

    .line 331
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 333
    move-result-object v10

    .line 336
    invoke-virtual {v0, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 337
    move-result-object v10

    .line 340
    const/16 v13, 0x61

    .line 341
    invoke-virtual {v4, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    const-string v10, "C"

    .line 346
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 348
    move-result-object v10

    .line 351
    invoke-virtual {v0, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 352
    move-result-object v10

    .line 355
    const/16 v13, 0x62

    .line 356
    invoke-virtual {v4, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    const-string v10, "X"

    .line 361
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 363
    move-result-object v10

    .line 366
    invoke-virtual {v0, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 367
    move-result-object v10

    .line 370
    const/16 v13, 0x63

    .line 371
    invoke-virtual {v4, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    const-string v10, "Y"

    .line 376
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 378
    move-result-object v10

    .line 381
    invoke-virtual {v0, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 382
    move-result-object v10

    .line 385
    const/16 v13, 0x64

    .line 386
    invoke-virtual {v4, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    const-string v10, "Z"

    .line 391
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 393
    move-result-object v10

    .line 396
    invoke-virtual {v0, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 397
    move-result-object v10

    .line 400
    const/16 v13, 0x65

    .line 401
    invoke-virtual {v4, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    const-string v10, "L1"

    .line 406
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 408
    move-result-object v10

    .line 411
    invoke-virtual {v0, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 412
    move-result-object v10

    .line 415
    const/16 v13, 0x66

    .line 416
    invoke-virtual {v4, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 418
    const-string v10, "R1"

    .line 421
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 423
    move-result-object v10

    .line 426
    invoke-virtual {v0, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 427
    move-result-object v10

    .line 430
    const/16 v13, 0x67

    .line 431
    invoke-virtual {v4, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 433
    const-string v10, "L2"

    .line 436
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 438
    move-result-object v10

    .line 441
    invoke-virtual {v0, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 442
    move-result-object v10

    .line 445
    const/16 v13, 0x68

    .line 446
    invoke-virtual {v4, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    const-string v10, "R2"

    .line 451
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 453
    move-result-object v10

    .line 456
    invoke-virtual {v0, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 457
    move-result-object v10

    .line 460
    const/16 v13, 0x69

    .line 461
    invoke-virtual {v4, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    const-string v10, "Start"

    .line 466
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 468
    move-result-object v10

    .line 471
    invoke-virtual {v0, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 472
    move-result-object v10

    .line 475
    const/16 v13, 0x6c

    .line 476
    invoke-virtual {v4, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    const-string v10, "Select"

    .line 481
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 483
    move-result-object v10

    .line 486
    invoke-virtual {v0, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 487
    move-result-object v10

    .line 490
    const/16 v13, 0x6d

    .line 491
    invoke-virtual {v4, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 493
    const-string v10, "Mode"

    .line 496
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 498
    move-result-object v10

    .line 501
    invoke-virtual {v0, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 502
    move-result-object v10

    .line 505
    const/16 v12, 0x6e

    .line 506
    invoke-virtual {v4, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 508
    const v10, 0x7f130581    # @string/keyboard_key_forward_del 'Delete'

    .line 511
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 514
    move-result-object v10

    .line 517
    const/16 v12, 0x70

    .line 518
    invoke-virtual {v4, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 520
    const/16 v10, 0x6f

    .line 523
    const-string v12, "Esc"

    .line 525
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 527
    const/16 v10, 0x78

    .line 530
    const-string v12, "SysRq"

    .line 532
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 534
    const/16 v10, 0x79

    .line 537
    const-string v12, "Break"

    .line 539
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 541
    const/16 v10, 0x74

    .line 544
    const-string v12, "Scroll Lock"

    .line 546
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 548
    const v10, 0x7f13058b    # @string/keyboard_key_move_home 'Home'

    .line 551
    const/16 v12, 0x7a

    .line 554
    const v13, 0x7f13058a    # @string/keyboard_key_move_end 'End'

    .line 556
    invoke-static {v0, v10, v4, v12, v13}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/util/SparseArray;II)Ljava/lang/String;

    .line 559
    move-result-object v10

    .line 562
    const/16 v12, 0x7b

    .line 563
    invoke-virtual {v4, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 565
    const v10, 0x7f130583    # @string/keyboard_key_insert 'Insert'

    .line 568
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 571
    move-result-object v10

    .line 574
    const/16 v12, 0x7c

    .line 575
    invoke-virtual {v4, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 577
    const/16 v10, 0x83

    .line 580
    const-string v12, "F1"

    .line 582
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 584
    const/16 v10, 0x84

    .line 587
    const-string v12, "F2"

    .line 589
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 591
    const/16 v10, 0x85

    .line 594
    const-string v12, "F3"

    .line 596
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 598
    const/16 v10, 0x86

    .line 601
    const-string v12, "F4"

    .line 603
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 605
    const/16 v10, 0x87

    .line 608
    const-string v12, "F5"

    .line 610
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 612
    const/16 v10, 0x88

    .line 615
    const-string v12, "F6"

    .line 617
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 619
    const/16 v10, 0x89

    .line 622
    const-string v12, "F7"

    .line 624
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 626
    const/16 v10, 0x8a

    .line 629
    const-string v12, "F8"

    .line 631
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 633
    const/16 v10, 0x8b

    .line 636
    const-string v12, "F9"

    .line 638
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 640
    const/16 v10, 0x8c

    .line 643
    const-string v12, "F10"

    .line 645
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 647
    const/16 v10, 0x8d

    .line 650
    const-string v12, "F11"

    .line 652
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 654
    const/16 v10, 0x8e

    .line 657
    const-string v12, "F12"

    .line 659
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 661
    const v10, 0x7f13058c    # @string/keyboard_key_num_lock 'Num Lock'

    .line 664
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 667
    move-result-object v10

    .line 670
    const/16 v12, 0x8f

    .line 671
    invoke-virtual {v4, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 673
    const/16 v10, 0x45

    .line 676
    const-string v12, "-"

    .line 678
    invoke-virtual {v4, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 680
    const-string/jumbo v10, "~"

    .line 683
    const/16 v13, 0x44

    .line 686
    invoke-virtual {v4, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 688
    const/16 v10, 0x46

    .line 691
    const-string v13, "="

    .line 693
    invoke-virtual {v4, v10, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 695
    const-string v10, "0"

    .line 698
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 700
    move-result-object v10

    .line 703
    const v14, 0x7f13058d    # @string/keyboard_key_numpad_template 'Numpad %1$s'

    .line 704
    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 707
    move-result-object v10

    .line 710
    const/16 v15, 0x90

    .line 711
    invoke-virtual {v4, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 713
    const-string v10, "1"

    .line 716
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 718
    move-result-object v10

    .line 721
    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 722
    move-result-object v10

    .line 725
    const/16 v15, 0x91

    .line 726
    invoke-virtual {v4, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 728
    const-string v10, "2"

    .line 731
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 733
    move-result-object v10

    .line 736
    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 737
    move-result-object v10

    .line 740
    const/16 v15, 0x92

    .line 741
    invoke-virtual {v4, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 743
    const-string v10, "3"

    .line 746
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 748
    move-result-object v10

    .line 751
    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 752
    move-result-object v10

    .line 755
    const/16 v15, 0x93

    .line 756
    invoke-virtual {v4, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 758
    const-string v10, "4"

    .line 761
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 763
    move-result-object v10

    .line 766
    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 767
    move-result-object v10

    .line 770
    const/16 v15, 0x94

    .line 771
    invoke-virtual {v4, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 773
    const-string v10, "5"

    .line 776
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 778
    move-result-object v10

    .line 781
    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 782
    move-result-object v10

    .line 785
    const/16 v15, 0x95

    .line 786
    invoke-virtual {v4, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 788
    const-string v10, "6"

    .line 791
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 793
    move-result-object v10

    .line 796
    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 797
    move-result-object v10

    .line 800
    const/16 v15, 0x96

    .line 801
    invoke-virtual {v4, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 803
    const-string v10, "7"

    .line 806
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 808
    move-result-object v10

    .line 811
    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 812
    move-result-object v10

    .line 815
    const/16 v15, 0x97

    .line 816
    invoke-virtual {v4, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 818
    const-string v10, "8"

    .line 821
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 823
    move-result-object v10

    .line 826
    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 827
    move-result-object v10

    .line 830
    const/16 v15, 0x98

    .line 831
    invoke-virtual {v4, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 833
    const-string v10, "9"

    .line 836
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 838
    move-result-object v10

    .line 841
    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 842
    move-result-object v10

    .line 845
    const/16 v15, 0x99

    .line 846
    invoke-virtual {v4, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 848
    const-string v10, "/"

    .line 851
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 853
    move-result-object v10

    .line 856
    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 857
    move-result-object v10

    .line 860
    const/16 v15, 0x9a

    .line 861
    invoke-virtual {v4, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 863
    const-string v10, "*"

    .line 866
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 868
    move-result-object v10

    .line 871
    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 872
    move-result-object v10

    .line 875
    const/16 v15, 0x9b

    .line 876
    invoke-virtual {v4, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 878
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 881
    move-result-object v10

    .line 884
    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 885
    move-result-object v10

    .line 888
    const/16 v12, 0x9c

    .line 889
    invoke-virtual {v4, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 891
    const-string v10, "+"

    .line 894
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 896
    move-result-object v10

    .line 899
    invoke-virtual {v0, v14, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 900
    move-result-object v10

    .line 903
    const/16 v12, 0x9d

    .line 904
    invoke-virtual {v4, v12, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 906
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 909
    move-result-object v9

    .line 912
    invoke-virtual {v0, v14, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 913
    move-result-object v9

    .line 916
    const/16 v10, 0x9e

    .line 917
    invoke-virtual {v4, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 919
    const-string v9, ","

    .line 922
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 924
    move-result-object v9

    .line 927
    invoke-virtual {v0, v14, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 928
    move-result-object v9

    .line 931
    const/16 v10, 0x9f

    .line 932
    invoke-virtual {v4, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 934
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 937
    move-result-object v2

    .line 940
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 941
    move-result-object v2

    .line 944
    invoke-virtual {v0, v14, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 945
    move-result-object v2

    .line 948
    const/16 v9, 0xa0

    .line 949
    invoke-virtual {v4, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 951
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 954
    move-result-object v2

    .line 957
    invoke-virtual {v0, v14, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 958
    move-result-object v2

    .line 961
    const/16 v9, 0xa1

    .line 962
    invoke-virtual {v4, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 964
    const-string v2, "("

    .line 967
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 969
    move-result-object v2

    .line 972
    invoke-virtual {v0, v14, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 973
    move-result-object v2

    .line 976
    const/16 v9, 0xa2

    .line 977
    invoke-virtual {v4, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 979
    const-string v2, ")"

    .line 982
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 984
    move-result-object v2

    .line 987
    invoke-virtual {v0, v14, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 988
    move-result-object v2

    .line 991
    const/16 v9, 0xa3

    .line 992
    invoke-virtual {v4, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 994
    const/16 v2, 0xd3

    .line 997
    const-string/jumbo v9, "\u534a\u89d2/\u5168\u89d2"

    .line 999
    invoke-virtual {v4, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1002
    const/16 v2, 0xd4

    .line 1005
    const-string/jumbo v9, "\u82f1\u6570"

    .line 1007
    invoke-virtual {v4, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1010
    const/16 v2, 0xd5

    .line 1013
    const-string/jumbo v9, "\u7121\u5909\u63db"

    .line 1015
    invoke-virtual {v4, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1018
    const/16 v2, 0xd6

    .line 1021
    const-string/jumbo v9, "\u5909\u63db"

    .line 1023
    invoke-virtual {v4, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1026
    const/16 v2, 0xd7

    .line 1029
    const-string/jumbo v9, "\u304b\u306a"

    .line 1031
    invoke-virtual {v4, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1034
    const-string v2, "Meta"

    .line 1037
    const/high16 v4, 0x10000

    .line 1039
    invoke-virtual {v5, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1041
    const-string v2, "Ctrl"

    .line 1044
    const/16 v9, 0x1000

    .line 1046
    invoke-virtual {v5, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1048
    const-string v2, "Alt"

    .line 1051
    const/4 v9, 0x2

    .line 1053
    invoke-virtual {v5, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1054
    const-string v2, "Shift"

    .line 1057
    const/4 v10, 0x1

    .line 1059
    invoke-virtual {v5, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1060
    const-string v2, "Sym"

    .line 1063
    invoke-virtual {v5, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1065
    const-string v2, "Fn"

    .line 1068
    const/16 v8, 0x8

    .line 1070
    invoke-virtual {v5, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1072
    const v2, 0x7f08102e    # @drawable/ic_ksh_key_backspace 'res/drawable/ic_ksh_key_backspace.xml'

    .line 1075
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1078
    move-result-object v2

    .line 1081
    invoke-virtual {v6, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1082
    const v2, 0x7f081030    # @drawable/ic_ksh_key_enter 'res/drawable/ic_ksh_key_enter.xml'

    .line 1085
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1088
    move-result-object v2

    .line 1091
    const/16 v5, 0x42

    .line 1092
    invoke-virtual {v6, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1094
    const v2, 0x7f081034    # @drawable/ic_ksh_key_up 'res/drawable/ic_ksh_key_up.xml'

    .line 1097
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1100
    move-result-object v2

    .line 1103
    const/16 v5, 0x13

    .line 1104
    invoke-virtual {v6, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1106
    const v2, 0x7f081033    # @drawable/ic_ksh_key_right 'res/drawable/ic_ksh_key_right.xml'

    .line 1109
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1112
    move-result-object v2

    .line 1115
    const/16 v5, 0x16

    .line 1116
    invoke-virtual {v6, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1118
    const v2, 0x7f08102f    # @drawable/ic_ksh_key_down 'res/drawable/ic_ksh_key_down.xml'

    .line 1121
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1124
    move-result-object v2

    .line 1127
    const/16 v5, 0x14

    .line 1128
    invoke-virtual {v6, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1130
    const v2, 0x7f081031    # @drawable/ic_ksh_key_left 'res/drawable/ic_ksh_key_left.xml'

    .line 1133
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1136
    move-result-object v2

    .line 1139
    const/16 v5, 0x15

    .line 1140
    invoke-virtual {v6, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1142
    const v2, 0x7f081032    # @drawable/ic_ksh_key_meta 'res/drawable/ic_ksh_key_meta.xml'

    .line 1145
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1148
    move-result-object v0

    .line 1151
    invoke-virtual {v7, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1152
    const/4 v0, 0x0

    .line 1155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1156
    move-result-object v0

    .line 1159
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1160
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 1165
    new-instance v5, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;

    .line 1167
    const v6, 0x7f1305a0    # @string/keyboard_shortcut_group_system 'System'

    .line 1169
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1172
    move-result-object v6

    .line 1175
    new-instance v7, Ljava/util/ArrayList;

    .line 1176
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 1181
    new-instance v12, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;

    .line 1184
    const v6, 0x7f1304b7    # @string/group_system_access_notification_shade 'Access notification shade'

    .line 1186
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1189
    move-result-object v6

    .line 1192
    const/16 v7, 0x2a

    .line 1193
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1195
    move-result-object v7

    .line 1198
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1199
    move-result-object v4

    .line 1202
    invoke-static {v7, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1203
    move-result-object v7

    .line 1206
    filled-new-array {v7}, [Landroid/util/Pair;

    .line 1207
    move-result-object v7

    .line 1210
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1211
    move-result-object v7

    .line 1214
    invoke-direct {v12, v6, v7}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1215
    new-instance v13, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;

    .line 1218
    const v6, 0x7f1304bc    # @string/group_system_full_screenshot 'Take a full screenshot'

    .line 1220
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1223
    move-result-object v6

    .line 1226
    const/16 v7, 0x2f

    .line 1227
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1229
    move-result-object v7

    .line 1232
    const v8, 0x11000

    .line 1233
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1236
    move-result-object v8

    .line 1239
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1240
    move-result-object v7

    .line 1243
    filled-new-array {v7}, [Landroid/util/Pair;

    .line 1244
    move-result-object v7

    .line 1247
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1248
    move-result-object v7

    .line 1251
    invoke-direct {v13, v6, v7}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1252
    new-instance v14, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;

    .line 1255
    const v6, 0x7f1304b8    # @string/group_system_access_system_app_shortcuts 'Access list of system / apps shortcuts'

    .line 1257
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1260
    move-result-object v6

    .line 1263
    const/16 v7, 0x4c

    .line 1264
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1266
    move-result-object v7

    .line 1269
    invoke-static {v7, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1270
    move-result-object v7

    .line 1273
    filled-new-array {v7}, [Landroid/util/Pair;

    .line 1274
    move-result-object v7

    .line 1277
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1278
    move-result-object v7

    .line 1281
    invoke-direct {v14, v6, v7}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1282
    new-instance v15, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;

    .line 1285
    const v6, 0x7f1304bd    # @string/group_system_go_back 'Back: go back to previous state (back button)'

    .line 1287
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1290
    move-result-object v6

    .line 1293
    const/16 v7, 0x44

    .line 1294
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1296
    move-result-object v7

    .line 1299
    invoke-static {v7, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1300
    move-result-object v7

    .line 1303
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1304
    move-result-object v8

    .line 1307
    invoke-static {v8, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1308
    move-result-object v8

    .line 1311
    const/16 v10, 0x15

    .line 1312
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1314
    move-result-object v10

    .line 1317
    invoke-static {v10, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1318
    move-result-object v10

    .line 1321
    filled-new-array {v7, v8, v10}, [Landroid/util/Pair;

    .line 1322
    move-result-object v7

    .line 1325
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1326
    move-result-object v7

    .line 1329
    invoke-direct {v15, v6, v7}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1330
    new-instance v6, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;

    .line 1333
    const v7, 0x7f1304b6    # @string/group_system_access_home_screen 'Access home screen'

    .line 1335
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1338
    move-result-object v7

    .line 1341
    const/16 v8, 0x24

    .line 1342
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1344
    move-result-object v8

    .line 1347
    invoke-static {v8, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1348
    move-result-object v8

    .line 1351
    const/16 v10, 0x42

    .line 1352
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1354
    move-result-object v10

    .line 1357
    invoke-static {v10, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1358
    move-result-object v10

    .line 1361
    filled-new-array {v8, v10}, [Landroid/util/Pair;

    .line 1362
    move-result-object v8

    .line 1365
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1366
    move-result-object v8

    .line 1369
    invoke-direct {v6, v7, v8}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1370
    new-instance v7, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;

    .line 1373
    const v8, 0x7f1304c0    # @string/group_system_overview_open_apps 'Overview of open apps'

    .line 1375
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1378
    move-result-object v8

    .line 1381
    const/16 v10, 0x3d

    .line 1382
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1384
    move-result-object v10

    .line 1387
    invoke-static {v10, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1388
    move-result-object v11

    .line 1391
    filled-new-array {v11}, [Landroid/util/Pair;

    .line 1392
    move-result-object v11

    .line 1395
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1396
    move-result-object v11

    .line 1399
    invoke-direct {v7, v8, v11}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1400
    new-instance v8, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;

    .line 1403
    const v11, 0x7f1304bb    # @string/group_system_cycle_forward 'Cycle through recent apps (forward)'

    .line 1405
    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1408
    move-result-object v11

    .line 1411
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1412
    move-result-object v9

    .line 1415
    invoke-static {v10, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1416
    move-result-object v9

    .line 1419
    filled-new-array {v9}, [Landroid/util/Pair;

    .line 1420
    move-result-object v9

    .line 1423
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1424
    move-result-object v9

    .line 1427
    invoke-direct {v8, v11, v9}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1428
    new-instance v9, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;

    .line 1431
    const v11, 0x7f1304ba    # @string/group_system_cycle_back 'Cycle through recent apps (back)'

    .line 1433
    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1436
    move-result-object v11

    .line 1439
    const/16 v16, 0x3

    .line 1440
    move-object/from16 v24, v3

    .line 1442
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1444
    move-result-object v3

    .line 1447
    invoke-static {v10, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1448
    move-result-object v3

    .line 1451
    filled-new-array {v3}, [Landroid/util/Pair;

    .line 1452
    move-result-object v3

    .line 1455
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1456
    move-result-object v3

    .line 1459
    invoke-direct {v9, v11, v3}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1460
    new-instance v3, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;

    .line 1463
    const v10, 0x7f1304b4    # @string/group_system_access_all_apps_search 'Access list of all apps and search (i.e. Search/Launcher)'

    .line 1465
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1468
    move-result-object v10

    .line 1471
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1472
    move-result-object v0

    .line 1475
    filled-new-array {v0}, [Landroid/util/Pair;

    .line 1476
    move-result-object v0

    .line 1479
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1480
    move-result-object v0

    .line 1483
    invoke-direct {v3, v10, v0}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1484
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;

    .line 1487
    const v10, 0x7f1304be    # @string/group_system_hide_reshow_taskbar 'Hide and (re)show taskbar'

    .line 1489
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1492
    move-result-object v10

    .line 1495
    const/16 v11, 0x30

    .line 1496
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1498
    move-result-object v11

    .line 1501
    invoke-static {v11, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1502
    move-result-object v11

    .line 1505
    filled-new-array {v11}, [Landroid/util/Pair;

    .line 1506
    move-result-object v11

    .line 1509
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1510
    move-result-object v11

    .line 1513
    invoke-direct {v0, v10, v11}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1514
    new-instance v10, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;

    .line 1517
    const v11, 0x7f1304b9    # @string/group_system_access_system_settings 'Access system settings'

    .line 1519
    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1522
    move-result-object v11

    .line 1525
    const/16 v16, 0x25

    .line 1526
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1528
    move-result-object v1

    .line 1531
    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1532
    move-result-object v1

    .line 1535
    filled-new-array {v1}, [Landroid/util/Pair;

    .line 1536
    move-result-object v1

    .line 1539
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1540
    move-result-object v1

    .line 1543
    invoke-direct {v10, v11, v1}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1544
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;

    .line 1547
    const v11, 0x7f1304b5    # @string/group_system_access_google_assistant 'Access Google Assistant'

    .line 1549
    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1552
    move-result-object v2

    .line 1555
    const/16 v11, 0x1d

    .line 1556
    move-object/from16 p1, v5

    .line 1558
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1560
    move-result-object v5

    .line 1563
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1564
    move-result-object v4

    .line 1567
    filled-new-array {v4}, [Landroid/util/Pair;

    .line 1568
    move-result-object v4

    .line 1571
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1572
    move-result-object v4

    .line 1575
    invoke-direct {v1, v2, v4}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1576
    move-object/from16 v16, v6

    .line 1579
    move-object/from16 v17, v7

    .line 1581
    move-object/from16 v18, v8

    .line 1583
    move-object/from16 v19, v9

    .line 1585
    move-object/from16 v20, v3

    .line 1587
    move-object/from16 v21, v0

    .line 1589
    move-object/from16 v22, v10

    .line 1591
    move-object/from16 v23, v1

    .line 1593
    filled-new-array/range {v12 .. v23}, [Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;

    .line 1595
    move-result-object v0

    .line 1598
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1599
    move-result-object v0

    .line 1602
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1603
    move-result-object v0

    .line 1606
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1607
    move-result v1

    .line 1610
    const/4 v2, 0x0

    .line 1611
    if-eqz v1, :cond_2

    .line 1612
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1614
    move-result-object v1

    .line 1617
    check-cast v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;

    .line 1618
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1620
    new-instance v3, Ljava/util/ArrayList;

    .line 1623
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1625
    iget-object v4, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;->mKeycodeGroupList:Ljava/util/List;

    .line 1628
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1630
    move-result-object v4

    .line 1633
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1634
    move-result v5

    .line 1637
    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroupMultiMappingInfo;->mLabel:Ljava/lang/String;

    .line 1638
    if-eqz v5, :cond_1

    .line 1640
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1642
    move-result-object v5

    .line 1645
    check-cast v5, Landroid/util/Pair;

    .line 1646
    new-instance v7, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 1648
    new-instance v8, Landroid/view/KeyboardShortcutInfo;

    .line 1650
    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1652
    check-cast v9, Ljava/lang/Integer;

    .line 1654
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 1656
    move-result v9

    .line 1659
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1660
    check-cast v5, Ljava/lang/Integer;

    .line 1662
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1664
    move-result v5

    .line 1667
    invoke-direct {v8, v6, v9, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 1668
    invoke-direct {v7, v8}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;-><init>(Landroid/view/KeyboardShortcutInfo;)V

    .line 1671
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    goto :goto_2

    .line 1677
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;

    .line 1678
    invoke-direct {v1, v6, v2, v3}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;)V

    .line 1680
    move-object/from16 v3, p1

    .line 1683
    iget-object v2, v3, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;->mItems:Ljava/util/List;

    .line 1685
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1687
    goto :goto_1

    .line 1690
    :cond_2
    move-object/from16 v1, p0

    .line 1691
    move-object/from16 v3, p1

    .line 1693
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mSystemGroup:Ljava/util/List;

    .line 1695
    check-cast v0, Ljava/util/ArrayList;

    .line 1697
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    iget-object v3, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 1702
    new-instance v4, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;

    .line 1704
    const v5, 0x7f1305a3    # @string/keyboard_shortcut_group_system_multitasking 'System multitasking'

    .line 1706
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1709
    move-result-object v5

    .line 1712
    new-instance v6, Ljava/util/ArrayList;

    .line 1713
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1715
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 1718
    const v5, 0x7f130b5d    # @string/system_multitasking_full_screen 'Switch from Split screen to full screen'

    .line 1721
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1724
    move-result-object v3

    .line 1727
    filled-new-array {v3}, [Ljava/lang/String;

    .line 1728
    move-result-object v3

    .line 1731
    const/16 v5, 0x13

    .line 1732
    filled-new-array {v5}, [I

    .line 1734
    move-result-object v5

    .line 1737
    new-instance v7, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 1738
    new-instance v8, Landroid/view/KeyboardShortcutInfo;

    .line 1740
    const/4 v9, 0x0

    .line 1742
    aget-object v10, v3, v9

    .line 1743
    aget v5, v5, v9

    .line 1745
    const v12, 0x11000

    .line 1747
    invoke-direct {v8, v10, v5, v12}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 1750
    invoke-direct {v7, v8}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;-><init>(Landroid/view/KeyboardShortcutInfo;)V

    .line 1753
    filled-new-array {v7}, [Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 1756
    move-result-object v5

    .line 1759
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1760
    move-result-object v5

    .line 1763
    new-instance v7, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;

    .line 1764
    aget-object v3, v3, v9

    .line 1766
    invoke-direct {v7, v3, v2, v5}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;)V

    .line 1768
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1771
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1774
    const/4 v0, 0x1

    .line 1777
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1778
    move-result-object v0

    .line 1781
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1782
    move-object/from16 v4, v24

    .line 1784
    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 1789
    new-instance v3, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;

    .line 1791
    const v5, 0x7f13055f    # @string/input_switch_input_language_next 'Switch input language (next language)'

    .line 1793
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1796
    move-result-object v6

    .line 1799
    new-instance v7, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 1800
    new-instance v8, Landroid/view/KeyboardShortcutInfo;

    .line 1802
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1804
    move-result-object v9

    .line 1807
    const/16 v10, 0x1000

    .line 1808
    const/16 v12, 0x3e

    .line 1810
    invoke-direct {v8, v9, v12, v10}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 1812
    invoke-direct {v7, v8}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;-><init>(Landroid/view/KeyboardShortcutInfo;)V

    .line 1815
    new-instance v8, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 1818
    new-instance v9, Landroid/view/KeyboardShortcutInfo;

    .line 1820
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1822
    move-result-object v5

    .line 1825
    const/high16 v10, 0x10000

    .line 1826
    invoke-direct {v9, v5, v12, v10}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 1828
    invoke-direct {v8, v9}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;-><init>(Landroid/view/KeyboardShortcutInfo;)V

    .line 1831
    filled-new-array {v7, v8}, [Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 1834
    move-result-object v5

    .line 1837
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1838
    move-result-object v5

    .line 1841
    invoke-direct {v3, v6, v2, v5}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;)V

    .line 1842
    new-instance v5, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;

    .line 1845
    const v6, 0x7f130560    # @string/input_switch_input_language_previous 'Switch input language (previous language)'

    .line 1847
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1850
    move-result-object v7

    .line 1853
    new-instance v8, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 1854
    new-instance v9, Landroid/view/KeyboardShortcutInfo;

    .line 1856
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1858
    move-result-object v10

    .line 1861
    const/16 v12, 0x1001

    .line 1862
    const/16 v13, 0x3e

    .line 1864
    invoke-direct {v9, v10, v13, v12}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 1866
    invoke-direct {v8, v9}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;-><init>(Landroid/view/KeyboardShortcutInfo;)V

    .line 1869
    new-instance v9, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 1872
    new-instance v10, Landroid/view/KeyboardShortcutInfo;

    .line 1874
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1876
    move-result-object v6

    .line 1879
    const v12, 0x10001

    .line 1880
    invoke-direct {v10, v6, v13, v12}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 1883
    invoke-direct {v9, v10}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;-><init>(Landroid/view/KeyboardShortcutInfo;)V

    .line 1886
    filled-new-array {v8, v9}, [Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 1889
    move-result-object v6

    .line 1892
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1893
    move-result-object v6

    .line 1896
    invoke-direct {v5, v7, v2, v6}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;)V

    .line 1897
    filled-new-array {v3, v5}, [Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;

    .line 1900
    move-result-object v3

    .line 1903
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1904
    move-result-object v3

    .line 1907
    new-instance v5, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;

    .line 1908
    const v6, 0x7f13059f    # @string/keyboard_shortcut_group_input 'Input'

    .line 1910
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1913
    move-result-object v0

    .line 1916
    invoke-direct {v5, v0, v3}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 1917
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mInputGroup:Ljava/util/List;

    .line 1920
    check-cast v0, Ljava/util/ArrayList;

    .line 1922
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    const/4 v0, 0x1

    .line 1927
    new-array v3, v0, [Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;

    .line 1928
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 1930
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 1932
    move-result v12

    .line 1935
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 1936
    new-instance v5, Lcom/android/internal/app/AssistUtils;

    .line 1938
    invoke-direct {v5, v0}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    .line 1940
    invoke-virtual {v5, v12}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    .line 1943
    move-result-object v0

    .line 1946
    iget-object v13, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1947
    const-wide/16 v5, 0x0

    .line 1949
    const-string v14, "PackageManagerService is dead"

    .line 1951
    const-string v15, "KeyboardShortcutListSearch"

    .line 1953
    if-eqz v0, :cond_3

    .line 1955
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1957
    move-result-object v0

    .line 1960
    invoke-interface {v13, v0, v5, v6, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 1961
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1964
    goto :goto_3

    .line 1965
    :catch_0
    invoke-static {v15, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_3
    :goto_3
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 1969
    const v5, 0x7f130595    # @string/keyboard_shortcut_group_applications 'Applications'

    .line 1971
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1974
    move-result-object v10

    .line 1977
    new-instance v8, Ljava/util/ArrayList;

    .line 1978
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1980
    const-string v16, "android.intent.category.APP_BROWSER"

    .line 1983
    const-string v17, "android.intent.category.APP_CONTACTS"

    .line 1985
    const-string v18, "android.intent.category.APP_EMAIL"

    .line 1987
    const-string v19, "android.intent.category.APP_CALENDAR"

    .line 1989
    const-string v20, "android.intent.category.APP_MAPS"

    .line 1991
    const-string v21, "android.intent.category.APP_MUSIC"

    .line 1993
    const-string v22, "android.intent.category.APP_MESSAGING"

    .line 1995
    const-string v23, "android.intent.category.APP_CALCULATOR"

    .line 1997
    filled-new-array/range {v16 .. v23}, [Ljava/lang/String;

    .line 1999
    move-result-object v16

    .line 2002
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 2003
    const v5, 0x7f130597    # @string/keyboard_shortcut_group_applications_browser 'Browser (Chrome as default)'

    .line 2005
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2008
    move-result-object v17

    .line 2011
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 2012
    const v5, 0x7f13059a    # @string/keyboard_shortcut_group_applications_contacts 'Contacts'

    .line 2014
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2017
    move-result-object v18

    .line 2020
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 2021
    const v5, 0x7f13059b    # @string/keyboard_shortcut_group_applications_email 'Email (Gmail as default)'

    .line 2023
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2026
    move-result-object v19

    .line 2029
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 2030
    const v5, 0x7f130599    # @string/keyboard_shortcut_group_applications_calendar 'Calendar'

    .line 2032
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2035
    move-result-object v20

    .line 2038
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 2039
    const v5, 0x7f13059c    # @string/keyboard_shortcut_group_applications_maps 'Maps'

    .line 2041
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2044
    move-result-object v21

    .line 2047
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 2048
    const v5, 0x7f13059d    # @string/keyboard_shortcut_group_applications_music 'Music'

    .line 2050
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2053
    move-result-object v22

    .line 2056
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 2057
    const v5, 0x7f13059e    # @string/keyboard_shortcut_group_applications_sms 'SMS'

    .line 2059
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2062
    move-result-object v23

    .line 2065
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 2066
    const v5, 0x7f130598    # @string/keyboard_shortcut_group_applications_calculator 'Calculator'

    .line 2068
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2071
    move-result-object v24

    .line 2074
    filled-new-array/range {v17 .. v24}, [Ljava/lang/String;

    .line 2075
    move-result-object v17

    .line 2078
    const/16 v0, 0x8

    .line 2079
    new-array v9, v0, [I

    .line 2081
    fill-array-data v9, :array_1

    .line 2083
    if-eqz v2, :cond_4

    .line 2086
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2088
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2090
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 2092
    invoke-static {v2, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 2094
    move-result-object v0

    .line 2097
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 2098
    const v5, 0x7f130596    # @string/keyboard_shortcut_group_applications_assist 'Assist'

    .line 2100
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2103
    move-result-object v2

    .line 2106
    new-instance v5, Landroid/view/KeyboardShortcutInfo;

    .line 2107
    const/high16 v6, 0x10000

    .line 2109
    invoke-direct {v5, v2, v0, v11, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 2111
    new-instance v6, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;

    .line 2114
    new-instance v7, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 2116
    invoke-direct {v7, v5}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;-><init>(Landroid/view/KeyboardShortcutInfo;)V

    .line 2118
    filled-new-array {v7}, [Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 2121
    move-result-object v5

    .line 2124
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2125
    move-result-object v5

    .line 2128
    invoke-direct {v6, v2, v0, v5}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;)V

    .line 2129
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2132
    :cond_4
    const/4 v0, 0x0

    .line 2135
    const/16 v2, 0x8

    .line 2136
    move/from16 v25, v2

    .line 2138
    move v2, v0

    .line 2140
    move/from16 v0, v25

    .line 2141
    :goto_4
    if-ge v2, v0, :cond_9

    .line 2143
    aget-object v0, v16, v2

    .line 2145
    new-instance v6, Landroid/content/Intent;

    .line 2147
    const-string v5, "android.intent.action.MAIN"

    .line 2149
    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2154
    :try_start_1
    iget-object v5, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2157
    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 2159
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2161
    move-result-object v0

    .line 2164
    invoke-virtual {v6, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 2165
    move-result-object v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2168
    const-wide/16 v18, 0x0

    .line 2169
    move-object v11, v8

    .line 2171
    move-object/from16 v20, v9

    .line 2172
    move-wide/from16 v8, v18

    .line 2174
    move-object/from16 v24, v4

    .line 2176
    move-object v4, v10

    .line 2178
    move v10, v12

    .line 2179
    :try_start_2
    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    .line 2180
    move-result-object v0

    .line 2183
    if-eqz v0, :cond_6

    .line 2184
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2186
    if-nez v0, :cond_5

    .line 2188
    goto :goto_6

    .line 2190
    :cond_5
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2191
    const-wide/16 v5, 0x0

    .line 2193
    invoke-interface {v13, v0, v5, v6, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 2195
    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2198
    goto :goto_7

    .line 2199
    :catch_1
    move-exception v0

    .line 2200
    goto :goto_5

    .line 2201
    :catch_2
    move-exception v0

    .line 2202
    move-object/from16 v24, v4

    .line 2203
    move-object v11, v8

    .line 2205
    move-object/from16 v20, v9

    .line 2206
    move-object v4, v10

    .line 2208
    :goto_5
    invoke-static {v15, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2209
    :cond_6
    :goto_6
    const/4 v0, 0x0

    .line 2212
    :goto_7
    if-eqz v0, :cond_7

    .line 2213
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2215
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 2217
    if-eqz v5, :cond_7

    .line 2219
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2221
    invoke-static {v0, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 2223
    move-result-object v0

    .line 2226
    goto :goto_8

    .line 2227
    :cond_7
    const/4 v0, 0x0

    .line 2228
    :goto_8
    if-eqz v0, :cond_8

    .line 2229
    aget-object v5, v17, v2

    .line 2231
    new-instance v6, Landroid/view/KeyboardShortcutInfo;

    .line 2233
    aget v7, v20, v2

    .line 2235
    const/high16 v8, 0x10000

    .line 2237
    invoke-direct {v6, v5, v0, v7, v8}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 2239
    new-instance v7, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 2242
    invoke-direct {v7, v6}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;-><init>(Landroid/view/KeyboardShortcutInfo;)V

    .line 2244
    filled-new-array {v7}, [Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 2247
    move-result-object v6

    .line 2250
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2251
    move-result-object v6

    .line 2254
    new-instance v7, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;

    .line 2255
    invoke-direct {v7, v5, v0, v6}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;)V

    .line 2257
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2260
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 2263
    const/16 v0, 0x8

    .line 2265
    move-object v10, v4

    .line 2267
    move-object v8, v11

    .line 2268
    move-object/from16 v9, v20

    .line 2269
    move-object/from16 v4, v24

    .line 2271
    goto/16 :goto_4

    .line 2273
    :cond_9
    move-object/from16 v24, v4

    .line 2275
    move-object v11, v8

    .line 2277
    move-object v4, v10

    .line 2278
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$2;

    .line 2279
    invoke-direct {v0}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$2;-><init>()V

    .line 2281
    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2284
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;

    .line 2287
    invoke-direct {v0, v4, v11}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 2289
    const/4 v2, 0x0

    .line 2292
    aput-object v0, v3, v2

    .line 2293
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2295
    move-result-object v0

    .line 2298
    if-eqz v0, :cond_a

    .line 2299
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 2301
    move-result v2

    .line 2304
    if-nez v2, :cond_a

    .line 2305
    iput-object v0, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mOpenAppsGroup:Ljava/util/List;

    .line 2307
    const/4 v0, 0x2

    .line 2309
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2310
    move-result-object v0

    .line 2313
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2314
    move-object/from16 v2, v24

    .line 2316
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2318
    goto :goto_9

    .line 2321
    :cond_a
    move-object/from16 v2, v24

    .line 2322
    const/4 v0, 0x2

    .line 2324
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2325
    move-result-object v0

    .line 2328
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2329
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    :goto_9
    return-void

    .line 2334
    nop

    :array_0
    .array-data 4
        0x10000
        0x1000
        0x2
        0x1
        0x4
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x1e
        0x1f
        0x21
        0x27
        0x29
        0x2c
        0x2f
        0x31
    .end array-data
.end method

.method public static dismiss()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 5
    if-eqz v1, :cond_1

    .line 7
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 9
    const/16 v2, 0x1f4

    .line 11
    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 13
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 16
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyboardShortcutsBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 18
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 23
    iput-object v3, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyboardShortcutsBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 26
    :cond_0
    sput-object v3, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 28
    :cond_1
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1
    .line 34
.end method

.method public static show(ILandroid/content/Context;)V
    .locals 3

    .line 1
    const/16 v0, 0x1f4

    .line 2
    invoke-static {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 4
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->dismiss()V

    .line 22
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 25
    if-nez v1, :cond_1

    .line 27
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 29
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    .line 32
    sput-object v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 35
    :cond_1
    sget-object p1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 37
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->showKeyboardShortcuts(I)V

    .line 39
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
    .line 46
.end method

.method public static toggle(ILandroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyboardShortcutsBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

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
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->dismiss()V

    .line 24
    goto :goto_1

    .line 27
    :cond_1
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->show(ILandroid/content/Context;)V

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
.method public final populateKeyboardShortcutSearchList(Landroid/widget/LinearLayout;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v2

    .line 11
    const v3, 0x7f0d00f5    # @layout/keyboard_shortcuts_key_view 'res/layout/keyboard_shortcuts_key_view.xml'

    .line 12
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 19
    check-cast v3, Landroid/widget/TextView;

    .line 20
    invoke-virtual {v3, v4, v4}, Landroid/widget/TextView;->measure(II)V

    .line 22
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 25
    move-result v5

    .line 28
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 29
    move-result v6

    .line 32
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    .line 33
    move-result v7

    .line 36
    sub-int/2addr v6, v7

    .line 37
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    .line 38
    move-result v3

    .line 41
    sub-int/2addr v6, v3

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 43
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mQueryString:Ljava/lang/String;

    .line 46
    iget-object v7, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mFullShortsGroup:Ljava/util/List;

    .line 48
    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeySearchResultMap:Ljava/util/Map;

    .line 50
    if-eqz v3, :cond_3

    .line 52
    move v3, v4

    .line 54
    :goto_0
    move-object v9, v7

    .line 55
    check-cast v9, Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 58
    move-result v10

    .line 61
    if-ge v3, v10, :cond_3

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v10

    .line 67
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 68
    move-object v12, v8

    .line 70
    check-cast v12, Ljava/util/HashMap;

    .line 71
    invoke-virtual {v12, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v9

    .line 79
    check-cast v9, Ljava/util/List;

    .line 80
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    move-result-object v9

    .line 85
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    move-result v10

    .line 89
    if-eqz v10, :cond_2

    .line 90
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    move-result-object v10

    .line 95
    check-cast v10, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;

    .line 96
    iget-object v10, v10, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;->mItems:Ljava/util/List;

    .line 98
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object v10

    .line 103
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v11

    .line 107
    if-eqz v11, :cond_0

    .line 108
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v11

    .line 113
    check-cast v11, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;

    .line 114
    iget-object v11, v11, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mLabel:Ljava/lang/CharSequence;

    .line 116
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 118
    move-result-object v11

    .line 121
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 122
    move-result-object v13

    .line 125
    invoke-virtual {v11, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 126
    move-result-object v11

    .line 129
    iget-object v13, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mQueryString:Ljava/lang/String;

    .line 130
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 132
    move-result-object v14

    .line 135
    invoke-virtual {v13, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 136
    move-result-object v13

    .line 139
    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 140
    move-result v11

    .line 143
    if-eqz v11, :cond_1

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v10

    .line 149
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 150
    invoke-virtual {v12, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    goto :goto_1

    .line 155
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 156
    goto :goto_0

    .line 158
    :cond_3
    move v3, v4

    .line 159
    :goto_2
    move-object v9, v8

    .line 160
    check-cast v9, Ljava/util/HashMap;

    .line 161
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    .line 163
    move-result v10

    .line 166
    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mFullButtonList:Ljava/util/ArrayList;

    .line 167
    const/16 v12, 0x8

    .line 169
    if-ge v3, v10, :cond_5

    .line 171
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    move-result-object v10

    .line 176
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    move-result-object v9

    .line 180
    check-cast v9, Ljava/lang/Boolean;

    .line 181
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 183
    move-result v9

    .line 186
    if-eqz v9, :cond_4

    .line 187
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    move-result-object v9

    .line 192
    check-cast v9, Landroid/widget/Button;

    .line 193
    invoke-virtual {v9, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->setButtonFocusColor(IZ)V

    .line 198
    goto :goto_3

    .line 201
    :cond_4
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    move-result-object v9

    .line 205
    check-cast v9, Landroid/widget/Button;

    .line 206
    invoke-virtual {v9, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 211
    goto :goto_2

    .line 213
    :cond_5
    iget v3, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mCurrentCategoryIndex:I

    .line 214
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    move-result-object v3

    .line 219
    check-cast v3, Landroid/widget/Button;

    .line 220
    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    .line 222
    move-result v3

    .line 225
    if-ne v3, v12, :cond_7

    .line 226
    move v3, v4

    .line 228
    :goto_4
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    .line 229
    move-result v8

    .line 232
    if-ge v3, v8, :cond_7

    .line 233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    move-result-object v8

    .line 238
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    move-result-object v8

    .line 242
    check-cast v8, Ljava/lang/Boolean;

    .line 243
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 245
    move-result v8

    .line 248
    if-eqz v8, :cond_6

    .line 249
    iput v3, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mCurrentCategoryIndex:I

    .line 251
    goto :goto_5

    .line 253
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 254
    goto :goto_4

    .line 256
    :cond_7
    :goto_5
    iget v3, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mCurrentCategoryIndex:I

    .line 257
    const/4 v8, 0x1

    .line 259
    invoke-virtual {v0, v3, v8}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->setButtonFocusColor(IZ)V

    .line 260
    iget v3, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mCurrentCategoryIndex:I

    .line 263
    check-cast v7, Ljava/util/ArrayList;

    .line 265
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 267
    move-result-object v3

    .line 270
    check-cast v3, Ljava/util/List;

    .line 271
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 273
    move-result v7

    .line 276
    new-instance v9, Ljava/util/ArrayList;

    .line 277
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 279
    move v10, v4

    .line 282
    :goto_6
    if-ge v10, v7, :cond_24

    .line 283
    const v11, 0x7f0d00ed    # @layout/keyboard_shortcuts_category_short_separator 'res/layout/keyboard_shortcuts_category_short_separator.xml'

    .line 285
    invoke-virtual {v2, v11, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 288
    move-result-object v11

    .line 291
    if-lez v10, :cond_8

    .line 292
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    :cond_8
    new-instance v13, Ljava/util/ArrayList;

    .line 297
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 299
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    move-result-object v14

    .line 305
    check-cast v14, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;

    .line 306
    const v15, 0x7f0d00ee    # @layout/keyboard_shortcuts_category_title 'res/layout/keyboard_shortcuts_category_title.xml'

    .line 308
    invoke-virtual {v2, v15, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 311
    move-result-object v15

    .line 314
    check-cast v15, Landroid/widget/TextView;

    .line 315
    iget-object v12, v14, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;->mCategory:Ljava/lang/CharSequence;

    .line 317
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    const v12, 0x7f0d00ef    # @layout/keyboard_shortcuts_container 'res/layout/keyboard_shortcuts_container.xml'

    .line 325
    invoke-virtual {v2, v12, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 328
    move-result-object v12

    .line 331
    check-cast v12, Landroid/widget/LinearLayout;

    .line 332
    iget-object v14, v14, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;->mItems:Ljava/util/List;

    .line 334
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 336
    move-result v8

    .line 339
    :goto_7
    if-ge v4, v8, :cond_1f

    .line 340
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 342
    move-result-object v16

    .line 345
    move-object/from16 v17, v3

    .line 346
    move-object/from16 v3, v16

    .line 348
    check-cast v3, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;

    .line 350
    move/from16 v16, v8

    .line 352
    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mQueryString:Ljava/lang/String;

    .line 354
    if-eqz v8, :cond_a

    .line 356
    iget-object v8, v3, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mLabel:Ljava/lang/CharSequence;

    .line 358
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 360
    move-result-object v8

    .line 363
    move-object/from16 v18, v14

    .line 364
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 366
    move-result-object v14

    .line 369
    invoke-virtual {v8, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 370
    move-result-object v8

    .line 373
    iget-object v14, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mQueryString:Ljava/lang/String;

    .line 374
    move/from16 v19, v7

    .line 376
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 378
    move-result-object v7

    .line 381
    invoke-virtual {v14, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 382
    move-result-object v7

    .line 385
    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 386
    move-result v7

    .line 389
    if-nez v7, :cond_9

    .line 390
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 392
    invoke-virtual {v13, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 394
    move/from16 v30, v4

    .line 397
    move/from16 v24, v6

    .line 399
    move-object/from16 v29, v9

    .line 401
    move/from16 v26, v10

    .line 403
    move-object/from16 v25, v11

    .line 405
    move-object/from16 v22, v13

    .line 407
    move-object/from16 v20, v15

    .line 409
    const/4 v0, 0x1

    .line 411
    goto/16 :goto_14

    .line 412
    :cond_9
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 414
    invoke-virtual {v13, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 416
    goto :goto_8

    .line 419
    :cond_a
    move/from16 v19, v7

    .line 420
    move-object/from16 v18, v14

    .line 422
    :goto_8
    const v7, 0x7f0d00eb    # @layout/keyboard_shortcut_app_item 'res/layout/keyboard_shortcut_app_item.xml'

    .line 424
    const/4 v8, 0x0

    .line 427
    invoke-virtual {v2, v7, v12, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 428
    move-result-object v7

    .line 431
    const v8, 0x7f0a046b    # @id/keyboard_shortcuts_keyword

    .line 432
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 435
    move-result-object v8

    .line 438
    check-cast v8, Landroid/widget/TextView;

    .line 439
    iget-object v14, v3, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mLabel:Ljava/lang/CharSequence;

    .line 441
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v14, v3, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 446
    move-object/from16 v20, v15

    .line 448
    if-eqz v14, :cond_b

    .line 450
    const v15, 0x7f0a0469    # @id/keyboard_shortcuts_icon

    .line 452
    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 455
    move-result-object v15

    .line 458
    check-cast v15, Landroid/widget/ImageView;

    .line 459
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 461
    const/4 v14, 0x0

    .line 464
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 468
    move-result-object v14

    .line 471
    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 472
    const/16 v15, 0x14

    .line 474
    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 476
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    :cond_b
    const v8, 0x7f0a046a    # @id/keyboard_shortcuts_item_container

    .line 482
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 485
    move-result-object v8

    .line 488
    check-cast v8, Landroid/view/ViewGroup;

    .line 489
    iget-object v3, v3, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mShortcutKeyGroups:Ljava/util/List;

    .line 491
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 493
    move-result v14

    .line 496
    const/4 v15, 0x0

    .line 497
    :goto_9
    if-ge v15, v14, :cond_1e

    .line 498
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 500
    move-result-object v21

    .line 503
    move-object/from16 v22, v13

    .line 504
    move-object/from16 v13, v21

    .line 506
    check-cast v13, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 508
    iget-object v13, v13, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;->mKeyboardShortcutInfo:Landroid/view/KeyboardShortcutInfo;

    .line 510
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 512
    move-result-object v21

    .line 515
    check-cast v21, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyGroup;

    .line 516
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    move-object/from16 v21, v3

    .line 521
    new-instance v3, Ljava/util/ArrayList;

    .line 523
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 525
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getModifiers()I

    .line 528
    move-result v23

    .line 531
    const/16 v24, 0x0

    .line 532
    if-nez v23, :cond_c

    .line 534
    move/from16 v30, v4

    .line 536
    move-object/from16 v29, v9

    .line 538
    move/from16 v26, v10

    .line 540
    move-object/from16 v25, v11

    .line 542
    goto :goto_c

    .line 544
    :cond_c
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mModifierList:[I

    .line 545
    move-object/from16 v25, v11

    .line 547
    array-length v11, v1

    .line 549
    move/from16 v26, v10

    .line 550
    const/4 v10, 0x0

    .line 552
    :goto_a
    if-ge v10, v11, :cond_e

    .line 553
    move/from16 v27, v11

    .line 555
    aget v11, v1, v10

    .line 557
    and-int v28, v23, v11

    .line 559
    if-eqz v28, :cond_d

    .line 561
    move-object/from16 v28, v1

    .line 563
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$StringDrawableContainer;

    .line 565
    move-object/from16 v29, v9

    .line 567
    iget-object v9, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mModifierNames:Landroid/util/SparseArray;

    .line 569
    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 571
    move-result-object v9

    .line 574
    check-cast v9, Ljava/lang/String;

    .line 575
    move/from16 v30, v4

    .line 577
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mModifierDrawables:Landroid/util/SparseArray;

    .line 579
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 581
    move-result-object v4

    .line 584
    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 585
    invoke-direct {v1, v9, v4}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$StringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 587
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    not-int v1, v11

    .line 593
    and-int v1, v23, v1

    .line 594
    move/from16 v23, v1

    .line 596
    goto :goto_b

    .line 598
    :cond_d
    move-object/from16 v28, v1

    .line 599
    move/from16 v30, v4

    .line 601
    move-object/from16 v29, v9

    .line 603
    :goto_b
    add-int/lit8 v10, v10, 0x1

    .line 605
    move/from16 v11, v27

    .line 607
    move-object/from16 v1, v28

    .line 609
    move-object/from16 v9, v29

    .line 611
    move/from16 v4, v30

    .line 613
    goto :goto_a

    .line 615
    :cond_e
    move/from16 v30, v4

    .line 616
    move-object/from16 v29, v9

    .line 618
    if-eqz v23, :cond_f

    .line 620
    move-object/from16 v3, v24

    .line 622
    :cond_f
    :goto_c
    const-string v1, "KeyboardShortcutListSearch"

    .line 624
    if-nez v3, :cond_10

    .line 626
    goto/16 :goto_f

    .line 628
    :cond_10
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    .line 630
    move-result v4

    .line 633
    if-lez v4, :cond_11

    .line 634
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    .line 636
    move-result v4

    .line 639
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 640
    move-result-object v4

    .line 643
    :goto_d
    move-object/from16 v9, v24

    .line 644
    goto :goto_e

    .line 646
    :cond_11
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 647
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 649
    move-result v9

    .line 652
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 653
    move-result-object v9

    .line 656
    iget-object v10, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 657
    if-eqz v9, :cond_12

    .line 659
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 661
    move-result v9

    .line 664
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 665
    move-result-object v4

    .line 668
    move-object/from16 v24, v4

    .line 669
    check-cast v24, Landroid/graphics/drawable/Drawable;

    .line 671
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 673
    move-result v4

    .line 676
    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 677
    move-result-object v4

    .line 680
    check-cast v4, Ljava/lang/String;

    .line 681
    goto :goto_d

    .line 683
    :cond_12
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 684
    move-result v4

    .line 687
    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 688
    move-result-object v4

    .line 691
    if-eqz v4, :cond_13

    .line 692
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 694
    move-result v4

    .line 697
    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 698
    move-result-object v4

    .line 701
    check-cast v4, Ljava/lang/String;

    .line 702
    goto :goto_d

    .line 704
    :cond_13
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 705
    move-result v4

    .line 708
    if-nez v4, :cond_14

    .line 709
    goto :goto_10

    .line 711
    :cond_14
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 712
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 714
    move-result v9

    .line 717
    invoke-virtual {v4, v9}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    .line 718
    move-result v4

    .line 721
    if-eqz v4, :cond_15

    .line 722
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 724
    move-result-object v4

    .line 727
    goto :goto_d

    .line 728
    :cond_15
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 729
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 731
    move-result v9

    .line 734
    invoke-virtual {v4, v9}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    .line 735
    move-result v4

    .line 738
    if-eqz v4, :cond_17

    .line 739
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 741
    move-result-object v4

    .line 744
    goto :goto_d

    .line 745
    :goto_e
    if-eqz v4, :cond_16

    .line 746
    new-instance v10, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$StringDrawableContainer;

    .line 748
    invoke-direct {v10, v4, v9}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$StringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 750
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    goto :goto_10

    .line 756
    :cond_16
    const-string v4, "Keyboard Shortcut does not have a text representation, skipping."

    .line 757
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    goto :goto_10

    .line 762
    :cond_17
    :goto_f
    move-object/from16 v3, v24

    .line 763
    :goto_10
    if-nez v3, :cond_18

    .line 765
    const-string v3, "Keyboard Shortcut contains unsupported keys, skipping."

    .line 767
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    move/from16 v24, v6

    .line 772
    move-object/from16 v27, v7

    .line 774
    const/4 v0, 0x1

    .line 776
    goto/16 :goto_13

    .line 777
    :cond_18
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 779
    move-result v1

    .line 782
    const/4 v4, 0x0

    .line 783
    :goto_11
    if-ge v4, v1, :cond_1c

    .line 784
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 786
    move-result-object v9

    .line 789
    check-cast v9, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$StringDrawableContainer;

    .line 790
    iget-object v10, v9, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 792
    iget-object v11, v9, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$StringDrawableContainer;->mString:Ljava/lang/String;

    .line 794
    if-eqz v10, :cond_19

    .line 796
    const v10, 0x7f0d00f1    # @layout/keyboard_shortcuts_key_new_icon_view 'res/layout/keyboard_shortcuts_key_new_icon_view.xml'

    .line 798
    const/4 v13, 0x0

    .line 801
    invoke-virtual {v2, v10, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 802
    move-result-object v10

    .line 805
    check-cast v10, Landroid/widget/ImageView;

    .line 806
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 808
    invoke-static {v6, v6, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 810
    move-result-object v13

    .line 813
    move-object/from16 v23, v3

    .line 814
    new-instance v3, Landroid/graphics/Canvas;

    .line 816
    invoke-direct {v3, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 818
    move/from16 v24, v6

    .line 821
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 823
    move-result v6

    .line 826
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 827
    move-result v0

    .line 830
    iget-object v9, v9, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 831
    move-object/from16 v27, v7

    .line 833
    const/4 v7, 0x0

    .line 835
    invoke-virtual {v9, v7, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 836
    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 839
    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 842
    const/4 v0, 0x1

    .line 845
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 846
    new-instance v3, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyAccessibilityDelegate;

    .line 849
    invoke-direct {v3, v11}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyAccessibilityDelegate;-><init>(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 854
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 857
    goto :goto_12

    .line 860
    :cond_19
    move-object/from16 v23, v3

    .line 861
    move/from16 v24, v6

    .line 863
    move-object/from16 v27, v7

    .line 865
    const/4 v0, 0x1

    .line 867
    const/4 v7, 0x0

    .line 868
    if-eqz v11, :cond_1a

    .line 869
    const v3, 0x7f0d00f2    # @layout/keyboard_shortcuts_key_new_view 'res/layout/keyboard_shortcuts_key_new_view.xml'

    .line 871
    invoke-virtual {v2, v3, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 874
    move-result-object v3

    .line 877
    check-cast v3, Landroid/widget/TextView;

    .line 878
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 880
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    new-instance v6, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyAccessibilityDelegate;

    .line 886
    invoke-direct {v6, v11}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutKeyAccessibilityDelegate;-><init>(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 891
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 894
    :cond_1a
    :goto_12
    add-int/lit8 v3, v1, -0x1

    .line 897
    if-ge v4, v3, :cond_1b

    .line 899
    const v3, 0x7f0d00f3    # @layout/keyboard_shortcuts_key_plus_view 'res/layout/keyboard_shortcuts_key_plus_view.xml'

    .line 901
    const/4 v6, 0x0

    .line 904
    invoke-virtual {v2, v3, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 905
    move-result-object v3

    .line 908
    check-cast v3, Landroid/widget/TextView;

    .line 909
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 911
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    .line 914
    move-object/from16 v0, p0

    .line 916
    move-object/from16 v3, v23

    .line 918
    move/from16 v6, v24

    .line 920
    move-object/from16 v7, v27

    .line 922
    goto/16 :goto_11

    .line 924
    :cond_1c
    move/from16 v24, v6

    .line 926
    move-object/from16 v27, v7

    .line 928
    const/4 v0, 0x1

    .line 930
    add-int/lit8 v1, v14, -0x1

    .line 931
    if-ge v15, v1, :cond_1d

    .line 933
    const v1, 0x7f0d00f4    # @layout/keyboard_shortcuts_key_vertical_bar_view 'res/layout/keyboard_shortcuts_key_vertical_bar_view.xml'

    .line 935
    const/4 v3, 0x0

    .line 938
    invoke-virtual {v2, v1, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 939
    move-result-object v1

    .line 942
    check-cast v1, Landroid/widget/TextView;

    .line 943
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 945
    :cond_1d
    :goto_13
    add-int/lit8 v15, v15, 0x1

    .line 948
    move-object/from16 v0, p0

    .line 950
    move-object/from16 v1, p1

    .line 952
    move-object/from16 v3, v21

    .line 954
    move-object/from16 v13, v22

    .line 956
    move/from16 v6, v24

    .line 958
    move-object/from16 v11, v25

    .line 960
    move/from16 v10, v26

    .line 962
    move-object/from16 v7, v27

    .line 964
    move-object/from16 v9, v29

    .line 966
    move/from16 v4, v30

    .line 968
    goto/16 :goto_9

    .line 970
    :cond_1e
    move/from16 v30, v4

    .line 972
    move/from16 v24, v6

    .line 974
    move-object v1, v7

    .line 976
    move-object/from16 v29, v9

    .line 977
    move/from16 v26, v10

    .line 979
    move-object/from16 v25, v11

    .line 981
    move-object/from16 v22, v13

    .line 983
    const/4 v0, 0x1

    .line 985
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 986
    :goto_14
    add-int/lit8 v4, v30, 0x1

    .line 989
    move-object/from16 v0, p0

    .line 991
    move-object/from16 v1, p1

    .line 993
    move/from16 v8, v16

    .line 995
    move-object/from16 v3, v17

    .line 997
    move-object/from16 v14, v18

    .line 999
    move/from16 v7, v19

    .line 1001
    move-object/from16 v15, v20

    .line 1003
    move-object/from16 v13, v22

    .line 1005
    move/from16 v6, v24

    .line 1007
    move-object/from16 v11, v25

    .line 1009
    move/from16 v10, v26

    .line 1011
    move-object/from16 v9, v29

    .line 1013
    goto/16 :goto_7

    .line 1015
    :cond_1f
    move-object/from16 v17, v3

    .line 1017
    move/from16 v24, v6

    .line 1019
    move/from16 v19, v7

    .line 1021
    move-object/from16 v29, v9

    .line 1023
    move/from16 v26, v10

    .line 1025
    move-object/from16 v25, v11

    .line 1027
    move-object/from16 v22, v13

    .line 1029
    move-object/from16 v20, v15

    .line 1031
    const/4 v0, 0x1

    .line 1033
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1034
    move-result v1

    .line 1037
    if-nez v1, :cond_21

    .line 1038
    add-int/lit8 v10, v26, -0x1

    .line 1040
    move-object/from16 v1, v29

    .line 1042
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1044
    move-result-object v3

    .line 1047
    check-cast v3, Ljava/lang/Boolean;

    .line 1048
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1050
    move-result v3

    .line 1053
    if-nez v3, :cond_20

    .line 1054
    move-object/from16 v3, p1

    .line 1056
    move-object/from16 v4, v25

    .line 1058
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1060
    goto :goto_15

    .line 1063
    :cond_20
    move-object/from16 v3, p1

    .line 1064
    move-object/from16 v4, v25

    .line 1066
    goto :goto_15

    .line 1068
    :cond_21
    move-object/from16 v3, p1

    .line 1069
    move-object/from16 v4, v25

    .line 1071
    move-object/from16 v1, v29

    .line 1073
    :goto_15
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1075
    move-result v6

    .line 1078
    if-nez v6, :cond_23

    .line 1079
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1081
    move-object/from16 v7, v22

    .line 1083
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1085
    move-result v7

    .line 1088
    if-nez v7, :cond_23

    .line 1089
    move-object/from16 v15, v20

    .line 1091
    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1093
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1096
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1099
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    add-int/lit8 v7, v19, -0x1

    .line 1104
    move/from16 v4, v26

    .line 1106
    if-ne v4, v7, :cond_22

    .line 1108
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1110
    move-result v6

    .line 1113
    if-nez v6, :cond_22

    .line 1114
    move-object/from16 v6, p0

    .line 1116
    iget-object v7, v6, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mNoSearchResults:Landroid/widget/TextView;

    .line 1118
    const/4 v8, 0x0

    .line 1120
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1121
    goto :goto_16

    .line 1124
    :cond_22
    const/4 v8, 0x0

    .line 1125
    move-object/from16 v6, p0

    .line 1126
    :goto_16
    const/16 v9, 0x8

    .line 1128
    goto :goto_17

    .line 1130
    :cond_23
    const/4 v8, 0x0

    .line 1131
    move-object/from16 v6, p0

    .line 1132
    move/from16 v4, v26

    .line 1134
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1136
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    iget-object v7, v6, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mNoSearchResults:Landroid/widget/TextView;

    .line 1141
    const/16 v9, 0x8

    .line 1143
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1145
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1148
    :goto_17
    add-int/lit8 v10, v4, 0x1

    .line 1151
    move v4, v8

    .line 1153
    move v12, v9

    .line 1154
    move/from16 v7, v19

    .line 1155
    move v8, v0

    .line 1157
    move-object v9, v1

    .line 1158
    move-object v1, v3

    .line 1159
    move-object v0, v6

    .line 1160
    move-object/from16 v3, v17

    .line 1161
    move/from16 v6, v24

    .line 1163
    goto/16 :goto_6

    .line 1165
    :cond_24
    return-void
    .line 1167
.end method

.method public final setButtonFocusColor(IZ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mFullButtonList:Ljava/util/ArrayList;

    .line 3
    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object p2

    .line 10
    check-cast p2, Landroid/widget/Button;

    .line 11
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 13
    const v3, 0x1120123    # @android:^attr-private/textColorSearchUrl

    .line 15
    invoke-static {v2, v3, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 18
    move-result v0

    .line 21
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 22
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/Button;

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 31
    const p2, 0x7f0817cf    # @drawable/shortcut_button_focus_colored 'res/drawable/shortcut_button_focus_colored.xml'

    .line 33
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object p2

    .line 47
    check-cast p2, Landroid/widget/Button;

    .line 48
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 50
    const v3, 0x1010038    # @android:attr/textColorSecondary

    .line 52
    invoke-static {v2, v3, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 55
    move-result v0

    .line 58
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 59
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 65
    check-cast p1, Landroid/widget/Button;

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 68
    const p2, 0x7f0817ce    # @drawable/shortcut_button_colored 'res/drawable/shortcut_button_colored.xml'

    .line 70
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 73
    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :goto_0
    return-void
    .line 80
.end method

.method public final setDialogScreenSize()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyboardShortcutsBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mWindowManager:Landroid/view/WindowManager;

    .line 8
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 10
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyboardShortcutsBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 14
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 20
    move-result-object v2

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 30
    move-result-object p0

    .line 33
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 34
    const/4 v3, 0x1

    .line 36
    const-wide v4, 0x3fe999999999999aL    # 0.8

    .line 37
    const-wide v6, 0x3fe6666666666666L    # 0.7

    .line 42
    if-ne p0, v3, :cond_0

    .line 47
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    .line 49
    move-result p0

    .line 52
    int-to-double v8, p0

    .line 53
    mul-double/2addr v8, v4

    .line 54
    double-to-int p0, v8

    .line 55
    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    .line 58
    move-result p0

    .line 61
    int-to-double v3, p0

    .line 62
    mul-double/2addr v3, v6

    .line 63
    double-to-int p0, v3

    .line 64
    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 65
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    .line 68
    move-result p0

    .line 71
    int-to-double v8, p0

    .line 72
    mul-double/2addr v8, v6

    .line 73
    double-to-int p0, v8

    .line 74
    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 75
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    .line 77
    move-result p0

    .line 80
    int-to-double v6, p0

    .line 81
    mul-double/2addr v6, v4

    .line 82
    double-to-int p0, v6

    .line 83
    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 84
    :goto_0
    const/16 p0, 0x50

    .line 86
    invoke-virtual {v0, p0}, Landroid/view/Window;->setGravity(I)V

    .line 88
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 91
    return-void
    .line 94
.end method

.method public showKeyboardShortcuts(I)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    .line 7
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 11
    move-result-object v2

    .line 14
    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 15
    if-eq p1, v1, :cond_0

    .line 17
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    .line 19
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 25
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 29
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/input/InputManagerGlobal;->getInputDeviceIds()[I

    .line 32
    move-result-object v2

    .line 35
    array-length v3, v2

    .line 36
    const/4 v4, 0x0

    .line 37
    :goto_0
    if-ge v4, v3, :cond_2

    .line 38
    aget v5, v2, v4

    .line 40
    invoke-virtual {v0, v5}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    .line 42
    move-result-object v5

    .line 45
    invoke-virtual {v5}, Landroid/view/InputDevice;->getId()I

    .line 46
    move-result v6

    .line 49
    if-eq v6, v1, :cond_1

    .line 50
    invoke-virtual {v5}, Landroid/view/InputDevice;->isFullKeyboard()Z

    .line 52
    move-result v6

    .line 55
    if-eqz v6, :cond_1

    .line 56
    invoke-virtual {v5}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 58
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 62
    goto :goto_1

    .line 64
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 68
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 70
    :goto_1
    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$1;

    .line 72
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$1;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;)V

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mWindowManager:Landroid/view/WindowManager;

    .line 77
    invoke-interface {p0, v0, p1}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    .line 79
    return-void
    .line 82
.end method
