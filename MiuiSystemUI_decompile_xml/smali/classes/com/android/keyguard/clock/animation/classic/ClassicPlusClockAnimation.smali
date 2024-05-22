.class public final Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;
.super Lcom/android/keyguard/clock/animation/ClockBaseAnimation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final hideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

.field public mAodColor:I

.field public final mAodTransY:I

.field public final mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

.field public mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

.field public final mColorAodState:Lmiuix/animation/controller/AnimState;

.field public final mColorLockState:Lmiuix/animation/controller/AnimState;

.field public final mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

.field public mContainer:Landroid/view/View;

.field public mContainerAodState:Lmiuix/animation/controller/AnimState;

.field public mContainerLockState:Lmiuix/animation/controller/AnimState;

.field public mDensity:F

.field public mLockColor:I

.field public mMagazineInfo:Landroid/view/View;

.field public mTextArea:Landroid/view/View;

.field public final mTimeTypesetting:I

.field public mTimeView:Landroid/view/View;

.field public mTimeView2:Landroid/view/View;

.field public final mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;


# direct methods
.method public constructor <init>(Lcom/miui/clock/MiuiClockController;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 2
    const/16 p1, 0x28

    .line 5
    iput p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mAodTransY:I

    .line 7
    new-instance p1, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 9
    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [F

    .line 12
    const/4 v1, 0x0

    .line 14
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 15
    aput v2, v0, v1

    .line 17
    const/16 v1, 0x14

    .line 19
    invoke-direct {p1, v1, v0}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I[F)V

    .line 21
    const-wide/16 v0, 0x96

    .line 24
    invoke-virtual {p1, v0, v1}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 26
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->hideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 30
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 32
    const/4 v0, 0x2

    .line 34
    new-array v1, v0, [F

    .line 35
    fill-array-data v1, :array_0

    .line 37
    const/4 v2, -0x2

    .line 40
    invoke-direct {p1, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 41
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 44
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 46
    new-array v0, v0, [F

    .line 48
    fill-array-data v0, :array_1

    .line 50
    invoke-direct {p1, v2, v0}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 53
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 56
    const/high16 p1, 0x40300000    # 2.75f

    .line 58
    iput p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mDensity:F

    .line 60
    const-string p1, "colorLock"

    .line 62
    const-string v0, "fraction"

    .line 64
    const-wide/16 v1, 0x0

    .line 66
    invoke-static {p1, v0, v1, v2}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 68
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 72
    const-string p1, "colorAod"

    .line 74
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 76
    invoke-static {p1, v0, v1, v2}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 78
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mColorAodState:Lmiuix/animation/controller/AnimState;

    .line 82
    new-instance p1, Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 84
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 89
    new-instance p1, Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 91
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 96
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 98
    iget-object p1, p1, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 100
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getClassicLine2()I

    .line 102
    move-result p1

    .line 105
    iput p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeTypesetting:I

    .line 106
    return-void

    .line 108
    nop

    .line 109
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3f000000    # 0.5f
    .end array-data

    .line 110
    :array_1
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f051eb8    # 0.52f
    .end array-data
    .line 118
.end method


# virtual methods
.method public final doAnimationToAod(ZZ)V
    .locals 12

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->doAnimationToAod(ZZ)V

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->updateTimeViewAlpha(F)V

    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->updateAnimationState()V

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 13
    iget-object v0, v0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 15
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 17
    iget v2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeTypesetting:I

    .line 19
    const/4 v3, 0x2

    .line 21
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mColorAodState:Lmiuix/animation/controller/AnimState;

    .line 22
    const/4 v5, 0x3

    .line 24
    iget-object v6, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 25
    const/4 v7, 0x0

    .line 27
    const/16 v8, 0x48

    .line 28
    iget-object v9, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 30
    const/4 v10, 0x1

    .line 32
    if-ne v2, v8, :cond_5

    .line 33
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->hideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 35
    iget-object v11, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 37
    if-eqz p1, :cond_2

    .line 39
    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockBean;->getClassicLine2()I

    .line 43
    move-result p2

    .line 46
    if-eq p2, v8, :cond_0

    .line 47
    invoke-virtual {v0, v8}, Lcom/miui/clock/module/ClockBean;->setClassicLine2(I)V

    .line 49
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 52
    filled-new-array {p2}, [Landroid/view/View;

    .line 54
    move-result-object p2

    .line 57
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 58
    move-result-object p2

    .line 61
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 62
    move-result-object p2

    .line 65
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 66
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 68
    invoke-virtual {v4, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 71
    move-result-object v4

    .line 74
    new-instance v6, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;

    .line 75
    invoke-direct {v6, p0, v0, v7}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;Lcom/miui/clock/module/ClockBean;I)V

    .line 77
    filled-new-array {v6}, [Lmiuix/animation/listener/TransitionListener;

    .line 80
    move-result-object v0

    .line 83
    invoke-virtual {v4, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 84
    move-result-object v0

    .line 87
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 88
    move-result-object v0

    .line 91
    invoke-interface {p2, v11, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 92
    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 96
    move-result p2

    .line 99
    if-nez p2, :cond_1

    .line 100
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 102
    move-result-object p2

    .line 105
    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 106
    move-result-object p2

    .line 109
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 110
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 112
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 115
    move-result-object v0

    .line 118
    new-instance v6, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;

    .line 119
    invoke-direct {v6, p0, v7}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;I)V

    .line 121
    filled-new-array {v6}, [Lmiuix/animation/listener/TransitionListener;

    .line 124
    move-result-object v6

    .line 127
    invoke-virtual {v0, v6}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 128
    move-result-object v0

    .line 131
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 132
    move-result-object v0

    .line 135
    invoke-interface {p2, v4, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 136
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 139
    filled-new-array {p2}, [Landroid/view/View;

    .line 141
    move-result-object p2

    .line 144
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 145
    move-result-object p2

    .line 148
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 149
    move-result-object p2

    .line 152
    filled-new-array {v11, v2}, [Ljava/lang/Object;

    .line 153
    move-result-object v0

    .line 156
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 157
    goto/16 :goto_2

    .line 160
    :cond_2
    if-eqz p2, :cond_3

    .line 162
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockBean;->getClassicLine2()I

    .line 164
    move-result p2

    .line 167
    const/16 v4, 0x47

    .line 168
    if-eq p2, v4, :cond_3

    .line 170
    invoke-virtual {v0, v4}, Lcom/miui/clock/module/ClockBean;->setClassicLine2(I)V

    .line 172
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView2:Landroid/view/View;

    .line 175
    filled-new-array {p2}, [Landroid/view/View;

    .line 177
    move-result-object p2

    .line 180
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 181
    move-result-object p2

    .line 184
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 185
    move-result-object p2

    .line 188
    filled-new-array {v11, v2}, [Ljava/lang/Object;

    .line 189
    move-result-object v4

    .line 192
    invoke-interface {p2, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 193
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 196
    filled-new-array {p2}, [Landroid/view/View;

    .line 198
    move-result-object p2

    .line 201
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 202
    move-result-object p2

    .line 205
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 206
    move-result-object p2

    .line 209
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 210
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 212
    invoke-virtual {v4, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 215
    move-result-object v2

    .line 218
    new-instance v4, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;

    .line 219
    invoke-direct {v4, p0, v0, v10}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;Lcom/miui/clock/module/ClockBean;I)V

    .line 221
    filled-new-array {v4}, [Lmiuix/animation/listener/TransitionListener;

    .line 224
    move-result-object v0

    .line 227
    invoke-virtual {v2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 228
    move-result-object v0

    .line 231
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 232
    move-result-object v0

    .line 235
    invoke-interface {p2, v11, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 236
    goto :goto_1

    .line 239
    :cond_3
    invoke-virtual {p0, v10}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 240
    move-result p2

    .line 243
    if-nez p2, :cond_4

    .line 244
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 246
    move-result-object p2

    .line 249
    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 250
    move-result-object p2

    .line 253
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 254
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 256
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 259
    move-result-object v0

    .line 262
    new-instance v2, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;

    .line 263
    invoke-direct {v2, p0, v10}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;I)V

    .line 265
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 268
    move-result-object v2

    .line 271
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 272
    move-result-object v0

    .line 275
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 276
    move-result-object v0

    .line 279
    invoke-interface {p2, v6, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 280
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 283
    filled-new-array {p2}, [Landroid/view/View;

    .line 285
    move-result-object p2

    .line 288
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 289
    move-result-object p2

    .line 292
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 293
    move-result-object p2

    .line 296
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 297
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 299
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 302
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 304
    move-result-object v0

    .line 307
    const-wide/16 v8, 0x96

    .line 308
    invoke-virtual {v0, v8, v9}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 310
    move-result-object v0

    .line 313
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 314
    move-result-object v0

    .line 317
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 318
    invoke-interface {p2, v2, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 320
    goto :goto_2

    .line 323
    :cond_5
    invoke-virtual {p0, v10}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 324
    move-result p2

    .line 327
    if-nez p2, :cond_7

    .line 328
    if-eqz p1, :cond_6

    .line 330
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 332
    move-result-object p2

    .line 335
    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 336
    move-result-object p2

    .line 339
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 340
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 342
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 345
    move-result-object v0

    .line 348
    new-instance v2, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;

    .line 349
    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;I)V

    .line 351
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 354
    move-result-object v2

    .line 357
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 358
    move-result-object v0

    .line 361
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 362
    move-result-object v0

    .line 365
    invoke-interface {p2, v4, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 366
    goto :goto_2

    .line 369
    :cond_6
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 370
    move-result-object p2

    .line 373
    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 374
    move-result-object p2

    .line 377
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 378
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 380
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 383
    move-result-object v0

    .line 386
    new-instance v2, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;

    .line 387
    invoke-direct {v2, p0, v5}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;I)V

    .line 389
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 392
    move-result-object v2

    .line 395
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 396
    move-result-object v0

    .line 399
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 400
    move-result-object v0

    .line 403
    invoke-interface {p2, v6, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 404
    :cond_7
    :goto_2
    if-eqz p1, :cond_8

    .line 407
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 409
    filled-new-array {p2}, [Landroid/view/View;

    .line 411
    move-result-object p2

    .line 414
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 415
    move-result-object p2

    .line 418
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 419
    move-result-object p2

    .line 422
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainerAodState:Lmiuix/animation/controller/AnimState;

    .line 423
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 425
    move-result-object v0

    .line 428
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 429
    goto :goto_3

    .line 432
    :cond_8
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 433
    filled-new-array {p2}, [Landroid/view/View;

    .line 435
    move-result-object p2

    .line 438
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 439
    move-result-object p2

    .line 442
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 443
    move-result-object p2

    .line 446
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainerLockState:Lmiuix/animation/controller/AnimState;

    .line 447
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 449
    move-result-object v0

    .line 452
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 453
    :goto_3
    invoke-virtual {p0, v10}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 456
    move-result p2

    .line 459
    if-eqz p2, :cond_a

    .line 460
    const-string p2, "alpha"

    .line 462
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 464
    move-result-object v0

    .line 467
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 468
    move-result-object v0

    .line 471
    new-array v1, v5, [Ljava/lang/Object;

    .line 472
    aput-object p2, v1, v7

    .line 474
    if-eqz p1, :cond_9

    .line 476
    const/16 v7, 0xff

    .line 478
    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 480
    move-result-object p1

    .line 483
    aput-object p1, v1, v10

    .line 484
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 486
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 488
    new-instance p2, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;

    .line 491
    const/4 v2, 0x4

    .line 493
    invoke-direct {p2, p0, v2}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;I)V

    .line 494
    filled-new-array {p2}, [Lmiuix/animation/listener/TransitionListener;

    .line 497
    move-result-object p0

    .line 500
    invoke-virtual {p1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 501
    move-result-object p0

    .line 504
    aput-object p0, v1, v3

    .line 505
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 507
    :cond_a
    return-void
    .line 510
.end method

.method public final doAnimationToNotification(Z)V
    .locals 5

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->updateAnimationState()V

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 7
    iget-object v0, v0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 9
    iget v1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeTypesetting:I

    .line 11
    const/16 v2, 0x48

    .line 13
    if-ne v1, v2, :cond_1

    .line 15
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->hideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 17
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 19
    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockBean;->getClassicLine2()I

    .line 23
    move-result p1

    .line 26
    const/16 v2, 0x47

    .line 27
    if-eq p1, v2, :cond_1

    .line 29
    invoke-virtual {v0, v2}, Lcom/miui/clock/module/ClockBean;->setClassicLine2(I)V

    .line 31
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView2:Landroid/view/View;

    .line 34
    filled-new-array {p1}, [Landroid/view/View;

    .line 36
    move-result-object p1

    .line 39
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 40
    move-result-object p1

    .line 43
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 44
    move-result-object p1

    .line 47
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 51
    invoke-interface {p1, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 52
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 55
    filled-new-array {p1}, [Landroid/view/View;

    .line 57
    move-result-object p1

    .line 60
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 61
    move-result-object p1

    .line 64
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 65
    move-result-object p1

    .line 68
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 69
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 71
    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 74
    move-result-object v1

    .line 77
    new-instance v2, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;

    .line 78
    const/4 v4, 0x2

    .line 80
    invoke-direct {v2, p0, v0, v4}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;Lcom/miui/clock/module/ClockBean;I)V

    .line 81
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 84
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 88
    move-result-object v0

    .line 91
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 92
    move-result-object v0

    .line 95
    invoke-interface {p1, v3, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 96
    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockBean;->getClassicLine2()I

    .line 100
    move-result p1

    .line 103
    if-eq p1, v2, :cond_1

    .line 104
    invoke-virtual {v0, v2}, Lcom/miui/clock/module/ClockBean;->setClassicLine2(I)V

    .line 106
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 109
    filled-new-array {p1}, [Landroid/view/View;

    .line 111
    move-result-object p1

    .line 114
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 115
    move-result-object p1

    .line 118
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 119
    move-result-object p1

    .line 122
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 123
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 125
    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 128
    move-result-object v1

    .line 131
    new-instance v2, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;

    .line 132
    const/4 v4, 0x3

    .line 134
    invoke-direct {v2, p0, v0, v4}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;Lcom/miui/clock/module/ClockBean;I)V

    .line 135
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 138
    move-result-object v0

    .line 141
    invoke-virtual {v1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 142
    move-result-object v0

    .line 145
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 146
    move-result-object v0

    .line 149
    invoke-interface {p1, v3, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 150
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 153
    filled-new-array {p1}, [Landroid/view/View;

    .line 155
    move-result-object p1

    .line 158
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 159
    move-result-object p1

    .line 162
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 163
    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainerLockState:Lmiuix/animation/controller/AnimState;

    .line 167
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 169
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 171
    move-result-object p0

    .line 174
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 175
    return-void
    .line 178
.end method

.method public final getClockTranslationForAod()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mAodTransY:I

    .line 2
    int-to-float v0, v0

    .line 4
    iget p0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mDensity:F

    .line 5
    mul-float/2addr v0, p0

    .line 7
    return v0
    .line 8
.end method

.method public final initClockNumColor()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 2
    invoke-virtual {v0}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 4
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 14
    move-result v0

    .line 17
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 18
    move-result v2

    .line 21
    if-eq v0, v2, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 24
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 26
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mLockColor:I

    .line 30
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 32
    iget v2, v2, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 34
    iput v2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mAodColor:I

    .line 36
    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 38
    iget v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mAodColor:I

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setEndColor(I)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 46
    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, " initClockNumColor lockColor: #"

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 63
    invoke-virtual {v2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 65
    move-result v2

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, ", aodColor: #"

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 81
    iget p0, p0, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 83
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string p0, ", mColorParams.getCurrentColor(): #"

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 97
    move-result p0

    .line 100
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 111
    const-string v0, "ClockBaseAnimation"

    .line 112
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    return-void
    .line 117
.end method

.method public final initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->initView()V

    .line 2
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->TEXT_AREA:Lcom/miui/clock/module/ClockViewType;

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 7
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTextArea:Landroid/view/View;

    .line 13
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->TIME_AREA:Lcom/miui/clock/module/ClockViewType;

    .line 15
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 21
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->TIME_AREA2:Lcom/miui/clock/module/ClockViewType;

    .line 23
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView2:Landroid/view/View;

    .line 29
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->MAGAZINE_INFO:Lcom/miui/clock/module/ClockViewType;

    .line 31
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 37
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->ALL_VIEW:Lcom/miui/clock/module/ClockViewType;

    .line 39
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 51
    move-result-object v0

    .line 54
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 55
    iput v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mDensity:F

    .line 57
    invoke-virtual {v1}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 59
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 63
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->initClockNumColor()V

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 68
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 73
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 74
    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 78
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 85
    move-result-object v0

    .line 88
    new-instance v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$10;

    .line 89
    invoke-direct {v1, p0}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$10;-><init>(Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 94
    return-void
    .line 97
.end method

.method public final resetColorOnSuperSaveChange(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mIsSuperSave:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mIsSuperSave:Z

    .line 9
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 11
    iget v0, p1, Lcom/miui/clock/module/ClockStyleInfo;->primaryColor:I

    .line 13
    iput v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalPrimaryColor:I

    .line 15
    iget p1, p1, Lcom/miui/clock/module/ClockStyleInfo;->secondaryColor:I

    .line 17
    iput p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalSecondColor:I

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    if-nez p1, :cond_1

    .line 22
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mIsSuperSave:Z

    .line 24
    if-eqz p1, :cond_1

    .line 26
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mIsSuperSave:Z

    .line 29
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 31
    iget v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalPrimaryColor:I

    .line 33
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 35
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 38
    iget v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalSecondColor:I

    .line 40
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setSecondaryColor(I)V

    .line 42
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 45
    check-cast p1, Lcom/miui/clock/classic/ClassicPlusClockView;

    .line 47
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 49
    invoke-virtual {p1, v0}, Lcom/miui/clock/classic/ClassicPlusClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 51
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 54
    iget p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalPrimaryColor:I

    .line 56
    invoke-virtual {p1, p0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 58
    :cond_1
    :goto_0
    return-void
    .line 61
.end method

.method public final updateAnimationState()V
    .locals 4

    .line 1
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 2
    const-string v1, "containerAod"

    .line 4
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 6
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 9
    iget v2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mAodTransY:I

    .line 11
    int-to-float v2, v2

    .line 13
    iget v3, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mDensity:F

    .line 14
    mul-float/2addr v2, v3

    .line 16
    float-to-double v2, v2

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 18
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainerAodState:Lmiuix/animation/controller/AnimState;

    .line 22
    const-string v0, "containerLock"

    .line 24
    const-wide/16 v2, 0x0

    .line 26
    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 28
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainerLockState:Lmiuix/animation/controller/AnimState;

    .line 32
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 34
    iget v1, v0, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 36
    const/4 v2, -0x1

    .line 38
    if-nez v1, :cond_0

    .line 39
    move v1, v2

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 44
    iget v0, v0, Lcom/miui/clock/module/ClockStyleInfo;->aodBlendColor:I

    .line 47
    if-nez v0, :cond_1

    .line 49
    goto :goto_0

    .line 51
    :cond_1
    move v2, v0

    .line 52
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setEndColor(I)V

    .line 53
    return-void
    .line 56
.end method

.method public final updateColorInfo(ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->initClockNumColor()V

    .line 2
    return-void
    .line 5
.end method

.method public final updateMagazineView(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mMagazineInfo:Landroid/view/View;

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
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 17
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 20
    return-void
    .line 23
.end method

.method public final updateTimeViewAlpha(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->updateTimeViewAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 5
    filled-new-array {v0}, [Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 15
    move-result-object v0

    .line 18
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 19
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    move-result-object p1

    .line 24
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 29
    return-void
    .line 32
.end method
