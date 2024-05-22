.class public abstract Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final SPLINE_POSITION:[F

.field public static final SPLINE_TIME:[F


# instance fields
.field public mCurrVelocity:D

.field public mCurrentPosition:D

.field public mDuration:I

.field public mFinal:D

.field public mFinished:Z

.field public mLastStep:Z

.field public mSpringOperator:Lmiuix/animation/physics/SpringOperator;

.field public mSpringParams:[D

.field public mStart:D

.field public mStartTime:J

.field public mState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 7
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 15
    const/16 v0, 0x65

    .line 18
    new-array v1, v0, [F

    .line 20
    sput-object v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 22
    new-array v0, v0, [F

    .line 24
    sput-object v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 26
    const/4 v0, 0x0

    .line 28
    const/4 v1, 0x0

    .line 29
    move v2, v1

    .line 30
    move v1, v0

    .line 31
    :goto_0
    const/16 v3, 0x64

    .line 32
    const/high16 v4, 0x3f800000    # 1.0f

    .line 34
    if-ge v2, v3, :cond_4

    .line 36
    int-to-float v3, v2

    .line 38
    const/high16 v5, 0x42c80000    # 100.0f

    .line 39
    div-float v5, v3, v5

    .line 41
    move v3, v4

    .line 43
    :goto_1
    sub-float v6, v3, v0

    .line 44
    const/high16 v7, 0x40000000    # 2.0f

    .line 46
    div-float/2addr v6, v7

    .line 48
    add-float/2addr v6, v0

    .line 49
    const/high16 v8, 0x40400000    # 3.0f

    .line 50
    mul-float v9, v6, v8

    .line 52
    sub-float v10, v4, v6

    .line 54
    mul-float/2addr v9, v10

    .line 56
    const v11, 0x3e333333    # 0.175f

    .line 57
    mul-float v12, v10, v11

    .line 60
    const v13, 0x3eb33334    # 0.35000002f

    .line 62
    mul-float v14, v6, v13

    .line 65
    add-float/2addr v14, v12

    .line 67
    mul-float/2addr v14, v9

    .line 68
    mul-float v12, v6, v6

    .line 69
    mul-float/2addr v12, v6

    .line 71
    add-float/2addr v14, v12

    .line 72
    sub-float v15, v14, v5

    .line 73
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 75
    move-result v15

    .line 78
    move/from16 v16, v14

    .line 79
    float-to-double v13, v15

    .line 81
    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 82
    cmpg-double v13, v13, v17

    .line 87
    if-gez v13, :cond_2

    .line 89
    sget-object v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 91
    const/high16 v13, 0x3f000000    # 0.5f

    .line 93
    mul-float/2addr v10, v13

    .line 95
    add-float/2addr v10, v6

    .line 96
    mul-float/2addr v10, v9

    .line 97
    add-float/2addr v10, v12

    .line 98
    aput v10, v3, v2

    .line 99
    move v3, v4

    .line 101
    :goto_2
    sub-float v6, v3, v1

    .line 102
    div-float/2addr v6, v7

    .line 104
    add-float/2addr v6, v1

    .line 105
    mul-float v9, v6, v8

    .line 106
    sub-float v10, v4, v6

    .line 108
    mul-float/2addr v9, v10

    .line 110
    mul-float v12, v10, v13

    .line 111
    add-float/2addr v12, v6

    .line 113
    mul-float/2addr v12, v9

    .line 114
    mul-float v14, v6, v6

    .line 115
    mul-float/2addr v14, v6

    .line 117
    add-float/2addr v12, v14

    .line 118
    sub-float v15, v12, v5

    .line 119
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 121
    move-result v15

    .line 124
    float-to-double v7, v15

    .line 125
    cmpg-double v7, v7, v17

    .line 126
    if-gez v7, :cond_0

    .line 128
    sget-object v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 130
    mul-float/2addr v10, v11

    .line 132
    const v7, 0x3eb33334    # 0.35000002f

    .line 133
    mul-float/2addr v6, v7

    .line 136
    add-float/2addr v6, v10

    .line 137
    mul-float/2addr v6, v9

    .line 138
    add-float/2addr v6, v14

    .line 139
    aput v6, v3, v2

    .line 140
    add-int/lit8 v2, v2, 0x1

    .line 142
    goto :goto_0

    .line 144
    :cond_0
    const v7, 0x3eb33334    # 0.35000002f

    .line 145
    cmpl-float v8, v12, v5

    .line 148
    if-lez v8, :cond_1

    .line 150
    move v3, v6

    .line 152
    goto :goto_3

    .line 153
    :cond_1
    move v1, v6

    .line 154
    :goto_3
    const/high16 v7, 0x40000000    # 2.0f

    .line 155
    const/high16 v8, 0x40400000    # 3.0f

    .line 157
    goto :goto_2

    .line 159
    :cond_2
    cmpl-float v7, v16, v5

    .line 160
    if-lez v7, :cond_3

    .line 162
    move v3, v6

    .line 164
    goto :goto_1

    .line 165
    :cond_3
    move v0, v6

    .line 166
    goto :goto_1

    .line 167
    :cond_4
    sget-object v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 168
    sget-object v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 170
    aput v4, v1, v3

    .line 172
    aput v4, v0, v3

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    .line 5
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 9
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    move-result-object p0

    .line 21
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final computeScrollOffset()Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_5

    .line 7
    iget-boolean v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    goto :goto_2

    .line 13
    :cond_0
    iget-boolean v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    .line 14
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    iput-boolean v3, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 19
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 21
    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 23
    return v3

    .line 25
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 26
    move-result-wide v4

    .line 29
    iget-wide v6, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 30
    sub-long v6, v4, v6

    .line 32
    long-to-float v1, v6

    .line 34
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 35
    div-float/2addr v1, v6

    .line 37
    float-to-double v6, v1

    .line 38
    const-wide v8, 0x3f90624de0000000L    # 0.01600000075995922

    .line 39
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    .line 44
    move-result-wide v6

    .line 47
    const-wide/16 v10, 0x0

    .line 48
    cmpl-double v1, v6, v10

    .line 50
    if-nez v1, :cond_2

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    move-wide v8, v6

    .line 55
    :goto_0
    iput-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 56
    iget-object v10, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    .line 58
    iget-wide v11, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 60
    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringParams:[D

    .line 62
    aget-wide v13, v1, v2

    .line 64
    aget-wide v15, v1, v3

    .line 66
    const/4 v1, 0x2

    .line 68
    new-array v1, v1, [D

    .line 69
    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 71
    aput-wide v4, v1, v2

    .line 73
    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 75
    aput-wide v4, v1, v3

    .line 77
    move-wide/from16 v17, v8

    .line 79
    move-object/from16 v19, v1

    .line 81
    invoke-virtual/range {v10 .. v19}, Lmiuix/animation/physics/SpringOperator;->updateVelocity(DDDD[D)D

    .line 83
    move-result-wide v4

    .line 86
    iget-wide v6, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 87
    mul-double/2addr v8, v4

    .line 89
    add-double/2addr v8, v6

    .line 90
    iput-wide v8, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 91
    iput-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 93
    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 95
    sub-double/2addr v8, v4

    .line 97
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    .line 98
    move-result-wide v4

    .line 101
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 102
    cmpg-double v1, v4, v6

    .line 104
    if-gez v1, :cond_3

    .line 106
    move v2, v3

    .line 108
    :cond_3
    if-eqz v2, :cond_4

    .line 109
    iput-boolean v3, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    .line 111
    goto :goto_1

    .line 113
    :cond_4
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 114
    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 116
    :goto_1
    return v3

    .line 118
    :cond_5
    :goto_2
    return v2
    .line 119
.end method

.method public final startScrollByFling(FII)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 3
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    .line 5
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 7
    float-to-double v0, p1

    .line 9
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 10
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 12
    int-to-float p2, p2

    .line 14
    add-float/2addr p1, p2

    .line 15
    float-to-double p1, p1

    .line 16
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 17
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 19
    move-result-wide p1

    .line 22
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 23
    int-to-double p1, p3

    .line 25
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 26
    new-instance p1, Lmiuix/animation/physics/SpringOperator;

    .line 28
    invoke-direct {p1}, Lmiuix/animation/physics/SpringOperator;-><init>()V

    .line 30
    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    .line 33
    const/4 p2, 0x2

    .line 35
    new-array p3, p2, [D

    .line 36
    iput-object p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringParams:[D

    .line 38
    new-array p0, p2, [F

    .line 40
    fill-array-data p0, :array_0

    .line 42
    invoke-virtual {p1, p0, p3}, Lmiuix/animation/physics/SpringOperator;->getParameters([F[D)V

    .line 45
    return-void

    .line 48
    nop

    .line 49
    :array_0
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3ecccccd    # 0.4f
    .end array-data
    .line 50
.end method
