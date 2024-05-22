.class public final Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;
.super Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mFinalValueListener:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;

.field public final mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V

    .line 2
    new-instance p1, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 5
    invoke-direct {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    .line 7
    iput-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 10
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 12
    const/high16 v1, 0x3f400000    # 0.75f

    .line 14
    mul-float/2addr v0, v1

    .line 16
    const/high16 v1, 0x427a0000    # 62.5f

    .line 17
    mul-float/2addr v0, v1

    .line 19
    iput v0, p1, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 20
    iput-object p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFinalValueListener:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final predictNaturalDest()F
    .locals 4

    .line 1
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 4
    move-result v0

    .line 7
    iget v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 8
    iget v2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 10
    iget-object p0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 12
    iget v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 14
    div-float/2addr v2, v3

    .line 16
    sub-float/2addr v1, v2

    .line 17
    iget p0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 18
    invoke-static {v0, p0, v3, v1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 20
    move-result p0

    .line 23
    return p0
    .line 24
.end method

.method public final setMaxValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 2
    return-void
    .line 4
.end method

.method public final setMinValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 2
    return-void
    .line 4
.end method

.method public final setStartVelocity(F)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 2
    return-void
    .line 4
.end method

.method public final setValueThreshold(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x427a0000    # 62.5f

    .line 2
    mul-float/2addr p1, v0

    .line 4
    iget-object p0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 5
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 7
    return-void
    .line 9
.end method

.method public final updateValueAndVelocity(J)Z
    .locals 7

    .line 1
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 2
    iget v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 4
    iget-object v2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFlingForce:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-wide/16 v3, 0x10

    .line 11
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 13
    move-result-wide p1

    .line 16
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 17
    iget-wide v5, v2, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mDragRate:D

    .line 19
    sub-double/2addr v3, v5

    .line 21
    long-to-float p1, p1

    .line 22
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 23
    div-float/2addr p1, p2

    .line 25
    float-to-double v5, p1

    .line 26
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 27
    move-result-wide v3

    .line 30
    float-to-double v5, v1

    .line 31
    mul-double/2addr v5, v3

    .line 32
    double-to-float p2, v5

    .line 33
    iget-object v1, v2, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 34
    iput p2, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 36
    mul-float/2addr p1, p2

    .line 38
    add-float/2addr p1, v0

    .line 39
    iput p1, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 40
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 42
    move-result p1

    .line 45
    iget p2, v2, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 46
    cmpg-float p1, p1, p2

    .line 48
    const/4 p2, 0x1

    .line 50
    const/4 v0, 0x0

    .line 51
    if-gez p1, :cond_0

    .line 52
    move p1, p2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move p1, v0

    .line 56
    :goto_0
    if-eqz p1, :cond_1

    .line 57
    const/4 p1, 0x0

    .line 59
    iput p1, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 60
    :cond_1
    iget p1, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 62
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 64
    iget v1, v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 66
    iput v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 68
    iget v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 70
    cmpg-float v4, p1, v3

    .line 72
    if-gez v4, :cond_2

    .line 74
    iput v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 76
    return p2

    .line 78
    :cond_2
    iget v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 79
    cmpl-float p1, p1, v3

    .line 81
    if-lez p1, :cond_3

    .line 83
    iput v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 85
    return p2

    .line 87
    :cond_3
    if-gez p1, :cond_6

    .line 88
    if-lez v4, :cond_6

    .line 90
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 92
    move-result p1

    .line 95
    iget v1, v2, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 96
    cmpg-float p1, p1, v1

    .line 98
    if-gez p1, :cond_4

    .line 100
    move p1, p2

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    move p1, v0

    .line 104
    :goto_1
    if-eqz p1, :cond_5

    .line 105
    goto :goto_2

    .line 107
    :cond_5
    move p1, v0

    .line 108
    goto :goto_3

    .line 109
    :cond_6
    :goto_2
    move p1, p2

    .line 110
    :goto_3
    if-eqz p1, :cond_7

    .line 111
    iget p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 113
    float-to-int p1, p1

    .line 115
    iget-object p0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->mFinalValueListener:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;

    .line 116
    check-cast p0, Lmiuix/overscroller/widget/DynamicScroller;

    .line 118
    iget-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 120
    double-to-int v1, v1

    .line 122
    add-int/2addr v1, p1

    .line 123
    int-to-double v1, v1

    .line 124
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 125
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 127
    return p2

    .line 129
    :cond_7
    return v0
    .line 130
.end method
