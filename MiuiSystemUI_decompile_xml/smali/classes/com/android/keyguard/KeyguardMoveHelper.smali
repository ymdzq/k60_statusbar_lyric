.class public final Lcom/android/keyguard/KeyguardMoveHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public mBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field public final mCallback:Lcom/android/keyguard/KeyguardMoveHelper$Callback;

.field public mCenterScreenTouchSlopTranslation:F

.field public final mContext:Landroid/content/Context;

.field public mCurrentScreen:I

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFlingEndListener:Lcom/android/keyguard/KeyguardMoveHelper$1;

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mIsCameraPreviewMoving:Z

.field public mIsRightMove:Z

.field public mIsTouchRightIcon:Z

.field public final mKeyguardHorizontalGestureSlop:I

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field public mLeftIconLayout:Landroid/view/ViewGroup;

.field public final mLeftMoveController:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

.field public final mLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

.field public final mLeftViewBg:Landroid/widget/ImageView;

.field public final mMagazinePreView:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

.field public mMinFlingVelocity:I

.field public mMotionCancelled:Z

.field public final mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

.field public mResetAnimator:Landroid/animation/Animator;

.field public mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field public mRightIconLayout:Landroid/view/ViewGroup;

.field public final mRightMoveController:Lcom/android/keyguard/KeyguardMoveRightController;

.field public mSwipeAnimator:Landroid/animation/Animator;

.field public mSwipingInProgress:Z

.field public mTranslation:F

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Landroid/content/Context;Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 6
    new-instance v1, Lcom/android/keyguard/KeyguardMoveHelper$1;

    .line 8
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMoveHelper$1;-><init>(Lcom/android/keyguard/KeyguardMoveHelper;)V

    .line 10
    iput-object v1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mFlingEndListener:Lcom/android/keyguard/KeyguardMoveHelper$1;

    .line 13
    new-instance v1, Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 15
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMoveHelper$2;-><init>(Lcom/android/keyguard/KeyguardMoveHelper;)V

    .line 17
    iput-object p2, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    .line 20
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mCallback:Lcom/android/keyguard/KeyguardMoveHelper$Callback;

    .line 22
    iput-object p3, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 24
    iget-object p1, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 26
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 28
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 30
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 35
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 36
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 38
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object p1

    .line 43
    const v2, 0x7f070478    # @dimen/keyguard_horizontal_gesture_slop '165.0dp'

    .line 44
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    move-result p1

    .line 50
    iput p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mKeyguardHorizontalGestureSlop:I

    .line 51
    iget-object p1, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 53
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 55
    const-class p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 57
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 62
    check-cast p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 63
    iget-object p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 65
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mMagazinePreView:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 67
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMoveHelper;->updateBottomIcons(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 71
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 74
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    .line 76
    move-result v2

    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-static {p1, v2, v3, v0}, Lcom/android/keyguard/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 81
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 84
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    .line 86
    move-result v2

    .line 89
    invoke-static {p1, v2, v3, v0}, Lcom/android/keyguard/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 90
    new-instance p1, Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 93
    invoke-direct {p1, p2, v1}, Lcom/android/keyguard/negative/KeyguardMoveLeftController;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardMoveHelper$2;)V

    .line 95
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftMoveController:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 98
    new-instance p1, Lcom/android/keyguard/KeyguardMoveRightController;

    .line 100
    invoke-direct {p1, p2, v1}, Lcom/android/keyguard/KeyguardMoveRightController;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardMoveHelper$2;)V

    .line 102
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mRightMoveController:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 105
    iget-object p1, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 109
    move-result-object p2

    .line 112
    check-cast p2, Landroid/view/ViewGroup;

    .line 113
    const p3, 0x7f0a048b    # @id/keyguard_left_view

    .line 115
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object p2

    .line 121
    check-cast p2, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    .line 122
    iput-object p2, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 126
    move-result-object p1

    .line 129
    check-cast p1, Landroid/view/ViewGroup;

    .line 130
    const p2, 0x7f0a04e8    # @id/left_view_bg

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object p1

    .line 138
    check-cast p1, Landroid/widget/ImageView;

    .line 139
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftViewBg:Landroid/widget/ImageView;

    .line 141
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 143
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 145
    move-result-object p1

    .line 148
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 149
    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 151
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMoveHelper;->initDimens()V

    .line 156
    return-void
    .line 159
