.class public final Landroidx/core/widget/ListViewAutoScrollHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final DEFAULT_ACTIVATION_DELAY:I


# instance fields
.field public mActivationDelay:I

.field public mAlreadyDelayed:Z

.field public mAnimating:Z

.field public final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field public mEdgeType:I

.field public mEnabled:Z

.field public final mMaximumEdges:[F

.field public final mMaximumVelocity:[F

.field public final mMinimumVelocity:[F

.field public mNeedsCancel:Z

.field public mNeedsReset:Z

.field public final mRelativeEdges:[F

.field public final mRelativeVelocity:[F

.field public mRunnable:Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

.field public final mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

.field public final mTarget:Landroid/widget/ListView;

.field public final mTarget$androidx$core$widget$AutoScrollHelper:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 2
    move-result v0

    .line 5
    sput v0, Landroidx/core/widget/ListViewAutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    .line 6
    return-void
    .line 8
.end method

.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 5
    invoke-direct {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 10
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 12
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 14
    iput-object v1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 17
    const/4 v1, 0x2

    .line 19
    new-array v2, v1, [F

    .line 20
    fill-array-data v2, :array_0

    .line 22
    iput-object v2, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mRelativeEdges:[F

    .line 25
    new-array v3, v1, [F

    .line 27
    fill-array-data v3, :array_1

    .line 29
    iput-object v3, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mMaximumEdges:[F

    .line 32
    new-array v4, v1, [F

    .line 34
    fill-array-data v4, :array_2

    .line 36
    iput-object v4, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mRelativeVelocity:[F

    .line 39
    new-array v5, v1, [F

    .line 41
    fill-array-data v5, :array_3

    .line 43
    iput-object v5, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mMinimumVelocity:[F

    .line 46
    new-array v1, v1, [F

    .line 48
    fill-array-data v1, :array_4

    .line 50
    iput-object v1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mMaximumVelocity:[F

    .line 53
    iput-object p1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget$androidx$core$widget$AutoScrollHelper:Landroid/view/View;

    .line 55
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 57
    move-result-object v6

    .line 60
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 61
    move-result-object v6

    .line 64
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 65
    const v7, 0x44c4e000    # 1575.0f

    .line 67
    mul-float/2addr v7, v6

    .line 70
    const/high16 v8, 0x3f000000    # 0.5f

    .line 71
    add-float/2addr v7, v8

    .line 73
    float-to-int v7, v7

    .line 74
    const v9, 0x439d8000    # 315.0f

    .line 75
    mul-float/2addr v6, v9

    .line 78
    add-float/2addr v6, v8

    .line 79
    float-to-int v6, v6

    .line 80
    int-to-float v7, v7

    .line 81
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 82
    div-float/2addr v7, v8

    .line 84
    const/4 v9, 0x0

    .line 85
    aput v7, v1, v9

    .line 86
    int-to-float v1, v6

    .line 88
    div-float/2addr v1, v8

    .line 89
    aput v1, v5, v9

    .line 90
    const/4 v1, 0x1

    .line 92
    iput v1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mEdgeType:I

    .line 93
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 95
    aput v1, v3, v9

    .line 98
    const v1, 0x3e4ccccd    # 0.2f

    .line 100
    aput v1, v2, v9

    .line 103
    const v1, 0x3a83126f    # 0.001f

    .line 105
    aput v1, v4, v9

    .line 108
    sget v1, Landroidx/core/widget/ListViewAutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    .line 110
    iput v1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mActivationDelay:I

    .line 112
    const/16 v1, 0x1f4

    .line 114
    iput v1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    .line 116
    iput v1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    .line 118
    iput-object p1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .line 120
    return-void

    .line 122
    nop

    .line 123
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 124
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 132
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 140
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method public static constrain(FFF)F
    .locals 1

    .line 1
    cmpl-float v0, p0, p2

    .line 2
    if-lez v0, :cond_0

    .line 4
    return p2

    .line 6
    :cond_0
    cmpg-float p2, p0, p1

    .line 7
    if-gez p2, :cond_1

    .line 9
    return p1

    .line 11
    :cond_1
    return p0
    .line 12
.end method


# virtual methods
.method public final computeTargetVelocity(IFFF)F
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mRelativeEdges:[F

    .line 2
    aget v0, v0, p1

    .line 4
    iget-object v1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mMaximumEdges:[F

    .line 6
    aget v1, v1, p1

    .line 8
    mul-float/2addr v0, p3

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v2, v1}, Landroidx/core/widget/ListViewAutoScrollHelper;->constrain(FFF)F

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p0, p2, v0}, Landroidx/core/widget/ListViewAutoScrollHelper;->constrainEdgeValue(FF)F

    .line 16
    move-result v1

    .line 19
    sub-float/2addr p3, p2

    .line 20
    invoke-virtual {p0, p3, v0}, Landroidx/core/widget/ListViewAutoScrollHelper;->constrainEdgeValue(FF)F

    .line 21
    move-result p2

    .line 24
    sub-float/2addr p2, v1

    .line 25
    cmpg-float p3, p2, v2

    .line 26
    if-gez p3, :cond_0

    .line 28
    iget-object p3, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 30
    neg-float p2, p2

    .line 32
    check-cast p3, Landroid/view/animation/AccelerateInterpolator;

    .line 33
    invoke-virtual {p3, p2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 35
    move-result p2

    .line 38
    neg-float p2, p2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    cmpl-float p3, p2, v2

    .line 41
    if-lez p3, :cond_1

    .line 43
    iget-object p3, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 45
    check-cast p3, Landroid/view/animation/AccelerateInterpolator;

    .line 47
    invoke-virtual {p3, p2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 49
    move-result p2

    .line 52
    :goto_0
    const/high16 p3, -0x40800000    # -1.0f

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    invoke-static {p2, p3, v0}, Landroidx/core/widget/ListViewAutoScrollHelper;->constrain(FFF)F

    .line 57
    move-result p2

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move p2, v2

    .line 62
    :goto_1
    cmpl-float p3, p2, v2

    .line 63
    if-nez p3, :cond_2

    .line 65
    goto :goto_2

    .line 67
    :cond_2
    iget-object v0, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mRelativeVelocity:[F

    .line 68
    aget v0, v0, p1

    .line 70
    iget-object v1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mMinimumVelocity:[F

    .line 72
    aget v1, v1, p1

    .line 74
    iget-object p0, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mMaximumVelocity:[F

    .line 76
    aget p0, p0, p1

    .line 78
    mul-float/2addr v0, p4

    .line 80
    if-lez p3, :cond_3

    .line 81
    mul-float/2addr p2, v0

    .line 83
    invoke-static {p2, v1, p0}, Landroidx/core/widget/ListViewAutoScrollHelper;->constrain(FFF)F

    .line 84
    move-result v2

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    neg-float p1, p2

    .line 89
    mul-float/2addr p1, v0

    .line 90
    invoke-static {p1, v1, p0}, Landroidx/core/widget/ListViewAutoScrollHelper;->constrain(FFF)F

    .line 91
    move-result p0

    .line 94
    neg-float v2, p0

    .line 95
    :goto_2
    return v2
    .line 96
.end method

.method public final constrainEdgeValue(FF)F
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p2, v0

    .line 3
    if-nez v1, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    iget v1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mEdgeType:I

    .line 8
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    if-eq v1, v2, :cond_2

    .line 13
    const/4 p0, 0x2

    .line 15
    if-eq v1, p0, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    cmpg-float p0, p1, v0

    .line 19
    if-gez p0, :cond_4

    .line 21
    neg-float p0, p2

    .line 23
    div-float v0, p1, p0

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    cmpg-float v3, p1, p2

    .line 27
    if-gez v3, :cond_4

    .line 29
    cmpl-float v3, p1, v0

    .line 31
    const/high16 v4, 0x3f800000    # 1.0f

    .line 33
    if-ltz v3, :cond_3

    .line 35
    div-float/2addr p1, p2

    .line 37
    sub-float v0, v4, p1

    .line 38
    goto :goto_0

    .line 40
    :cond_3
    iget-boolean p0, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    .line 41
    if-eqz p0, :cond_4

    .line 43
    if-ne v1, v2, :cond_4

    .line 45
    move v0, v4

    .line 47
    :cond_4
    :goto_0
    return v0
    .line 48
.end method

.method public final bridge synthetic onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/ListViewAutoScrollHelper;->onTouch$androidx$core$widget$AutoScrollHelper(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    const/4 p0, 0x0

    .line 5
    return p0
    .line 6
.end method

.method public final onTouch$androidx$core$widget$AutoScrollHelper(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mEnabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    if-eq v0, v2, :cond_1

    .line 15
    const/4 v3, 0x2

    .line 17
    if-eq v0, v3, :cond_3

    .line 18
    const/4 p1, 0x3

    .line 20
    if-eq v0, p1, :cond_1

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroidx/core/widget/ListViewAutoScrollHelper;->requestStop()V

    .line 24
    goto :goto_1

    .line 27
    :cond_2
    iput-boolean v2, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsCancel:Z

    .line 28
    iput-boolean v1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAlreadyDelayed:Z

    .line 30
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 32
    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 36
    move-result v3

    .line 39
    int-to-float v3, v3

    .line 40
    iget-object v4, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget$androidx$core$widget$AutoScrollHelper:Landroid/view/View;

    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 43
    move-result v4

    .line 46
    int-to-float v4, v4

    .line 47
    invoke-virtual {p0, v1, v0, v3, v4}, Landroidx/core/widget/ListViewAutoScrollHelper;->computeTargetVelocity(IFFF)F

    .line 48
    move-result v0

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 52
    move-result p2

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 56
    move-result p1

    .line 59
    int-to-float p1, p1

    .line 60
    iget-object v3, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget$androidx$core$widget$AutoScrollHelper:Landroid/view/View;

    .line 61
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 63
    move-result v3

    .line 66
    int-to-float v3, v3

    .line 67
    invoke-virtual {p0, v2, p2, p1, v3}, Landroidx/core/widget/ListViewAutoScrollHelper;->computeTargetVelocity(IFFF)F

    .line 68
    move-result p1

    .line 71
    iget-object p2, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 72
    iput v0, p2, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    .line 74
    iput p1, p2, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    .line 76
    iget-boolean p1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    .line 78
    if-nez p1, :cond_6

    .line 80
    invoke-virtual {p0}, Landroidx/core/widget/ListViewAutoScrollHelper;->shouldAnimate()Z

    .line 82
    move-result p1

    .line 85
    if-eqz p1, :cond_6

    .line 86
    iget-object p1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mRunnable:Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    .line 88
    if-nez p1, :cond_4

    .line 90
    new-instance p1, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    .line 92
    invoke-direct {p1, p0}, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroidx/core/widget/ListViewAutoScrollHelper;)V

    .line 94
    iput-object p1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mRunnable:Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    .line 97
    :cond_4
    iput-boolean v2, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    .line 99
    iput-boolean v2, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsReset:Z

    .line 101
    iget-boolean p1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAlreadyDelayed:Z

    .line 103
    if-nez p1, :cond_5

    .line 105
    iget p1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mActivationDelay:I

    .line 107
    if-lez p1, :cond_5

    .line 109
    iget-object p2, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget$androidx$core$widget$AutoScrollHelper:Landroid/view/View;

    .line 111
    iget-object v0, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mRunnable:Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    .line 113
    int-to-long v3, p1

    .line 115
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 116
    invoke-static {p2, v0, v3, v4}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 118
    goto :goto_0

    .line 121
    :cond_5
    iget-object p1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mRunnable:Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    .line 122
    invoke-virtual {p1}, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->run()V

    .line 124
    :goto_0
    iput-boolean v2, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAlreadyDelayed:Z

    .line 127
    :cond_6
    :goto_1
    return v1
    .line 129
.end method

.method public final requestStop()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsReset:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    .line 7
    goto :goto_1

    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 15
    move-result-wide v2

    .line 18
    iget-wide v4, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 19
    sub-long v4, v2, v4

    .line 21
    long-to-int v0, v4

    .line 23
    iget v4, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    .line 24
    if-le v0, v4, :cond_1

    .line 26
    move v1, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-gez v0, :cond_2

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    move v1, v0

    .line 33
    :goto_0
    iput v1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    .line 34
    invoke-virtual {p0, v2, v3}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    .line 36
    move-result v0

    .line 39
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 40
    iput-wide v2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 42
    :goto_1
    return-void
    .line 44
.end method

.method public final shouldAnimate()Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 2
    iget v1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    .line 4
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 6
    move-result v2

    .line 9
    div-float/2addr v1, v2

    .line 10
    float-to-int v1, v1

    .line 11
    iget v0, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    .line 12
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 14
    const/4 v0, 0x0

    .line 17
    if-eqz v1, :cond_5

    .line 18
    iget-object p0, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .line 20
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    .line 22
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v2, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    .line 30
    move-result v4

    .line 33
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    .line 34
    move-result v5

    .line 37
    add-int v6, v5, v4

    .line 38
    if-lez v1, :cond_1

    .line 40
    if-lt v6, v2, :cond_2

    .line 42
    sub-int/2addr v4, v3

    .line 44
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    .line 45
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 49
    move-result v1

    .line 52
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    .line 53
    move-result p0

    .line 56
    if-gt v1, p0, :cond_2

    .line 57
    goto :goto_0

    .line 59
    :cond_1
    if-gez v1, :cond_3

    .line 60
    if-gtz v5, :cond_2

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    .line 64
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 68
    move-result p0

    .line 71
    if-ltz p0, :cond_2

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    move p0, v3

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    :goto_0
    move p0, v0

    .line 77
    :goto_1
    if-nez p0, :cond_4

    .line 78
    goto :goto_2

    .line 80
    :cond_4
    move v0, v3

    .line 81
    :cond_5
    :goto_2
    return v0
    .line 82
.end method
