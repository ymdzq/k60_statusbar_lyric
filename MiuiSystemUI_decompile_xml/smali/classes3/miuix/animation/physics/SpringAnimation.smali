.class public final Lmiuix/animation/physics/SpringAnimation;
.super Lmiuix/animation/physics/DynamicAnimation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Lmiuix/animation/physics/SpringForce;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 7
    iput p1, p0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 11
    iput p1, p0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    .line 13
    new-instance p1, Lmiuix/animation/physics/SpringForce;

    invoke-direct {p1, p3}, Lmiuix/animation/physics/SpringForce;-><init>(F)V

    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/property/FloatValueHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Lmiuix/animation/property/FloatValueHolder;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput p1, p0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method private sanityCheck()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    .line 6
    move-result v0

    .line 9
    float-to-double v0, v0

    .line 10
    iget v2, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 11
    float-to-double v2, v2

    .line 13
    cmpl-double v2, v0, v2

    .line 14
    if-gtz v2, :cond_1

    .line 16
    iget p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    .line 18
    float-to-double v2, p0

    .line 20
    cmpg-double p0, v0, v2

    .line 21
    if-ltz p0, :cond_0

    .line 23
    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 26
    const-string v0, "Final position of the spring cannot be less than the min value."

    .line 28
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 34
    const-string v0, "Final position of the spring cannot be greater than the max value."

    .line 36
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0

    .line 41
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 42
    const-string v0, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    .line 44
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0
    .line 49
.end method


# virtual methods
.method public animateToFinalPosition(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iput p1, p0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 11
    if-nez v0, :cond_1

    .line 13
    new-instance v0, Lmiuix/animation/physics/SpringForce;

    .line 15
    invoke-direct {v0, p1}, Lmiuix/animation/physics/SpringForce;-><init>(F)V

    .line 17
    iput-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 20
    :cond_1
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 22
    invoke-virtual {v0, p1}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    .line 24
    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 27
    :goto_0
    return-void
    .line 30
.end method

.method public canSkipToEnd()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 2
    iget-wide v0, p0, Lmiuix/animation/physics/SpringForce;->mDampingRatio:D

    .line 4
    const-wide/16 v2, 0x0

    .line 6
    cmpl-double p0, v0, v2

    .line 8
    if-lez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public getAcceleration(FF)F
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 2
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/physics/SpringForce;->getAcceleration(FF)F

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getSpring()Lmiuix/animation/physics/SpringForce;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 2
    return-object p0
    .line 4
.end method

.method public isAtEquilibrium(FF)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 2
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/physics/SpringForce;->isAtEquilibrium(FF)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public setSpring(Lmiuix/animation/physics/SpringForce;)Lmiuix/animation/physics/SpringAnimation;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 2
    return-object p0
    .line 4
.end method

.method public setValueThreshold(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public skipToEnd()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->canSkipToEnd()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getAnimationHandler()Lmiuix/animation/physics/AnimationHandler;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lmiuix/animation/physics/AnimationHandler;->isCurrentThread()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 18
    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    .line 23
    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 26
    const-string v0, "Animations may only be started on the same thread as the animation handler"

    .line 28
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0

    .line 33
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 34
    const-string v0, "Spring animations can only come to an end when there is damping"

    .line 36
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0
    .line 41
.end method

.method public start()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lmiuix/animation/physics/SpringAnimation;->sanityCheck()V

    .line 2
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 5
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getValueThreshold()F

    .line 7
    move-result v1

    .line 10
    float-to-double v1, v1

    .line 11
    invoke-virtual {v0, v1, v2}, Lmiuix/animation/physics/SpringForce;->setValueThreshold(D)V

    .line 12
    invoke-super {p0}, Lmiuix/animation/physics/DynamicAnimation;->start()V

    .line 15
    return-void
    .line 18
.end method

.method public updateValueAndVelocity(J)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 9
    if-eqz v1, :cond_1

    .line 12
    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    .line 14
    cmpl-float v6, v1, v5

    .line 16
    if-eqz v6, :cond_0

    .line 18
    iget-object v6, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 20
    invoke-virtual {v6, v1}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    .line 22
    iput v5, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    .line 25
    :cond_0
    iget-object v1, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 27
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    .line 29
    move-result v1

    .line 32
    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 33
    iput v4, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 35
    iput-boolean v3, v0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    .line 37
    return v2

    .line 39
    :cond_1
    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    .line 40
    cmpl-float v1, v1, v5

    .line 42
    if-eqz v1, :cond_2

    .line 44
    iget-object v1, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 46
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    .line 48
    iget-object v6, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 51
    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 53
    float-to-double v7, v1

    .line 55
    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 56
    float-to-double v9, v1

    .line 58
    const-wide/16 v11, 0x2

    .line 59
    div-long v18, p1, v11

    .line 61
    move-wide/from16 v11, v18

    .line 63
    invoke-virtual/range {v6 .. v12}, Lmiuix/animation/physics/SpringForce;->updateValues(DDJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    .line 65
    move-result-object v1

    .line 68
    iget-object v6, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 69
    iget v7, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    .line 71
    invoke-virtual {v6, v7}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    .line 73
    iput v5, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    .line 76
    iget-object v13, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 78
    iget v5, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    .line 80
    float-to-double v14, v5

    .line 82
    iget v1, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    .line 83
    float-to-double v5, v1

    .line 85
    move-wide/from16 v16, v5

    .line 86
    invoke-virtual/range {v13 .. v19}, Lmiuix/animation/physics/SpringForce;->updateValues(DDJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    .line 88
    move-result-object v1

    .line 91
    iget v5, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    .line 92
    iput v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 94
    iget v1, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    .line 96
    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 98
    goto :goto_0

    .line 100
    :cond_2
    iget-object v13, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 101
    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 103
    float-to-double v14, v1

    .line 105
    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 106
    float-to-double v5, v1

    .line 108
    move-wide/from16 v16, v5

    .line 109
    move-wide/from16 v18, p1

    .line 111
    invoke-virtual/range {v13 .. v19}, Lmiuix/animation/physics/SpringForce;->updateValues(DDJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    .line 113
    move-result-object v1

    .line 116
    iget v5, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    .line 117
    iput v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 119
    iget v1, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    .line 121
    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 123
    :goto_0
    iget v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 125
    iget v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    .line 127
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    .line 129
    move-result v1

    .line 132
    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 133
    iget v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 135
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    .line 137
    move-result v1

    .line 140
    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 141
    iget v5, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 143
    invoke-virtual {v0, v1, v5}, Lmiuix/animation/physics/SpringAnimation;->isAtEquilibrium(FF)Z

    .line 145
    move-result v1

    .line 148
    if-eqz v1, :cond_3

    .line 149
    iget-object v1, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    .line 151
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    .line 153
    move-result v1

    .line 156
    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 157
    iput v4, v0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 159
    return v2

    .line 161
    :cond_3
    return v3
    .line 162
.end method
