.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$8;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$8;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$8;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$8;->$r8$classId:I

    .line 2
    const-string v1, "_R_G_L_0_G_D_0_P_0"

    .line 4
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$8;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 6
    const-string/jumbo v3, "rgbB"

    .line 8
    const-string/jumbo v4, "rgbG"

    .line 11
    const-string/jumbo v5, "rgbR"

    .line 14
    const-string/jumbo v6, "rgbA"

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 20
    goto/16 :goto_1

    .line 23
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 25
    invoke-static {p2, v6}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 28
    move-result-object p0

    .line 31
    invoke-static {p2, v5}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 32
    move-result-object p1

    .line 35
    invoke-static {p2, v4}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 36
    move-result-object v0

    .line 39
    invoke-static {p2, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 40
    move-result-object p2

    .line 43
    if-eqz p0, :cond_0

    .line 44
    if-eqz p1, :cond_0

    .line 46
    if-eqz v0, :cond_0

    .line 48
    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 52
    move-result p0

    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 59
    move-result p0

    .line 62
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 63
    move-result p1

    .line 66
    invoke-static {p1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 67
    move-result p1

    .line 70
    invoke-virtual {v0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 71
    move-result v0

    .line 74
    invoke-static {v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 75
    move-result v0

    .line 78
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 79
    move-result p2

    .line 82
    invoke-static {p2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 83
    move-result p2

    .line 86
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 87
    move-result p0

    .line 90
    iget-object p1, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1:Landroid/view/View;

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 93
    move-result-object p1

    .line 96
    iget-object p2, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1:Landroid/view/View;

    .line 97
    invoke-static {p1, p0}, Lcom/miui/clock/utils/SvgUtils;->initSvgColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 99
    move-result-object v0

    .line 102
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object p2, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2:Landroid/view/View;

    .line 106
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 108
    move-result-object p1

    .line 111
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 112
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object p1, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1:Landroid/view/View;

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 120
    iget-object p1, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2:Landroid/view/View;

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 125
    iget-object p1, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 128
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 130
    move-result-object p1

    .line 133
    if-eqz p1, :cond_0

    .line 134
    iget-object p2, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColonView:Landroid/widget/ImageView;

    .line 136
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 138
    move-result-object p1

    .line 141
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 142
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_0
    return-void

    .line 148
    :pswitch_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 149
    invoke-static {p2, v6}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 152
    move-result-object p0

    .line 155
    invoke-static {p2, v5}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 156
    move-result-object p1

    .line 159
    invoke-static {p2, v4}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 160
    move-result-object v0

    .line 163
    invoke-static {p2, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 164
    move-result-object p2

    .line 167
    if-eqz p0, :cond_3

    .line 168
    if-eqz p1, :cond_3

    .line 170
    if-eqz v0, :cond_3

    .line 172
    if-eqz p2, :cond_3

    .line 174
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 176
    move-result p0

    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 183
    move-result p0

    .line 186
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 187
    move-result p1

    .line 190
    invoke-static {p1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 191
    move-result p1

    .line 194
    invoke-static {p1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 195
    move-result p1

    .line 198
    invoke-virtual {v0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 199
    move-result v0

    .line 202
    invoke-static {v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 203
    move-result v0

    .line 206
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 207
    move-result p2

    .line 210
    invoke-static {p2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 211
    move-result p2

    .line 214
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 215
    move-result p0

    .line 218
    iget-object p1, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1:Landroid/view/View;

    .line 219
    check-cast p1, Lcom/miui/clock/MiuiClockNumberView;

    .line 221
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 223
    move-result-object p1

    .line 226
    iget-object p2, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2:Landroid/view/View;

    .line 227
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 229
    invoke-virtual {p2}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 231
    move-result-object p2

    .line 234
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 235
    if-eqz v0, :cond_1

    .line 237
    instance-of v0, p2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 239
    if-eqz v0, :cond_1

    .line 241
    iget-object p1, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1:Landroid/view/View;

    .line 243
    check-cast p1, Lcom/miui/clock/MiuiClockNumberView;

    .line 245
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 247
    move-result-object p1

    .line 250
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 251
    iget-object p2, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2:Landroid/view/View;

    .line 253
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 255
    invoke-virtual {p2}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 257
    move-result-object p2

    .line 260
    check-cast p2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 261
    invoke-virtual {p1, v1, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setFillColor(Ljava/lang/String;I)V

    .line 263
    invoke-virtual {p2, v1, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setFillColor(Ljava/lang/String;I)V

    .line 266
    goto :goto_0

    .line 269
    :cond_1
    instance-of p1, p1, Landroid/graphics/drawable/VectorDrawable;

    .line 270
    if-eqz p1, :cond_2

    .line 272
    instance-of p1, p2, Landroid/graphics/drawable/VectorDrawable;

    .line 274
    if-eqz p1, :cond_2

    .line 276
    iget-object p1, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1:Landroid/view/View;

    .line 278
    check-cast p1, Lcom/miui/clock/MiuiClockNumberView;

    .line 280
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 282
    move-result-object p1

    .line 285
    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    .line 286
    iget-object p2, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2:Landroid/view/View;

    .line 288
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 290
    invoke-virtual {p2}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 292
    move-result-object p2

    .line 295
    check-cast p2, Landroid/graphics/drawable/VectorDrawable;

    .line 296
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/VectorDrawable;->setTint(I)V

    .line 298
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/VectorDrawable;->setTint(I)V

    .line 301
    :cond_2
    :goto_0
    iget-object p1, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1:Landroid/view/View;

    .line 304
    move-object p2, p1

    .line 306
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 307
    iput p0, p2, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 309
    iget-object p2, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2:Landroid/view/View;

    .line 311
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 313
    iput p0, p2, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 317
    iget-object p0, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour2:Landroid/view/View;

    .line 320
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 322
    :cond_3
    return-void

    .line 325
    :goto_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 326
    invoke-static {p2, v6}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 329
    move-result-object p0

    .line 332
    invoke-static {p2, v5}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 333
    move-result-object p1

    .line 336
    invoke-static {p2, v4}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 337
    move-result-object v0

    .line 340
    invoke-static {p2, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 341
    move-result-object p2

    .line 344
    if-eqz p0, :cond_6

    .line 345
    if-eqz p1, :cond_6

    .line 347
    if-eqz v0, :cond_6

    .line 349
    if-eqz p2, :cond_6

    .line 351
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 353
    move-result p0

    .line 356
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 360
    move-result p0

    .line 363
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 364
    move-result p1

    .line 367
    invoke-static {p1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 368
    move-result p1

    .line 371
    invoke-virtual {v0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 372
    move-result v0

    .line 375
    invoke-static {v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 376
    move-result v0

    .line 379
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 380
    move-result p2

    .line 383
    invoke-static {p2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->checkColorValue(I)I

    .line 384
    move-result p2

    .line 387
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 388
    move-result p0

    .line 391
    iget-object p1, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1:Landroid/view/View;

    .line 392
    check-cast p1, Lcom/miui/clock/MiuiClockNumberView;

    .line 394
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 396
    move-result-object p1

    .line 399
    iget-object p2, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2:Landroid/view/View;

    .line 400
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 402
    invoke-virtual {p2}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 404
    move-result-object p2

    .line 407
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 408
    if-eqz v0, :cond_4

    .line 410
    instance-of v0, p2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 412
    if-eqz v0, :cond_4

    .line 414
    iget-object p1, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1:Landroid/view/View;

    .line 416
    check-cast p1, Lcom/miui/clock/MiuiClockNumberView;

    .line 418
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 420
    move-result-object p1

    .line 423
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 424
    iget-object p2, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2:Landroid/view/View;

    .line 426
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 428
    invoke-virtual {p2}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 430
    move-result-object p2

    .line 433
    check-cast p2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 434
    invoke-virtual {p1, v1, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setFillColor(Ljava/lang/String;I)V

    .line 436
    invoke-virtual {p2, v1, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setFillColor(Ljava/lang/String;I)V

    .line 439
    goto :goto_2

    .line 442
    :cond_4
    instance-of p1, p1, Landroid/graphics/drawable/VectorDrawable;

    .line 443
    if-eqz p1, :cond_5

    .line 445
    instance-of p1, p2, Landroid/graphics/drawable/VectorDrawable;

    .line 447
    if-eqz p1, :cond_5

    .line 449
    iget-object p1, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1:Landroid/view/View;

    .line 451
    check-cast p1, Lcom/miui/clock/MiuiClockNumberView;

    .line 453
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 455
    move-result-object p1

    .line 458
    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    .line 459
    iget-object p2, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2:Landroid/view/View;

    .line 461
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 463
    invoke-virtual {p2}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 465
    move-result-object p2

    .line 468
    check-cast p2, Landroid/graphics/drawable/VectorDrawable;

    .line 469
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/VectorDrawable;->setTint(I)V

    .line 471
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/VectorDrawable;->setTint(I)V

    .line 474
    :cond_5
    :goto_2
    iget-object p1, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1:Landroid/view/View;

    .line 477
    move-object p2, p1

    .line 479
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 480
    iput p0, p2, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 482
    iget-object p2, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2:Landroid/view/View;

    .line 484
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 486
    iput p0, p2, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 490
    iget-object p0, v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin2:Landroid/view/View;

    .line 493
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 495
    :cond_6
    return-void

    .line 498
    nop

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 500
.end method
