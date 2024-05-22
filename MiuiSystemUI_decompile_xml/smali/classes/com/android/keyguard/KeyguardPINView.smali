.class public Lcom/android/keyguard/KeyguardPINView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAppearAnimating:Z

.field public final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field public mBottomSpaceForFod:Landroid/view/View;

.field public mBouncerMessageArea:Landroid/view/View;

.field public mContainer:Landroid/widget/LinearLayout;

.field public mDisappearAnimatePending:Z

.field public final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field public final mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field public mDisappearFinishRunnable:Ljava/lang/Runnable;

.field public final mDisappearYTranslation:I

.field public mEmergencyCall:Landroid/view/View;

.field public mRow4:Landroid/view/View;

.field public mViews:[[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 4
    new-instance v1, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    const-wide/16 v4, 0x7d

    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3ee66666    # 0.45f

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v9, 0x10c000f    # @android:interpolator/fast_out_linear_in

    .line 5
    invoke-static {v2, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    move-object v2, v1

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 6
    new-instance v1, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    const-wide/16 v12, 0xbb

    const v14, 0x3f19999a    # 0.6f

    const v15, 0x3ee66666    # 0.45f

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v2, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v16

    move-object v10, v1

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ca    # @dimen/disappear_y_translation '-240.0dp'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070e73    # @dimen/pin_view_trans_y_entry '120.0dp'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070e74    # @dimen/pin_view_trans_y_entry_offset '10.0dp'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    new-instance v1, Lcom/android/settingslib/animation/AppearAnimationUtils;

    const-wide/16 v5, 0xdc

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v2, 0x10c000e    # @android:interpolator/linear_out_slow_in

    move-object/from16 v4, p1

    .line 12
    invoke-static {v4, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    move-object v3, v1

    .line 13
    invoke-direct/range {v3 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    .line 14
    iput-object v1, v0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getPasswordTextViewId()I
    .locals 0

    .line 1
    const p0, 0x7f0a0707    # @id/pinEntry

    .line 2
    return p0
    .line 5
.end method

.method public getWrongPasswordStringId()I
    .locals 0

    .line 1
    const p0, 0x7f13064e    # @string/kg_wrong_pin 'Wrong PIN'

    .line 2
    return p0
    .line 5
.end method

.method public final handleOrientationChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->updateLayoutParams()V

    .line 2
    return-void
    .line 5
.end method

.method public final handleSmallestWidthDpChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->updateLayoutParams()V

    .line 2
    return-void
    .line 5
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->updatePositionForFod()V

    .line 5
    return-void
    .line 8
.end method

.method public final onFinishInflate()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0709    # @id/pin_container

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/widget/LinearLayout;

    .line 14
    const v0, 0x7f0a0158    # @id/bouncer_message_area

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mBouncerMessageArea:Landroid/view/View;

    .line 23
    const v0, 0x7f0a07d6    # @id/row0

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    filled-new-array {v0, v1, v1}, [Landroid/view/View;

    .line 33
    move-result-object v2

    .line 36
    const v0, 0x7f0a045b    # @id/key1

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v0

    .line 43
    const v3, 0x7f0a045c    # @id/key2

    .line 44
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v3

    .line 50
    const v4, 0x7f0a045d    # @id/key3

    .line 51
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v4

    .line 57
    filled-new-array {v0, v3, v4}, [Landroid/view/View;

    .line 58
    move-result-object v3

    .line 61
    const v0, 0x7f0a045e    # @id/key4

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 68
    const v4, 0x7f0a045f    # @id/key5

    .line 69
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v4

    .line 75
    const v5, 0x7f0a0460    # @id/key6

    .line 76
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v5

    .line 82
    filled-new-array {v0, v4, v5}, [Landroid/view/View;

    .line 83
    move-result-object v4

    .line 86
    const v0, 0x7f0a0461    # @id/key7

    .line 87
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 93
    const v5, 0x7f0a0462    # @id/key8

    .line 94
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v5

    .line 100
    const v6, 0x7f0a0463    # @id/key9

    .line 101
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object v6

    .line 107
    filled-new-array {v0, v5, v6}, [Landroid/view/View;

    .line 108
    move-result-object v5

    .line 111
    const v0, 0x7f0a045a    # @id/key0

    .line 112
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object v0

    .line 118
    const v6, 0x7f0a02a4    # @id/delete_container

    .line 119
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object v6

    .line 125
    filled-new-array {v1, v0, v6}, [Landroid/view/View;

    .line 126
    move-result-object v6

    .line 129
    const v0, 0x7f0a031b    # @id/emergency_call_button

    .line 130
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 133
    move-result-object v7

    .line 136
    const v8, 0x7f0a02a3    # @id/delete_button

    .line 137
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v8

    .line 143
    const v9, 0x7f0a01bf    # @id/cancel_button

    .line 144
    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object v9

    .line 150
    filled-new-array {v7, v1, v8, v9}, [Landroid/view/View;

    .line 151
    move-result-object v7

    .line 154
    filled-new-array/range {v2 .. v7}, [[Landroid/view/View;

    .line 155
    move-result-object v1

    .line 158
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    .line 159
    const v1, 0x7f0a070a    # @id/pin_fod_bottom_distance

    .line 161
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 164
    move-result-object v1

    .line 167
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mBottomSpaceForFod:Landroid/view/View;

    .line 168
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 170
    move-result-object v0

    .line 173
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mEmergencyCall:Landroid/view/View;

    .line 174
    const v0, 0x7f0a07da    # @id/row4

    .line 176
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 179
    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow4:Landroid/view/View;

    .line 183
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->updatePositionForFod()V

    .line 185
    return-void
    .line 188
.end method

.method public final startAppearAnimation()V
    .locals 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 4
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimating:Z

    .line 8
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimatePending:Z

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 17
    move-result-object v0

    .line 20
    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 21
    div-int/lit8 v0, v0, 0x2

    .line 23
    int-to-float v0, v0

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 26
    new-instance v0, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 29
    const v1, 0x3f7d70a4    # 0.99f

    .line 31
    const v2, 0x3e99999a    # 0.3f

    .line 34
    invoke-direct {v0, v1, v2}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 37
    const-wide/16 v1, 0x1f4

    .line 40
    const/4 v3, 0x0

    .line 42
    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JFLandroid/view/animation/Interpolator;)V

    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 46
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    .line 48
    new-instance v2, Lcom/android/keyguard/KeyguardPINView$1;

    .line 50
    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPINView$1;-><init>(Lcom/android/keyguard/KeyguardPINView;)V

    .line 52
    invoke-virtual {v0, v1, v2, v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 55
    return-void
    .line 58
.end method

.method public final startDisappearAnimation(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimating:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimatePending:Z

    .line 7
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearFinishRunnable:Ljava/lang/Runnable;

    .line 9
    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/miui/utils/BoostHelper;->sInjector:Lcom/miui/utils/BoostHelper;

    .line 12
    const-wide/16 v2, 0x1f4

    .line 14
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/miui/utils/BoostHelper;->boost(IJLandroid/view/View;)V

    .line 16
    invoke-static {}, Lcom/miui/utils/CpuBoostUtil;->getInstance()Lcom/miui/utils/CpuBoostUtil;

    .line 19
    move-result-object v0

    .line 22
    const/16 v1, 0x12c

    .line 23
    invoke-virtual {v0, v1}, Lcom/miui/utils/CpuBoostUtil;->boostCpuToMax(I)V

    .line 25
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 29
    iget v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    .line 32
    int-to-float v0, v0

    .line 34
    new-instance v1, Lmiuix/view/animation/SineEaseInOutInterpolator;

    .line 35
    invoke-direct {v1}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    .line 37
    const-wide/16 v2, 0x15e

    .line 40
    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JFLandroid/view/animation/Interpolator;)V

    .line 42
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 45
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 47
    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    .line 56
    new-instance v2, Lcom/android/keyguard/KeyguardPINView$2;

    .line 58
    invoke-direct {v2, p1}, Lcom/android/keyguard/KeyguardPINView$2;-><init>(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {v0, v1, v2, v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPINView;->mEmergencyCall:Landroid/view/View;

    .line 66
    if-eqz p0, :cond_2

    .line 68
    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    :cond_2
    return-void
    .line 74
.end method

.method public final updateLayoutParams()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 13
    const v2, 0x7f0708d2    # @dimen/miui_keyguard_pin_view_rows_layout_width '310.0dp'

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 17
    move-result v1

    .line 20
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v1

    .line 26
    const v2, 0x7f0708d1    # @dimen/miui_keyguard_pin_view_rows_layout_height '415.0dp'

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 30
    move-result v1

    .line 33
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 34
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v1

    .line 39
    const v2, 0x7f0708c2    # @dimen/miui_keyguard_pin_view_container_margin_bottom '0.0dp'

    .line 40
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 43
    move-result v1

    .line 46
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 47
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/widget/LinearLayout;

    .line 49
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 54
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object v0

    .line 61
    const v1, 0x7f07080e    # @dimen/miui_face_unlock_view_top_fold '35.44dp'

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 65
    move-result v0

    .line 68
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 69
    move-result-object v1

    .line 72
    const v2, 0x7f0708cc    # @dimen/miui_keyguard_pin_view_row1_row2_row3_margin_left_right_fold '0.0dp'

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 76
    move-result v1

    .line 79
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 80
    move-result-object v2

    .line 83
    const v3, 0x7f0708ca    # @dimen/miui_keyguard_pin_view_row1_row2_row3_margin_bottom_fold '5.33dp'

    .line 84
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 87
    move-result v2

    .line 90
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object v3

    .line 94
    const v4, 0x7f0708cd    # @dimen/miui_keyguard_pin_view_row4_margin_bottom '2.17dp'

    .line 95
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 98
    move-result v3

    .line 101
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 102
    move-result-object v4

    .line 105
    const v5, 0x7f0708d0    # @dimen/miui_keyguard_pin_view_row5_margin_bottom_fold '30.0dp'

    .line 106
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 109
    move-result v4

    .line 112
    const v5, 0x7f0a05d0    # @id/miui_keyguard_face_unlock_view

    .line 113
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object v5

    .line 119
    check-cast v5, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 120
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 122
    move-result-object v6

    .line 125
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 128
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    const v0, 0x7f0a07d7    # @id/row1

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object v0

    .line 139
    check-cast v0, Landroid/widget/LinearLayout;

    .line 140
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 142
    move-result-object v5

    .line 145
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 148
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 150
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 152
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    const v0, 0x7f0a07d8    # @id/row2

    .line 157
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object v0

    .line 163
    check-cast v0, Landroid/widget/LinearLayout;

    .line 164
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 166
    move-result-object v5

    .line 169
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 170
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 172
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 174
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 176
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    const v0, 0x7f0a07d9    # @id/row3

    .line 181
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 184
    move-result-object v0

    .line 187
    check-cast v0, Landroid/widget/LinearLayout;

    .line 188
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 190
    move-result-object v5

    .line 193
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 194
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 196
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 198
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 200
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    const v0, 0x7f0a07da    # @id/row4

    .line 205
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 208
    move-result-object v0

    .line 211
    check-cast v0, Landroid/widget/LinearLayout;

    .line 212
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 214
    move-result-object v2

    .line 217
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 218
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 220
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 222
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 224
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    const v0, 0x7f0a0499    # @id/keyguard_selector_fade_container

    .line 229
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 232
    move-result-object p0

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 236
    move-result-object v0

    .line 239
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 240
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 242
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 244
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 246
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    :cond_0
    return-void
    .line 251
.end method

.method public final updatePositionForFod()V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getFodPosition(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 10
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/widget/LinearLayout;

    .line 14
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    const/4 v3, 0x0

    .line 30
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 31
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v4

    .line 36
    const v5, 0x7f0708d1    # @dimen/miui_keyguard_pin_view_rows_layout_height '415.0dp'

    .line 37
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 40
    move-result v4

    .line 43
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v5

    .line 47
    const v6, 0x7f0708cd    # @dimen/miui_keyguard_pin_view_row4_margin_bottom '2.17dp'

    .line 48
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 51
    move-result v5

    .line 54
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v6

    .line 58
    const v7, 0x7f0708ce    # @dimen/miui_keyguard_pin_view_row4_margin_bottom_fod '29.81dp'

    .line 59
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 62
    move-result v6

    .line 65
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPINView;->mRow4:Landroid/view/View;

    .line 66
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    move-result-object v7

    .line 71
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object v8

    .line 77
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 78
    move-result-object v8

    .line 81
    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 82
    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 84
    move-result-object v8

    .line 87
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 88
    move-result v8

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 92
    move-result-object v9

    .line 95
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object v9

    .line 99
    const v10, 0x7f070d14    # @dimen/navigation_bar_height '@android:dimen/notification_big_picture_max_height'

    .line 100
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 103
    move-result v9

    .line 106
    sub-int/2addr v8, v9

    .line 107
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 108
    sub-int/2addr v8, v0

    .line 110
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    .line 111
    move-result v0

    .line 114
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPINView;->mBottomSpaceForFod:Landroid/view/View;

    .line 115
    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 119
    move-result-object v3

    .line 122
    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    if-eq v8, v0, :cond_0

    .line 125
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mBottomSpaceForFod:Landroid/view/View;

    .line 129
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 134
    if-eqz v0, :cond_1

    .line 136
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 138
    add-int/2addr v5, v6

    .line 140
    if-eq v0, v5, :cond_1

    .line 141
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow4:Landroid/view/View;

    .line 145
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    add-int/2addr v4, v5

    .line 150
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/widget/LinearLayout;

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 158
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    :cond_2
    return-void
    .line 163
.end method
