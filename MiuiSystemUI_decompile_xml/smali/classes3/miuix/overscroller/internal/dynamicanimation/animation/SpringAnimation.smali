.class public final Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;
.super Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mPendingPosition:F

.field public mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;


# direct methods
.method public constructor <init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 6
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final start()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-wide v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 6
    double-to-float v1, v1

    .line 8
    float-to-double v1, v1

    .line 9
    iget v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 10
    float-to-double v3, v3

    .line 12
    cmpl-double v3, v1, v3

    .line 13
    if-gtz v3, :cond_1

    .line 15
    iget v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 17
    float-to-double v3, v3

    .line 19
    cmpg-double v1, v1, v3

    .line 20
    if-ltz v1, :cond_0

    .line 22
    iget v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 24
    const/high16 v2, 0x3f400000    # 0.75f

    .line 26
    mul-float/2addr v1, v2

    .line 28
    float-to-double v1, v1

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 30
    move-result-wide v1

    .line 33
    iput-wide v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 34
    const-wide v3, 0x404f400000000000L    # 62.5

    .line 36
    mul-double/2addr v1, v3

    .line 41
    iput-wide v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 42
    invoke-super {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->start()V

    .line 44
    return-void

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 48
    const-string v0, "Final position of the spring cannot be less than the min value."

    .line 50
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 56
    const-string v0, "Final position of the spring cannot be greater than the max value."

    .line 58
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0

    .line 63
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 64
    const-string v0, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    .line 66
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p0
    .line 71
.end method

.method public final updateValueAndVelocity(J)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 4
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 6
    cmpl-float v1, v1, v2

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget-object v3, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 13
    iget-wide v4, v3, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 15
    iget v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 17
    float-to-double v4, v1

    .line 19
    iget v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 20
    float-to-double v6, v1

    .line 22
    const-wide/16 v8, 0x2

    .line 23
    div-long v15, p1, v8

    .line 25
    move-wide v8, v15

    .line 27
    invoke-virtual/range {v3 .. v9}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 28
    move-result-object v1

    .line 31
    iget-object v10, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 32
    iget v3, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 34
    float-to-double v3, v3

    .line 36
    iput-wide v3, v10, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 37
    iput v2, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    .line 39
    iget v2, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 41
    float-to-double v11, v2

    .line 43
    iget v1, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 44
    float-to-double v13, v1

    .line 46
    invoke-virtual/range {v10 .. v16}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 47
    move-result-object v1

    .line 50
    iget v2, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 51
    iput v2, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 53
    iget v1, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 55
    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 57
    goto :goto_0

    .line 59
    :cond_0
    iget-object v10, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 60
    iget v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 62
    float-to-double v11, v1

    .line 64
    iget v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 65
    float-to-double v13, v1

    .line 67
    move-wide/from16 v15, p1

    .line 68
    invoke-virtual/range {v10 .. v16}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->updateValues(DDJ)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 70
    move-result-object v1

    .line 73
    iget v2, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 74
    iput v2, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 76
    iget v1, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 78
    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 80
    :goto_0
    iget v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 82
    iget v2, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 84
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 86
    move-result v1

    .line 89
    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 90
    iget v2, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 92
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 94
    move-result v1

    .line 97
    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 98
    iget v2, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 100
    iget-object v3, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 102
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 107
    move-result v2

    .line 110
    float-to-double v4, v2

    .line 111
    iget-wide v6, v3, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 112
    cmpg-double v2, v4, v6

    .line 114
    const/4 v4, 0x1

    .line 116
    const/4 v5, 0x0

    .line 117
    if-gez v2, :cond_1

    .line 118
    iget-wide v6, v3, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 120
    double-to-float v2, v6

    .line 122
    sub-float/2addr v1, v2

    .line 123
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 124
    move-result v1

    .line 127
    float-to-double v1, v1

    .line 128
    iget-wide v6, v3, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 129
    cmpg-double v1, v1, v6

    .line 131
    if-gez v1, :cond_1

    .line 133
    move v1, v4

    .line 135
    goto :goto_1

    .line 136
    :cond_1
    move v1, v5

    .line 137
    :goto_1
    if-eqz v1, :cond_2

    .line 138
    iget-object v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->mSpring:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 140
    iget-wide v1, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 142
    double-to-float v1, v1

    .line 144
    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 145
    const/4 v1, 0x0

    .line 147
    iput v1, v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 148
    return v4

    .line 150
    :cond_2
    return v5
    .line 151
.end method
