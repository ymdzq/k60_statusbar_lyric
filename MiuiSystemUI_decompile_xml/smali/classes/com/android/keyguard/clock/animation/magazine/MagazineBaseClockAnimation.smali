.class public abstract Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;
.super Lcom/android/keyguard/clock/animation/ClockBaseAnimation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

.field public mClockContainer:Landroid/view/View;

.field public mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

.field public final mColorAodState:Lmiuix/animation/controller/AnimState;

.field public final mColorLockState:Lmiuix/animation/controller/AnimState;

.field public mContainer:Landroid/view/View;

.field public mDensity:F

.field public mFullDate:Landroid/view/View;

.field public mFullTime:Landroid/view/View;

.field public mFullWeek:Landroid/view/View;

.field public final mHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

.field public final mHourColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

.field public mMagazineInfo:Landroid/view/View;

.field public final mMinColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

.field public final mScaleEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final mShowEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

.field public final mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public swdp:F


# direct methods
.method public constructor <init>(Lcom/miui/clock/MiuiClockController;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 2
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 5
    const/4 v0, 0x2

    .line 7
    new-array v1, v0, [F

    .line 8
    fill-array-data v1, :array_0

    .line 10
    const/4 v2, -0x2

    .line 13
    invoke-direct {p1, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 14
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 17
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 19
    new-array v0, v0, [F

    .line 21
    fill-array-data v0, :array_1

    .line 23
    invoke-direct {p1, v2, v0}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 26
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mScaleEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 29
    new-instance p1, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 31
    const/4 v0, 0x1

    .line 33
    new-array v1, v0, [F

    .line 34
    const/4 v2, 0x0

    .line 36
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 37
    aput v3, v1, v2

    .line 39
    const/16 v4, 0x14

    .line 41
    invoke-direct {p1, v4, v1}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I[F)V

    .line 43
    const-wide/16 v5, 0x12c

    .line 46
    invoke-virtual {p1, v5, v6}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 48
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 52
    new-instance p1, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 54
    new-array v0, v0, [F

    .line 56
    aput v3, v0, v2

    .line 58
    invoke-direct {p1, v4, v0}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I[F)V

    .line 60
    const-wide/16 v0, 0xc8

    .line 63
    invoke-virtual {p1, v0, v1}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 65
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 69
    const/high16 p1, 0x40300000    # 2.75f

    .line 71
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 73
    new-instance p1, Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 75
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHourColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 80
    new-instance p1, Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 82
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMinColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 87
    const-string p1, "colorLock"

    .line 89
    const-string v0, "fraction"

    .line 91
    const-wide/16 v1, 0x0

    .line 93
    invoke-static {p1, v0, v1, v2}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 95
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 99
    const-string p1, "colorAod"

    .line 101
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 103
    invoke-static {p1, v0, v1, v2}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 105
    move-result-object p1

    .line 108
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mColorAodState:Lmiuix/animation/controller/AnimState;

    .line 109
    new-instance p1, Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 111
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 116
    return-void

    .line 118
    nop

    .line 119
    :array_0
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f051eb8    # 0.52f
    .end array-data

    .line 120
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data
    .line 128
.end method


# virtual methods
.method public diffColor()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public doAnimationToAod(ZZ)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->doAnimationToAod(ZZ)V

    .line 2
    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->updateTimeViewAlpha(F)V

    .line 7
    const/4 p2, 0x1

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 11
    move-result v0

    .line 14
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->diffColor()Z

    .line 15
    move-result v1

    .line 18
    xor-int/2addr v1, p2

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 20
    move-result v1

    .line 23
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->doBlendAnimation(ZZZ)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 27
    move-result v0

    .line 30
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->diffColor()Z

    .line 31
    move-result v1

    .line 34
    xor-int/2addr v1, p2

    .line 35
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 36
    move-result v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string v3, " doColorAnimation toAod = "

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    const-string v3, ", hourBlur = "

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    const-string v3, ", minBlur = "

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 75
    const-string v3, "ClockBaseAnimation"

    .line 76
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 81
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMinColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 83
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHourColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 85
    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mColorAodState:Lmiuix/animation/controller/AnimState;

    .line 89
    if-nez v0, :cond_0

    .line 91
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 96
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 97
    move-result-object v0

    .line 100
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 101
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 103
    invoke-virtual {v4, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 106
    move-result-object v4

    .line 109
    new-instance v5, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;

    .line 110
    const/4 v6, 0x0

    .line 112
    invoke-direct {v5, p0, v6}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;I)V

    .line 113
    filled-new-array {v5}, [Lmiuix/animation/listener/TransitionListener;

    .line 116
    move-result-object v5

    .line 119
    invoke-virtual {v4, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 120
    move-result-object v4

    .line 123
    filled-new-array {v4}, [Lmiuix/animation/base/AnimConfig;

    .line 124
    move-result-object v4

    .line 127
    invoke-interface {v0, p1, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 128
    :cond_0
    if-nez v1, :cond_3

    .line 131
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 133
    move-result-object v0

    .line 136
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 137
    move-result-object v0

    .line 140
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 141
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 143
    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 146
    move-result-object v1

    .line 149
    new-instance v2, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;

    .line 150
    invoke-direct {v2, p0, p2}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;I)V

    .line 152
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 155
    move-result-object p0

    .line 158
    invoke-virtual {v1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 159
    move-result-object p0

    .line 162
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 163
    move-result-object p0

    .line 166
    invoke-interface {v0, p1, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 167
    goto :goto_0

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 171
    if-nez v0, :cond_2

    .line 173
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 175
    move-result-object p2

    .line 178
    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 179
    move-result-object p2

    .line 182
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 183
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 185
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 188
    move-result-object v0

    .line 191
    new-instance v4, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;

    .line 192
    const/4 v5, 0x2

    .line 194
    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;I)V

    .line 195
    filled-new-array {v4}, [Lmiuix/animation/listener/TransitionListener;

    .line 198
    move-result-object v4

    .line 201
    invoke-virtual {v0, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 202
    move-result-object v0

    .line 205
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 206
    move-result-object v0

    .line 209
    invoke-interface {p2, p1, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 210
    :cond_2
    if-nez v1, :cond_3

    .line 213
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 215
    move-result-object p2

    .line 218
    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 219
    move-result-object p2

    .line 222
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 223
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 225
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 228
    move-result-object v0

    .line 231
    new-instance v1, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;

    .line 232
    const/4 v2, 0x3

    .line 234
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;I)V

    .line 235
    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    .line 238
    move-result-object p0

    .line 241
    invoke-virtual {v0, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 242
    move-result-object p0

    .line 245
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 246
    move-result-object p0

    .line 249
    invoke-interface {p2, p1, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 250
    :cond_3
    :goto_0
    return-void
    .line 253
.end method

.method public doBlendAnimation(ZZZ)V
    .locals 2

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
    move-result-object p3

    .line 37
    const-string v0, "ClockBaseAnimation"

    .line 38
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-eqz p2, :cond_1

    .line 43
    const-string p2, "alpha"

    .line 45
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 47
    move-result-object p3

    .line 50
    invoke-static {p3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 51
    move-result-object p3

    .line 54
    const/4 v0, 0x3

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    const/4 v1, 0x0

    .line 58
    aput-object p2, v0, v1

    .line 59
    if-eqz p1, :cond_0

    .line 61
    const/16 v1, 0xff

    .line 63
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object p1

    .line 68
    const/4 p2, 0x1

    .line 69
    aput-object p1, v0, p2

    .line 70
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 72
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 74
    new-instance p2, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;

    .line 77
    const/4 v1, 0x4

    .line 79
    invoke-direct {p2, p0, v1}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;I)V

    .line 80
    filled-new-array {p2}, [Lmiuix/animation/listener/TransitionListener;

    .line 83
    move-result-object p0

    .line 86
    invoke-virtual {p1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 87
    move-result-object p0

    .line 90
    const/4 p1, 0x2

    .line 91
    aput-object p0, v0, p1

    .line 92
    invoke-interface {p3, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 94
    :cond_1
    return-void
    .line 97
.end method

.method public final getDimen(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    move-result p1

    .line 11
    int-to-float p1, p1

    .line 12
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 19
    move-result p0

    .line 22
    mul-float/2addr p0, p1

    .line 23
    float-to-int p0, p0

    .line 24
    return p0
    .line 25
.end method

.method public final initClockNumColor()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 2
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHourColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 8
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 10
    move-result v2

    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 16
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 18
    move-result v0

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 22
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 25
    iget v0, v0, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 27
    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setEndColor(I)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 32
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getSecondaryColor()I

    .line 34
    move-result v0

    .line 37
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMinColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 38
    invoke-virtual {v2}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 40
    move-result v3

    .line 43
    if-eq v0, v3, :cond_1

    .line 44
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 46
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getSecondaryColor()I

    .line 48
    move-result v0

    .line 51
    invoke-virtual {v2, v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 55
    iget v0, v0, Lcom/miui/clock/module/ClockStyleInfo;->aodSecondaryColor:I

    .line 57
    invoke-virtual {v2, v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setEndColor(I)V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 62
    iget v3, v0, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 64
    const/4 v4, -0x1

    .line 66
    if-nez v3, :cond_2

    .line 67
    move v3, v4

    .line 69
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 70
    invoke-virtual {v5, v3}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 72
    iget v0, v0, Lcom/miui/clock/module/ClockStyleInfo;->aodBlendColor:I

    .line 75
    if-nez v0, :cond_3

    .line 77
    goto :goto_0

    .line 79
    :cond_3
    move v4, v0

    .line 80
    :goto_0
    invoke-virtual {v5, v4}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setEndColor(I)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string v3, " initClockNumColor lockPrimaryColor: #"

    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 97
    invoke-virtual {v3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 99
    move-result v3

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 103
    move-result-object v3

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v3, ", aodPrimaryColor: #"

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 115
    iget v3, v3, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v3, ", mHourColorParams.getCurrentColor(): #"

    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 131
    move-result v1

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, ", lockSecondaryColor: #"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 147
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getSecondaryColor()I

    .line 149
    move-result v1

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 153
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ", aodSecondaryColor: #"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 165
    iget p0, p0, Lcom/miui/clock/module/ClockStyleInfo;->aodSecondaryColor:I

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 169
    move-result-object p0

    .line 172
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string p0, ", mMinColorParams.getCurrentColor(): #"

    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v2}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 181
    move-result p0

    .line 184
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 185
    move-result-object p0

    .line 188
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object p0

    .line 195
    const-string v0, "ClockBaseAnimation"

    .line 196
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
    .line 201
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->initView()V

    .line 2
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->ALL_VIEW:Lcom/miui/clock/module/ClockViewType;

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 7
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 13
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->FULL_DATE:Lcom/miui/clock/module/ClockViewType;

    .line 15
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 21
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->FULL_TIME:Lcom/miui/clock/module/ClockViewType;

    .line 23
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullTime:Landroid/view/View;

    .line 29
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->FULL_WEEK:Lcom/miui/clock/module/ClockViewType;

    .line 31
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullWeek:Landroid/view/View;

    .line 37
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->CLOCK_CONTAINER:Lcom/miui/clock/module/ClockViewType;

    .line 39
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockContainer:Landroid/view/View;

    .line 45
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->MAGAZINE_INFO:Lcom/miui/clock/module/ClockViewType;

    .line 47
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 53
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 70
    move-result-object v0

    .line 73
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 74
    iput v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 84
    move-result v0

    .line 87
    iput v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->swdp:F

    .line 88
    invoke-virtual {v1}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 90
    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 94
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->initClockNumColor()V

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHourColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 99
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 104
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 105
    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 109
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMinColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 114
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 119
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 120
    move-result-object v0

    .line 123
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 124
    const-string v0, "alpha"

    .line 127
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 129
    move-result-object v1

    .line 132
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 133
    move-result-object v1

    .line 136
    const/4 v2, 0x0

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v2

    .line 141
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 142
    move-result-object v0

    .line 145
    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 149
    iget v1, v0, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 151
    const/4 v2, -0x1

    .line 153
    if-nez v1, :cond_0

    .line 154
    move v1, v2

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 157
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 159
    iget v0, v0, Lcom/miui/clock/module/ClockStyleInfo;->aodBlendColor:I

    .line 162
    if-nez v0, :cond_1

    .line 164
    goto :goto_0

    .line 166
    :cond_1
    move v2, v0

    .line 167
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setEndColor(I)V

    .line 168
    return-void
    .line 171
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
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 11
    iget v0, p1, Lcom/miui/clock/module/ClockStyleInfo;->primaryColor:I

    .line 13
    iput v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalPrimaryColor:I

    .line 15
    iget p1, p1, Lcom/miui/clock/module/ClockStyleInfo;->secondaryColor:I

    .line 17
    iput p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalSecondColor:I

    .line 19
    goto :goto_1

    .line 21
    :cond_0
    if-nez p1, :cond_4

    .line 22
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mIsSuperSave:Z

    .line 24
    if-eqz p1, :cond_4

    .line 26
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mIsSuperSave:Z

    .line 29
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 31
    iget v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalPrimaryColor:I

    .line 33
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 35
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 38
    iget v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalSecondColor:I

    .line 40
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setSecondaryColor(I)V

    .line 42
    instance-of p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;

    .line 45
    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 49
    check-cast p1, Lcom/miui/clock/magazine/MiuiMagazineABase;

    .line 51
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 53
    invoke-virtual {p1, v0}, Lcom/miui/clock/magazine/MiuiMagazineABase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 55
    goto :goto_0

    .line 58
    :cond_1
    instance-of p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;

    .line 59
    if-eqz p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 63
    check-cast p1, Lcom/miui/clock/magazine/MiuiMagazineBBase;

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 67
    invoke-virtual {p1, v0}, Lcom/miui/clock/magazine/MiuiMagazineBBase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 69
    goto :goto_0

    .line 72
    :cond_2
    instance-of p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;

    .line 73
    if-eqz p1, :cond_3

    .line 75
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 77
    check-cast p1, Lcom/miui/clock/magazine/MiuiMagazineCBase;

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 81
    invoke-virtual {p1, v0}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 83
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHourColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 86
    iget v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalPrimaryColor:I

    .line 88
    invoke-virtual {p1, v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 90
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMinColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 93
    iget p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalSecondColor:I

    .line 95
    invoke-virtual {p1, p0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 97
    :cond_4
    :goto_1
    return-void
    .line 100
.end method

.method public final setBackgroundBlurEnableChange(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mBackgroundBlurEnable:Z

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 4
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 6
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHourColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 12
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 15
    iget p1, p1, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setEndColor(I)V

    .line 19
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 22
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getSecondaryColor()I

    .line 24
    move-result p1

    .line 27
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMinColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 28
    invoke-virtual {v0, p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 30
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 33
    iget p0, p0, Lcom/miui/clock/module/ClockStyleInfo;->aodSecondaryColor:I

    .line 35
    invoke-virtual {v0, p0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setEndColor(I)V

    .line 37
    return-void
    .line 40
.end method

.method public final updateColorInfo(ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->initClockNumColor()V

    .line 2
    return-void
    .line 5
.end method

.method public updateTimeViewAlpha(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->updateTimeViewAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullTime:Landroid/view/View;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    filled-new-array {v0}, [Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 13
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 17
    move-result-object v0

    .line 20
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    move-result-object p1

    .line 26
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 31
    :cond_0
    return-void
    .line 34
.end method
