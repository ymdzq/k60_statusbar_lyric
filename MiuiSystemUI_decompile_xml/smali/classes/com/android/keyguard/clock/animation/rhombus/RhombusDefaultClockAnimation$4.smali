.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$4;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$4;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$4;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const-string v2, "alpha"

    .line 5
    const-string/jumbo v3, "rgbB"

    .line 7
    const-string/jumbo v4, "rgbG"

    .line 10
    const-string/jumbo v5, "rgbR"

    .line 13
    const-string/jumbo v6, "rgbA"

    .line 16
    iget-object v7, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$4;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 21
    goto/16 :goto_0

    .line 24
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 26
    invoke-static {p2, v2}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 33
    move-result p0

    .line 36
    cmpl-float p0, p0, v1

    .line 37
    if-nez p0, :cond_0

    .line 39
    iget-boolean p0, v7, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 41
    if-nez p0, :cond_0

    .line 43
    iget-boolean p0, v7, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 45
    if-nez p0, :cond_0

    .line 47
    const/4 p0, 0x3

    .line 49
    invoke-virtual {v7, p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->adjustMagazineGravity(I)V

    .line 50
    iget-object p0, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMagazineInfo:Landroid/view/ViewGroup;

    .line 53
    filled-new-array {p0}, [Landroid/view/View;

    .line 55
    move-result-object p0

    .line 58
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 59
    move-result-object p0

    .line 62
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 63
    move-result-object p0

    .line 66
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMagazineLockState:Lmiuix/animation/controller/AnimState;

    .line 67
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 69
    move-result-object p0

    .line 72
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDateShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 73
    iget-object p2, v7, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 75
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 80
    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 81
    iget-object p0, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullDate:Landroid/view/View;

    .line 84
    filled-new-array {p0}, [Landroid/view/View;

    .line 86
    move-result-object p0

    .line 89
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 90
    move-result-object p0

    .line 93
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 94
    move-result-object p0

    .line 97
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 98
    move-result-object v0

    .line 101
    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 102
    iget-object p0, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullWeek:Landroid/view/View;

    .line 105
    filled-new-array {p0}, [Landroid/view/View;

    .line 107
    move-result-object p0

    .line 110
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 111
    move-result-object p0

    .line 114
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 115
    move-result-object p0

    .line 118
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 119
    move-result-object p1

    .line 122
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 123
    iget-object p0, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockStyleInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 126
    iget p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->originInfoAreaColor:I

    .line 128
    iput p0, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mInfoAreaColor:I

    .line 130
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullDate:Landroid/view/View;

    .line 132
    check-cast p1, Landroid/widget/TextView;

    .line 134
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object p0, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullWeek:Landroid/view/View;

    .line 139
    check-cast p0, Landroid/widget/TextView;

    .line 141
    iget p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mInfoAreaColor:I

    .line 143
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget p0, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mInfoAreaColor:I

    .line 148
    invoke-virtual {v7, p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->updateMagazineColor(I)V

    .line 150
    iget-object p0, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockStyleInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 153
    iget p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mInfoAreaColor:I

    .line 155
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setInfoAreaColor(I)V

    .line 157
    :cond_0
    return-void

    .line 160
    :pswitch_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 161
    invoke-static {p2, v6}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 164
    move-result-object p0

    .line 167
    invoke-static {p2, v5}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 168
    move-result-object p1

    .line 171
    invoke-static {p2, v4}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 172
    move-result-object v0

    .line 175
    invoke-static {p2, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 176
    move-result-object p2

    .line 179
    if-eqz p0, :cond_1

    .line 180
    if-eqz p1, :cond_1

    .line 182
    if-eqz v0, :cond_1

    .line 184
    if-eqz p2, :cond_1

    .line 186
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 188
    move-result p0

    .line 191
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 195
    move-result p0

    .line 198
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 199
    move-result p1

    .line 202
    invoke-static {p1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 203
    move-result p1

    .line 206
    invoke-virtual {v0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 207
    move-result v0

    .line 210
    invoke-static {v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 211
    move-result v0

    .line 214
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 215
    move-result p2

    .line 218
    invoke-static {p2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 219
    move-result p2

    .line 222
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 223
    move-result p0

    .line 226
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1:Landroid/view/View;

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 229
    move-result-object p1

    .line 232
    iget-object p2, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1:Landroid/view/View;

    .line 233
    invoke-static {p1, p0}, Lcom/miui/clock/utils/SvgUtils;->initSvgColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 235
    move-result-object v0

    .line 238
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object p2, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2:Landroid/view/View;

    .line 242
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 244
    move-result-object p1

    .line 247
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 248
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1:Landroid/view/View;

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 256
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2:Landroid/view/View;

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 261
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 264
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 266
    move-result-object p1

    .line 269
    if-eqz p1, :cond_1

    .line 270
    iget-object p2, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 272
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 274
    move-result-object p1

    .line 277
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 278
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_1
    return-void

    .line 284
    :pswitch_2
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 285
    invoke-static {p2, v6}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 288
    move-result-object p0

    .line 291
    invoke-static {p2, v5}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 292
    move-result-object p1

    .line 295
    invoke-static {p2, v4}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 296
    move-result-object v0

    .line 299
    invoke-static {p2, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 300
    move-result-object p2

    .line 303
    if-eqz p0, :cond_2

    .line 304
    if-eqz p1, :cond_2

    .line 306
    if-eqz v0, :cond_2

    .line 308
    if-eqz p2, :cond_2

    .line 310
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 312
    move-result p0

    .line 315
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 319
    move-result p0

    .line 322
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 323
    move-result p1

    .line 326
    invoke-static {p1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 327
    move-result p1

    .line 330
    invoke-virtual {v0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 331
    move-result v0

    .line 334
    invoke-static {v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 335
    move-result v0

    .line 338
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 339
    move-result p2

    .line 342
    invoke-static {p2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 343
    move-result p2

    .line 346
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 347
    move-result p0

    .line 350
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1:Landroid/view/View;

    .line 351
    check-cast p1, Lcom/miui/clock/MiuiClockNumberView;

    .line 353
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 355
    move-result-object p1

    .line 358
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 359
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1:Landroid/view/View;

    .line 362
    move-object p2, p1

    .line 364
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 365
    iput p0, p2, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 369
    iget-boolean p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mIsCopperplate:Z

    .line 372
    if-nez p1, :cond_2

    .line 374
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2:Landroid/view/View;

    .line 376
    check-cast p1, Lcom/miui/clock/MiuiClockNumberView;

    .line 378
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 380
    move-result-object p1

    .line 383
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 384
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2:Landroid/view/View;

    .line 387
    move-object p2, p1

    .line 389
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 390
    iput p0, p2, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 392
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 394
    :cond_2
    return-void

    .line 397
    :pswitch_3
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 398
    invoke-static {p2, v2}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 401
    move-result-object p0

    .line 404
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 405
    move-result p0

    .line 408
    cmpl-float p0, p0, v1

    .line 409
    if-nez p0, :cond_3

    .line 411
    iget-boolean p0, v7, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 413
    if-nez p0, :cond_3

    .line 415
    iget-boolean p0, v7, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 417
    if-eqz p0, :cond_3

    .line 419
    iget-boolean p0, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mIsCopperplate:Z

    .line 421
    if-nez p0, :cond_3

    .line 423
    const/16 p0, 0x11

    .line 425
    invoke-virtual {v7, p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->adjustMagazineGravity(I)V

    .line 427
    iget-object p0, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMagazineInfo:Landroid/view/ViewGroup;

    .line 430
    filled-new-array {p0}, [Landroid/view/View;

    .line 432
    move-result-object p0

    .line 435
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 436
    move-result-object p0

    .line 439
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 440
    move-result-object p0

    .line 443
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

    .line 444
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 446
    move-result-object p0

    .line 449
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDateShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 450
    iget-object p2, v7, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 452
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 454
    move-result-object v0

    .line 457
    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 458
    iget-object p0, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNotificationDateText:Landroid/widget/TextView;

    .line 461
    filled-new-array {p0}, [Landroid/view/View;

    .line 463
    move-result-object p0

    .line 466
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 467
    move-result-object p0

    .line 470
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 471
    move-result-object p0

    .line 474
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 475
    move-result-object p1

    .line 478
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 479
    iget-object p0, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockStyleInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 482
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mContext:Landroid/content/Context;

    .line 484
    invoke-virtual {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->getHourAndMinuteColor(Landroid/content/Context;)[I

    .line 486
    move-result-object p0

    .line 489
    const/4 p1, 0x0

    .line 490
    aget p0, p0, p1

    .line 491
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mNotificationDateText:Landroid/widget/TextView;

    .line 493
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 495
    iget-object p0, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mClockStyleInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 498
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->getOriginMagazineColor()I

    .line 500
    move-result p0

    .line 503
    invoke-static {p0}, Lcom/miui/clock/utils/ColorUtils;->blendColor(I)I

    .line 504
    move-result p0

    .line 507
    invoke-virtual {v7, p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->updateMagazineColor(I)V

    .line 508
    :cond_3
    return-void

    .line 511
    :goto_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 512
    invoke-static {p2, v6}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 515
    move-result-object p0

    .line 518
    invoke-static {p2, v5}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 519
    move-result-object p1

    .line 522
    invoke-static {p2, v4}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 523
    move-result-object v0

    .line 526
    invoke-static {p2, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 527
    move-result-object p2

    .line 530
    if-eqz p0, :cond_4

    .line 531
    if-eqz p1, :cond_4

    .line 533
    if-eqz v0, :cond_4

    .line 535
    if-eqz p2, :cond_4

    .line 537
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 539
    move-result p0

    .line 542
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 543
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 546
    move-result p0

    .line 549
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 550
    move-result p1

    .line 553
    invoke-static {p1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 554
    move-result p1

    .line 557
    invoke-virtual {v0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 558
    move-result v0

    .line 561
    invoke-static {v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 562
    move-result v0

    .line 565
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 566
    move-result p2

    .line 569
    invoke-static {p2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 570
    move-result p2

    .line 573
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 574
    move-result p0

    .line 577
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1:Landroid/view/View;

    .line 578
    check-cast p1, Lcom/miui/clock/MiuiClockNumberView;

    .line 580
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 582
    move-result-object p1

    .line 585
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 586
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1:Landroid/view/View;

    .line 589
    move-object p2, p1

    .line 591
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 592
    iput p0, p2, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 594
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 596
    iget-boolean p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mIsCopperplate:Z

    .line 599
    if-nez p1, :cond_4

    .line 601
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2:Landroid/view/View;

    .line 603
    check-cast p1, Lcom/miui/clock/MiuiClockNumberView;

    .line 605
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 607
    move-result-object p1

    .line 610
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 611
    iget-object p1, v7, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2:Landroid/view/View;

    .line 614
    move-object p2, p1

    .line 616
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 617
    iput p0, p2, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 619
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 621
    :cond_4
    return-void

    .line 624
    nop

    .line 625
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 626
.end method
