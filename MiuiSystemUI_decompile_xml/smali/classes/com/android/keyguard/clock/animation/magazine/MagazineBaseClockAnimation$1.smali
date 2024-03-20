.class public final Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_4

    .line 9
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 11
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 14
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMinColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 16
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 18
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setSecondaryColor(I)V

    .line 22
    instance-of p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;

    .line 25
    if-eqz p0, :cond_0

    .line 27
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 29
    check-cast p0, Lcom/miui/clock/magazine/MiuiMagazineABase;

    .line 31
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 33
    invoke-virtual {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineABase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    instance-of p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;

    .line 39
    if-eqz p0, :cond_1

    .line 41
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 43
    check-cast p0, Lcom/miui/clock/magazine/MiuiMagazineBBase;

    .line 45
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineBBase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    instance-of p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;

    .line 53
    if-eqz p0, :cond_2

    .line 55
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 57
    check-cast p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;

    .line 59
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 63
    :cond_2
    :goto_0
    return-void

    .line 66
    :pswitch_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 67
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 70
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHourColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 72
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 74
    move-result p1

    .line 77
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 78
    instance-of p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;

    .line 81
    if-eqz p0, :cond_3

    .line 83
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 85
    check-cast p0, Lcom/miui/clock/magazine/MiuiMagazineABase;

    .line 87
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 89
    invoke-virtual {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineABase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 91
    goto :goto_1

    .line 94
    :cond_3
    instance-of p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;

    .line 95
    if-eqz p0, :cond_4

    .line 97
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 99
    check-cast p0, Lcom/miui/clock/magazine/MiuiMagazineBBase;

    .line 101
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 103
    invoke-virtual {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineBBase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 105
    goto :goto_1

    .line 108
    :cond_4
    instance-of p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;

    .line 109
    if-eqz p0, :cond_5

    .line 111
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 113
    check-cast p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;

    .line 115
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 117
    invoke-virtual {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 119
    :cond_5
    :goto_1
    return-void

    .line 122
    :pswitch_2
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 123
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 126
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMinColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 128
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 130
    move-result p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setSecondaryColor(I)V

    .line 134
    instance-of p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;

    .line 137
    if-eqz p0, :cond_6

    .line 139
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 141
    check-cast p0, Lcom/miui/clock/magazine/MiuiMagazineABase;

    .line 143
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 145
    invoke-virtual {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineABase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 147
    goto :goto_2

    .line 150
    :cond_6
    instance-of p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;

    .line 151
    if-eqz p0, :cond_7

    .line 153
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 155
    check-cast p0, Lcom/miui/clock/magazine/MiuiMagazineBBase;

    .line 157
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 159
    invoke-virtual {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineBBase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 161
    goto :goto_2

    .line 164
    :cond_7
    instance-of p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;

    .line 165
    if-eqz p0, :cond_8

    .line 167
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 169
    check-cast p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;

    .line 171
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 173
    invoke-virtual {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 175
    :cond_8
    :goto_2
    return-void

    .line 178
    :pswitch_3
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 179
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 182
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHourColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 184
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 186
    move-result p1

    .line 189
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 190
    instance-of p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;

    .line 193
    if-eqz p0, :cond_9

    .line 195
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 197
    check-cast p0, Lcom/miui/clock/magazine/MiuiMagazineABase;

    .line 199
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 201
    invoke-virtual {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineABase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 203
    goto :goto_3

    .line 206
    :cond_9
    instance-of p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;

    .line 207
    if-eqz p0, :cond_a

    .line 209
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 211
    check-cast p0, Lcom/miui/clock/magazine/MiuiMagazineBBase;

    .line 213
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 215
    invoke-virtual {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineBBase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 217
    goto :goto_3

    .line 220
    :cond_a
    instance-of p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;

    .line 221
    if-eqz p0, :cond_b

    .line 223
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 225
    check-cast p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;

    .line 227
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 229
    invoke-virtual {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 231
    :cond_b
    :goto_3
    return-void

    .line 234
    :goto_4
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 235
    const-string p0, "alpha"

    .line 238
    invoke-static {p2, p0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 240
    move-result-object p0

    .line 243
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 244
    move-result p0

    .line 247
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 248
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getEndColor()I

    .line 250
    move-result p1

    .line 253
    const/16 p2, 0xff

    .line 254
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 256
    move-result p0

    .line 259
    const/4 p2, 0x0

    .line 260
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    .line 261
    move-result p0

    .line 264
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 265
    move-result p2

    .line 268
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 269
    move-result v0

    .line 272
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 273
    move-result p1

    .line 276
    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 277
    move-result p0

    .line 280
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockContainer:Landroid/view/View;

    .line 281
    iget-object p2, v1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 283
    iget-boolean p2, p2, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 285
    iget-object v0, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 287
    invoke-virtual {v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getStartColor()I

    .line 289
    move-result v0

    .line 292
    iget-object v2, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 293
    invoke-virtual {v2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 295
    move-result v2

    .line 298
    invoke-static {v0, v2, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 299
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockContainer:Landroid/view/View;

    .line 302
    const/16 p2, 0xc8

    .line 304
    invoke-static {p1, p0, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 306
    return-void

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 310
.end method