.end method

.method public static isOnIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FF)Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    move-result p0

    .line 11
    int-to-float p0, p0

    .line 12
    const/high16 v1, 0x40000000    # 2.0f

    .line 13
    div-float/2addr p0, v1

    .line 15
    const/4 v1, 0x0

    .line 16
    aget v2, v0, v1

    .line 17
    int-to-float v2, v2

    .line 19
    add-float/2addr v2, p0

    .line 20
    const/4 v3, 0x1

    .line 21
    aget v0, v0, v3

    .line 22
    int-to-float v0, v0

    .line 24
    add-float/2addr v0, p0

    .line 25
    sub-float/2addr p1, v2

    .line 26
    float-to-double v4, p1

    .line 27
    sub-float/2addr p2, v0

    .line 28
    float-to-double p1, p2

    .line 29
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    .line 30
    move-result-wide p1

    .line 33
    float-to-double v4, p0

    .line 34
    cmpg-double p0, p1, v4

    .line 35
    if-gtz p0, :cond_0

    .line 37
    move v1, v3

    .line 39
    :cond_0
    return v1
    .line 40
.end method

.method public static updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    if-nez p3, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    .line 11
    move-result p3

    .line 14
    div-float p3, p1, p3

    .line 15
    const v0, 0x3e4ccccd    # 0.2f

    .line 17
    mul-float/2addr p3, v0

    .line 20
    const v0, 0x3f4ccccd    # 0.8f

    .line 21
    add-float/2addr p3, v0

    .line 24
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 25
    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    .line 27
    move-result p3

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 33
    move-result p1

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 37
    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZ)V

    .line 40
    return-void
    .line 43
.end method


