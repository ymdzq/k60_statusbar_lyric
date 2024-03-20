.class public final Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;
.super Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mMagazineLockPositionState:Lmiuix/animation/controller/AnimState;

.field public mMagazineLockState:Lmiuix/animation/controller/AnimState;

.field public final mMagazineNoticeLeftMargin:I

.field public mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

.field public final mMagazineNoticeTransY:I


# direct methods
.method public constructor <init>(Lcom/miui/clock/MiuiClockController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;-><init>(Lcom/miui/clock/MiuiClockController;)V

    .line 2
    const/16 p1, -0xb4

    .line 5
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineNoticeTransY:I

    .line 7
    const/16 p1, 0xc

    .line 9
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineNoticeLeftMargin:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final doAnimationToAod(ZZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->updateAnimationState()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 11
    filled-new-array {p1}, [Landroid/view/View;

    .line 13
    move-result-object p1

    .line 16
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 17
    move-result-object p1

    .line 20
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 21
    move-result-object p1

    .line 24
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 28
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 29
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 32
    filled-new-array {p0}, [Landroid/view/View;

    .line 34
    move-result-object p0

    .line 37
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 38
    move-result-object p0

    .line 41
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 42
    move-result-object p0

    .line 45
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 49
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 50
    goto/16 :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 55
    const-wide/16 v2, 0x12c

    .line 57
    const/4 v4, 0x0

    .line 59
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 60
    if-eqz p2, :cond_1

    .line 62
    const/4 p2, 0x0

    .line 64
    invoke-virtual {p0, p2}, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->updateMagazineGravity(F)V

    .line 65
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 68
    filled-new-array {p2}, [Landroid/view/View;

    .line 70
    move-result-object p2

    .line 73
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 74
    move-result-object p2

    .line 77
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 78
    move-result-object p2

    .line 81
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 85
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 86
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 89
    filled-new-array {p2}, [Landroid/view/View;

    .line 91
    move-result-object p2

    .line 94
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 95
    move-result-object p2

    .line 98
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 99
    move-result-object p2

    .line 102
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

    .line 103
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 105
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 107
    invoke-virtual {v0, v5}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 110
    move-result-object v0

    .line 113
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 114
    new-array v4, v4, [F

    .line 116
    invoke-virtual {v0, v1, p1, v4}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 118
    move-result-object p1

    .line 121
    invoke-virtual {p1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 122
    move-result-object p1

    .line 125
    filled-new-array {p1}, [Lmiuix/animation/base/AnimConfig;

    .line 126
    move-result-object p1

    .line 129
    invoke-interface {p2, p0, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 130
    goto :goto_0

    .line 133
    :cond_1
    const/high16 p2, 0x3f000000    # 0.5f

    .line 134
    invoke-virtual {p0, p2}, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->updateMagazineGravity(F)V

    .line 136
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

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
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 153
    filled-new-array {v0, v5}, [Ljava/lang/Object;

    .line 155
    move-result-object v0

    .line 158
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 159
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 162
    filled-new-array {p2}, [Landroid/view/View;

    .line 164
    move-result-object p2

    .line 167
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 168
    move-result-object p2

    .line 171
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 172
    move-result-object p2

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineLockPositionState:Lmiuix/animation/controller/AnimState;

    .line 176
    invoke-interface {p2, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 178
    move-result-object p2

    .line 181
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineLockState:Lmiuix/animation/controller/AnimState;

    .line 182
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 184
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 186
    invoke-virtual {v0, v5}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 189
    move-result-object v0

    .line 192
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 193
    new-array v4, v4, [F

    .line 195
    invoke-virtual {v0, v1, p1, v4}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 197
    move-result-object p1

    .line 200
    invoke-virtual {p1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 201
    move-result-object p1

    .line 204
    filled-new-array {p1}, [Lmiuix/animation/base/AnimConfig;

    .line 205
    move-result-object p1

    .line 208
    invoke-interface {p2, p0, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 209
    :goto_0
    return-void
    .line 212
.end method

.method public final doAnimationToNotification(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->updateAnimationState()V

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 7
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->updateMagazineGravity(F)V

    .line 12
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 15
    filled-new-array {p1}, [Landroid/view/View;

    .line 17
    move-result-object p1

    .line 20
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 21
    move-result-object p1

    .line 24
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 25
    move-result-object p1

    .line 28
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 29
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 31
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 36
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 37
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 40
    filled-new-array {p1}, [Landroid/view/View;

    .line 42
    move-result-object p1

    .line 45
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 46
    move-result-object p1

    .line 49
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 50
    move-result-object p1

    .line 53
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

    .line 54
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 59
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 60
    goto :goto_0

    .line 63
    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->updateMagazineGravity(F)V

    .line 66
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

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
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 83
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 85
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 90
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 91
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 94
    filled-new-array {p1}, [Landroid/view/View;

    .line 96
    move-result-object p1

    .line 99
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 100
    move-result-object p1

    .line 103
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 104
    move-result-object p1

    .line 107
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineLockState:Lmiuix/animation/controller/AnimState;

    .line 108
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 110
    move-result-object p0

    .line 113
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 114
    :goto_0
    return-void
    .line 117
.end method

.method public final initView()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->initView()V

    .line 2
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 5
    const-string v1, "magazineNotice"

    .line 7
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 9
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 12
    iget v2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineNoticeTransY:I

    .line 14
    int-to-float v2, v2

    .line 16
    iget v3, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->swdp:F

    .line 17
    mul-float/2addr v2, v3

    .line 19
    iget v3, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 20
    mul-float/2addr v2, v3

    .line 22
    float-to-double v2, v2

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 24
    move-result-object v0

    .line 27
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 28
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 30
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 32
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

    .line 36
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 38
    const-string v5, "magazineLock"

    .line 40
    invoke-direct {v0, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 42
    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 45
    const-wide/16 v6, 0x0

    .line 47
    invoke-virtual {v0, v5, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 49
    move-result-object v0

    .line 52
    invoke-virtual {v0, v1, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 53
    move-result-object v0

    .line 56
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 57
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineLockState:Lmiuix/animation/controller/AnimState;

    .line 61
    const-string v0, "magazineLockPositionState"

    .line 63
    invoke-static {v0, v5, v6, v7}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 65
    move-result-object v0

    .line 68
    invoke-virtual {v0, v1, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 69
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineLockPositionState:Lmiuix/animation/controller/AnimState;

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 77
    move-result-object v0

    .line 80
    check-cast v0, Landroid/view/ViewGroup;

    .line 81
    if-eqz v0, :cond_0

    .line 83
    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 86
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 88
    move-result-object v1

    .line 91
    new-instance v2, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation$1;

    .line 92
    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;Landroid/view/View;)V

    .line 94
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 97
    return-void
    .line 100
.end method

.method public final updateAnimationState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineNoticeState:Lmiuix/animation/controller/AnimState;

    .line 2
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 4
    iget v2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineNoticeTransY:I

    .line 6
    int-to-float v2, v2

    .line 8
    iget v3, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->swdp:F

    .line 9
    mul-float/2addr v2, v3

    .line 11
    iget v3, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 12
    mul-float/2addr v2, v3

    .line 14
    float-to-double v2, v2

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 16
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineLockState:Lmiuix/animation/controller/AnimState;

    .line 19
    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 21
    const-wide/16 v2, 0x0

    .line 23
    invoke-virtual {p0, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {p0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 29
    return-void
    .line 32
.end method

.method public final updateMagazineGravity(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 18
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 20
    const/4 v1, 0x0

    .line 22
    cmpl-float p1, p1, v1

    .line 23
    if-nez p1, :cond_0

    .line 25
    iget p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCDateClockAnimation;->mMagazineNoticeLeftMargin:I

    .line 27
    int-to-float p1, p1

    .line 29
    iget v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 30
    mul-float/2addr p1, v1

    .line 32
    iget v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->swdp:F

    .line 33
    mul-float/2addr p1, v1

    .line 35
    float-to-int p1, p1

    .line 36
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    :cond_1
    return-void
    .line 44
.end method
