.class public final Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;
.super Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAodState:Lmiuix/animation/controller/AnimState;

.field public mClockContiner:Landroid/view/View;

.field public mClockStyle:I

.field public mLockState:Lmiuix/animation/controller/AnimState;

.field public mNoticeState:Lmiuix/animation/controller/AnimState;

.field public mNotificationTransX:F


# virtual methods
.method public final doAnimationToAod(ZZ)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->doAnimationToAod(ZZ)V

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->updateAnimationState()V

    .line 5
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 8
    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mClockContiner:Landroid/view/View;

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
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mAodState:Lmiuix/animation/controller/AnimState;

    .line 29
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    .line 31
    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 33
    invoke-virtual {v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 36
    move-result-object v2

    .line 39
    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 40
    new-array v1, v1, [F

    .line 42
    invoke-virtual {v2, v3, v0, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 44
    move-result-object v0

    .line 47
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 48
    move-result-object v0

    .line 51
    invoke-interface {p1, p2, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 52
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

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
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 69
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 71
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    .line 73
    move-result-object p0

    .line 76
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 77
    goto/16 :goto_0

    .line 80
    :cond_0
    const-wide/16 v3, 0x12c

    .line 82
    if-eqz p2, :cond_1

    .line 84
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mClockContiner:Landroid/view/View;

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
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNoticeState:Lmiuix/animation/controller/AnimState;

    .line 100
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 102
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 104
    invoke-virtual {v5, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 107
    move-result-object v5

    .line 110
    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 111
    new-array v1, v1, [F

    .line 113
    invoke-virtual {v5, v6, v0, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 115
    move-result-object v0

    .line 118
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 119
    move-result-object v0

    .line 122
    invoke-interface {p1, p2, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 123
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 126
    filled-new-array {p1}, [Landroid/view/View;

    .line 128
    move-result-object p1

    .line 131
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 132
    move-result-object p1

    .line 135
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 136
    move-result-object p1

    .line 139
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNoticeState:Lmiuix/animation/controller/AnimState;

    .line 140
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    .line 142
    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 144
    invoke-virtual {p2, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 147
    move-result-object p2

    .line 150
    invoke-virtual {p2, v3, v4}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 151
    move-result-object p2

    .line 154
    filled-new-array {p2}, [Lmiuix/animation/base/AnimConfig;

    .line 155
    move-result-object p2

    .line 158
    invoke-interface {p1, p0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 159
    goto :goto_0

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mClockContiner:Landroid/view/View;

    .line 163
    filled-new-array {p1}, [Landroid/view/View;

    .line 165
    move-result-object p1

    .line 168
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 169
    move-result-object p1

    .line 172
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 173
    move-result-object p1

    .line 176
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 177
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 179
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 181
    invoke-virtual {v5, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 184
    move-result-object v5

    .line 187
    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 188
    new-array v1, v1, [F

    .line 190
    invoke-virtual {v5, v6, v0, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 192
    move-result-object v0

    .line 195
    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    .line 196
    move-result-object v0

    .line 199
    invoke-interface {p1, p2, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 200
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 203
    filled-new-array {p1}, [Landroid/view/View;

    .line 205
    move-result-object p1

    .line 208
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 209
    move-result-object p1

    .line 212
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 213
    move-result-object p1

    .line 216
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 217
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    .line 219
    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 221
    invoke-virtual {p2, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 224
    move-result-object p2

    .line 227
    invoke-virtual {p2, v3, v4}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 228
    move-result-object p2

    .line 231
    filled-new-array {p2}, [Lmiuix/animation/base/AnimConfig;

    .line 232
    move-result-object p2

    .line 235
    invoke-interface {p1, p0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 236
    :goto_0
    return-void
    .line 239
.end method

.method public final doAnimationToNotification(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->updateAnimationState()V

    .line 21
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 24
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 26
    if-eqz p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mClockContiner:Landroid/view/View;

    .line 30
    filled-new-array {p1}, [Landroid/view/View;

    .line 32
    move-result-object p1

    .line 35
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 36
    move-result-object p1

    .line 39
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 40
    move-result-object p1

    .line 43
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNoticeState:Lmiuix/animation/controller/AnimState;

    .line 44
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 49
    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 50
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 53
    filled-new-array {p1}, [Landroid/view/View;

    .line 55
    move-result-object p1

    .line 58
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 59
    move-result-object p1

    .line 62
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 63
    move-result-object p1

    .line 66
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNoticeState:Lmiuix/animation/controller/AnimState;

    .line 67
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 69
    move-result-object p0

    .line 72
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 73
    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mClockContiner:Landroid/view/View;

    .line 77
    filled-new-array {p1}, [Landroid/view/View;

    .line 79
    move-result-object p1

    .line 82
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 83
    move-result-object p1

    .line 86
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 87
    move-result-object p1

    .line 90
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 91
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 96
    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 97
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 100
    filled-new-array {p1}, [Landroid/view/View;

    .line 102
    move-result-object p1

    .line 105
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 106
    move-result-object p1

    .line 109
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 110
    move-result-object p1

    .line 113
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 114
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 116
    move-result-object p0

    .line 119
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 120
    :cond_2
    :goto_0
    return-void
    .line 123
.end method

.method public final getClockTranslationForAod()F
    .locals 1

    .line 1
    const/high16 v0, -0x3cfe0000    # -130.0f

    .line 2
    iget p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 4
    mul-float/2addr p0, v0

    .line 6
    return p0
    .line 7
.end method

.method public final initView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->initView()V

    .line 2
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->CLOCK_CONTAINER:Lcom/miui/clock/module/ClockViewType;

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 7
    invoke-virtual {v1, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mClockContiner:Landroid/view/View;

    .line 13
    invoke-virtual {v1}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 19
    iget v0, v0, Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;->mClockStyle:I

    .line 21
    iput v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mClockStyle:I

    .line 23
    const/4 v1, 0x1

    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    const/4 v1, 0x3

    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    goto :goto_2

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v0

    .line 37
    const v1, 0x7f070711    # @dimen/magazineA_right_notification_trans_x '0.0dp'

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    move-result v0

    .line 44
    int-to-float v0, v0

    .line 45
    iput v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 46
    invoke-static {}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->isRTL()Z

    .line 48
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    iget v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 54
    neg-float v0, v0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 58
    :goto_0
    iput v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 60
    goto :goto_2

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v0

    .line 68
    const v1, 0x7f070710    # @dimen/magazineA_left_notification_trans_x '0.0dp'

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    move-result v0

    .line 75
    int-to-float v0, v0

    .line 76
    iput v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 77
    invoke-static {}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->isRTL()Z

    .line 79
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    iget v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 85
    neg-float v0, v0

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    iget v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 89
    :goto_1
    iput v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 91
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->updateAnimationState()V

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 98
    move-result-object v0

    .line 101
    new-instance v1, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation$1;

    .line 102
    const/4 v2, 0x0

    .line 104
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;I)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 108
    return-void
    .line 111
.end method

.method public final updateAnimationState()V
    .locals 10

    .line 1
    const v0, 0x7f0708f5    # @dimen/miui_magazine_a_clock_height '154.0dp'

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->getDimen(I)I

    .line 5
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    const v1, 0x7f0708f4    # @dimen/miui_magazine_a_clock_gallery_show_offset '15.0dp'

    .line 17
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->getDimen(I)I

    .line 20
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-static {}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->isJ18()Z

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    const v2, 0x7f0708f8    # @dimen/miui_magazine_a_clock_margin_bottom_j18 '215.0dp'

    .line 32
    invoke-virtual {p0, v2}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->getDimen(I)I

    .line 35
    move-result v2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const v2, 0x7f0708f7    # @dimen/miui_magazine_a_clock_margin_bottom '257.0dp'

    .line 40
    invoke-virtual {p0, v2}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->getDimen(I)I

    .line 43
    move-result v2

    .line 46
    :goto_1
    add-int/2addr v2, v1

    .line 47
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 48
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 50
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullTime:Landroid/view/View;

    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v3

    .line 58
    const-string/jumbo v4, "window"

    .line 59
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 65
    check-cast v3, Landroid/view/WindowManager;

    .line 66
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 68
    move-result-object v3

    .line 71
    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 72
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 75
    sub-int/2addr v1, v2

    .line 77
    sub-int/2addr v1, v0

    .line 78
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 79
    const-string v2, "notice"

    .line 81
    invoke-direct {v0, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 83
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 86
    const v3, 0x7f0708fd    # @dimen/miui_magazine_a_clock_notification_margin_top '80.0dp'

    .line 88
    invoke-virtual {p0, v3}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->getDimen(I)I

    .line 91
    move-result v3

    .line 94
    sub-int/2addr v3, v1

    .line 95
    int-to-double v3, v3

    .line 96
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 97
    move-result-object v0

    .line 100
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 101
    iget v3, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 103
    float-to-double v3, v3

    .line 105
    invoke-virtual {v0, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 106
    move-result-object v0

    .line 109
    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 110
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 112
    invoke-virtual {v0, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 114
    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNoticeState:Lmiuix/animation/controller/AnimState;

    .line 118
    const-string v0, "lock"

    .line 120
    const-wide/16 v6, 0x0

    .line 122
    invoke-static {v0, v2, v6, v7}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 124
    move-result-object v0

    .line 127
    invoke-virtual {v0, v1, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 128
    move-result-object v0

    .line 131
    invoke-virtual {v0, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 132
    move-result-object v0

    .line 135
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 136
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 138
    const-string v8, "aod"

    .line 140
    invoke-direct {v0, v8}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 142
    const/high16 v8, -0x3cfe0000    # -130.0f

    .line 145
    iget v9, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 147
    mul-float/2addr v9, v8

    .line 149
    float-to-double v8, v9

    .line 150
    invoke-virtual {v0, v2, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 151
    move-result-object v0

    .line 154
    invoke-virtual {v0, v1, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 155
    move-result-object v0

    .line 158
    invoke-virtual {v0, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 159
    move-result-object v0

    .line 162
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mAodState:Lmiuix/animation/controller/AnimState;

    .line 163
    return-void
    .line 165
.end method

.method public final updateTimeViewAlpha(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 2
    const-string v1, " updateTimeViewAlpha alpha: "

    .line 4
    const-string v2, "ClockBaseAnimation"

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string/jumbo v3, "top"

    .line 10
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    cmpl-float v0, p1, v0

    .line 21
    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, " mAodPosition[top]: "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 44
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 56
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 60
    const-string v1, "aodPosition"

    .line 62
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 64
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 67
    float-to-double v4, p1

    .line 69
    invoke-virtual {v0, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 70
    move-result-object v0

    .line 73
    sget-object v1, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    .line 74
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 76
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/Integer;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 84
    move-result v2

    .line 87
    int-to-double v2, v2

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 89
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 93
    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 113
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 117
    const-string v1, "alpha"

    .line 119
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 121
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 124
    float-to-double v2, p1

    .line 126
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 127
    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mClockContiner:Landroid/view/View;

    .line 133
    filled-new-array {v0}, [Landroid/view/View;

    .line 135
    move-result-object v0

    .line 138
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 139
    move-result-object v0

    .line 142
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 143
    move-result-object v0

    .line 146
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 147
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 149
    move-result-object p1

    .line 152
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 153
    move-result-object p0

    .line 156
    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 157
    return-void
    .line 160
.end method

.method public final updateTimeViewByConfigChange(Z)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mClockStyle:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    const/4 v1, 0x3

    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    goto :goto_2

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p1

    .line 16
    const v1, 0x7f070711    # @dimen/magazineA_right_notification_trans_x '0.0dp'

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result p1

    .line 23
    int-to-float p1, p1

    .line 24
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 25
    invoke-static {}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->isRTL()Z

    .line 27
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    iget p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 33
    neg-float p1, p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 37
    :goto_0
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 39
    goto :goto_2

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object p1

    .line 47
    const v1, 0x7f070710    # @dimen/magazineA_left_notification_trans_x '0.0dp'

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    move-result p1

    .line 54
    int-to-float p1, p1

    .line 55
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 56
    invoke-static {}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->isRTL()Z

    .line 58
    move-result p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    iget p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 64
    neg-float p1, p1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iget p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 68
    :goto_1
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;->mNotificationTransX:F

    .line 70
    :goto_2
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 72
    if-eqz p1, :cond_4

    .line 74
    return-void

    .line 76
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 79
    move-result-object p1

    .line 82
    new-instance v1, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation$1;

    .line 83
    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/magazine/MagazineAClockAnimation;I)V

    .line 85
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 88
    return-void
    .line 91
.end method
