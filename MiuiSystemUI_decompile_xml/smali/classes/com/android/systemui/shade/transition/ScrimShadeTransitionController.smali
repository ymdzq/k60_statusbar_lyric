.class public final Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public currentPanelState:Ljava/lang/Integer;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public inSplitShade:Z

.field public lastExpansionEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

.field public lastExpansionFraction:Ljava/lang/Float;

.field public final resources:Landroid/content/res/Resources;

.field public final scrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public splitShadeScrimTransitionDistance:I

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->scrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 5
    iput-object p4, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->resources:Landroid/content/res/Resources;

    .line 7
    iput-object p5, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 9
    iput-object p6, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 11
    iput-object p7, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 13
    invoke-static {p4}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 15
    move-result p3

    .line 18
    iput-boolean p3, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->inSplitShade:Z

    .line 19
    const p3, 0x7f0710c5    # @dimen/split_shade_scrim_transition_distance '600.0dp'

    .line 21
    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result p3

    .line 27
    iput p3, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->splitShadeScrimTransitionDistance:I

    .line 28
    new-instance p3, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$1;

    .line 30
    invoke-direct {p3, p0}, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$1;-><init>(Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;)V

    .line 32
    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 35
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 37
    new-instance p1, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$2;

    .line 40
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$2;-><init>(Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;)V

    .line 42
    sget-object p0, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 45
    const-string p3, "ScrimShadeTransitionController"

    .line 47
    invoke-virtual {p2, p3, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 49
    return-void
    .line 52
.end method


# virtual methods
.method public final onStateChanged()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->lastExpansionEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->currentPanelState:Ljava/lang/Integer;

    .line 7
    iget-boolean v2, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->inSplitShade:Z

    .line 9
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 15
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 17
    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    .line 19
    if-nez v2, :cond_1

    .line 21
    move v2, v4

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v2, v3

    .line 25
    :goto_0
    if-eqz v2, :cond_3

    .line 26
    if-nez v1, :cond_2

    .line 28
    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v1

    .line 34
    if-ne v1, v4, :cond_3

    .line 35
    iget-object v1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 37
    check-cast v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 39
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    .line 41
    if-nez v1, :cond_3

    .line 43
    sget-object v1, Lcom/android/systemui/flags/Flags;->LARGE_SHADE_GRANULAR_ALPHA_INTERPOLATION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 45
    iget-object v2, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 47
    check-cast v2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 49
    invoke-virtual {v2, v1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 51
    move-result v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    move v1, v4

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    :goto_1
    move v1, v3

    .line 59
    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 60
    const/4 v5, 0x0

    .line 62
    if-eqz v1, :cond_4

    .line 63
    iget v1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->splitShadeScrimTransitionDistance:I

    .line 65
    int-to-float v1, v1

    .line 67
    iget v0, v0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->dragDownPxAmount:F

    .line 68
    div-float/2addr v0, v1

    .line 70
    invoke-static {v0, v5, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 71
    move-result v0

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    iget v0, v0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 76
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->scrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 83
    move-result v6

    .line 86
    if-nez v6, :cond_c

    .line 87
    iget v6, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelScrimMinFraction:F

    .line 89
    cmpg-float v7, v6, v2

    .line 91
    if-gez v7, :cond_5

    .line 93
    sub-float v7, v0, v6

    .line 95
    sub-float/2addr v2, v6

    .line 97
    div-float/2addr v7, v2

    .line 98
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    .line 99
    move-result v2

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    move v2, v0

    .line 104
    :goto_4
    iget v6, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansionFraction:F

    .line 105
    cmpl-float v6, v6, v2

    .line 107
    if-eqz v6, :cond_b

    .line 109
    cmpl-float v5, v2, v5

    .line 111
    if-eqz v5, :cond_6

    .line 113
    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 115
    iget-boolean v6, v6, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    .line 117
    if-eqz v6, :cond_6

    .line 119
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatingPanelExpansionOnUnlock:Z

    .line 121
    goto :goto_5

    .line 123
    :cond_6
    if-nez v5, :cond_7

    .line 124
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatingPanelExpansionOnUnlock:Z

    .line 126
    :cond_7
    :goto_5
    iput v2, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansionFraction:F

    .line 128
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 130
    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 132
    if-eq v2, v5, :cond_8

    .line 134
    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 136
    if-eq v2, v5, :cond_8

    .line 138
    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 140
    if-eq v2, v5, :cond_8

    .line 142
    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 144
    if-eq v2, v5, :cond_8

    .line 146
    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 148
    if-ne v2, v5, :cond_9

    .line 150
    :cond_8
    move v3, v4

    .line 152
    :cond_9
    if-eqz v3, :cond_b

    .line 153
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    .line 155
    if-eqz v2, :cond_b

    .line 157
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatingPanelExpansionOnUnlock:Z

    .line 159
    if-eqz v2, :cond_a

    .line 161
    goto :goto_6

    .line 163
    :cond_a
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyAndDispatchState()V

    .line 164
    :cond_b
    :goto_6
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 167
    move-result-object v0

    .line 170
    iput-object v0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->lastExpansionFraction:Ljava/lang/Float;

    .line 171
    return-void

    .line 173
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 174
    const-string v0, "rawPanelExpansionFraction should not be NaN"

    .line 176
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    throw p0
.end method
