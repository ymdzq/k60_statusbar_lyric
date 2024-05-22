.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

.field public final synthetic val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

.field public final synthetic val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

.field public final synthetic val$ticker:F

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(FILandroid/view/View;Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;->$r8$classId:I

    .line 2
    iput-object p6, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 4
    iput-object p4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;->val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 6
    iput-object p3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;->val$view:Landroid/view/View;

    .line 8
    iput-object p5, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;->val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 10
    iput p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;->val$ticker:F

    .line 12
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;->val$view:Landroid/view/View;

    .line 4
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 6
    iget v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;->val$ticker:F

    .line 8
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;->val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 10
    const-string v5, "pr"

    .line 12
    const-string v6, "pl"

    .line 14
    const-string v7, "angel"

    .line 16
    const-string/jumbo v8, "viewScaleY"

    .line 18
    const-string/jumbo v9, "viewScaleX"

    .line 21
    const-string/jumbo v10, "viewTranslationY"

    .line 24
    const-string/jumbo v11, "viewTranslationX"

    .line 27
    iget-object v12, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$2;->val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 30
    packed-switch v0, :pswitch_data_0

    .line 32
    goto/16 :goto_1

    .line 35
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 37
    invoke-static {v12}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 40
    move-result-object p0

    .line 43
    invoke-virtual {p0, v11}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 44
    move-result p0

    .line 47
    invoke-static {v12}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p1, v10}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 52
    move-result p1

    .line 55
    invoke-static {v12}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 56
    move-result-object v0

    .line 59
    invoke-virtual {v0, v9}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 60
    move-result v0

    .line 63
    invoke-static {v12}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 64
    move-result-object v9

    .line 67
    invoke-virtual {v9, v8}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 68
    move-result v8

    .line 71
    invoke-static {v12}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 72
    move-result-object v9

    .line 75
    invoke-virtual {v9, v7}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 76
    move-result v7

    .line 79
    invoke-static {p2, v6}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 80
    move-result-object v6

    .line 83
    invoke-static {p2, v5}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 84
    move-result-object p2

    .line 87
    if-eqz v6, :cond_2

    .line 88
    if-eqz p2, :cond_2

    .line 90
    invoke-virtual {v6}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 92
    move-result v5

    .line 95
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 96
    move-result p2

    .line 99
    iget v6, v4, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedX:F

    .line 100
    add-float/2addr v6, v3

    .line 102
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    invoke-static {v6}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 106
    move-result v6

    .line 109
    mul-float/2addr v6, v5

    .line 110
    add-float/2addr v6, p0

    .line 111
    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 112
    iget p0, v4, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedY:F

    .line 115
    add-float/2addr p0, v3

    .line 117
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 118
    move-result p0

    .line 121
    mul-float/2addr p0, v5

    .line 122
    add-float/2addr p0, p1

    .line 123
    invoke-virtual {v1, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 124
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 127
    invoke-virtual {v1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 130
    instance-of p0, v1, Lcom/miui/clock/MiuiClockNumberView;

    .line 133
    if-eqz p0, :cond_1

    .line 135
    iget-boolean p0, v2, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 137
    if-eqz p0, :cond_0

    .line 139
    move-object p0, v1

    .line 141
    check-cast p0, Lcom/miui/clock/MiuiClockNumberView;

    .line 142
    invoke-virtual {p0, v7}, Lcom/miui/clock/MiuiClockNumberView;->setUserDefineAngel(F)V

    .line 144
    goto :goto_0

    .line 147
    :cond_0
    move-object p0, v1

    .line 148
    check-cast p0, Lcom/miui/clock/MiuiClockNumberView;

    .line 149
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockNumberView;->clearUserDefineAngel()V

    .line 151
    iput v7, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 154
    :cond_1
    :goto_0
    iget p0, v4, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedR:F

    .line 156
    add-float/2addr p0, v3

    .line 158
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 159
    move-result p0

    .line 162
    mul-float/2addr p0, p2

    .line 163
    invoke-virtual {v1, p0}, Landroid/view/View;->setRotation(F)V

    .line 164
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 167
    :cond_2
    return-void

    .line 170
    :goto_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 171
    invoke-static {v12}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 174
    move-result-object p0

    .line 177
    invoke-virtual {p0, v11}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 178
    move-result p0

    .line 181
    invoke-static {v12}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 182
    move-result-object p1

    .line 185
    invoke-virtual {p1, v10}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 186
    move-result p1

    .line 189
    invoke-static {v12}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 190
    move-result-object v0

    .line 193
    invoke-virtual {v0, v9}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 194
    move-result v0

    .line 197
    invoke-static {v12}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 198
    move-result-object v9

    .line 201
    invoke-virtual {v9, v8}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 202
    move-result v8

    .line 205
    invoke-static {v12}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    .line 206
    move-result-object v9

    .line 209
    invoke-virtual {v9, v7}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    .line 210
    move-result v7

    .line 213
    invoke-static {p2, v6}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 214
    move-result-object v6

    .line 217
    invoke-static {p2, v5}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 218
    move-result-object p2

    .line 221
    if-eqz v6, :cond_5

    .line 222
    if-eqz p2, :cond_5

    .line 224
    invoke-virtual {v6}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 226
    move-result v5

    .line 229
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 230
    move-result p2

    .line 233
    iget v6, v4, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedX:F

    .line 234
    add-float/2addr v6, v3

    .line 236
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    invoke-static {v6}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 240
    move-result v6

    .line 243
    mul-float/2addr v6, v5

    .line 244
    add-float/2addr v6, p0

    .line 245
    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 246
    iget p0, v4, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedY:F

    .line 249
    add-float/2addr p0, v3

    .line 251
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 252
    move-result p0

    .line 255
    mul-float/2addr p0, v5

    .line 256
    add-float/2addr p0, p1

    .line 257
    invoke-virtual {v1, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 258
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 261
    invoke-virtual {v1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 264
    instance-of p0, v1, Lcom/miui/clock/MiuiClockNumberView;

    .line 267
    if-eqz p0, :cond_4

    .line 269
    iget-boolean p0, v2, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 271
    if-eqz p0, :cond_3

    .line 273
    move-object p0, v1

    .line 275
    check-cast p0, Lcom/miui/clock/MiuiClockNumberView;

    .line 276
    invoke-virtual {p0, v7}, Lcom/miui/clock/MiuiClockNumberView;->setUserDefineAngel(F)V

    .line 278
    goto :goto_2

    .line 281
    :cond_3
    move-object p0, v1

    .line 282
    check-cast p0, Lcom/miui/clock/MiuiClockNumberView;

    .line 283
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockNumberView;->clearUserDefineAngel()V

    .line 285
    iput v7, p0, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 288
    :cond_4
    :goto_2
    iget p0, v4, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;->seedR:F

    .line 290
    add-float/2addr p0, v3

    .line 292
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->perlin(F)F

    .line 293
    move-result p0

    .line 296
    mul-float/2addr p0, p2

    .line 297
    invoke-virtual {v1, p0}, Landroid/view/View;->setRotation(F)V

    .line 298
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 301
    :cond_5
    return-void

    .line 304
    nop

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 306
.end method
