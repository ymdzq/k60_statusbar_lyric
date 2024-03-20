.class public final Landroidx/dynamicanimation/animation/FlingAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V

    .line 2
    new-instance p1, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 5
    invoke-direct {p1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    .line 7
    iput-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 10
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getValueThreshold()F

    .line 12
    move-result p0

    .line 15
    const/high16 p2, 0x427a0000    # 62.5f

    .line 16
    mul-float/2addr p0, p2

    .line 18
    iput p0, p1, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final setFriction(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-lez v0, :cond_0

    .line 5
    const v0, -0x3f79999a    # -4.2f

    .line 7
    mul-float/2addr p1, v0

    .line 10
    iget-object p0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 11
    iput p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 13
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string p1, "Friction must be positive"

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
    .line 23
.end method

.method public final setValueThreshold(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x427a0000    # 62.5f

    .line 2
    mul-float/2addr p1, v0

    .line 4
    iget-object p0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 5
    iput p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 7
    return-void
    .line 9
.end method

.method public final updateValueAndVelocity(J)Z
    .locals 6

    .line 1
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 2
    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 4
    float-to-double v2, v1

    .line 6
    long-to-float p1, p1

    .line 7
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 8
    div-float/2addr p1, p2

    .line 10
    iget-object p2, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 11
    iget v4, p2, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 13
    mul-float/2addr p1, v4

    .line 15
    float-to-double v4, p1

    .line 16
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    .line 17
    move-result-wide v4

    .line 20
    mul-double/2addr v4, v2

    .line 21
    double-to-float p1, v4

    .line 22
    iget-object v2, p2, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 23
    iput p1, v2, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 25
    sub-float v1, p1, v1

    .line 27
    iget v3, p2, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 29
    div-float/2addr v1, v3

    .line 31
    add-float/2addr v1, v0

    .line 32
    iput v1, v2, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 33
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 35
    move-result p1

    .line 38
    iget v0, p2, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 39
    cmpg-float p1, p1, v0

    .line 41
    const/4 v0, 0x1

    .line 43
    const/4 v1, 0x0

    .line 44
    if-gez p1, :cond_0

    .line 45
    move p1, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move p1, v1

    .line 49
    :goto_0
    if-eqz p1, :cond_1

    .line 50
    const/4 p1, 0x0

    .line 52
    iput p1, v2, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 53
    :cond_1
    iget p1, v2, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 55
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 57
    iget v2, v2, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 59
    iput v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 61
    iget v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 63
    cmpg-float v4, p1, v3

    .line 65
    if-gez v4, :cond_2

    .line 67
    iput v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 69
    return v0

    .line 71
    :cond_2
    iget v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 72
    cmpl-float p1, p1, v3

    .line 74
    if-lez p1, :cond_3

    .line 76
    iput v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 78
    return v0

    .line 80
    :cond_3
    if-gez p1, :cond_6

    .line 81
    if-lez v4, :cond_6

    .line 83
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 85
    move-result p0

    .line 88
    iget p1, p2, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 89
    cmpg-float p0, p0, p1

    .line 91
    if-gez p0, :cond_4

    .line 93
    move p0, v0

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    move p0, v1

    .line 97
    :goto_1
    if-eqz p0, :cond_5

    .line 98
    goto :goto_2

    .line 100
    :cond_5
    move p0, v1

    .line 101
    goto :goto_3

    .line 102
    :cond_6
    :goto_2
    move p0, v0

    .line 103
    :goto_3
    if-eqz p0, :cond_7

    .line 104
    return v0

    .line 106
    :cond_7
    return v1
    .line 107
.end method
