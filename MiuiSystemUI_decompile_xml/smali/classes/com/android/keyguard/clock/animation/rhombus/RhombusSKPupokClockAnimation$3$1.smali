.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3$1;->this$1:Ljava/lang/Runnable;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3$1;->$r8$classId:I

    .line 2
    const-string v1, "pr"

    .line 4
    const-string v2, "pl"

    .line 6
    const-string v3, "angel"

    .line 8
    const-string/jumbo v4, "viewScaleY"

    .line 10
    const-string/jumbo v5, "viewScaleX"

    .line 13
    const-string/jumbo v6, "viewTranslationY"

    .line 16
    const-string/jumbo v7, "viewTranslationX"

    .line 19
    iget-object v8, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3$1;->this$1:Ljava/lang/Runnable;

    .line 22
    packed-switch v0, :pswitch_data_0

    .line 24
    goto/16 :goto_1

    .line 27
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 29
    check-cast v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;

    .line 32
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 34
    invoke-static {p0}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {p0, v7}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 40
    move-result p0

    .line 43
    iget-object p1, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 44
    invoke-static {p1}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 46
    move-result-object p1

    .line 49
    invoke-virtual {p1, v6}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 50
    move-result p1

    .line 53
    iget-object v0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 54
    invoke-static {v0}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 56
    move-result-object v0

    .line 59
    invoke-virtual {v0, v5}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 60
    move-result v0

    .line 63
    iget-object v5, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 64
    invoke-static {v5}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 66
    move-result-object v5

    .line 69
    invoke-virtual {v5, v4}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 70
    move-result v4

    .line 73
    iget-object v5, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 74
    invoke-static {v5}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 76
    move-result-object v5

    .line 79
    invoke-virtual {v5, v3}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 80
    move-result v3

    .line 83
    invoke-static {p2, v2}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 84
    move-result-object v2

    .line 87
    invoke-static {p2, v1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 88
    move-result-object p2

    .line 91
    if-eqz v2, :cond_2

    .line 92
    if-eqz p2, :cond_2

    .line 94
    invoke-virtual {v2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 96
    move-result v1

    .line 99
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 100
    move-result p2

    .line 103
    iget-object v2, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 104
    iget-object v5, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 106
    iget-object v6, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 108
    iget v6, v6, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedX:F

    .line 110
    iget v7, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$ticker:F

    .line 112
    add-float/2addr v6, v7

    .line 114
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    invoke-static {v6}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 118
    move-result v5

    .line 121
    mul-float/2addr v5, v1

    .line 122
    add-float/2addr v5, p0

    .line 123
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 124
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 127
    iget-object v2, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 129
    iget-object v5, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 131
    iget v5, v5, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedY:F

    .line 133
    iget v6, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$ticker:F

    .line 135
    add-float/2addr v5, v6

    .line 137
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    invoke-static {v5}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 141
    move-result v2

    .line 144
    mul-float/2addr v2, v1

    .line 145
    add-float/2addr v2, p1

    .line 146
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 147
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 150
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 152
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 155
    invoke-virtual {p0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 157
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 160
    instance-of p1, p0, Lcom/miui/clock/MiuiClockNumberView;

    .line 162
    if-eqz p1, :cond_1

    .line 164
    iget-object p1, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 166
    iget-boolean p1, p1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 168
    if-eqz p1, :cond_0

    .line 170
    check-cast p0, Lcom/miui/clock/MiuiClockNumberView;

    .line 172
    invoke-virtual {p0, v3}, Lcom/miui/clock/MiuiClockNumberView;->setUserDefineAngel(F)V

    .line 174
    goto :goto_0

    .line 177
    :cond_0
    check-cast p0, Lcom/miui/clock/MiuiClockNumberView;

    .line 178
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockNumberView;->clearUserDefineAngel()V

    .line 180
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 183
    check-cast p0, Lcom/miui/clock/MiuiClockNumberView;

    .line 185
    iput v3, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 187
    :cond_1
    :goto_0
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 189
    iget-object p1, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 191
    iget-object v0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 193
    iget v0, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedR:F

    .line 195
    iget v1, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$ticker:F

    .line 197
    add-float/2addr v0, v1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    invoke-static {v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 203
    move-result p1

    .line 206
    mul-float/2addr p1, p2

    .line 207
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 208
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 213
    :cond_2
    return-void

    .line 216
    :goto_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 217
    check-cast v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;

    .line 220
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 222
    invoke-static {p0}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 224
    move-result-object p0

    .line 227
    invoke-virtual {p0, v7}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 228
    move-result p0

    .line 231
    iget-object p1, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 232
    invoke-static {p1}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 234
    move-result-object p1

    .line 237
    invoke-virtual {p1, v6}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 238
    move-result p1

    .line 241
    iget-object v0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 242
    invoke-static {v0}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 244
    move-result-object v0

    .line 247
    invoke-virtual {v0, v5}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 248
    move-result v0

    .line 251
    iget-object v5, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 252
    invoke-static {v5}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 254
    move-result-object v5

    .line 257
    invoke-virtual {v5, v4}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 258
    move-result v4

    .line 261
    iget-object v5, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 262
    invoke-static {v5}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 264
    move-result-object v5

    .line 267
    invoke-virtual {v5, v3}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 268
    move-result v3

    .line 271
    invoke-static {p2, v2}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 272
    move-result-object v2

    .line 275
    invoke-static {p2, v1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 276
    move-result-object p2

    .line 279
    if-eqz v2, :cond_5

    .line 280
    if-eqz p2, :cond_5

    .line 282
    invoke-virtual {v2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 284
    move-result v1

    .line 287
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 288
    move-result p2

    .line 291
    iget-object v2, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 292
    iget-object v5, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 294
    iget-object v6, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 296
    iget v6, v6, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedX:F

    .line 298
    iget v7, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$ticker:F

    .line 300
    add-float/2addr v6, v7

    .line 302
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    invoke-static {v6}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 306
    move-result v5

    .line 309
    mul-float/2addr v5, v1

    .line 310
    add-float/2addr v5, p0

    .line 311
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 312
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 315
    iget-object v2, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 317
    iget-object v5, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 319
    iget v5, v5, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedY:F

    .line 321
    iget v6, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$ticker:F

    .line 323
    add-float/2addr v5, v6

    .line 325
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    invoke-static {v5}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 329
    move-result v2

    .line 332
    mul-float/2addr v2, v1

    .line 333
    add-float/2addr v2, p1

    .line 334
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 335
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 338
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 340
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 343
    invoke-virtual {p0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 345
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 348
    instance-of p1, p0, Lcom/miui/clock/MiuiClockNumberView;

    .line 350
    if-eqz p1, :cond_4

    .line 352
    iget-object p1, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 354
    iget-boolean p1, p1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 356
    if-eqz p1, :cond_3

    .line 358
    check-cast p0, Lcom/miui/clock/MiuiClockNumberView;

    .line 360
    invoke-virtual {p0, v3}, Lcom/miui/clock/MiuiClockNumberView;->setUserDefineAngel(F)V

    .line 362
    goto :goto_2

    .line 365
    :cond_3
    check-cast p0, Lcom/miui/clock/MiuiClockNumberView;

    .line 366
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockNumberView;->clearUserDefineAngel()V

    .line 368
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 371
    check-cast p0, Lcom/miui/clock/MiuiClockNumberView;

    .line 373
    iput v3, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 375
    :cond_4
    :goto_2
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 377
    iget-object p1, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 379
    iget-object v0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 381
    iget v0, v0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedR:F

    .line 383
    iget v1, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$ticker:F

    .line 385
    add-float/2addr v0, v1

    .line 387
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    invoke-static {v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 391
    move-result p1

    .line 394
    mul-float/2addr p1, p2

    .line 395
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 396
    iget-object p0, v8, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 401
    :cond_5
    return-void

    .line 404
    nop

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 406
.end method
