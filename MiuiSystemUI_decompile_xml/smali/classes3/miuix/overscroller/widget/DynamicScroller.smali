.class public final Lmiuix/overscroller/widget/DynamicScroller;
.super Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;


# instance fields
.field public final mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

.field public mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

.field public final mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    .line 5
    invoke-direct {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;-><init>()V

    .line 7
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 10
    invoke-direct {v0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V

    .line 12
    iput-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 15
    new-instance v1, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 17
    invoke-direct {v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;-><init>()V

    .line 19
    iput-object v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 22
    const/high16 v1, 0x3f000000    # 0.5f

    .line 24
    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 26
    iget-object v2, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 28
    const v3, 0x3f7851ec    # 0.97f

    .line 30
    float-to-double v3, v3

    .line 33
    iput-wide v3, v2, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 34
    const/4 v3, 0x0

    .line 36
    iput-boolean v3, v2, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 37
    const v3, 0x43028000    # 130.5f

    .line 39
    invoke-virtual {v2, v3}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 42
    iget-object v0, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 45
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 47
    iput-wide v2, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mTimeRatio:D

    .line 52
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 54
    invoke-direct {v0, p1, p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;)V

    .line 56
    iput-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 59
    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 61
    const/high16 p0, 0x3ec00000    # 0.375f

    .line 63
    invoke-virtual {v0, p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setValueThreshold(F)V

    .line 65
    iget-object p0, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 68
    const/high16 p1, -0x40000000    # -2.0f

    .line 70
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 72
    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    .line 74
    float-to-double v2, p1

    .line 79
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 80
    move-result-wide v0

    .line 83
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 84
    sub-double/2addr v2, v0

    .line 86
    iput-wide v2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mDragRate:D

    .line 87
    return-void
    .line 89
.end method


# virtual methods
.method public final continueWhenFinished()Z
    .locals 15

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    iget-object v2, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mOnFinishedListener:Lmiuix/overscroller/widget/DynamicScroller$1;

    .line 7
    const/4 v3, 0x1

    .line 9
    if-eqz v2, :cond_2

    .line 10
    iget v4, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    .line 12
    int-to-float v4, v4

    .line 14
    iget v0, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    .line 15
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 17
    move-result-object v5

    .line 20
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    move-result-object v0

    .line 24
    iget v6, v2, Lmiuix/overscroller/widget/DynamicScroller$1;->val$min:I

    .line 25
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v7

    .line 30
    iget v8, v2, Lmiuix/overscroller/widget/DynamicScroller$1;->val$max:I

    .line 31
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v9

    .line 36
    filled-new-array {v5, v0, v7, v9}, [Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    const-string v5, "fling finished: value(%f), velocity(%f), scroller boundary(%d, %d)"

    .line 41
    invoke-static {v5, v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v9, v2, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    .line 46
    iget-object v0, v9, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 48
    iget-object v5, v9, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 50
    iget v7, v5, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    .line 52
    int-to-float v7, v7

    .line 54
    iput v7, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 55
    iput-boolean v3, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 57
    iget v5, v5, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    .line 59
    iput v5, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 61
    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    .line 63
    move-result v0

    .line 66
    float-to-int v4, v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    int-to-float v4, v8

    .line 70
    cmpl-float v4, v0, v4

    .line 71
    if-gtz v4, :cond_0

    .line 73
    int-to-float v4, v6

    .line 75
    cmpg-float v0, v0, v4

    .line 76
    if-gez v0, :cond_1

    .line 78
    :cond_0
    const-string v0, "fling destination beyound boundary, start spring"

    .line 80
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v9}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    .line 85
    const/4 v10, 0x2

    .line 88
    iget-wide v4, v9, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 89
    double-to-int v11, v4

    .line 91
    iget-wide v4, v9, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 92
    double-to-float v12, v4

    .line 94
    iget-wide v4, v9, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 95
    double-to-int v13, v4

    .line 97
    iget v14, v2, Lmiuix/overscroller/widget/DynamicScroller$1;->val$over:I

    .line 98
    invoke-virtual/range {v9 .. v14}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    .line 100
    move v0, v3

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    const-string v0, "fling finished, no more work."

    .line 105
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 107
    :cond_2
    move v0, v1

    .line 110
    :goto_0
    if-eqz v0, :cond_3

    .line 111
    const-string v0, "checking have more work when finish"

    .line 113
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller;->update()Z

    .line 118
    return v3

    .line 121
    :cond_3
    return v1
    .line 122
.end method

.method public final doFling(IIIII)V
    .locals 10

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 5
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 8
    int-to-float p2, p2

    .line 10
    iput p2, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 11
    int-to-long v1, p1

    .line 13
    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    .line 14
    move-result v3

    .line 17
    float-to-long v3, v3

    .line 18
    add-long/2addr v1, v3

    .line 19
    int-to-long v3, p4

    .line 20
    cmp-long v3, v1, v3

    .line 21
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 23
    iget-object v6, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 28
    if-lez v3, :cond_0

    .line 30
    sub-int v1, p4, p1

    .line 32
    int-to-float v1, v1

    .line 34
    iget v2, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 35
    sub-float/2addr v1, v2

    .line 37
    iget v2, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 38
    iget v3, v6, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 40
    div-float v7, v2, v3

    .line 42
    add-float/2addr v7, v1

    .line 44
    mul-float/2addr v7, v3

    .line 45
    div-float/2addr v7, v2

    .line 46
    float-to-double v1, v7

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    .line 48
    move-result-wide v1

    .line 51
    mul-double/2addr v1, v4

    .line 52
    iget v3, v6, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 53
    float-to-double v3, v3

    .line 55
    div-double/2addr v1, v3

    .line 56
    double-to-float v1, v1

    .line 57
    float-to-int v1, v1

    .line 58
    move v2, p4

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    int-to-long v7, p3

    .line 61
    cmp-long v3, v1, v7

    .line 62
    if-gez v3, :cond_1

    .line 64
    sub-int v1, p3, p1

    .line 66
    int-to-float v1, v1

    .line 68
    iget v2, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 69
    sub-float/2addr v1, v2

    .line 71
    iget v2, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 72
    iget v3, v6, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 74
    div-float v7, v2, v3

    .line 76
    add-float/2addr v7, v1

    .line 78
    mul-float/2addr v7, v3

    .line 79
    div-float/2addr v7, v2

    .line 80
    float-to-double v1, v7

    .line 81
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    .line 82
    move-result-wide v1

    .line 85
    mul-double/2addr v1, v4

    .line 86
    iget v3, v6, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 87
    float-to-double v3, v3

    .line 89
    div-double/2addr v1, v3

    .line 90
    double-to-float v1, v1

    .line 91
    float-to-int v1, v1

    .line 92
    move v2, p3

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    long-to-int v1, v1

    .line 95
    iget v2, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 96
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 98
    move-result v2

    .line 101
    iget v3, v6, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 102
    mul-float/2addr v2, v3

    .line 104
    iget v3, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 105
    div-float/2addr v2, v3

    .line 107
    float-to-double v2, v2

    .line 108
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 109
    move-result-wide v2

    .line 112
    mul-double/2addr v2, v4

    .line 113
    iget v4, v6, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 114
    float-to-double v4, v4

    .line 116
    div-double/2addr v2, v4

    .line 117
    double-to-float v2, v2

    .line 118
    float-to-int v2, v2

    .line 119
    move v9, v2

    .line 120
    move v2, v1

    .line 121
    move v1, v9

    .line 122
    :goto_0
    const/4 v3, 0x0

    .line 123
    iput-boolean v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 124
    float-to-double v4, p2

    .line 126
    iput-wide v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 127
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 129
    move-result-wide v4

    .line 132
    iput-wide v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 133
    int-to-double v4, p1

    .line 135
    iput-wide v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 136
    iput-wide v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 138
    iput v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 140
    int-to-double v1, v2

    .line 142
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 143
    iput v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 145
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 147
    move-result v1

    .line 150
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    .line 151
    move-result v2

    .line 154
    new-instance v3, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 155
    invoke-direct {v3, v0, p1, p2}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;IF)V

    .line 157
    iput-object v3, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 160
    new-instance p1, Lmiuix/overscroller/widget/DynamicScroller$1;

    .line 162
    invoke-direct {p1, p0, p3, p4, p5}, Lmiuix/overscroller/widget/DynamicScroller$1;-><init>(Lmiuix/overscroller/widget/DynamicScroller;III)V

    .line 164
    iput-object p1, v3, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mOnFinishedListener:Lmiuix/overscroller/widget/DynamicScroller$1;

    .line 167
    invoke-virtual {v3, v1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMinValue(I)V

    .line 169
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 172
    invoke-virtual {p1, v2}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMaxValue(I)V

    .line 174
    iget-object p0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 177
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->start()V

    .line 179
    return-void
    .line 182
.end method

.method public final doSpring(IIFII)V
    .locals 3

    .line 1
    const/high16 v0, 0x45fa0000    # 8000.0f

    .line 2
    cmpl-float v1, p3, v0

    .line 4
    if-lez v1, :cond_0

    .line 6
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    move-result-object p3

    .line 11
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 12
    move-result-object p3

    .line 15
    const-string v1, "%f is too fast for spring, slow down"

    .line 16
    invoke-static {v1, p3}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    move p3, v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 23
    float-to-double v0, p3

    .line 25
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 26
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 28
    move-result-wide v0

    .line 31
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 32
    int-to-double v0, p2

    .line 34
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 35
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 37
    const v0, 0x7fffffff

    .line 39
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 42
    int-to-double v0, p4

    .line 44
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 45
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 47
    new-instance p1, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 49
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 51
    invoke-direct {p1, v0, p2, p3}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;IF)V

    .line 53
    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 56
    iget-object v0, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 58
    iget v1, p1, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mStartValue:I

    .line 60
    sub-int v1, p4, v1

    .line 62
    int-to-float v1, v1

    .line 64
    float-to-double v1, v1

    .line 65
    iput-wide v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 66
    if-eqz p5, :cond_2

    .line 68
    const/4 v0, 0x0

    .line 70
    cmpg-float p3, p3, v0

    .line 71
    if-gez p3, :cond_1

    .line 73
    sub-int p3, p4, p5

    .line 75
    invoke-virtual {p1, p3}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMinValue(I)V

    .line 77
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 80
    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    .line 82
    move-result p2

    .line 85
    invoke-virtual {p1, p2}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMaxValue(I)V

    .line 86
    goto :goto_0

    .line 89
    :cond_1
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    .line 90
    move-result p2

    .line 93
    invoke-virtual {p1, p2}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMinValue(I)V

    .line 94
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 97
    add-int/2addr p4, p5

    .line 99
    invoke-virtual {p1, p4}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMaxValue(I)V

    .line 100
    :cond_2
    :goto_0
    iget-object p0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 103
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->start()V

    .line 105
    return-void
    .line 108
.end method

.method public final finish()V
    .locals 2

    .line 1
    const-string v0, "finish scroller"

    .line 2
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 4
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 7
    double-to-int v0, v0

    .line 9
    int-to-double v0, v0

    .line 10
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 11
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 14
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    .line 16
    return-void
    .line 19
.end method

.method public final fling(IIIII)V
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 13
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v3

    .line 17
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v4

    .line 21
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    const-string v1, "FLING: start(%d) velocity(%d) boundary(%d, %d) over(%d)"

    .line 26
    invoke-static {v1, v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    .line 31
    if-nez p2, :cond_0

    .line 34
    int-to-double p1, p1

    .line 36
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 37
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 39
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 41
    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 44
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 47
    return-void

    .line 49
    :cond_0
    int-to-double v0, p2

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 51
    move-result-wide v0

    .line 54
    const-wide v2, 0x40b3880000000000L    # 5000.0

    .line 55
    cmpg-double v0, v0, v2

    .line 60
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 62
    if-gtz v0, :cond_1

    .line 64
    iget-object v0, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 66
    const v1, 0x4376b333    # 246.7f

    .line 68
    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 71
    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 75
    const v1, 0x43028000    # 130.5f

    .line 77
    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 80
    :goto_0
    if-gt p1, p4, :cond_3

    .line 83
    if-ge p1, p3, :cond_2

    .line 85
    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lmiuix/overscroller/widget/DynamicScroller;->doFling(IIIII)V

    .line 88
    return-void

    .line 91
    :cond_3
    :goto_1
    move-object v0, p0

    .line 92
    move v1, p1

    .line 93
    move v2, p3

    .line 94
    move v3, p4

    .line 95
    move v4, p2

    .line 96
    move v5, p5

    .line 97
    invoke-virtual/range {v0 .. v5}, Lmiuix/overscroller/widget/DynamicScroller;->startAfterEdge(IIIII)V

    .line 98
    return-void
    .line 101
.end method

.method public final resetHandler()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 11
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 12
    iget-object v1, v1, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    iget-object v2, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 24
    iget v2, v2, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v2

    .line 31
    iget-object v3, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 32
    iget v3, v3, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    .line 34
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    move-result-object v3

    .line 39
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 43
    const-string v1, "resetting current handler: state(%d), anim(%s), value(%d), velocity(%f)"

    .line 44
    invoke-static {v1, v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 49
    const-wide/16 v1, 0x0

    .line 51
    iput-wide v1, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mLastUpdateTime:J

    .line 53
    iget-object v1, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 60
    move-result-object v2

    .line 63
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 64
    move-result-object v3

    .line 67
    if-ne v2, v3, :cond_2

    .line 68
    iget-boolean v2, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 70
    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal()V

    .line 74
    :cond_0
    iget-object v1, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 77
    iget-object v0, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMonitor:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;

    .line 79
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 81
    move-result v0

    .line 84
    const/4 v2, 0x0

    .line 85
    if-ltz v0, :cond_1

    .line 86
    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_1
    iput-object v2, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 91
    goto :goto_0

    .line 93
    :cond_2
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 94
    const-string v0, "Animations may only be canceled on the main thread"

    .line 96
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p0

    .line 101
    :cond_3
    :goto_0
    return-void
    .line 102
.end method

.method public final springback(III)Z
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v3

    .line 13
    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "SPRING_BACK start(%d) boundary(%d, %d)"

    .line 18
    invoke-static {v1, v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    .line 27
    :cond_0
    const/4 v6, 0x1

    .line 30
    if-ge p1, p2, :cond_1

    .line 31
    const/4 v1, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    move-object v0, p0

    .line 36
    move v2, p1

    .line 37
    move v4, p2

    .line 38
    invoke-virtual/range {v0 .. v5}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    .line 39
    goto :goto_0

    .line 42
    :cond_1
    if-le p1, p3, :cond_2

    .line 43
    const/4 v1, 0x1

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    move-object v0, p0

    .line 48
    move v2, p1

    .line 49
    move v4, p3

    .line 50
    invoke-virtual/range {v0 .. v5}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    .line 51
    goto :goto_0

    .line 54
    :cond_2
    int-to-double v0, p1

    .line 55
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 56
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 58
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 60
    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 63
    iput-boolean v6, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 65
    :goto_0
    iget-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 67
    xor-int/2addr v0, v6

    .line 69
    return v0
    .line 70
.end method

.method public final startAfterEdge(IIIII)V
    .locals 9

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v3

    .line 17
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v4

    .line 21
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    const-string v1, "startAfterEdge: start(%d) velocity(%d) boundary(%d, %d) over(%d)"

    .line 26
    invoke-static {v1, v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    const/4 v0, 0x1

    .line 31
    if-le p1, p2, :cond_0

    .line 32
    if-ge p1, p3, :cond_0

    .line 34
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 36
    return-void

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    if-le p1, p3, :cond_1

    .line 40
    move v2, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v2, v1

    .line 44
    :goto_0
    if-eqz v2, :cond_2

    .line 45
    move v7, p3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v7, p2

    .line 49
    :goto_1
    sub-int v3, p1, v7

    .line 50
    if-eqz p4, :cond_3

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    .line 54
    move-result v3

    .line 57
    mul-int/2addr v3, p4

    .line 58
    if-ltz v3, :cond_3

    .line 59
    move v1, v0

    .line 61
    :cond_3
    if-eqz v1, :cond_4

    .line 62
    const-string p2, "spring forward"

    .line 64
    invoke-static {p2}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 66
    const/4 v4, 0x2

    .line 69
    int-to-float v6, p4

    .line 70
    move-object v3, p0

    .line 71
    move v5, p1

    .line 72
    move v8, p5

    .line 73
    invoke-virtual/range {v3 .. v8}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    .line 74
    goto :goto_2

    .line 77
    :cond_4
    int-to-float v1, p1

    .line 78
    iget-object v3, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 79
    iput v1, v3, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 81
    iput-boolean v0, v3, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 83
    int-to-float v6, p4

    .line 85
    iput v6, v3, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 86
    invoke-virtual {v3}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    .line 88
    move-result v0

    .line 91
    if-eqz v2, :cond_5

    .line 92
    int-to-float v1, p3

    .line 94
    cmpg-float v1, v0, v1

    .line 95
    if-ltz v1, :cond_6

    .line 97
    :cond_5
    if-nez v2, :cond_7

    .line 99
    int-to-float v1, p2

    .line 101
    cmpl-float v0, v0, v1

    .line 102
    if-lez v0, :cond_7

    .line 104
    :cond_6
    const-string v0, "fling to content"

    .line 106
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 108
    move-object v0, p0

    .line 111
    move v1, p1

    .line 112
    move v2, p4

    .line 113
    move v3, p2

    .line 114
    move v4, p3

    .line 115
    move v5, p5

    .line 116
    invoke-virtual/range {v0 .. v5}, Lmiuix/overscroller/widget/DynamicScroller;->doFling(IIIII)V

    .line 117
    goto :goto_2

    .line 120
    :cond_7
    const-string p2, "spring backward"

    .line 121
    invoke-static {p2}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 123
    const/4 v4, 0x1

    .line 126
    move-object v3, p0

    .line 127
    move v5, p1

    .line 128
    move v8, p5

    .line 129
    invoke-virtual/range {v3 .. v8}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    .line 130
    :goto_2
    return-void
    .line 133
.end method

.method public final update()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-string p0, "no handler found, aborting"

    .line 6
    invoke-static {p0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-wide v1, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mLastUpdateTime:J

    .line 13
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 15
    move-result-wide v3

    .line 18
    cmp-long v1, v3, v1

    .line 19
    const/4 v2, 0x1

    .line 21
    iget-object v5, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 22
    if-nez v1, :cond_1

    .line 24
    sget-boolean v0, Lmiuix/overscroller/widget/OverScrollLogger;->DEBUG:Z

    .line 26
    iget-boolean v0, v5, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 28
    xor-int/2addr v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v5, v3, v4}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->doAnimationFrame(J)Z

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    sget-boolean v6, Lmiuix/overscroller/widget/OverScrollLogger;->DEBUG:Z

    .line 38
    iget-object v5, v5, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 40
    iget-object v6, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mMonitor:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$Monitor;

    .line 42
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 44
    move-result v6

    .line 47
    if-ltz v6, :cond_2

    .line 48
    const/4 v7, 0x0

    .line 50
    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_2
    const-wide/16 v5, 0x0

    .line 54
    iput-wide v5, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mLastUpdateTime:J

    .line 56
    :cond_3
    iput-wide v3, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mLastUpdateTime:J

    .line 58
    move v0, v1

    .line 60
    :goto_0
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 61
    iget v3, v1, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    .line 63
    int-to-double v4, v3

    .line 65
    iput-wide v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 66
    iget v1, v1, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    .line 68
    float-to-double v4, v1

    .line 70
    iput-wide v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 71
    iget v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 73
    const/4 v4, 0x2

    .line 75
    if-ne v1, v4, :cond_4

    .line 76
    int-to-float v1, v3

    .line 78
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 79
    move-result v1

    .line 82
    iget-object v3, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 83
    iget v3, v3, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    .line 85
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 87
    move-result v3

    .line 90
    mul-float/2addr v3, v1

    .line 91
    const/4 v1, 0x0

    .line 92
    cmpg-float v1, v3, v1

    .line 93
    if-gez v1, :cond_4

    .line 95
    const-string v1, "State Changed: BALLISTIC -> CUBIC"

    .line 97
    invoke-static {v1}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 99
    iput v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 102
    :cond_4
    xor-int/lit8 p0, v0, 0x1

    .line 104
    return p0
    .line 106
.end method