# virtual methods
.method public final endMotion(FZ)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mTranslation:F

    .line 8
    cmpl-float v0, v0, v2

    .line 10
    if-lez v0, :cond_e

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 14
    if-nez v0, :cond_1

    .line 16
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/16 v3, 0x3e8

    .line 20
    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 22
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 25
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 27
    move-result v0

    .line 30
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mCallback:Lcom/android/keyguard/KeyguardMoveHelper$Callback;

    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    iget v4, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mTranslation:F

    .line 36
    mul-float/2addr v4, v0

    .line 38
    cmpg-float v4, v4, v2

    .line 39
    const/4 v5, 0x1

    .line 41
    const/4 v6, 0x0

    .line 42
    if-gez v4, :cond_2

    .line 43
    move v4, v5

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v4, v6

    .line 47
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 48
    move-result v7

    .line 51
    iget v8, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mMinFlingVelocity:I

    .line 52
    int-to-float v8, v8

    .line 54
    cmpl-float v7, v7, v8

    .line 55
    if-lez v7, :cond_3

    .line 57
    if-nez v4, :cond_4

    .line 59
    :cond_3
    iget v7, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mInitialTouchX:F

    .line 61
    sub-float/2addr v7, p1

    .line 63
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 64
    move-result p1

    .line 67
    iget v7, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mKeyguardHorizontalGestureSlop:I

    .line 68
    int-to-float v7, v7

    .line 70
    cmpg-float p1, p1, v7

    .line 71
    if-gez p1, :cond_5

    .line 73
    :cond_4
    move p1, v5

    .line 75
    goto :goto_2

    .line 76
    :cond_5
    move p1, v6

    .line 77
    :goto_2
    or-int/2addr p1, v6

    .line 78
    xor-int/2addr v4, p1

    .line 79
    if-eqz v4, :cond_6

    .line 80
    move v0, v2

    .line 82
    :cond_6
    if-nez p1, :cond_8

    .line 83
    if-eqz p2, :cond_7

    .line 85
    goto :goto_3

    .line 87
    :cond_7
    move p1, v6

    .line 88
    goto :goto_4

    .line 89
    :cond_8
    :goto_3
    move p1, v5

    .line 90
    :goto_4
    iget p2, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mTranslation:F

    .line 91
    cmpg-float p2, p2, v2

    .line 93
    if-gez p2, :cond_9

    .line 95
    move p2, v5

    .line 97
    goto :goto_5

    .line 98
    :cond_9
    move p2, v6

    .line 99
    :goto_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMoveHelper;->getScreenWidth()F

    .line 100
    move-result v4

    .line 103
    if-eqz p2, :cond_a

    .line 104
    neg-float v4, v4

    .line 106
    :cond_a
    if-eqz p1, :cond_b

    .line 107
    goto :goto_6

    .line 109
    :cond_b
    move v2, v4

    .line 110
    :goto_6
    const/4 v4, 0x2

    .line 111
    new-array v4, v4, [F

    .line 112
    iget v7, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mTranslation:F

    .line 114
    aput v7, v4, v6

    .line 116
    aput v2, v4, v5

    .line 118
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 120
    move-result-object v2

    .line 123
    new-instance v4, Lcom/android/keyguard/KeyguardMoveHelper$$ExternalSyntheticLambda1;

    .line 124
    invoke-direct {v4, p0, p1}, Lcom/android/keyguard/KeyguardMoveHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardMoveHelper;Z)V

    .line 126
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    iget-object v4, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mFlingEndListener:Lcom/android/keyguard/KeyguardMoveHelper$1;

    .line 132
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 134
    new-instance v4, Lcom/android/keyguard/KeyguardMoveHelper$3;

    .line 137
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMoveHelper$3;-><init>(Lcom/android/keyguard/KeyguardMoveHelper;ZZF)V

    .line 139
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 142
    if-eqz p1, :cond_c

    .line 145
    invoke-virtual {p0, v5, v6, v6}, Lcom/android/keyguard/KeyguardMoveHelper;->reset(ZZZ)V

    .line 147
    :cond_c
    const-wide/16 v4, 0x64

    .line 150
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    new-instance p2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 155
    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 157
    invoke-virtual {v2, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 163
    iput-object v2, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 166
    if-eqz p1, :cond_e

    .line 168
    check-cast v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 170
    iget-object p1, v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 172
    if-nez p1, :cond_d

    .line 174
    move-object p1, v1

    .line 176
    :cond_d
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    :cond_e
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 182
    if-eqz p1, :cond_f

    .line 184
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 186
    iput-object v1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 189
    :cond_f
    return-void
    .line 191
.end method

.method public final finishAction(FFZ)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mIsCameraPreviewMoving:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mMotionCancelled:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mRightMoveController:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 9
    invoke-virtual {v1, p1, p2}, Lcom/android/keyguard/KeyguardMoveRightController;->onTouchUp(FF)V

    .line 11
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftMoveController:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 14
    invoke-virtual {v1, p1, p2}, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->onTouchUp(FF)V

    .line 16
    invoke-static {}, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->isLeftViewLaunchActivity()Z

    .line 19
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    if-nez p3, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 27
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardMoveHelper;->endMotion(FZ)V

    .line 28
    :cond_1
    return-void
    .line 31
.end method

.method public final getScreenWidth()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 4
    move-result-object p0

    .line 7
    iget p0, p0, Landroid/graphics/Point;->x:I

    .line 8
    int-to-float p0, p0

    .line 10
    return p0
    .line 11
.end method

.method public final initDimens()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 8
    move-result v2

    .line 11
    mul-int/lit8 v2, v2, 0x2

    .line 12
    int-to-float v2, v2

    .line 14
    iput v2, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mCenterScreenTouchSlopTranslation:F

    .line 15
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 17
    move-result v1

    .line 20
    iput v1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mMinFlingVelocity:I

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v0

    .line 26
    const v1, 0x7f07048b    # @dimen/keyguard_min_swipe_amount '110.0dp'

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMoveHelper;->getScreenWidth()F

    .line 33
    move-result v0

    .line 36
    neg-float v0, v0

    .line 37
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 40
    return-void
    .line 43
.end method

.method public final isInCenterScreen()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
    .line 9
.end method

.method public final isSignatureNeedHide(Landroid/view/View;)Z
    .locals 1

    .line 1
    const-class v0, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 8
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 10
    invoke-virtual {v0}, Lcom/android/keyguard/clock/KeyguardClockContainer;->getMHasNotification()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 20
    if-ne p1, p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method

.method public final onDensityOrFontScaleChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMoveHelper;->initDimens()V

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMoveHelper;->updateBottomIcons(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final reset(ZZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mResetAnimator:Landroid/animation/Animator;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 13
    :cond_1
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    move-object v1, p0

    .line 18
    move v4, p1

    .line 19
    move v5, p2

    .line 20
    move v6, p3

    .line 21
    invoke-virtual/range {v1 .. v6}, Lcom/android/keyguard/KeyguardMoveHelper;->setTranslation(FZZZZ)V

    .line 22
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mMotionCancelled:Z

    .line 26
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 28
    if-eqz p2, :cond_3

    .line 30
    iget-object p2, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mCallback:Lcom/android/keyguard/KeyguardMoveHelper$Callback;

    .line 32
    check-cast p2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 34
    iget-object p2, p2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 36
    if-nez p2, :cond_2

    .line 38
    const/4 p2, 0x0

    .line 40
    :cond_2
    iget-object p2, p2, Lcom/android/systemui/shade/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 46
    :cond_3
    return-void
    .line 48
.end method

.method public final setTranslation(FZZZZ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 6
    iget-object v3, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCallback:Lcom/android/keyguard/KeyguardMoveHelper$Callback;

    .line 8
    const/4 v4, 0x4

    .line 10
    iget-object v5, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftViewBg:Landroid/widget/ImageView;

    .line 11
    iget-object v6, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    .line 13
    const/high16 v7, 0x3f800000    # 1.0f

    .line 15
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x1

    .line 18
    const/4 v10, 0x0

    .line 19
    if-eqz p5, :cond_6

    .line 20
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 22
    move-result-object v1

    .line 25
    invoke-interface {v1, v9}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->setCanShowGxzw(Z)V

    .line 26
    iput v9, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 29
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 31
    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 35
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardMoveHelper;->getScreenWidth()F

    .line 38
    move-result v1

    .line 41
    neg-float v1, v1

    .line 42
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 43
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object v1, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 49
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 53
    :cond_1
    iget-object v1, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 56
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    .line 58
    move-result v4

    .line 61
    invoke-static {v1, v4, v9, v8}, Lcom/android/keyguard/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 62
    iget-object v1, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 65
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    .line 67
    move-result v4

    .line 70
    invoke-static {v1, v4, v9, v8}, Lcom/android/keyguard/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 71
    check-cast v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 74
    iget-object v1, v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMobileKeyGuardViews:Ljava/util/List;

    .line 76
    check-cast v1, Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object v1

    .line 83
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v3

    .line 87
    if-eqz v3, :cond_5

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v3

    .line 93
    check-cast v3, Lcom/android/keyguard/widget/MobileView;

    .line 94
    iget-boolean v4, v3, Lcom/android/keyguard/widget/MobileView;->needTranslation:Z

    .line 96
    iget-object v5, v3, Lcom/android/keyguard/widget/MobileView;->view:Landroid/view/View;

    .line 98
    if-eqz v4, :cond_3

    .line 100
    invoke-virtual {v5, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 102
    :cond_3
    iget-boolean v3, v3, Lcom/android/keyguard/widget/MobileView;->needAlpha:Z

    .line 105
    if-eqz v3, :cond_2

    .line 107
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardMoveHelper;->isSignatureNeedHide(Landroid/view/View;)Z

    .line 109
    move-result v3

    .line 112
    if-eqz v3, :cond_4

    .line 113
    invoke-virtual {v5, v10}, Landroid/view/View;->setAlpha(F)V

    .line 115
    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 119
    goto :goto_0

    .line 122
    :cond_5
    invoke-virtual {v2, v10}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setHorizontalMoveBlurRatio(F)V

    .line 123
    return-void

    .line 126
    :cond_6
    iget v11, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 127
    if-ne v11, v9, :cond_9

    .line 129
    cmpl-float v12, v1, v10

    .line 131
    if-lez v12, :cond_9

    .line 133
    sget-boolean v11, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 135
    if-eqz v11, :cond_7

    .line 137
    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 139
    :cond_7
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLiteOrLowDevice()Z

    .line 142
    move-result v11

    .line 145
    if-eqz v11, :cond_8

    .line 146
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    goto :goto_1

    .line 151
    :cond_8
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardMoveHelper;->getScreenWidth()F

    .line 155
    move-result v11

    .line 158
    div-float v11, v1, v11

    .line 159
    goto :goto_2

    .line 161
    :cond_9
    if-nez v11, :cond_a

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardMoveHelper;->getScreenWidth()F

    .line 164
    move-result v11

    .line 167
    div-float v11, v1, v11

    .line 168
    add-float/2addr v11, v7

    .line 170
    goto :goto_2

    .line 171
    :cond_a
    move v11, v10

    .line 172
    :goto_2
    cmpg-float v12, v11, v10

    .line 173
    if-gez v12, :cond_b

    .line 175
    move v11, v10

    .line 177
    goto :goto_3

    .line 178
    :cond_b
    cmpl-float v12, v11, v7

    .line 179
    if-lez v12, :cond_c

    .line 181
    move v11, v7

    .line 183
    :cond_c
    :goto_3
    iget v12, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 184
    if-nez v12, :cond_e

    .line 186
    cmpl-float v12, v1, v10

    .line 188
    if-lez v12, :cond_d

    .line 190
    return-void

    .line 192
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardMoveHelper;->getScreenWidth()F

    .line 193
    move-result v12

    .line 196
    add-float/2addr v12, v1

    .line 197
    goto :goto_4

    .line 198
    :cond_e
    move v12, v1

    .line 199
    :goto_4
    iget v13, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mTranslation:F

    .line 200
    cmpl-float v13, v1, v13

    .line 202
    iget-object v14, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 204
    const/4 v15, 0x2

    .line 206
    if-nez v13, :cond_f

    .line 207
    if-nez p2, :cond_f

    .line 209
    if-eqz p4, :cond_18

    .line 211
    :cond_f
    const-class v13, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 213
    iget-object v4, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mMagazinePreView:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 215
    if-nez p3, :cond_15

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardMoveHelper;->getScreenWidth()F

    .line 219
    move-result v16

    .line 222
    sub-float v9, v12, v16

    .line 223
    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 225
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 228
    invoke-static {v13}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 231
    move-result-object v9

    .line 234
    check-cast v9, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 235
    iget-boolean v9, v9, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 237
    if-eqz v9, :cond_10

    .line 239
    move v9, v11

    .line 241
    goto :goto_5

    .line 242
    :cond_10
    move v9, v7

    .line 243
    :goto_5
    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 244
    check-cast v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 247
    iget-object v3, v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMobileKeyGuardViews:Ljava/util/List;

    .line 249
    check-cast v3, Ljava/util/ArrayList;

    .line 251
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 253
    move-result-object v3

    .line 256
    :cond_11
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    move-result v6

    .line 260
    if-eqz v6, :cond_14

    .line 261
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    move-result-object v6

    .line 266
    check-cast v6, Lcom/android/keyguard/widget/MobileView;

    .line 267
    iget-boolean v9, v6, Lcom/android/keyguard/widget/MobileView;->needTranslation:Z

    .line 269
    iget-object v13, v6, Lcom/android/keyguard/widget/MobileView;->view:Landroid/view/View;

    .line 271
    if-eqz v9, :cond_12

    .line 273
    invoke-virtual {v13, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 275
    :cond_12
    iget-boolean v6, v6, Lcom/android/keyguard/widget/MobileView;->needAlpha:Z

    .line 278
    if-eqz v6, :cond_11

    .line 280
    invoke-virtual {v0, v13}, Lcom/android/keyguard/KeyguardMoveHelper;->isSignatureNeedHide(Landroid/view/View;)Z

    .line 282
    move-result v6

    .line 285
    if-eqz v6, :cond_13

    .line 286
    invoke-virtual {v13, v10}, Landroid/view/View;->setAlpha(F)V

    .line 288
    goto :goto_6

    .line 291
    :cond_13
    sub-float v6, v7, v11

    .line 292
    invoke-virtual {v13, v6}, Landroid/view/View;->setAlpha(F)V

    .line 294
    goto :goto_6

    .line 297
    :cond_14
    invoke-virtual {v2, v11}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setHorizontalMoveBlurRatio(F)V

    .line 298
    sub-float/2addr v7, v11

    .line 301
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 302
    goto/16 :goto_7

    .line 305
    :cond_15
    new-instance v9, Landroid/animation/AnimatorSet;

    .line 307
    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 309
    new-instance v10, Ljava/util/ArrayList;

    .line 312
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 314
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 317
    new-array v1, v15, [F

    .line 319
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationX()F

    .line 321
    move-result v19

    .line 324
    aput v19, v1, v8

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardMoveHelper;->getScreenWidth()F

    .line 327
    move-result v19

    .line 330
    sub-float v19, v12, v19

    .line 331
    const/16 v17, 0x1

    .line 333
    aput v19, v1, v17

    .line 335
    invoke-static {v6, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 337
    move-result-object v1

    .line 340
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    new-array v1, v15, [F

    .line 344
    invoke-virtual {v5}, Landroid/widget/ImageView;->getAlpha()F

    .line 346
    move-result v7

    .line 349
    aput v7, v1, v8

    .line 350
    aput v11, v1, v17

    .line 352
    const-string v7, "alpha"

    .line 354
    invoke-static {v5, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 356
    move-result-object v1

    .line 359
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    new-array v1, v15, [F

    .line 363
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getAlpha()F

    .line 365
    move-result v19

    .line 368
    aput v19, v1, v8

    .line 369
    const/high16 v18, 0x3f800000    # 1.0f

    .line 371
    sub-float v18, v18, v11

    .line 373
    aput v18, v1, v17

    .line 375
    invoke-static {v4, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 377
    move-result-object v1

    .line 380
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-static {v13}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 384
    move-result-object v1

    .line 387
    check-cast v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 388
    iget-boolean v1, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 390
    if-eqz v1, :cond_16

    .line 392
    new-array v1, v15, [F

    .line 394
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 396
    move-result v4

    .line 399
    aput v4, v1, v8

    .line 400
    aput v11, v1, v17

    .line 402
    invoke-static {v6, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 404
    move-result-object v1

    .line 407
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_16
    check-cast v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 411
    iget-object v1, v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMobileKeyGuardViews:Ljava/util/List;

    .line 413
    new-instance v3, Lcom/android/keyguard/KeyguardMoveHelper$$ExternalSyntheticLambda0;

    .line 415
    invoke-direct {v3, v0, v10, v12, v11}, Lcom/android/keyguard/KeyguardMoveHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardMoveHelper;Ljava/util/List;FF)V

    .line 417
    check-cast v1, Ljava/util/ArrayList;

    .line 420
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 422
    iget-boolean v1, v14, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    .line 425
    if-nez v1, :cond_17

    .line 427
    invoke-virtual {v2, v11}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setHorizontalMoveBlurRatio(F)V

    .line 429
    :cond_17
    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 432
    const-wide/16 v1, 0x12c

    .line 435
    invoke-virtual {v9, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 437
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 440
    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 442
    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 445
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 448
    iput-object v9, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mResetAnimator:Landroid/animation/Animator;

    .line 451
    move/from16 v1, p1

    .line 453
    :goto_7
    iput v1, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mTranslation:F

    .line 455
    :cond_18
    iget v2, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 457
    if-nez v2, :cond_19

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardMoveHelper;->getScreenWidth()F

    .line 461
    move-result v2

    .line 464
    neg-float v2, v2

    .line 465
    cmpl-float v2, v1, v2

    .line 466
    if-nez v2, :cond_19

    .line 468
    const/4 v2, 0x1

    .line 470
    iput v2, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 471
    const/4 v0, 0x4

    .line 473
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 477
    move-result-object v0

    .line 480
    invoke-interface {v0, v2}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->setCanShowGxzw(Z)V

    .line 481
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_NEGATIVE_SCROLL_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 484
    invoke-virtual {v14, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestAuthInternal(Lcom/android/keyguard/FaceAuthUiEvent;)Z

    .line 486
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 489
    move-result-object v0

    .line 492
    const-string v1, "keyguard_view_main_lock_screen"

    .line 493
    invoke-virtual {v0, v1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->trackPageStart(Ljava/lang/String;)V

    .line 495
    goto/16 :goto_8

    .line 498
    :cond_19
    const/4 v2, 0x1

    .line 500
    iget v3, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 501
    if-ne v3, v2, :cond_1a

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardMoveHelper;->getScreenWidth()F

    .line 505
    move-result v3

    .line 508
    neg-float v3, v3

    .line 509
    cmpl-float v3, v1, v3

    .line 510
    if-nez v3, :cond_1a

    .line 512
    iput v15, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 514
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 516
    move-result-object v0

    .line 519
    invoke-interface {v0, v2}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->setCanShowGxzw(Z)V

    .line 520
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 523
    move-result-object v0

    .line 526
    const-string v1, "enter_right_view"

    .line 527
    invoke-virtual {v0, v1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->trackPageEnd(Ljava/lang/String;)V

    .line 529
    goto/16 :goto_8

    .line 532
    :cond_1a
    iget v3, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 534
    if-ne v3, v2, :cond_1b

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardMoveHelper;->getScreenWidth()F

    .line 538
    move-result v2

    .line 541
    cmpl-float v2, v1, v2

    .line 542
    if-nez v2, :cond_1b

    .line 544
    iput v8, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 546
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 548
    move-result-object v0

    .line 551
    invoke-interface {v0, v8}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->setCanShowGxzw(Z)V

    .line 552
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 558
    invoke-virtual {v14, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 560
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 563
    move-result-object v0

    .line 566
    const-string v1, "enter_left_view"

    .line 567
    invoke-virtual {v0, v1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->trackPageEnd(Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 572
    move-result-object v0

    .line 575
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    new-instance v1, Ljava/util/HashMap;

    .line 579
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 581
    const-string v2, "lock_screen_action"

    .line 584
    const-string v3, "action_enter_left_view"

    .line 586
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v2, "keyguard_action"

    .line 591
    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 593
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 596
    move-result-object v0

    .line 599
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    new-instance v1, Ljava/util/HashMap;

    .line 603
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 605
    const-string/jumbo v2, "status"

    .line 608
    const-string v3, "controlCenter"

    .line 611
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v2, "lock_screen_negative_status"

    .line 616
    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 618
    goto :goto_8

    .line 621
    :cond_1b
    iget v0, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 622
    const/4 v2, 0x1

    .line 624
    if-ne v0, v2, :cond_1c

    .line 625
    const/4 v0, 0x0

    .line 627
    cmpl-float v0, v1, v0

    .line 628
    if-nez v0, :cond_1c

    .line 630
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 632
    move-result-object v0

    .line 635
    invoke-interface {v0, v2}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->setCanShowGxzw(Z)V

    .line 636
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_NEGATIVE_SCROLL_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 639
    invoke-virtual {v14, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestAuthInternal(Lcom/android/keyguard/FaceAuthUiEvent;)Z

    .line 641
    goto :goto_8

    .line 644
    :cond_1c
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 645
    move-result-object v0

    .line 648
    invoke-interface {v0, v8}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->setCanShowGxzw(Z)V

    .line 649
    :goto_8
    return-void
    .line 652
.end method

.method public final updateBottomIcons(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 1

    .line 1
    const v0, 0x7f0a08cc    # @id/start_button

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 9
    iput-object v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 11
    const v0, 0x7f0a0329    # @id/end_button

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 20
    iput-object v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 22
    const v0, 0x7f0a04dd    # @id/left_button_layout

    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Landroid/view/ViewGroup;

    .line 31
    iput-object v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftIconLayout:Landroid/view/ViewGroup;

    .line 33
    const v0, 0x7f0a07ad    # @id/right_button_layout

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Landroid/view/ViewGroup;

    .line 42
    iput-object v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mRightIconLayout:Landroid/view/ViewGroup;

    .line 44
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 46
    return-void
    .line 48
.end method
