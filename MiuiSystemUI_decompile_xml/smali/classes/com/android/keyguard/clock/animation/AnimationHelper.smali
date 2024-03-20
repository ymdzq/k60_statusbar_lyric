.class public final Lcom/android/keyguard/clock/animation/AnimationHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

.field public mClockDateAnima:Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;

.field public mClockType:Ljava/lang/String;

.field public mClockView:Landroid/view/View;

.field public mHasNotification:Z

.field public final mMiuiClockController:Lcom/miui/clock/MiuiClockController;

.field public final mPaletteChangeListener:Lcom/android/keyguard/clock/animation/AnimationHelper$1;

.field public final mTimeUpdateListener:Lcom/android/keyguard/clock/animation/AnimationHelper$1;

.field public mToAod:Z


# direct methods
.method public constructor <init>(Lcom/miui/clock/MiuiClockController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/keyguard/clock/animation/AnimationHelper$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/animation/AnimationHelper$1;-><init>(Lcom/android/keyguard/clock/animation/AnimationHelper;)V

    .line 7
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mTimeUpdateListener:Lcom/android/keyguard/clock/animation/AnimationHelper$1;

    .line 10
    new-instance v0, Lcom/android/keyguard/clock/animation/AnimationHelper$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/animation/AnimationHelper$1;-><init>(Lcom/android/keyguard/clock/animation/AnimationHelper;)V

    .line 14
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mPaletteChangeListener:Lcom/android/keyguard/clock/animation/AnimationHelper$1;

    .line 17
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final doAnimationToAod(ZZZ)V
    .locals 2

    .line 1
    if-nez p1, :cond_1

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 4
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAodView:Landroid/view/ViewGroup;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const/4 v1, 0x4

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    const-string v0, "AnimationHelper"

    .line 20
    const-string v1, "aod_root_view set INVISIBLE in SystemUI"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mTimeUpdateListener:Lcom/android/keyguard/clock/animation/AnimationHelper$1;

    .line 27
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 29
    iput-object v0, v1, Lcom/miui/clock/MiuiClockController;->mUpdateTimeListener:Lcom/miui/clock/MiuiClockController$TimeUpdateListener;

    .line 31
    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mToAod:Z

    .line 33
    iput-boolean p2, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mHasNotification:Z

    .line 35
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 37
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->doAnimationToAod(ZZZ)V

    .line 39
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockDateAnima:Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;

    .line 42
    if-eqz p0, :cond_2

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->doAnimationToAod(ZZZ)V

    .line 46
    :cond_2
    return-void
    .line 49
.end method

.method public final doAnimationToNotification(ZZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    const-string v1, " doAnimationToNotification hasNotification: "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", fromKeyguard: "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", mHasNotification: "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-boolean v1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mHasNotification:Z

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", mToAod: "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-boolean v1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mToAod:Z

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 49
    const-string v1, "AnimationHelper"

    .line 50
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mToAod:Z

    .line 55
    if-nez v0, :cond_1

    .line 57
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mHasNotification:Z

    .line 59
    if-ne v0, p1, :cond_0

    .line 61
    if-eqz p2, :cond_0

    .line 63
    goto :goto_0

    .line 65
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mHasNotification:Z

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 68
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->doAnimationToNotification(ZZ)V

    .line 70
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockDateAnima:Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;

    .line 73
    if-eqz p0, :cond_1

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->doAnimationToNotification(ZZ)V

    .line 77
    :cond_1
    :goto_0
    return-void
    .line 80
.end method

.method public final initView()V
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->ALL_VIEW:Lcom/miui/clock/module/ClockViewType;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 4
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockView:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 12
    invoke-virtual {v0}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->initView()V

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockDateAnima:Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;

    .line 17
    if-eqz p0, :cond_0

    .line 19
    iget-boolean v0, v1, Lcom/miui/clock/MiuiClockController;->mShowDualClock:Z

    .line 21
    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->initView()V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public final updateClockAnima(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 2
    iget-boolean v1, v0, Lcom/miui/clock/MiuiClockController;->mShowDualClock:Z

    .line 4
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mPaletteChangeListener:Lcom/android/keyguard/clock/animation/AnimationHelper$1;

    .line 6
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mTimeUpdateListener:Lcom/android/keyguard/clock/animation/AnimationHelper$1;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    const-string p1, "dual"

    .line 12
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockType:Ljava/lang/String;

    .line 14
    new-instance p1, Lcom/android/keyguard/clock/animation/DualClockAnimation;

    .line 16
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/DualClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 18
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 21
    iput-object v3, v0, Lcom/miui/clock/MiuiClockController;->mUpdateTimeListener:Lcom/miui/clock/MiuiClockController$TimeUpdateListener;

    .line 23
    iput-object v2, v0, Lcom/miui/clock/MiuiClockController;->mClockPaletteChangeListener:Lcom/miui/clock/MiuiClockController$ClockPaletteChangeListener;

    .line 25
    return-void

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockType:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 33
    move-result v1

    .line 36
    const/4 v4, 0x1

    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, -0x1

    .line 39
    sparse-switch v1, :sswitch_data_0

    .line 40
    goto/16 :goto_0

    .line 43
    :sswitch_0
    const-string/jumbo v1, "rhombus"

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    goto/16 :goto_0

    .line 54
    :cond_1
    const/16 v6, 0x8

    .line 56
    goto/16 :goto_0

    .line 58
    :sswitch_1
    const-string v1, "classic"

    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p1

    .line 65
    if-nez p1, :cond_2

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    const/4 v6, 0x7

    .line 69
    goto :goto_0

    .line 70
    :sswitch_2
    const-string v1, "classic_plus"

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result p1

    .line 76
    if-nez p1, :cond_3

    .line 77
    goto :goto_0

    .line 79
    :cond_3
    const/4 v6, 0x6

    .line 80
    goto :goto_0

    .line 81
    :sswitch_3
    const-string/jumbo v1, "smart_frame"

    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result p1

    .line 88
    if-nez p1, :cond_4

    .line 89
    goto :goto_0

    .line 91
    :cond_4
    const/4 v6, 0x5

    .line 92
    goto :goto_0

    .line 93
    :sswitch_4
    const-string v1, "magazine_c"

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result p1

    .line 99
    if-nez p1, :cond_5

    .line 100
    goto :goto_0

    .line 102
    :cond_5
    const/4 v6, 0x4

    .line 103
    goto :goto_0

    .line 104
    :sswitch_5
    const-string v1, "magazine_b"

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result p1

    .line 110
    if-nez p1, :cond_6

    .line 111
    goto :goto_0

    .line 113
    :cond_6
    const/4 v6, 0x3

    .line 114
    goto :goto_0

    .line 115
    :sswitch_6
    const-string v1, "magazine_a"

    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result p1

    .line 121
    if-nez p1, :cond_7

    .line 122
    goto :goto_0

    .line 124
    :cond_7
    move v6, v5

    .line 125
    goto :goto_0

    .line 126
    :sswitch_7
    const-string v1, "magazine_c_date_only"

    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result p1

    .line 132
    if-nez p1, :cond_8

    .line 133
    goto :goto_0

    .line 135
    :cond_8
    move v6, v4

    .line 136
    goto :goto_0

    .line 137
    :sswitch_8
    const-string v1, "doodle"

    .line 138
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result p1

    .line 143
    if-nez p1, :cond_9

    .line 144
    goto :goto_0

    .line 146
    :cond_9
    const/4 v6, 0x0

    .line 147
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 148
    new-instance p1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 151
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 153
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 156
    goto/16 :goto_1

    .line 158
    :pswitch_0
    iget-object p1, v0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 160
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 162
    move-result p1

    .line 165
    if-eq p1, v4, :cond_d

    .line 166
    if-eq p1, v5, :cond_c

    .line 168
    const/16 v1, 0x9

    .line 170
    if-eq p1, v1, :cond_b

    .line 172
    const/16 v1, 0xa

    .line 174
    if-eq p1, v1, :cond_a

    .line 176
    new-instance p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;

    .line 178
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 180
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 183
    goto :goto_1

    .line 185
    :cond_a
    new-instance p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;

    .line 186
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 188
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 191
    goto :goto_1

    .line 193
    :cond_b
    new-instance p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;

    .line 194
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDryBrush9ClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 196
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 199
    goto :goto_1

    .line 201
    :cond_c
    new-instance p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 202
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 204
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 207
    goto :goto_1

    .line 209
    :cond_d
    new-instance p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusSilkSerifClockAnimation;

    .line 210
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSilkSerifClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 212
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 215
    goto :goto_1

    .line 217
    :pswitch_1
    new-instance p1, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;

    .line 218
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 220
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 223
    goto :goto_1

    .line 225
    :pswitch_2
    new-instance p1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;

    .line 226
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 228
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 231
    goto :goto_1

    .line 233
    :pswitch_3
    new-instance p1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;

    .line 234
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 236
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 239
    goto :goto_1

    .line 241
    :pswitch_4
    new-instance p1, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;

    .line 242
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 244
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 247
    goto :goto_1

    .line 249
    :pswitch_5
    new-instance p1, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;

    .line 250
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 252
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 255
    goto :goto_1

    .line 257
    :pswitch_6
    new-instance p1, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;

    .line 258
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 260
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 263
    goto :goto_1

    .line 265
    :pswitch_7
    new-instance p1, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;

    .line 266
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 268
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 271
    goto :goto_1

    .line 273
    :pswitch_8
    new-instance p1, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;

    .line 274
    invoke-direct {p1, v0}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 276
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 279
    :goto_1
    iput-object v3, v0, Lcom/miui/clock/MiuiClockController;->mUpdateTimeListener:Lcom/miui/clock/MiuiClockController$TimeUpdateListener;

    .line 281
    iput-object v2, v0, Lcom/miui/clock/MiuiClockController;->mClockPaletteChangeListener:Lcom/miui/clock/MiuiClockController$ClockPaletteChangeListener;

    .line 283
    return-void

    .line 285
    :sswitch_data_0
    .sparse-switch
        -0x4f0b36e7 -> :sswitch_8
        -0x4232136a -> :sswitch_7
        -0x21ccdd8a -> :sswitch_6
        -0x21ccdd89 -> :sswitch_5
        -0x21ccdd88 -> :sswitch_4
        -0x9889889 -> :sswitch_3
        -0x4b66d9 -> :sswitch_2
        0x32e13892 -> :sswitch_1
        0x464d9f6c -> :sswitch_0
    .end sparse-switch

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 324
.end method

.method public final updateNotification(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mHasNotification:Z

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 4
    iput-boolean p1, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockDateAnima:Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 12
    iget-boolean p0, p0, Lcom/miui/clock/MiuiClockController;->mShowDualClock:Z

    .line 14
    if-nez p0, :cond_0

    .line 16
    iput-boolean p1, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 18
    :cond_0
    return-void
    .line 20
.end method

.method public final updateToAod(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mToAod:Z

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 4
    iput-boolean p1, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockDateAnima:Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 12
    iget-boolean p0, p0, Lcom/miui/clock/MiuiClockController;->mShowDualClock:Z

    .line 14
    if-nez p0, :cond_0

    .line 16
    iput-boolean p1, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 18
    :cond_0
    return-void
    .line 20
.end method
