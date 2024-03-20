.class public final Lcom/android/systemui/model/SysUiState;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mCallbacks:Ljava/util/List;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public mFlags:I

.field public mFlagsToClear:I

.field public mFlagsToSet:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/model/SysUiState;->mCallbacks:Ljava/util/List;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:I

    .line 13
    iput v0, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:I

    .line 15
    iput-object p1, p0, Lcom/android/systemui/model/SysUiState;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final commitUpdate(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/model/SysUiState;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    if-eqz p1, :cond_0

    .line 7
    const-string v0, "Ignoring flag update for display: "

    .line 9
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 14
    new-instance v0, Ljava/lang/Throwable;

    .line 15
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 17
    const-string v1, "SysUiState"

    .line 20
    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    iget p1, p0, Lcom/android/systemui/model/SysUiState;->mFlags:I

    .line 26
    iget v0, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:I

    .line 28
    or-int/2addr v0, p1

    .line 30
    iget v1, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:I

    .line 31
    not-int v1, v1

    .line 33
    and-int/2addr v0, v1

    .line 34
    if-eq v0, p1, :cond_1

    .line 35
    iget-object p1, p0, Lcom/android/systemui/model/SysUiState;->mCallbacks:Ljava/util/List;

    .line 37
    new-instance v1, Lcom/android/systemui/model/SysUiState$$ExternalSyntheticLambda0;

    .line 39
    invoke-direct {v1, v0}, Lcom/android/systemui/model/SysUiState$$ExternalSyntheticLambda0;-><init>(I)V

    .line 41
    check-cast p1, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 46
    iput v0, p0, Lcom/android/systemui/model/SysUiState;->mFlags:I

    .line 49
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:I

    .line 52
    iput p1, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:I

    .line 54
    return-void
    .line 56
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "SysUiState state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string p2, "  mSysUiStateFlags="

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/android/systemui/model/SysUiState;->mFlags:I

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    const-string v0, "    "

    .line 19
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget v0, p0, Lcom/android/systemui/model/SysUiState;->mFlags:I

    .line 24
    sget-boolean v1, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    .line 26
    new-instance v1, Ljava/util/StringJoiner;

    .line 28
    const-string/jumbo v2, "|"

    .line 30
    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 33
    and-int/lit8 v2, v0, 0x1

    .line 36
    if-eqz v2, :cond_0

    .line 38
    const-string/jumbo v2, "screen_pinned"

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 43
    :cond_0
    and-int/lit16 v2, v0, 0x80

    .line 46
    if-eqz v2, :cond_1

    .line 48
    const-string v2, "overview_disabled"

    .line 50
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 52
    :cond_1
    and-int/lit16 v2, v0, 0x100

    .line 55
    if-eqz v2, :cond_2

    .line 57
    const-string v2, "home_disabled"

    .line 59
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 61
    :cond_2
    and-int/lit16 v2, v0, 0x400

    .line 64
    if-eqz v2, :cond_3

    .line 66
    const-string/jumbo v2, "search_disabled"

    .line 68
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 71
    :cond_3
    and-int/lit8 v2, v0, 0x2

    .line 74
    if-eqz v2, :cond_4

    .line 76
    const-string v2, "navbar_hidden"

    .line 78
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 80
    :cond_4
    and-int/lit8 v2, v0, 0x4

    .line 83
    if-eqz v2, :cond_5

    .line 85
    const-string v2, "notif_expanded"

    .line 87
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 89
    :cond_5
    and-int/lit16 v2, v0, 0x800

    .line 92
    if-eqz v2, :cond_6

    .line 94
    const-string v2, "qs_visible"

    .line 96
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 98
    :cond_6
    and-int/lit8 v2, v0, 0x40

    .line 101
    if-eqz v2, :cond_7

    .line 103
    const-string v2, "keygrd_visible"

    .line 105
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 107
    :cond_7
    and-int/lit16 v2, v0, 0x200

    .line 110
    if-eqz v2, :cond_8

    .line 112
    const-string v2, "keygrd_occluded"

    .line 114
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 116
    :cond_8
    and-int/lit8 v2, v0, 0x8

    .line 119
    if-eqz v2, :cond_9

    .line 121
    const-string v2, "bouncer_visible"

    .line 123
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 125
    :cond_9
    const v2, 0x8000

    .line 128
    and-int/2addr v2, v0

    .line 131
    if-eqz v2, :cond_a

    .line 132
    const-string v2, "dialog_showing"

    .line 134
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 136
    :cond_a
    and-int/lit8 v2, v0, 0x10

    .line 139
    if-eqz v2, :cond_b

    .line 141
    const-string v2, "a11y_click"

    .line 143
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 145
    :cond_b
    and-int/lit8 v2, v0, 0x20

    .line 148
    if-eqz v2, :cond_c

    .line 150
    const-string v2, "a11y_long_click"

    .line 152
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 154
    :cond_c
    and-int/lit16 v2, v0, 0x1000

    .line 157
    if-eqz v2, :cond_d

    .line 159
    const-string/jumbo v2, "tracing"

    .line 161
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 164
    :cond_d
    and-int/lit16 v2, v0, 0x2000

    .line 167
    if-eqz v2, :cond_e

    .line 169
    const-string v2, "asst_gesture_constrain"

    .line 171
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 173
    :cond_e
    and-int/lit16 v2, v0, 0x4000

    .line 176
    if-eqz v2, :cond_f

    .line 178
    const-string v2, "bubbles_expanded"

    .line 180
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 182
    :cond_f
    const/high16 v2, 0x10000

    .line 185
    and-int/2addr v2, v0

    .line 187
    if-eqz v2, :cond_10

    .line 188
    const-string v2, "one_handed_active"

    .line 190
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 192
    :cond_10
    const/high16 v2, 0x20000

    .line 195
    and-int v3, v0, v2

    .line 197
    if-eqz v3, :cond_11

    .line 199
    const-string v3, "allow_gesture"

    .line 201
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 203
    :cond_11
    const/high16 v3, 0x40000

    .line 206
    and-int/2addr v3, v0

    .line 208
    if-eqz v3, :cond_12

    .line 209
    const-string v3, "ime_visible"

    .line 211
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 213
    :cond_12
    const/high16 v3, 0x80000

    .line 216
    and-int/2addr v3, v0

    .line 218
    if-eqz v3, :cond_13

    .line 219
    const-string v3, "magnification_overlap"

    .line 221
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 223
    :cond_13
    const/high16 v3, 0x100000

    .line 226
    and-int/2addr v3, v0

    .line 228
    if-eqz v3, :cond_14

    .line 229
    const-string v3, "ime_switcher_showing"

    .line 231
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 233
    :cond_14
    const/high16 v3, 0x200000

    .line 236
    and-int/2addr v3, v0

    .line 238
    if-eqz v3, :cond_15

    .line 239
    const-string v3, "device_dozing"

    .line 241
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 243
    :cond_15
    const/high16 v3, 0x400000

    .line 246
    and-int/2addr v3, v0

    .line 248
    if-eqz v3, :cond_16

    .line 249
    const-string v3, "back_disabled"

    .line 251
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 253
    :cond_16
    const/high16 v3, 0x800000

    .line 256
    and-int/2addr v3, v0

    .line 258
    if-eqz v3, :cond_17

    .line 259
    const-string v3, "bubbles_mange_menu_expanded"

    .line 261
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 263
    :cond_17
    const/high16 v3, 0x1000000

    .line 266
    and-int/2addr v3, v0

    .line 268
    if-eqz v3, :cond_18

    .line 269
    const-string v3, "immersive_mode"

    .line 271
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 273
    :cond_18
    const/high16 v3, 0x2000000

    .line 276
    and-int/2addr v3, v0

    .line 278
    if-eqz v3, :cond_19

    .line 279
    const-string/jumbo v3, "vis_win_showing"

    .line 281
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 284
    :cond_19
    const/high16 v3, 0x4000000

    .line 287
    and-int/2addr v3, v0

    .line 289
    if-eqz v3, :cond_1a

    .line 290
    const-string v3, "freeform_active_in_desktop_mode"

    .line 292
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 294
    :cond_1a
    const/high16 v3, 0x8000000

    .line 297
    and-int/2addr v3, v0

    .line 299
    if-eqz v3, :cond_1b

    .line 300
    const-string v3, "device_dreaming"

    .line 302
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 304
    :cond_1b
    const/high16 v3, 0x20000000

    .line 307
    and-int/2addr v3, v0

    .line 309
    if-eqz v3, :cond_1c

    .line 310
    const-string/jumbo v3, "wakefulness_transition"

    .line 312
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 315
    :cond_1c
    const/high16 v3, 0x10000000

    .line 318
    and-int/2addr v3, v0

    .line 320
    if-eqz v3, :cond_1d

    .line 321
    const-string v3, "awake"

    .line 323
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 325
    :cond_1d
    const/high16 v3, 0x40000000    # 2.0f

    .line 328
    and-int/2addr v3, v0

    .line 330
    if-eqz v3, :cond_1e

    .line 331
    const-string v3, "notif_visible"

    .line 333
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 335
    :cond_1e
    const/high16 v3, -0x80000000

    .line 338
    and-int/2addr v0, v3

    .line 340
    if-eqz v0, :cond_1f

    .line 341
    const-string v0, "keygrd_going_away"

    .line 343
    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 345
    :cond_1f
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 348
    move-result-object v0

    .line 351
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    move-result-object p2

    .line 358
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    const-string p2, "    backGestureDisabled="

    .line 362
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    iget p2, p0, Lcom/android/systemui/model/SysUiState;->mFlags:I

    .line 367
    invoke-static {p2}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    .line 369
    move-result p2

    .line 372
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 373
    const-string p2, "    assistantGestureDisabled="

    .line 376
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    iget p0, p0, Lcom/android/systemui/model/SysUiState;->mFlags:I

    .line 381
    and-int p2, p0, v2

    .line 383
    if-eqz p2, :cond_20

    .line 385
    and-int/lit8 p0, p0, -0x3

    .line 387
    :cond_20
    and-int/lit16 p2, p0, 0xc0b

    .line 389
    const/4 v0, 0x1

    .line 391
    if-eqz p2, :cond_21

    .line 392
    goto :goto_0

    .line 394
    :cond_21
    and-int/lit8 p2, p0, 0x4

    .line 395
    if-eqz p2, :cond_22

    .line 397
    and-int/lit8 p0, p0, 0x40

    .line 399
    if-nez p0, :cond_22

    .line 401
    goto :goto_0

    .line 403
    :cond_22
    const/4 v0, 0x0

    .line 404
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 405
    return-void
    .line 408
.end method

.method public final setFlag(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    iget p2, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:I

    .line 4
    or-int/2addr p1, p2

    .line 6
    iput p1, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:I

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget p2, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:I

    .line 10
    or-int/2addr p1, p2

    .line 12
    iput p1, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:I

    .line 13
    :goto_0
    return-void
    .line 15
.end method
