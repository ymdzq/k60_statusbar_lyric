.class public final Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;
.super Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAodState:Lmiuix/animation/controller/AnimState;

.field public final mAodTransY:I

.field public mCDateNotificationTransX:F

.field public mCDateNotificationTransY:F

.field public mCNotificationTransX:F

.field public mClockContainer:Landroid/view/View;

.field public final mClockContainerHeight:I

.field public mFullHour:Landroid/view/View;

.field public mFullMinute:Landroid/view/View;

.field public mLockState:Lmiuix/animation/controller/AnimState;

.field public mMagazineLockState:Lmiuix/animation/controller/AnimState;

.field public mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

.field public final mMagazineNoticeTransY:I

.field public mNeedToSplitClock:Z

.field public mNoticeState:Lmiuix/animation/controller/AnimState;

.field public final mScale:F

.field public final mScaleTrans:F


# direct methods
.method public constructor <init>(Lcom/miui/clock/MiuiClockController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 2
    const p1, 0x3ecccccd    # 0.4f

    .line 5
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mScale:F

    .line 8
    const p1, 0x3e99999a    # 0.3f

    .line 10
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mScaleTrans:F

    .line 13
    const/16 p1, 0x78

    .line 15
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mAodTransY:I

    .line 17
    const/16 p1, -0xe2

    .line 19
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mMagazineNoticeTransY:I

    .line 21
    const/16 p1, 0x13f

    .line 23
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainerHeight:I

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final diffColor()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 2
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 6
    move-result p0

    .line 9
    const/4 v0, 0x6

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
    .line 16
.end method

.method public final doAnimationToAod(ZZ)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->doAnimationToAod(ZZ)V

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->updateAnimationState()V

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->updateTimeViewAlpha(F)V

    .line 10
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mNeedToSplitClock:Z

    .line 13
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mScaleEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 15
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 17
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 19
    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    filled-new-array {v0}, [Landroid/view/View;

    .line 27
    move-result-object v0

    .line 30
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 31
    move-result-object v0

    .line 34
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 35
    move-result-object v0

    .line 38
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 42
    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 46
    filled-new-array {v0}, [Landroid/view/View;

    .line 48
    move-result-object v0

    .line 51
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 52
    move-result-object v0

    .line 55
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 56
    move-result-object v0

    .line 59
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 63
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 64
    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 69
    filled-new-array {p1}, [Landroid/view/View;

    .line 71
    move-result-object p1

    .line 74
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 75
    move-result-object p1

    .line 78
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 79
    move-result-object p1

    .line 82
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mAodState:Lmiuix/animation/controller/AnimState;

    .line 83
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 85
    move-result-object p0

    .line 88
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 89
    goto/16 :goto_1

    .line 92
    :cond_1
    if-eqz p2, :cond_2

    .line 94
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 96
    filled-new-array {p1}, [Landroid/view/View;

    .line 98
    move-result-object p1

    .line 101
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 102
    move-result-object p1

    .line 105
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 106
    move-result-object p1

    .line 109
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mNoticeState:Lmiuix/animation/controller/AnimState;

    .line 110
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 112
    move-result-object p0

    .line 115
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 116
    goto/16 :goto_1

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 121
    filled-new-array {p1}, [Landroid/view/View;

    .line 123
    move-result-object p1

    .line 126
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 127
    move-result-object p1

    .line 130
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 131
    move-result-object p1

    .line 134
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 135
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 137
    move-result-object p0

    .line 140
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 141
    goto/16 :goto_1

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 146
    const/4 v4, 0x0

    .line 148
    if-eqz p1, :cond_6

    .line 149
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 151
    if-eqz p1, :cond_4

    .line 153
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullWeek:Landroid/view/View;

    .line 155
    filled-new-array {p1}, [Landroid/view/View;

    .line 157
    move-result-object p1

    .line 160
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 161
    move-result-object p1

    .line 164
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 165
    move-result-object p1

    .line 168
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 169
    move-result-object p2

    .line 172
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 173
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 176
    filled-new-array {p1}, [Landroid/view/View;

    .line 178
    move-result-object p1

    .line 181
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 182
    move-result-object p1

    .line 185
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 186
    move-result-object p1

    .line 189
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 190
    move-result-object p2

    .line 193
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 194
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 197
    filled-new-array {p1}, [Landroid/view/View;

    .line 199
    move-result-object p1

    .line 202
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 203
    move-result-object p1

    .line 206
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 207
    move-result-object p1

    .line 210
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 211
    move-result-object p2

    .line 214
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 215
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 218
    filled-new-array {p1}, [Landroid/view/View;

    .line 220
    move-result-object p1

    .line 223
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 224
    move-result-object p1

    .line 227
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 228
    move-result-object p1

    .line 231
    const/4 p2, 0x2

    .line 232
    new-array p2, p2, [Ljava/lang/Object;

    .line 233
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mAodState:Lmiuix/animation/controller/AnimState;

    .line 235
    aput-object v2, p2, v4

    .line 237
    iget-boolean p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mNeedToSplitClock:Z

    .line 239
    if-eqz p0, :cond_5

    .line 241
    goto :goto_0

    .line 243
    :cond_5
    move-object v1, v0

    .line 244
    :goto_0
    const/4 p0, 0x1

    .line 245
    aput-object v1, p2, p0

    .line 246
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 248
    goto/16 :goto_1

    .line 251
    :cond_6
    const-wide/16 v5, 0x12c

    .line 253
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 255
    if-eqz p2, :cond_8

    .line 257
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 259
    if-eqz p2, :cond_7

    .line 261
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullWeek:Landroid/view/View;

    .line 263
    filled-new-array {p2}, [Landroid/view/View;

    .line 265
    move-result-object p2

    .line 268
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 269
    move-result-object p2

    .line 272
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 273
    move-result-object p2

    .line 276
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 277
    move-result-object v1

    .line 280
    invoke-interface {p2, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 281
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 284
    filled-new-array {p2}, [Landroid/view/View;

    .line 286
    move-result-object p2

    .line 289
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 290
    move-result-object p2

    .line 293
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 294
    move-result-object p2

    .line 297
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 298
    move-result-object v1

    .line 301
    invoke-interface {p2, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 302
    :cond_7
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 305
    filled-new-array {p2}, [Landroid/view/View;

    .line 307
    move-result-object p2

    .line 310
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 311
    move-result-object p2

    .line 314
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 315
    move-result-object p2

    .line 318
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

    .line 319
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 321
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 323
    invoke-virtual {v2, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 326
    move-result-object p1

    .line 329
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 330
    new-array v3, v4, [F

    .line 332
    invoke-virtual {p1, v2, v0, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 334
    move-result-object p1

    .line 337
    invoke-virtual {p1, v5, v6}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 338
    move-result-object p1

    .line 341
    filled-new-array {p1}, [Lmiuix/animation/base/AnimConfig;

    .line 342
    move-result-object p1

    .line 345
    invoke-interface {p2, v1, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 346
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 349
    filled-new-array {p1}, [Landroid/view/View;

    .line 351
    move-result-object p1

    .line 354
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 355
    move-result-object p1

    .line 358
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 359
    move-result-object p1

    .line 362
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mNoticeState:Lmiuix/animation/controller/AnimState;

    .line 363
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 365
    move-result-object p0

    .line 368
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 369
    goto/16 :goto_1

    .line 372
    :cond_8
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 374
    if-eqz p2, :cond_9

    .line 376
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullWeek:Landroid/view/View;

    .line 378
    filled-new-array {p2}, [Landroid/view/View;

    .line 380
    move-result-object p2

    .line 383
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 384
    move-result-object p2

    .line 387
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 388
    move-result-object p2

    .line 391
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 392
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 394
    invoke-virtual {v1, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 397
    move-result-object v1

    .line 400
    invoke-virtual {v1, v5, v6}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 401
    move-result-object v1

    .line 404
    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    .line 405
    move-result-object v1

    .line 408
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 409
    invoke-interface {p2, v2, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 411
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 414
    filled-new-array {p2}, [Landroid/view/View;

    .line 416
    move-result-object p2

    .line 419
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 420
    move-result-object p2

    .line 423
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 424
    move-result-object p2

    .line 427
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 428
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 430
    invoke-virtual {v1, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 433
    move-result-object v1

    .line 436
    invoke-virtual {v1, v5, v6}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 437
    move-result-object v1

    .line 440
    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    .line 441
    move-result-object v1

    .line 444
    invoke-interface {p2, v2, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 445
    :cond_9
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 448
    filled-new-array {p2}, [Landroid/view/View;

    .line 450
    move-result-object p2

    .line 453
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 454
    move-result-object p2

    .line 457
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 458
    move-result-object p2

    .line 461
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mMagazineLockState:Lmiuix/animation/controller/AnimState;

    .line 462
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 464
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 466
    invoke-virtual {v2, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 469
    move-result-object p1

    .line 472
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 473
    new-array v3, v4, [F

    .line 475
    invoke-virtual {p1, v2, v0, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 477
    move-result-object p1

    .line 480
    invoke-virtual {p1, v5, v6}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 481
    move-result-object p1

    .line 484
    filled-new-array {p1}, [Lmiuix/animation/base/AnimConfig;

    .line 485
    move-result-object p1

    .line 488
    invoke-interface {p2, v1, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 489
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 492
    filled-new-array {p1}, [Landroid/view/View;

    .line 494
    move-result-object p1

    .line 497
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 498
    move-result-object p1

    .line 501
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 502
    move-result-object p1

    .line 505
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 506
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 508
    move-result-object p0

    .line 511
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 512
    :goto_1
    return-void
    .line 515
.end method

.method public final doAnimationToNotification(Z)V
    .locals 6

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->updateAnimationState()V

    .line 4
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mNeedToSplitClock:Z

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 9
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 11
    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    filled-new-array {v0}, [Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 23
    move-result-object v0

    .line 26
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 27
    move-result-object v0

    .line 30
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 38
    filled-new-array {v0}, [Landroid/view/View;

    .line 40
    move-result-object v0

    .line 43
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 44
    move-result-object v0

    .line 47
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 48
    move-result-object v0

    .line 51
    filled-new-array {v2, v2}, [Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mScaleEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 59
    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 63
    filled-new-array {p1}, [Landroid/view/View;

    .line 65
    move-result-object p1

    .line 68
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 69
    move-result-object p1

    .line 72
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 73
    move-result-object p1

    .line 76
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mNoticeState:Lmiuix/animation/controller/AnimState;

    .line 77
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 82
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 83
    goto/16 :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 88
    filled-new-array {p1}, [Landroid/view/View;

    .line 90
    move-result-object p1

    .line 93
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 94
    move-result-object p1

    .line 97
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 98
    move-result-object p1

    .line 101
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 102
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 104
    move-result-object p0

    .line 107
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 108
    goto/16 :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 113
    const/4 v3, 0x0

    .line 115
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 116
    if-eqz p1, :cond_4

    .line 118
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 120
    if-eqz p1, :cond_3

    .line 122
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullWeek:Landroid/view/View;

    .line 124
    filled-new-array {p1}, [Landroid/view/View;

    .line 126
    move-result-object p1

    .line 129
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 130
    move-result-object p1

    .line 133
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 134
    move-result-object p1

    .line 137
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 138
    move-result-object v5

    .line 141
    invoke-interface {p1, v5}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 142
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 145
    filled-new-array {p1}, [Landroid/view/View;

    .line 147
    move-result-object p1

    .line 150
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 151
    move-result-object p1

    .line 154
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 155
    move-result-object p1

    .line 158
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 159
    move-result-object v1

    .line 162
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 163
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 166
    filled-new-array {p1}, [Landroid/view/View;

    .line 168
    move-result-object p1

    .line 171
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 172
    move-result-object p1

    .line 175
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 176
    move-result-object p1

    .line 179
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

    .line 180
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 182
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 184
    invoke-virtual {v2, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 187
    move-result-object v2

    .line 190
    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 191
    new-array v3, v3, [F

    .line 193
    invoke-virtual {v2, v4, v0, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 195
    move-result-object v2

    .line 198
    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    .line 199
    move-result-object v2

    .line 202
    invoke-interface {p1, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 203
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 206
    filled-new-array {p1}, [Landroid/view/View;

    .line 208
    move-result-object p1

    .line 211
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 212
    move-result-object p1

    .line 215
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 216
    move-result-object p1

    .line 219
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mNoticeState:Lmiuix/animation/controller/AnimState;

    .line 220
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 222
    move-result-object p0

    .line 225
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 226
    goto :goto_0

    .line 229
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 230
    if-eqz p1, :cond_5

    .line 232
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullWeek:Landroid/view/View;

    .line 234
    filled-new-array {p1}, [Landroid/view/View;

    .line 236
    move-result-object p1

    .line 239
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 240
    move-result-object p1

    .line 243
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 244
    move-result-object p1

    .line 247
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 248
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 250
    move-result-object v2

    .line 253
    invoke-interface {p1, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 254
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 257
    filled-new-array {p1}, [Landroid/view/View;

    .line 259
    move-result-object p1

    .line 262
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 263
    move-result-object p1

    .line 266
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 267
    move-result-object p1

    .line 270
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 271
    move-result-object v1

    .line 274
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 275
    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 278
    filled-new-array {p1}, [Landroid/view/View;

    .line 280
    move-result-object p1

    .line 283
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 284
    move-result-object p1

    .line 287
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 288
    move-result-object p1

    .line 291
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mMagazineLockState:Lmiuix/animation/controller/AnimState;

    .line 292
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 294
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 296
    invoke-virtual {v2, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 299
    move-result-object v2

    .line 302
    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 303
    new-array v3, v3, [F

    .line 305
    invoke-virtual {v2, v4, v0, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 307
    move-result-object v2

    .line 310
    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    .line 311
    move-result-object v2

    .line 314
    invoke-interface {p1, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 315
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 318
    filled-new-array {p1}, [Landroid/view/View;

    .line 320
    move-result-object p1

    .line 323
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 324
    move-result-object p1

    .line 327
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 328
    move-result-object p1

    .line 331
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 332
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 334
    move-result-object p0

    .line 337
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 338
    :goto_0
    return-void
    .line 341
.end method

.method public final doBlendAnimation(ZZZ)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    const-string v1, " doBlendAnimation toAod = "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", hourBlur = "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", minBlur = "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    const-string v1, "ClockBaseAnimation"

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x2

    .line 43
    const/16 v1, 0xff

    .line 44
    const/4 v2, 0x3

    .line 46
    const/4 v3, 0x1

    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz p2, :cond_1

    .line 49
    const-string p2, "alpha"

    .line 51
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 53
    move-result-object v5

    .line 56
    invoke-static {v5}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 57
    move-result-object v5

    .line 60
    new-array v6, v2, [Ljava/lang/Object;

    .line 61
    aput-object p2, v6, v4

    .line 63
    if-eqz p1, :cond_0

    .line 65
    move p2, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move p2, v4

    .line 69
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object p2

    .line 73
    aput-object p2, v6, v3

    .line 74
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    .line 76
    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 78
    new-instance v7, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation$1;

    .line 81
    invoke-direct {v7, p0, v4}, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;I)V

    .line 83
    filled-new-array {v7}, [Lmiuix/animation/listener/TransitionListener;

    .line 86
    move-result-object v7

    .line 89
    invoke-virtual {p2, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 90
    move-result-object p2

    .line 93
    aput-object p2, v6, v0

    .line 94
    invoke-interface {v5, v6}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 96
    :cond_1
    if-eqz p3, :cond_3

    .line 99
    const-string p2, "minAlpha"

    .line 101
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 103
    move-result-object p3

    .line 106
    invoke-static {p3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 107
    move-result-object p3

    .line 110
    new-array v2, v2, [Ljava/lang/Object;

    .line 111
    aput-object p2, v2, v4

    .line 113
    if-eqz p1, :cond_2

    .line 115
    goto :goto_1

    .line 117
    :cond_2
    move v1, v4

    .line 118
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object p1

    .line 122
    aput-object p1, v2, v3

    .line 123
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 125
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 127
    new-instance p2, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation$1;

    .line 130
    invoke-direct {p2, p0, v3}, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;I)V

    .line 132
    filled-new-array {p2}, [Lmiuix/animation/listener/TransitionListener;

    .line 135
    move-result-object p0

    .line 138
    invoke-virtual {p1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 139
    move-result-object p0

    .line 142
    aput-object p0, v2, v0

    .line 143
    invoke-interface {p3, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 145
    :cond_3
    return-void
    .line 148
.end method

.method public final getClockTranslationForAod()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mAodTransY:I

    .line 2
    int-to-float v0, v0

    .line 4
    iget p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 5
    mul-float/2addr v0, p0

    .line 7
    return v0
    .line 8
.end method

.method public final initView()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-super/range {p0 .. p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->initView()V

    .line 4
    sget-object v1, Lcom/miui/clock/module/ClockViewType;->FULL_HOUR:Lcom/miui/clock/module/ClockViewType;

    .line 7
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 9
    invoke-virtual {v2, v1}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mFullHour:Landroid/view/View;

    .line 15
    sget-object v1, Lcom/miui/clock/module/ClockViewType;->FULL_MINUTE:Lcom/miui/clock/module/ClockViewType;

    .line 17
    invoke-virtual {v2, v1}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mFullMinute:Landroid/view/View;

    .line 23
    sget-object v1, Lcom/miui/clock/module/ClockViewType;->CLOCK_CONTAINER:Lcom/miui/clock/module/ClockViewType;

    .line 25
    invoke-virtual {v2, v1}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 30
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 31
    const/high16 v3, 0x3f800000    # 1.0f

    .line 33
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 35
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 38
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 40
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 43
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 46
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 49
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 51
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 56
    move-result-object v1

    .line 59
    check-cast v1, Landroid/view/ViewGroup;

    .line 60
    const/4 v3, 0x0

    .line 62
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 63
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 66
    iget-object v1, v2, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 69
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 71
    move-result v1

    .line 74
    sget-object v2, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 75
    const-string v2, "magazine_c"

    .line 77
    invoke-static {v2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    const/4 v2, 0x6

    .line 85
    if-eq v1, v2, :cond_0

    .line 86
    const/4 v2, 0x7

    .line 88
    if-ne v1, v2, :cond_1

    .line 89
    :cond_0
    const/4 v1, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move v1, v3

    .line 93
    :goto_0
    iput-boolean v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mNeedToSplitClock:Z

    .line 94
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 98
    move-result-object v1

    .line 101
    const v2, 0x7f070715    # @dimen/magazineC_notification_trans_x '0.0dp'

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 105
    move-result v1

    .line 108
    int-to-float v1, v1

    .line 109
    iput v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCNotificationTransX:F

    .line 110
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 112
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 114
    move-result-object v1

    .line 117
    const v2, 0x7f070713    # @dimen/magazineCDate_notification_trans_x '7.0dp'

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 121
    move-result v1

    .line 124
    int-to-float v1, v1

    .line 125
    iput v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCDateNotificationTransX:F

    .line 126
    invoke-static {}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->isRTL()Z

    .line 128
    move-result v1

    .line 131
    if-eqz v1, :cond_2

    .line 132
    iget v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCNotificationTransX:F

    .line 134
    neg-float v1, v1

    .line 136
    goto :goto_1

    .line 137
    :cond_2
    iget v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCNotificationTransX:F

    .line 138
    :goto_1
    iput v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCNotificationTransX:F

    .line 140
    const-string v1, "minAlpha"

    .line 142
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 144
    move-result-object v2

    .line 147
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 148
    move-result-object v2

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v3

    .line 155
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 156
    move-result-object v1

    .line 159
    invoke-interface {v2, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 160
    iget-boolean v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mNeedToSplitClock:Z

    .line 163
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 165
    const-wide/16 v4, 0x0

    .line 167
    const-string v6, "magazineLock"

    .line 169
    const-string v7, "magazineNotice"

    .line 171
    iget v8, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mAodTransY:I

    .line 173
    const-string v9, "aod"

    .line 175
    const-string v10, "notice"

    .line 177
    const-string v11, "lock"

    .line 179
    if-eqz v1, :cond_3

    .line 181
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 183
    invoke-direct {v1, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 185
    sget-object v11, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 188
    invoke-virtual {v1, v11, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 190
    move-result-object v1

    .line 193
    sget-object v12, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 194
    invoke-virtual {v1, v12, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 196
    move-result-object v1

    .line 199
    sget-object v13, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 200
    invoke-virtual {v1, v13, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 202
    move-result-object v1

    .line 205
    sget-object v14, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 206
    invoke-virtual {v1, v14, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 208
    move-result-object v1

    .line 211
    sget-object v15, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 212
    invoke-virtual {v1, v15, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 214
    move-result-object v1

    .line 217
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 218
    invoke-static {v10, v11, v2, v3}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 220
    move-result-object v1

    .line 223
    iget v2, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mScale:F

    .line 224
    float-to-double v2, v2

    .line 226
    invoke-virtual {v1, v12, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 227
    move-result-object v1

    .line 230
    invoke-virtual {v1, v13, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 231
    move-result-object v1

    .line 234
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 235
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 237
    move-result v4

    .line 240
    neg-int v4, v4

    .line 241
    int-to-float v4, v4

    .line 242
    iget v5, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mScaleTrans:F

    .line 243
    mul-float/2addr v4, v5

    .line 245
    iget v10, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCDateNotificationTransX:F

    .line 246
    add-float/2addr v4, v10

    .line 248
    move-object/from16 v16, v6

    .line 249
    move-object/from16 v17, v7

    .line 251
    float-to-double v6, v4

    .line 253
    invoke-virtual {v1, v14, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 254
    move-result-object v1

    .line 257
    iget-object v4, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 258
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 260
    move-result v4

    .line 263
    neg-int v4, v4

    .line 264
    int-to-float v4, v4

    .line 265
    mul-float/2addr v4, v5

    .line 266
    iget v6, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCDateNotificationTransY:F

    .line 267
    add-float/2addr v4, v6

    .line 269
    float-to-double v6, v4

    .line 270
    invoke-virtual {v1, v15, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 271
    move-result-object v1

    .line 274
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mNoticeState:Lmiuix/animation/controller/AnimState;

    .line 275
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 277
    invoke-static {v9, v11, v6, v7}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 279
    move-result-object v1

    .line 282
    invoke-virtual {v1, v12, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 283
    move-result-object v1

    .line 286
    invoke-virtual {v1, v13, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 287
    move-result-object v1

    .line 290
    const-wide/16 v2, 0x0

    .line 291
    invoke-virtual {v1, v14, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 293
    move-result-object v1

    .line 296
    iget-object v2, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 297
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 299
    move-result v2

    .line 302
    neg-int v2, v2

    .line 303
    int-to-float v2, v2

    .line 304
    mul-float/2addr v2, v5

    .line 305
    int-to-float v3, v8

    .line 306
    iget v4, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 307
    mul-float/2addr v3, v4

    .line 309
    add-float/2addr v3, v2

    .line 310
    float-to-double v2, v3

    .line 311
    invoke-virtual {v1, v15, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 312
    move-result-object v1

    .line 315
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mAodState:Lmiuix/animation/controller/AnimState;

    .line 316
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 318
    move-object/from16 v6, v17

    .line 320
    invoke-static {v6, v11, v1, v2}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 322
    move-result-object v3

    .line 325
    const-wide/16 v4, 0x0

    .line 326
    invoke-virtual {v3, v15, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 328
    move-result-object v3

    .line 331
    iput-object v3, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

    .line 332
    move-object/from16 v7, v16

    .line 334
    invoke-static {v7, v11, v1, v2}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 336
    move-result-object v1

    .line 339
    invoke-virtual {v1, v15, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 340
    move-result-object v1

    .line 343
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mMagazineLockState:Lmiuix/animation/controller/AnimState;

    .line 344
    goto/16 :goto_2

    .line 346
    :cond_3
    move-object/from16 v18, v7

    .line 348
    move-object v7, v6

    .line 350
    move-object/from16 v6, v18

    .line 351
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 353
    invoke-direct {v1, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 355
    sget-object v11, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 358
    invoke-virtual {v1, v11, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 360
    move-result-object v1

    .line 363
    sget-object v12, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 364
    invoke-virtual {v1, v12, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 366
    move-result-object v1

    .line 369
    sget-object v13, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 370
    invoke-virtual {v1, v13, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 372
    move-result-object v1

    .line 375
    sget-object v14, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 376
    invoke-virtual {v1, v14, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 378
    move-result-object v1

    .line 381
    sget-object v15, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 382
    invoke-virtual {v1, v15, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 384
    move-result-object v1

    .line 387
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 388
    invoke-static {v10, v11, v4, v5}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 390
    move-result-object v1

    .line 393
    iget v4, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCNotificationTransX:F

    .line 394
    float-to-double v4, v4

    .line 396
    invoke-virtual {v1, v12, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 397
    move-result-object v1

    .line 400
    invoke-virtual {v1, v13, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 401
    move-result-object v1

    .line 404
    invoke-virtual {v1, v14, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 405
    move-result-object v1

    .line 408
    invoke-virtual {v1, v15, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 409
    move-result-object v1

    .line 412
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mNoticeState:Lmiuix/animation/controller/AnimState;

    .line 413
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 415
    invoke-direct {v1, v9}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 417
    int-to-float v4, v8

    .line 420
    iget v5, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 421
    mul-float/2addr v4, v5

    .line 423
    float-to-double v4, v4

    .line 424
    invoke-virtual {v1, v11, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 425
    move-result-object v1

    .line 428
    const-wide/16 v4, 0x0

    .line 429
    invoke-virtual {v1, v12, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 431
    move-result-object v1

    .line 434
    invoke-virtual {v1, v13, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 435
    move-result-object v1

    .line 438
    invoke-virtual {v1, v14, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 439
    move-result-object v1

    .line 442
    invoke-virtual {v1, v15, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 443
    move-result-object v1

    .line 446
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mAodState:Lmiuix/animation/controller/AnimState;

    .line 447
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 449
    invoke-direct {v1, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 451
    iget v2, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mMagazineNoticeTransY:I

    .line 454
    int-to-float v2, v2

    .line 456
    iget v3, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->swdp:F

    .line 457
    mul-float/2addr v2, v3

    .line 459
    iget v3, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 460
    mul-float/2addr v2, v3

    .line 462
    float-to-double v2, v2

    .line 463
    invoke-virtual {v1, v11, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 464
    move-result-object v1

    .line 467
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 468
    invoke-virtual {v1, v13, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 470
    move-result-object v1

    .line 473
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

    .line 474
    invoke-static {v7, v11, v4, v5}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 476
    move-result-object v1

    .line 479
    invoke-virtual {v1, v13, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 480
    move-result-object v1

    .line 483
    iput-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mMagazineLockState:Lmiuix/animation/controller/AnimState;

    .line 484
    :goto_2
    iget-object v1, v0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 486
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 488
    move-result-object v1

    .line 491
    new-instance v2, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation$3;

    .line 492
    const/4 v3, 0x0

    .line 494
    invoke-direct {v2, v0, v3}, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation$3;-><init>(Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;I)V

    .line 495
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 498
    return-void
    .line 501
.end method

.method public final updateAnimationState()V
    .locals 10

    .line 1
    const v0, 0x7f070958    # @dimen/miui_magazine_c_clock_style2_width '382.0dp'

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->getDimen(I)I

    .line 5
    move-result v0

    .line 8
    iget v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainerHeight:I

    .line 9
    int-to-float v1, v1

    .line 11
    iget v2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 12
    mul-float/2addr v1, v2

    .line 14
    iget v2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->swdp:F

    .line 15
    mul-float/2addr v1, v2

    .line 17
    float-to-int v1, v1

    .line 18
    iget-boolean v2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mNeedToSplitClock:Z

    .line 19
    iget v3, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mAodTransY:I

    .line 21
    const-wide/16 v4, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mNoticeState:Lmiuix/animation/controller/AnimState;

    .line 27
    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 29
    neg-int v0, v0

    .line 31
    int-to-float v0, v0

    .line 32
    iget v7, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mScaleTrans:F

    .line 33
    mul-float/2addr v0, v7

    .line 35
    iget v8, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCDateNotificationTransX:F

    .line 36
    add-float/2addr v0, v8

    .line 38
    float-to-double v8, v0

    .line 39
    invoke-virtual {v2, v6, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 40
    move-result-object v0

    .line 43
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 44
    neg-int v1, v1

    .line 46
    int-to-float v1, v1

    .line 47
    mul-float v8, v1, v7

    .line 48
    iget v9, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCDateNotificationTransY:F

    .line 50
    add-float/2addr v8, v9

    .line 52
    float-to-double v8, v8

    .line 53
    invoke-virtual {v0, v2, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 54
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mAodState:Lmiuix/animation/controller/AnimState;

    .line 57
    invoke-virtual {v0, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 59
    move-result-object v0

    .line 62
    mul-float/2addr v1, v7

    .line 63
    int-to-float v3, v3

    .line 64
    iget p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 65
    mul-float/2addr v3, p0

    .line 67
    add-float/2addr v3, v1

    .line 68
    float-to-double v3, v3

    .line 69
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 70
    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mNoticeState:Lmiuix/animation/controller/AnimState;

    .line 74
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 76
    invoke-virtual {v0, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 78
    move-result-object v0

    .line 81
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 82
    iget v6, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCNotificationTransX:F

    .line 84
    float-to-double v6, v6

    .line 86
    invoke-virtual {v0, v2, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mAodState:Lmiuix/animation/controller/AnimState;

    .line 90
    int-to-float v3, v3

    .line 92
    iget p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 93
    mul-float/2addr v3, p0

    .line 95
    float-to-double v6, v3

    .line 96
    invoke-virtual {v0, v1, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 97
    move-result-object p0

    .line 100
    invoke-virtual {p0, v2, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 101
    :goto_0
    return-void
    .line 104
.end method

.method public final updateMagazineView(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/miui/clock/module/ClockViewType;->MAGAZINE_INFO:Lcom/miui/clock/module/ClockViewType;

    .line 7
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 9
    invoke-virtual {v0, p1}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 15
    :goto_0
    return-void
    .line 17
.end method

.method public final updateTimeViewAlpha(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 2
    const-string v1, " updateTimeViewAlpha alpha: "

    .line 4
    const-string v2, "ClockBaseAnimation"

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string/jumbo v3, "top"

    .line 10
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    cmpl-float v0, p1, v0

    .line 21
    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, " mAodPosition[top]: "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 44
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 56
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 60
    const-string v1, "aodPosition"

    .line 62
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 64
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 67
    float-to-double v4, p1

    .line 69
    invoke-virtual {v0, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 70
    move-result-object v0

    .line 73
    sget-object v1, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    .line 74
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 76
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/Integer;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 84
    move-result v2

    .line 87
    int-to-double v2, v2

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 89
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 93
    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 113
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 117
    const-string v1, "alpha"

    .line 119
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 121
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 124
    float-to-double v2, p1

    .line 126
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 127
    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mClockContainer:Landroid/view/View;

    .line 133
    filled-new-array {v0}, [Landroid/view/View;

    .line 135
    move-result-object v0

    .line 138
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 139
    move-result-object v0

    .line 142
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 143
    move-result-object v0

    .line 146
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 147
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 149
    move-result-object p1

    .line 152
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 153
    move-result-object p0

    .line 156
    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 157
    return-void
    .line 160
.end method

.method public final updateTimeViewByConfigChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 7
    const v0, 0x7f070715    # @dimen/magazineC_notification_trans_x '0.0dp'

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result p1

    .line 14
    int-to-float p1, p1

    .line 15
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCNotificationTransX:F

    .line 16
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p1

    .line 23
    const v0, 0x7f070713    # @dimen/magazineCDate_notification_trans_x '7.0dp'

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    move-result p1

    .line 30
    int-to-float p1, p1

    .line 31
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCDateNotificationTransX:F

    .line 32
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p1

    .line 39
    const v0, 0x7f070714    # @dimen/magazineCDate_notification_trans_y '5.0dp'

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    move-result p1

    .line 46
    int-to-float p1, p1

    .line 47
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCDateNotificationTransY:F

    .line 48
    invoke-static {}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->isRTL()Z

    .line 50
    move-result p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCNotificationTransX:F

    .line 56
    neg-float p1, p1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCNotificationTransX:F

    .line 60
    :goto_0
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mCNotificationTransX:F

    .line 62
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 64
    if-eqz p1, :cond_1

    .line 66
    return-void

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 71
    move-result-object p1

    .line 74
    new-instance v0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation$3;

    .line 75
    const/4 v1, 0x1

    .line 77
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation$3;-><init>(Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;I)V

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 81
    return-void
    .line 84
.end method
