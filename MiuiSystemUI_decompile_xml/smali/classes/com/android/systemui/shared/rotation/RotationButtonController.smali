.class public final Lcom/android/systemui/shared/rotation/RotationButtonController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mBehavior:I

.field public final mCancelPendingRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public final mDarkIconColor:I

.field public mDocked:Z

.field public final mDockedReceiver:Lcom/android/systemui/shared/rotation/RotationButtonController$1;

.field public mHomeRotationEnabled:Z

.field public mHoveringRotationSuggestion:Z

.field public final mIconCcwStart0ResId:I

.field public final mIconCcwStart90ResId:I

.field public final mIconCwStart0ResId:I

.field public final mIconCwStart90ResId:I

.field public mIconResId:I

.field public mIsNavigationBarShowing:Z

.field public mIsRecentsAnimationRunning:Z

.field public mLastRotationSuggestion:I

.field public final mLightIconColor:I

.field public mListenersRegistered:Z

.field public final mMainThreadHandler:Landroid/os/Handler;

.field public mNavBarMode:I

.field public mPendingRotationSuggestion:Z

.field public final mRemoveRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

.field public mRotateHideAnimator:Landroid/animation/Animator;

.field public mRotationButton:Lcom/android/systemui/shared/rotation/RotationButton;

.field public final mRotationWatcher:Lcom/android/systemui/shared/rotation/RotationButtonController$2;

.field public mRotationWatcherRegistered:Z

.field public mSkipOverrideUserLockPrefsOnce:Z

.field public final mTaskStackListener:Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mViewRippler:Lcom/android/systemui/shared/recents/utilities/ViewRippler;

.field public final mWindowRotationProvider:Ljava/util/function/Supplier;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    iput-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    .line 14
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 16
    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 21
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/ViewRippler;

    .line 23
    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/ViewRippler;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mViewRippler:Lcom/android/systemui/shared/recents/utilities/ViewRippler;

    .line 28
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mListenersRegistered:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationWatcherRegistered:Z

    .line 33
    const/4 v1, 0x1

    .line 35
    iput v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBehavior:I

    .line 36
    new-instance v2, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    .line 38
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;I)V

    .line 40
    iput-object v2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRemoveRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    .line 43
    new-instance v0, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    .line 45
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;I)V

    .line 47
    iput-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mCancelPendingRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    .line 50
    new-instance v0, Lcom/android/systemui/shared/rotation/RotationButtonController$1;

    .line 52
    invoke-direct {v0, p0}, Lcom/android/systemui/shared/rotation/RotationButtonController$1;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    .line 54
    iput-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mDockedReceiver:Lcom/android/systemui/shared/rotation/RotationButtonController$1;

    .line 57
    new-instance v0, Lcom/android/systemui/shared/rotation/RotationButtonController$2;

    .line 59
    invoke-direct {v0, p0}, Lcom/android/systemui/shared/rotation/RotationButtonController$2;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    .line 61
    iput-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationWatcher:Lcom/android/systemui/shared/rotation/RotationButtonController$2;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mContext:Landroid/content/Context;

    .line 66
    iput p2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mLightIconColor:I

    .line 68
    iput p3, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mDarkIconColor:I

    .line 70
    const p2, 0x7f0811d3    # @drawable/ic_sysbar_rotate_button_ccw_start_0 'res/drawable/ic_sysbar_rotate_button_ccw_start_0.xml'

    .line 72
    iput p2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCcwStart0ResId:I

    .line 75
    const p2, 0x7f0811d4    # @drawable/ic_sysbar_rotate_button_ccw_start_90 'res/drawable/ic_sysbar_rotate_button_ccw_start_90.xml'

    .line 77
    iput p2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCcwStart90ResId:I

    .line 80
    const p3, 0x7f0811d5    # @drawable/ic_sysbar_rotate_button_cw_start_0 'res/drawable/ic_sysbar_rotate_button_cw_start_0.xml'

    .line 82
    iput p3, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCwStart0ResId:I

    .line 85
    const p3, 0x7f0811d6    # @drawable/ic_sysbar_rotate_button_cw_start_90 'res/drawable/ic_sysbar_rotate_button_cw_start_90.xml'

    .line 87
    iput p3, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconCwStart90ResId:I

    .line 90
    iput p2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIconResId:I

    .line 92
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 94
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 98
    new-instance p1, Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;

    .line 100
    invoke-direct {p1, p0}, Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    .line 102
    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/shared/rotation/RotationButtonController$TaskStackListenerImpl;

    .line 105
    iput-object p4, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mWindowRotationProvider:Ljava/util/function/Supplier;

    .line 107
    return-void
    .line 109
