.class public final Lcom/android/systemui/ExpandHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# static fields
.field public static final VIEW_SCALER_HEIGHT_PROPERTY:Lcom/android/systemui/ExpandHelper$1;


# instance fields
.field public final mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentHeight:F

.field public mEnabled:Z

.field public mEventSource:Landroid/view/View;

.field public mExpanding:Z

.field public mExpansionStyle:I

.field public final mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mGravity:I

.field public mHasPopped:Z

.field public mInitialTouchFocusY:F

.field public mInitialTouchSpan:F

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mLastFocusY:F

.field public mLastMotionY:F

.field public mLastSpanY:F

.field public mNaturalHeight:F

.field public mOldHeight:F

.field public mOnlyMovements:Z

.field public final mPullGestureMinXSpan:F

.field public mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public mSGD:Landroid/view/ScaleGestureDetector;

.field public final mScaleAnimation:Landroid/animation/ObjectAnimator;

.field public final mScaleGestureListener:Lcom/android/systemui/ExpandHelper$2;

.field public final mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

.field public mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

.field public final mSlopMultiplier:F

.field public mSmallSize:I

.field public final mTouchSlop:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mWatchingForPull:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/ExpandHelper$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/ExpandHelper$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/ExpandHelper;->VIEW_SCALER_HEIGHT_PROPERTY:Lcom/android/systemui/ExpandHelper$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 6
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 9
    new-instance v2, Lcom/android/systemui/ExpandHelper$2;

    .line 11
    invoke-direct {v2, p0}, Lcom/android/systemui/ExpandHelper$2;-><init>(Lcom/android/systemui/ExpandHelper;)V

    .line 13
    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Lcom/android/systemui/ExpandHelper$2;

    .line 16
    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 18
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 22
    new-instance p2, Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 24
    invoke-direct {p2, p0}, Lcom/android/systemui/ExpandHelper$ViewScaler;-><init>(Lcom/android/systemui/ExpandHelper;)V

    .line 26
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 29
    const/16 p3, 0x30

    .line 31
    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 33
    new-array p3, v1, [F

    .line 35
    const/4 v1, 0x0

    .line 37
    aput v1, p3, v0

    .line 38
    sget-object v0, Lcom/android/systemui/ExpandHelper;->VIEW_SCALER_HEIGHT_PROPERTY:Lcom/android/systemui/ExpandHelper$1;

    .line 40
    invoke-static {p2, v0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 42
    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object p2

    .line 51
    const p3, 0x7f070ec4    # @dimen/pull_span_min '25.0dp'

    .line 52
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 55
    move-result p2

    .line 58
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    .line 59
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 61
    move-result-object p2

    .line 64
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 65
    move-result p2

    .line 68
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 69
    invoke-static {}, Landroid/view/ViewConfiguration;->getAmbiguousGestureMultiplier()F

    .line 71
    move-result p2

    .line 74
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mSlopMultiplier:F

    .line 75
    new-instance p2, Landroid/view/ScaleGestureDetector;

    .line 77
    invoke-direct {p2, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 79
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 82
    new-instance p2, Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 90
    move-result-object p1

    .line 93
    const p3, 0x3e99999a    # 0.3f

    .line 94
    invoke-direct {p2, p3, p1}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(FLandroid/util/DisplayMetrics;)V

    .line 97
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 100
    return-void
    .line 102
.end method


# virtual methods
.method public final findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    .line 2
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [I

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 12
    const/4 v0, 0x0

    .line 15
    aget v0, v2, v0

    .line 16
    int-to-float v0, v0

    .line 18
    add-float/2addr p1, v0

    .line 19
    aget v0, v2, v1

    .line 20
    int-to-float v0, v0

    .line 22
    add-float/2addr p2, v0

    .line 23
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 28
    move-result-object p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    sget v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->$r8$clinit:I

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 40
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtPosition(FFZZ)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 42
    move-result-object p0

    .line 45
    :goto_0
    return-object p0
    .line 46
.end method

.method public final finishExpanding(FZZ)V
    .locals 12

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget-object v1, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v4, v1

    .line 5
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v2

    cmpl-float v3, v1, v2

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v8

    :goto_0
    const/4 v6, 0x0

    if-nez p2, :cond_6

    cmpl-float p2, v4, v1

    if-eqz v3, :cond_2

    if-lez p2, :cond_3

    cmpl-float p2, p1, v6

    if-ltz p2, :cond_3

    goto :goto_1

    :cond_2
    if-gez p2, :cond_4

    cmpl-float p2, p1, v6

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    move p2, v8

    goto :goto_2

    :cond_4
    :goto_1
    move p2, v5

    .line 6
    :goto_2
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    move v1, v5

    goto :goto_3

    :cond_5
    move v1, v8

    :goto_3
    or-int/2addr p2, v1

    goto :goto_4

    :cond_6
    xor-int/lit8 p2, v3, 0x1

    .line 7
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 8
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 9
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->expansionStateChanged(Z)V

    .line 10
    iget-object v7, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    iget-object v9, v7, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v10, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v9

    if-eqz p2, :cond_8

    goto :goto_5

    .line 12
    :cond_8
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    :goto_5
    int-to-float v9, v9

    cmpl-float v10, v9, v4

    if-eqz v10, :cond_b

    .line 13
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    if-eqz v11, :cond_b

    if-eqz p3, :cond_b

    new-array p3, v5, [F

    aput v9, p3, v8

    .line 14
    invoke-virtual {v1, p3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 15
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    .line 16
    iget-object p3, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 17
    new-instance v0, Lcom/android/systemui/ExpandHelper$3;

    invoke-direct {v0, p0, p3, p2, v3}, Lcom/android/systemui/ExpandHelper$3;-><init>(Lcom/android/systemui/ExpandHelper;Lcom/android/systemui/statusbar/notification/row/ExpandableView;ZZ)V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    cmpl-float p3, p1, v6

    if-ltz p3, :cond_9

    goto :goto_6

    :cond_9
    move v5, v8

    :goto_6
    if-ne p2, v5, :cond_a

    move v6, p1

    .line 18
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float p1, v9, v4

    .line 19
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move-object v3, v1

    move v5, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 20
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_7

    :cond_b
    if-eqz v10, :cond_c

    .line 21
    iget-object p1, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    float-to-int p3, v9

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(I)V

    .line 22
    iput v9, v7, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 23
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 24
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v2, p1, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->setUserLockedChild(Landroid/view/View;Z)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v3, :cond_d

    .line 26
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 27
    :cond_d
    :goto_7
    iput-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 28
    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    return-void
.end method

.method public finishExpanding(ZF)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(FZZ)V

    return-void
.end method

.method public final getCurrentVelocity$1()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/16 v1, 0x3e8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 11
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 13
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
    .line 19
.end method

.method public getScaleAnimation()Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isInside(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FF)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    .line 6
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz p0, :cond_1

    .line 10
    new-array v3, v1, [I

    .line 12
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 14
    aget p0, v3, v0

    .line 17
    int-to-float p0, p0

    .line 19
    add-float/2addr p2, p0

    .line 20
    aget p0, v3, v2

    .line 21
    int-to-float p0, p0

    .line 23
    add-float/2addr p3, p0

    .line 24
    :cond_1
    new-array p0, v1, [I

    .line 25
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 27
    aget v1, p0, v0

    .line 30
    int-to-float v1, v1

    .line 32
    sub-float/2addr p2, v1

    .line 33
    aget p0, p0, v2

    .line 34
    int-to-float p0, p0

    .line 36
    sub-float/2addr p3, p0

    .line 37
    const/4 p0, 0x0

    .line 38
    cmpl-float v1, p2, p0

    .line 39
    if-lez v1, :cond_4

    .line 41
    cmpl-float p0, p3, p0

    .line 43
    if-lez p0, :cond_4

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 47
    move-result p0

    .line 50
    int-to-float p0, p0

    .line 51
    cmpg-float p0, p2, p0

    .line 52
    if-gez p0, :cond_2

    .line 54
    move p0, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move p0, v0

    .line 58
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 59
    move-result p1

    .line 62
    int-to-float p1, p1

    .line 63
    cmpg-float p1, p3, p1

    .line 64
    if-gez p1, :cond_3

    .line 66
    move p1, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move p1, v0

    .line 70
    :goto_1
    and-int/2addr p0, p1

    .line 71
    if-eqz p0, :cond_4

    .line 72
    move v0, v2

    .line 74
    :cond_4
    return v0
    .line 75
.end method

.method public final maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    move-result p1

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 20
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 22
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 26
    :cond_1
    return-void
    .line 28
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    move-result v0

    .line 14
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 15
    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 20
    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 22
    move-result v2

    .line 25
    float-to-int v2, v2

    .line 26
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 27
    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 29
    move-result v3

    .line 32
    float-to-int v3, v3

    .line 33
    int-to-float v3, v3

    .line 34
    iput v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 35
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 37
    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    .line 39
    move-result v4

    .line 42
    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 43
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 45
    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 47
    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 49
    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 51
    const/4 v5, 0x1

    .line 53
    if-eqz v4, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 56
    move-result v0

    .line 59
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 62
    return v5

    .line 65
    :cond_1
    const/4 v4, 0x2

    .line 66
    if-ne v0, v4, :cond_2

    .line 67
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 69
    and-int/2addr v6, v5

    .line 71
    if-eqz v6, :cond_2

    .line 72
    return v5

    .line 74
    :cond_2
    and-int/lit16 v0, v0, 0xff

    .line 75
    const/4 v6, 0x0

    .line 77
    if-eqz v0, :cond_a

    .line 78
    const/4 v2, 0x3

    .line 80
    if-eq v0, v5, :cond_8

    .line 81
    if-eq v0, v4, :cond_3

    .line 83
    if-eq v0, v2, :cond_8

    .line 85
    goto/16 :goto_4

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 89
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    .line 91
    move-result v0

    .line 94
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    .line 95
    cmpl-float v2, v0, v2

    .line 97
    if-lez v2, :cond_4

    .line 99
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 101
    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    .line 103
    move-result v2

    .line 106
    cmpl-float v0, v0, v2

    .line 107
    if-lez v0, :cond_4

    .line 109
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 111
    if-nez v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 115
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z

    .line 117
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 120
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 122
    if-eqz v0, :cond_e

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 126
    move-result v0

    .line 129
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 130
    sub-float/2addr v0, v2

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 133
    move-result v2

    .line 136
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    .line 137
    sub-float/2addr v2, v3

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 140
    move-result v3

    .line 143
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 144
    if-ne v3, v5, :cond_5

    .line 146
    int-to-float v3, v4

    .line 148
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSlopMultiplier:F

    .line 149
    mul-float/2addr v3, v4

    .line 151
    goto :goto_0

    .line 152
    :cond_5
    int-to-float v3, v4

    .line 153
    :goto_0
    cmpl-float v3, v0, v3

    .line 154
    if-lez v3, :cond_e

    .line 156
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 158
    move-result v2

    .line 161
    cmpl-float v0, v0, v2

    .line 162
    if-lez v0, :cond_e

    .line 164
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 166
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 168
    if-eqz v0, :cond_e

    .line 170
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 172
    move-result v2

    .line 175
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    .line 176
    move-result v3

    .line 179
    if-ne v2, v3, :cond_7

    .line 180
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    .line 182
    move-result v2

    .line 185
    if-eqz v2, :cond_6

    .line 186
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->areChildrenExpanded()Z

    .line 188
    move-result v0

    .line 191
    if-eqz v0, :cond_7

    .line 192
    :cond_6
    move v0, v5

    .line 194
    goto :goto_1

    .line 195
    :cond_7
    move v0, v1

    .line 196
    :goto_1
    if-nez v0, :cond_e

    .line 197
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 199
    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z

    .line 201
    move-result v0

    .line 204
    if-eqz v0, :cond_e

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 207
    move-result v0

    .line 210
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 213
    move-result v0

    .line 216
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 217
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 219
    goto :goto_4

    .line 221
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 222
    move-result v0

    .line 225
    if-ne v0, v2, :cond_9

    .line 226
    move v1, v5

    .line 228
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/ExpandHelper;->getCurrentVelocity$1()F

    .line 229
    move-result v0

    .line 232
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 233
    iput-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 236
    goto :goto_4

    .line 238
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 239
    if-eqz v0, :cond_c

    .line 241
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 243
    int-to-float v4, v2

    .line 245
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/systemui/ExpandHelper;->isInside(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FF)Z

    .line 246
    move-result v0

    .line 249
    if-eqz v0, :cond_c

    .line 250
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 252
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 254
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 256
    if-nez v0, :cond_b

    .line 258
    move v0, v5

    .line 260
    goto :goto_2

    .line 261
    :cond_b
    move v0, v1

    .line 262
    :goto_2
    if-eqz v0, :cond_c

    .line 263
    goto :goto_3

    .line 265
    :cond_c
    move v5, v1

    .line 266
    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 267
    int-to-float v0, v2

    .line 269
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 270
    move-result-object v0

    .line 273
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 274
    if-eqz v0, :cond_d

    .line 276
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 278
    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 280
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->canChildBeExpanded(Landroid/view/View;)Z

    .line 282
    move-result v0

    .line 285
    if-nez v0, :cond_d

    .line 286
    iput-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 288
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 290
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 292
    move-result v0

    .line 295
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 298
    move-result v0

    .line 301
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    .line 302
    :cond_e
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 304
    move-result v0

    .line 307
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 310
    iget-boolean p0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 313
    return p0
    .line 315
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    move-result v0

    .line 18
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 19
    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 21
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 24
    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 26
    move-result v2

    .line 29
    float-to-int v2, v2

    .line 30
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 31
    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 33
    move-result v3

    .line 36
    float-to-int v3, v3

    .line 37
    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    .line 38
    if-eqz v4, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 42
    move-result p1

    .line 45
    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 46
    return v1

    .line 48
    :cond_1
    const/4 v4, 0x1

    .line 49
    if-eqz v0, :cond_13

    .line 50
    const/4 v2, 0x3

    .line 52
    if-eq v0, v4, :cond_10

    .line 53
    const/4 v3, 0x2

    .line 55
    if-eq v0, v3, :cond_3

    .line 56
    if-eq v0, v2, :cond_10

    .line 58
    const/4 v2, 0x5

    .line 60
    if-eq v0, v2, :cond_2

    .line 61
    const/4 v2, 0x6

    .line 63
    if-eq v0, v2, :cond_2

    .line 64
    goto/16 :goto_8

    .line 66
    :cond_2
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 68
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 70
    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 72
    move-result v2

    .line 75
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 76
    sub-float/2addr v2, v3

    .line 78
    add-float/2addr v2, v0

    .line 79
    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 80
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 82
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 84
    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    .line 86
    move-result v2

    .line 89
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 90
    sub-float/2addr v2, v3

    .line 92
    add-float/2addr v2, v0

    .line 93
    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 94
    goto/16 :goto_8

    .line 96
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 98
    if-eqz v0, :cond_7

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 102
    move-result v0

    .line 105
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 106
    sub-float/2addr v0, v2

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 109
    move-result v2

    .line 112
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    .line 113
    sub-float/2addr v2, v3

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 116
    move-result v3

    .line 119
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 120
    if-ne v3, v4, :cond_4

    .line 122
    int-to-float v3, v5

    .line 124
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mSlopMultiplier:F

    .line 125
    mul-float/2addr v3, v5

    .line 127
    goto :goto_0

    .line 128
    :cond_4
    int-to-float v3, v5

    .line 129
    :goto_0
    cmpl-float v3, v0, v3

    .line 130
    if-lez v3, :cond_7

    .line 132
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 134
    move-result v2

    .line 137
    cmpl-float v0, v0, v2

    .line 138
    if-lez v0, :cond_7

    .line 140
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 142
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 144
    if-eqz v0, :cond_7

    .line 146
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    .line 148
    move-result v2

    .line 151
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    .line 152
    move-result v3

    .line 155
    if-ne v2, v3, :cond_6

    .line 156
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    .line 158
    move-result v2

    .line 161
    if-eqz v2, :cond_5

    .line 162
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->areChildrenExpanded()Z

    .line 164
    move-result v0

    .line 167
    if-eqz v0, :cond_6

    .line 168
    :cond_5
    move v0, v4

    .line 170
    goto :goto_1

    .line 171
    :cond_6
    move v0, v1

    .line 172
    :goto_1
    if-nez v0, :cond_7

    .line 173
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 175
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z

    .line 177
    move-result v0

    .line 180
    if-eqz v0, :cond_7

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 183
    move-result v0

    .line 186
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 189
    move-result v0

    .line 192
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 193
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 195
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 197
    if-eqz v0, :cond_f

    .line 199
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 201
    and-int/2addr v2, v4

    .line 203
    if-eqz v2, :cond_f

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 206
    move-result v0

    .line 209
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 210
    sub-float/2addr v0, v2

    .line 212
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 213
    add-float/2addr v0, v2

    .line 215
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 216
    int-to-float v3, v2

    .line 218
    cmpg-float v5, v0, v3

    .line 219
    if-gez v5, :cond_8

    .line 221
    goto :goto_2

    .line 223
    :cond_8
    move v3, v0

    .line 224
    :goto_2
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 225
    cmpl-float v6, v3, v5

    .line 227
    if-lez v6, :cond_9

    .line 229
    move v3, v5

    .line 231
    :cond_9
    cmpl-float v5, v0, v5

    .line 232
    if-lez v5, :cond_a

    .line 234
    move v5, v4

    .line 236
    goto :goto_3

    .line 237
    :cond_a
    move v5, v1

    .line 238
    :goto_3
    int-to-float v2, v2

    .line 239
    cmpg-float v0, v0, v2

    .line 240
    if-gez v0, :cond_b

    .line 242
    move v5, v4

    .line 244
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 245
    if-nez v0, :cond_d

    .line 247
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    .line 249
    if-eqz v0, :cond_c

    .line 251
    invoke-virtual {v0, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 253
    :cond_c
    iput-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 256
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 258
    iget-object v2, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 260
    float-to-int v6, v3

    .line 262
    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(I)V

    .line 263
    iget-object v0, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    .line 266
    iput v3, v0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 270
    move-result p1

    .line 273
    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 274
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 276
    if-eqz v5, :cond_e

    .line 278
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 280
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->expansionStateChanged(Z)V

    .line 282
    goto :goto_4

    .line 285
    :cond_e
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 286
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->expansionStateChanged(Z)V

    .line 288
    :goto_4
    return v4

    .line 291
    :cond_f
    if-eqz v0, :cond_15

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/ExpandHelper;->updateExpansion()V

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 297
    move-result p1

    .line 300
    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 301
    return v4

    .line 303
    :cond_10
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 304
    if-eqz v0, :cond_12

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 308
    move-result v0

    .line 311
    if-ne v0, v2, :cond_11

    .line 312
    goto :goto_5

    .line 314
    :cond_11
    move v0, v1

    .line 315
    goto :goto_6

    .line 316
    :cond_12
    :goto_5
    move v0, v4

    .line 317
    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/ExpandHelper;->getCurrentVelocity$1()F

    .line 318
    move-result v2

    .line 321
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 322
    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 326
    goto :goto_8

    .line 328
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 329
    if-eqz v0, :cond_14

    .line 331
    int-to-float v5, v2

    .line 333
    int-to-float v6, v3

    .line 334
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 335
    invoke-virtual {p0, v0, v5, v6}, Lcom/android/systemui/ExpandHelper;->isInside(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;FF)Z

    .line 337
    move-result v0

    .line 340
    if-eqz v0, :cond_14

    .line 341
    move v0, v4

    .line 343
    goto :goto_7

    .line 344
    :cond_14
    move v0, v1

    .line 345
    :goto_7
    iput-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 346
    int-to-float v0, v2

    .line 348
    int-to-float v2, v3

    .line 349
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 350
    move-result-object v0

    .line 353
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 356
    move-result v0

    .line 359
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 362
    move-result v0

    .line 365
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 366
    :cond_15
    :goto_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 368
    move-result v0

    .line 371
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 374
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 377
    if-eqz p0, :cond_16

    .line 379
    move v1, v4

    .line 381
    :cond_16
    return v1
    .line 382
.end method

.method public startExpanding(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 8
    iget-boolean p2, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 10
    const/4 v0, 0x1

    .line 12
    if-eqz p2, :cond_1

    .line 13
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 15
    if-ne p1, p2, :cond_1

    .line 17
    return v0

    .line 19
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 20
    iget-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 22
    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 24
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->expansionStateChanged(Z)V

    .line 26
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->setUserLockedChild(Landroid/view/View;Z)V

    .line 29
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 32
    iput-object p1, v1, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 34
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 36
    move-result v2

    .line 39
    int-to-float v2, v2

    .line 40
    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 41
    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 43
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->canChildBeExpanded(Landroid/view/View;)Z

    .line 45
    move-result p2

    .line 48
    if-eqz p2, :cond_2

    .line 49
    iget-object p2, v1, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    .line 51
    iget-object p2, p2, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 53
    iget-object v1, v1, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 55
    check-cast p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    .line 62
    move-result p2

    .line 65
    int-to-float p2, p2

    .line 66
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 67
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    .line 69
    move-result p2

    .line 72
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 73
    goto :goto_0

    .line 75
    :cond_2
    iget p2, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 76
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 78
    :goto_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 80
    move-result-object p0

    .line 83
    const/4 p2, 0x3

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 85
    return v0
    .line 88
.end method

.method public final trackVelocity(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 12
    if-nez v0, :cond_1

    .line 14
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 16
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 20
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 24
    goto :goto_1

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 28
    if-nez v0, :cond_3

    .line 30
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 32
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 36
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 39
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 44
    :goto_1
    return-void
    .line 47
.end method

.method public updateExpansion()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 2
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    .line 4
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 8
    sub-float/2addr v0, v1

    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    mul-float/2addr v0, v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 14
    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 16
    move-result v2

    .line 19
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 20
    sub-float/2addr v2, v3

    .line 22
    mul-float/2addr v2, v1

    .line 23
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 24
    const/16 v4, 0x50

    .line 26
    if-ne v3, v4, :cond_0

    .line 28
    const/high16 v3, -0x40800000    # -1.0f

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    move v3, v1

    .line 33
    :goto_0
    mul-float/2addr v2, v3

    .line 34
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 35
    move-result v3

    .line 38
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 39
    move-result v4

    .line 42
    add-float/2addr v4, v3

    .line 43
    add-float/2addr v4, v1

    .line 44
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 45
    move-result v1

    .line 48
    mul-float/2addr v1, v2

    .line 49
    div-float/2addr v1, v4

    .line 50
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 51
    move-result v2

    .line 54
    mul-float/2addr v2, v0

    .line 55
    div-float/2addr v2, v4

    .line 56
    add-float/2addr v2, v1

    .line 57
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 58
    add-float/2addr v2, v0

    .line 60
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 61
    int-to-float v0, v0

    .line 63
    cmpg-float v1, v2, v0

    .line 64
    if-gez v1, :cond_1

    .line 66
    move v2, v0

    .line 68
    :cond_1
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 69
    cmpl-float v1, v2, v0

    .line 71
    if-lez v1, :cond_2

    .line 73
    move v2, v0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 76
    iget-object v1, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 78
    float-to-int v3, v2

    .line 80
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(I)V

    .line 81
    iget-object v0, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    .line 84
    iput v2, v0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 86
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 88
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 90
    move-result v0

    .line 93
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 94
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 96
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    .line 98
    move-result v0

    .line 101
    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 102
    return-void
    .line 104
.end method
