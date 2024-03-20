.class public final Lcom/android/keyguard/clock/animation/DoodleClockAnimation;
.super Lcom/android/keyguard/clock/animation/ClockBaseAnimation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAodState:Lmiuix/animation/controller/AnimState;

.field public final mAodTransY:I

.field public mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

.field public final mColorAodState:Lmiuix/animation/controller/AnimState;

.field public final mColorLockState:Lmiuix/animation/controller/AnimState;

.field public final mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

.field public mContainer:Landroid/view/View;

.field public mDensity:F

.field public final mHideEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final mHideState:Lmiuix/animation/controller/AnimState;

.field public mLockState:Lmiuix/animation/controller/AnimState;

.field public mMagazineInfo:Landroid/view/View;

.field public final mScale:F

.field public final mScaleTrans:F

.field public final mShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public final mShowState:Lmiuix/animation/controller/AnimState;

.field public final mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;


# direct methods
.method public constructor <init>(Lcom/miui/clock/MiuiClockController;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 2
    const p1, 0x3f19999a    # 0.6f

    .line 5
    iput p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mScale:F

    .line 8
    const p1, 0x3e4ccccd    # 0.2f

    .line 10
    iput p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mScaleTrans:F

    .line 13
    const/16 p1, 0xaf

    .line 15
    iput p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mAodTransY:I

    .line 17
    const/high16 p1, 0x40300000    # 2.75f

    .line 19
    iput p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mDensity:F

    .line 21
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 23
    const/4 v0, 0x2

    .line 25
    new-array v1, v0, [F

    .line 26
    fill-array-data v1, :array_0

    .line 28
    const/4 v2, -0x2

    .line 31
    invoke-direct {p1, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 32
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 35
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 37
    new-array v1, v0, [F

    .line 39
    fill-array-data v1, :array_1

    .line 41
    invoke-direct {p1, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 44
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 47
    new-array v1, v0, [F

    .line 49
    fill-array-data v1, :array_2

    .line 51
    invoke-direct {p1, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 54
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 57
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 59
    new-array v0, v0, [F

    .line 61
    fill-array-data v0, :array_3

    .line 63
    invoke-direct {p1, v2, v0}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 66
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mHideEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 69
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 71
    const-string/jumbo v0, "show"

    .line 73
    invoke-direct {p1, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 76
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 79
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 81
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 83
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 87
    const-string p1, "hide"

    .line 89
    const-wide/16 v3, 0x0

    .line 91
    invoke-static {p1, v0, v3, v4}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 93
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 97
    const-string p1, "colorLock"

    .line 99
    const-string v0, "fraction"

    .line 101
    invoke-static {p1, v0, v3, v4}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 103
    move-result-object p1

    .line 106
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 107
    const-string p1, "colorAod"

    .line 109
    invoke-static {p1, v0, v1, v2}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;D)Lmiuix/animation/controller/AnimState;

    .line 111
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mColorAodState:Lmiuix/animation/controller/AnimState;

    .line 115
    new-instance p1, Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 117
    invoke-direct {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 122
    return-void

    .line 124
    nop

    .line 125
    :array_0
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f051eb8    # 0.52f
    .end array-data

    .line 126
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data

    .line 134
    :array_2
    .array-data 4
        0x3f733333    # 0.95f
        0x3e99999a    # 0.3f
    .end array-data

    .line 142
    :array_3
    .array-data 4
        0x3f733333    # 0.95f
        0x3dcccccd    # 0.1f
    .end array-data
.end method


# virtual methods
.method public final doAnimationToAod(ZZ)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->doAnimationToAod(ZZ)V

    .line 2
    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->updateTimeViewAlpha(F)V

    .line 7
    new-instance p2, Lmiuix/animation/controller/AnimState;

    .line 10
    invoke-direct {p2}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 12
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 15
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mContainer:Landroid/view/View;

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 19
    move-result v1

    .line 22
    neg-int v1, v1

    .line 23
    int-to-float v1, v1

    .line 24
    iget v2, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mScaleTrans:F

    .line 25
    mul-float/2addr v1, v2

    .line 27
    iget v2, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mAodTransY:I

    .line 28
    int-to-float v2, v2

    .line 30
    iget v3, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mDensity:F

    .line 31
    mul-float/2addr v2, v3

    .line 33
    add-float/2addr v2, v1

    .line 34
    float-to-double v1, v2

    .line 35
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 36
    move-result-object p2

    .line 39
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 40
    iget v2, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mScale:F

    .line 42
    float-to-double v2, v2

    .line 44
    invoke-virtual {p2, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 45
    move-result-object p2

    .line 48
    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 49
    invoke-virtual {p2, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 51
    move-result-object p2

    .line 54
    iput-object p2, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mAodState:Lmiuix/animation/controller/AnimState;

    .line 55
    new-instance p2, Lmiuix/animation/controller/AnimState;

    .line 57
    invoke-direct {p2}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 59
    const-wide/16 v2, 0x0

    .line 62
    invoke-virtual {p2, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 64
    move-result-object p2

    .line 67
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 68
    invoke-virtual {p2, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 70
    move-result-object p2

    .line 73
    invoke-virtual {p2, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 74
    move-result-object p2

    .line 77
    iput-object p2, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 78
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 82
    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mContainer:Landroid/view/View;

    .line 86
    filled-new-array {p1}, [Landroid/view/View;

    .line 88
    move-result-object p1

    .line 91
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 92
    move-result-object p1

    .line 95
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 96
    move-result-object p1

    .line 99
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mAodState:Lmiuix/animation/controller/AnimState;

    .line 100
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 102
    move-result-object v1

    .line 105
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 106
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mMagazineInfo:Landroid/view/View;

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
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mHideEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 123
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 125
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 130
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 131
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 137
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 138
    move-result-object p1

    .line 141
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    .line 142
    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 144
    invoke-virtual {p2, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 147
    move-result-object p2

    .line 150
    new-instance v0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$1;

    .line 151
    const/4 v1, 0x0

    .line 153
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/DoodleClockAnimation;I)V

    .line 154
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 157
    move-result-object v0

    .line 160
    invoke-virtual {p2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 161
    move-result-object p2

    .line 164
    filled-new-array {p2}, [Lmiuix/animation/base/AnimConfig;

    .line 165
    move-result-object p2

    .line 168
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mColorAodState:Lmiuix/animation/controller/AnimState;

    .line 169
    invoke-interface {p1, p0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 171
    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mContainer:Landroid/view/View;

    .line 175
    filled-new-array {p1}, [Landroid/view/View;

    .line 177
    move-result-object p1

    .line 180
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 181
    move-result-object p1

    .line 184
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 185
    move-result-object p1

    .line 188
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 189
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 191
    move-result-object v1

    .line 194
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 195
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 198
    filled-new-array {p1}, [Landroid/view/View;

    .line 200
    move-result-object p1

    .line 203
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 204
    move-result-object p1

    .line 207
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 208
    move-result-object p1

    .line 211
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 212
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 214
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 216
    move-result-object v1

    .line 219
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 220
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 223
    move-result-object p1

    .line 226
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 227
    move-result-object p1

    .line 230
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    .line 231
    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 233
    invoke-virtual {p2, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 236
    move-result-object p2

    .line 239
    new-instance v0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$1;

    .line 240
    const/4 v1, 0x1

    .line 242
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/DoodleClockAnimation;I)V

    .line 243
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 246
    move-result-object v0

    .line 249
    invoke-virtual {p2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 250
    move-result-object p2

    .line 253
    filled-new-array {p2}, [Lmiuix/animation/base/AnimConfig;

    .line 254
    move-result-object p2

    .line 257
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 258
    invoke-interface {p1, p0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 260
    :goto_0
    return-void
    .line 263
.end method

.method public final getClockTranslationForAod()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mAodTransY:I

    .line 2
    int-to-float v0, v0

    .line 4
    iget p0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mDensity:F

    .line 5
    mul-float/2addr v0, p0

    .line 7
    return v0
    .line 8
.end method

.method public final initClockNumColor()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 2
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 8
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 10
    move-result v2

    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 16
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 18
    move-result v0

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setStartColor(I)V

    .line 22
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 25
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 33
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getOriginMagazineColor()I

    .line 35
    move-result v0

    .line 38
    invoke-static {v0}, Lcom/miui/clock/utils/GlobalColorUtils;->transformAodColor(I)I

    .line 39
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 44
    iget v0, v0, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 46
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->setEndColor(I)V

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v3, " initClockNumColor lockColor: #"

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 64
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 66
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 73
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string p0, ", aodColor: #"

    .line 77
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 85
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string p0, ", mColorParams.getCurrentColor(): #"

    .line 89
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 94
    move-result p0

    .line 97
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 101
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    const-string v0, "ClockBaseAnimation"

    .line 109
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    return-void
    .line 114
.end method

.method public final initView()V
    .locals 2

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
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mContainer:Landroid/view/View;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 19
    move-result-object v0

    .line 22
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 23
    iput v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mDensity:F

    .line 25
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mContainer:Landroid/view/View;

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 33
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->MAGAZINE_INFO:Lcom/miui/clock/module/ClockViewType;

    .line 35
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 41
    invoke-virtual {v1}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 43
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 47
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->initClockNumColor()V

    .line 49
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 52
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 57
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 58
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mColorLockState:Lmiuix/animation/controller/AnimState;

    .line 62
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 64
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mContainer:Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 69
    move-result-object p0

    .line 72
    check-cast p0, Landroid/view/ViewGroup;

    .line 73
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 79
    return-void
    .line 82
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
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

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
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 31
    iget v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalPrimaryColor:I

    .line 33
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 35
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 38
    iget v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mOriginalSecondColor:I

    .line 40
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setSecondaryColor(I)V

    .line 42
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mContainer:Landroid/view/View;

    .line 45
    check-cast p1, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

    .line 47
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 49
    invoke-virtual {p1, v0}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 51
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

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

.method public final updateColorInfo(ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->initClockNumColor()V

    .line 2
    return-void
    .line 5
.end method

.method public final updateMagazineView(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mMagazineInfo:Landroid/view/View;

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
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 15
    :goto_0
    return-void
    .line 17
.end method

.method public final updateTimeViewAlpha(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->updateTimeViewAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mContainer:Landroid/view/View;

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