.end method


# virtual methods
.method public canShowRotationButton()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIsNavigationBarShowing:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    iget v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mBehavior:I

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    iget p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mNavBarMode:I

    .line 11
    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 13
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    const/4 v1, 0x0

    .line 19
    :cond_0
    return v1
    .line 20
.end method

.method public final onRotationWatcherChanged(I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mListenersRegistered:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/RotationButton;

    .line 15
    invoke-interface {v2}, Lcom/android/systemui/shared/rotation/RotationButton;->isVisible()Z

    .line 17
    move-result v2

    .line 20
    if-eqz v2, :cond_5

    .line 21
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    .line 23
    const/4 v3, 0x1

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v2, :cond_2

    .line 27
    iput-boolean v4, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    .line 29
    goto :goto_0

    .line 31
    :cond_2
    if-nez p1, :cond_3

    .line 32
    move v2, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    :goto_0
    move v2, v4

    .line 36
    :goto_1
    if-eqz v2, :cond_4

    .line 37
    if-eqz v1, :cond_4

    .line 39
    iget-boolean v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mDocked:Z

    .line 41
    if-nez v1, :cond_4

    .line 43
    invoke-static {}, Lmiuix/os/DeviceHelper;->detectType()I

    .line 45
    move-result v1

    .line 48
    const/4 v2, 0x3

    .line 49
    if-eq v1, v2, :cond_4

    .line 50
    invoke-static {}, Lmiuix/os/DeviceHelper;->detectType()I

    .line 52
    move-result v1

    .line 55
    const/4 v2, 0x2

    .line 56
    if-eq v1, v2, :cond_4

    .line 57
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    .line 59
    move-result v1

    .line 62
    invoke-static {v0, v1, p1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    .line 63
    :cond_4
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    .line 66
    :cond_5
    return-void
    .line 69
.end method

.method public final rescheduleRotationTimeout(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/RotationButton;

    .line 15
    invoke-interface {p1}, Lcom/android/systemui/shared/rotation/RotationButton;->isVisible()Z

    .line 17
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    return-void

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRemoveRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    iget-boolean v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mHoveringRotationSuggestion:Z

    .line 31
    if-eqz v1, :cond_2

    .line 33
    const/16 v1, 0x3e80

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    const/16 v1, 0x1388

    .line 38
    :goto_0
    const/4 v2, 0x4

    .line 40
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 41
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    .line 43
    move-result p0

    .line 46
    int-to-long v1, p0

    .line 47
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    return-void
    .line 51
.end method

.method public final setRotateSuggestionButtonState(ZZ)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/RotationButton;

    .line 4
    invoke-interface {v0}, Lcom/android/systemui/shared/rotation/RotationButton;->isVisible()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/RotationButton;

    .line 13
    invoke-interface {v0}, Lcom/android/systemui/shared/rotation/RotationButton;->getCurrentView()Landroid/view/View;

    .line 15
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/RotationButton;

    .line 22
    invoke-interface {v1}, Lcom/android/systemui/shared/rotation/RotationButton;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    return-void

    .line 30
    :cond_2
    const/4 v2, 0x0

    .line 31
    iput-boolean v2, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mPendingRotationSuggestion:Z

    .line 32
    iget-object v3, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    .line 34
    iget-object v4, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mCancelPendingRotationProposal:Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda0;

    .line 36
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    const/4 v3, 0x1

    .line 41
    iget-object v4, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mViewRippler:Lcom/android/systemui/shared/recents/utilities/ViewRippler;

    .line 42
    if-eqz p1, :cond_8

    .line 44
    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    .line 46
    if-eqz p1, :cond_3

    .line 48
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    .line 50
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    .line 56
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 58
    :cond_3
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    .line 62
    const/high16 p1, 0x3f800000    # 1.0f

    .line 64
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 66
    instance-of p1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 69
    if-eqz p1, :cond_4

    .line 71
    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 73
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 75
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 78
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    move-result-object p1

    .line 86
    const-string p2, "num_rotation_suggestions_accepted"

    .line 87
    invoke-static {p1, p2, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 89
    move-result p1

    .line 92
    const/4 p2, 0x3

    .line 93
    if-lt p1, p2, :cond_5

    .line 94
    move v2, v3

    .line 96
    :cond_5
    if-nez v2, :cond_7

    .line 97
    iget-object p1, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    .line 99
    if-eqz p1, :cond_6

    .line 101
    iget-object p2, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRipple:Lcom/android/systemui/shared/recents/utilities/ViewRippler$1;

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 105
    :cond_6
    iput-object v0, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    .line 108
    const-wide/16 p1, 0x32

    .line 110
    iget-object v1, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRipple:Lcom/android/systemui/shared/recents/utilities/ViewRippler$1;

    .line 112
    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 114
    iget-object p1, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    .line 117
    const-wide/16 v2, 0x7d0

    .line 119
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 121
    iget-object p1, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    .line 124
    const-wide/16 v2, 0xfa0

    .line 126
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 128
    iget-object p1, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    .line 131
    const-wide/16 v2, 0x1770

    .line 133
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 135
    iget-object p1, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    .line 138
    const-wide/16 v2, 0x1f40

    .line 140
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 142
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/RotationButton;

    .line 145
    invoke-interface {p0}, Lcom/android/systemui/shared/rotation/RotationButton;->show()Z

    .line 147
    goto :goto_0

    .line 150
    :cond_8
    iget-object p1, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRoot:Landroid/view/View;

    .line 151
    if-eqz p1, :cond_9

    .line 153
    iget-object v1, v4, Lcom/android/systemui/shared/recents/utilities/ViewRippler;->mRipple:Lcom/android/systemui/shared/recents/utilities/ViewRippler$1;

    .line 155
    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 157
    :cond_9
    if-eqz p2, :cond_b

    .line 160
    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    .line 162
    if-eqz p1, :cond_a

    .line 164
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    .line 166
    move-result p1

    .line 169
    if-eqz p1, :cond_a

    .line 170
    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    .line 172
    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    .line 174
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/RotationButton;

    .line 177
    invoke-interface {p0}, Lcom/android/systemui/shared/rotation/RotationButton;->hide()Z

    .line 179
    return-void

    .line 182
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    .line 183
    if-eqz p1, :cond_c

    .line 185
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    .line 187
    move-result p1

    .line 190
    if-eqz p1, :cond_c

    .line 191
    return-void

    .line 193
    :cond_c
    new-array p1, v3, [F

    .line 194
    const/4 p2, 0x0

    .line 196
    aput p2, p1, v2

    .line 197
    const-string p2, "alpha"

    .line 199
    invoke-static {v0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 201
    move-result-object p1

    .line 204
    const-wide/16 v0, 0x64

    .line 205
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 207
    sget-object p2, Lcom/android/systemui/shared/rotation/RotationButtonController;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 210
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 212
    new-instance p2, Lcom/android/systemui/shared/rotation/RotationButtonController$3;

    .line 215
    invoke-direct {p2, p0}, Lcom/android/systemui/shared/rotation/RotationButtonController$3;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    .line 217
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    .line 223
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 225
    :goto_0
    return-void
    .line 228
.end method

.method public final setRotationButton(Lcom/android/systemui/shared/rotation/RotationButton;Lcom/android/systemui/navigationbar/NavigationBarView$2;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/RotationButton;

    .line 2
    invoke-interface {p1, p0}, Lcom/android/systemui/shared/rotation/RotationButton;->setRotationButtonController(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    .line 4
    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/RotationButton;

    .line 7
    new-instance v0, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda1;

    .line 9
    invoke-direct {v0, p0}, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    .line 11
    invoke-interface {p1, v0}, Lcom/android/systemui/shared/rotation/RotationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/RotationButton;

    .line 17
    new-instance v0, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda2;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    .line 21
    invoke-interface {p1, v0}, Lcom/android/systemui/shared/rotation/RotationButton;->setOnHoverListener(Lcom/android/systemui/shared/rotation/RotationButtonController$$ExternalSyntheticLambda2;)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/RotationButton;

    .line 27
    invoke-interface {p0, p2}, Lcom/android/systemui/shared/rotation/RotationButton;->setUpdatesCallback(Lcom/android/systemui/navigationbar/NavigationBarView$2;)V

    .line 29
    return-void
    .line 32
.end method

.method public final showAndLogRotationSuggestion()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/rotation/RotationButtonController;->rescheduleRotationTimeout(Z)V

    .line 7
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 10
    sget-object v0, Lcom/android/systemui/shared/rotation/RotationButtonController$RotationButtonEvent;->ROTATION_SUGGESTION_SHOWN:Lcom/android/systemui/shared/rotation/RotationButtonController$RotationButtonEvent;

    .line 12
    check-cast p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 16
    return-void
    .line 19
.end method
