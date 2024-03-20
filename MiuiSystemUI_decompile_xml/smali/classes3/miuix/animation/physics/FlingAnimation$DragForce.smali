.class final Lmiuix/animation/physics/FlingAnimation$DragForce;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiuix/animation/physics/Force;


# static fields
.field private static final DEFAULT_FRICTION:F = -4.2f

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:F = 62.5f


# instance fields
.field private mFriction:F

.field private final mMassState:Lmiuix/animation/physics/DynamicAnimation$MassState;

.field private mVelocityThreshold:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3f79999a    # -4.2f

    .line 2
    iput v0, p0, Lmiuix/animation/physics/FlingAnimation$DragForce;->mFriction:F

    .line 3
    new-instance v0, Lmiuix/animation/physics/DynamicAnimation$MassState;

    invoke-direct {v0}, Lmiuix/animation/physics/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiuix/animation/physics/DynamicAnimation$MassState;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/animation/physics/FlingAnimation$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lmiuix/animation/physics/FlingAnimation$DragForce;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcceleration(FF)F
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/animation/physics/FlingAnimation$DragForce;->mFriction:F

    .line 2
    mul-float/2addr p2, p0

    .line 4
    return p2
    .line 5
.end method

.method public getFrictionScalar()F
    .locals 1

    .line 1
    iget p0, p0, Lmiuix/animation/physics/FlingAnimation$DragForce;->mFriction:F

    .line 2
    const v0, -0x3f79999a    # -4.2f

    .line 4
    div-float/2addr p0, v0

    .line 7
    return p0
    .line 8
.end method

.method public isAtEquilibrium(FF)Z
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 2
    move-result p1

    .line 5
    iget p0, p0, Lmiuix/animation/physics/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 6
    cmpg-float p0, p1, p0

    .line 8
    if-gez p0, :cond_0

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

.method public setFrictionScalar(F)V
    .locals 1

    .line 1
    const v0, -0x3f79999a    # -4.2f

    .line 2
    mul-float/2addr p1, v0

    .line 5
    iput p1, p0, Lmiuix/animation/physics/FlingAnimation$DragForce;->mFriction:F

    .line 6
    return-void
    .line 8
.end method

.method public setValueThreshold(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x427a0000    # 62.5f

    .line 2
    mul-float/2addr p1, v0

    .line 4
    iput p1, p0, Lmiuix/animation/physics/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 5
    return-void
    .line 7
.end method

.method public updateValueAndVelocity(FFJ)Lmiuix/animation/physics/DynamicAnimation$MassState;
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiuix/animation/physics/DynamicAnimation$MassState;

    .line 2
    float-to-double v1, p2

    .line 4
    long-to-float p3, p3

    .line 5
    const/high16 p4, 0x447a0000    # 1000.0f

    .line 6
    div-float v3, p3, p4

    .line 8
    iget v4, p0, Lmiuix/animation/physics/FlingAnimation$DragForce;->mFriction:F

    .line 10
    mul-float/2addr v3, v4

    .line 12
    float-to-double v3, v3

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    .line 14
    move-result-wide v3

    .line 17
    mul-double/2addr v3, v1

    .line 18
    double-to-float v1, v3

    .line 19
    iput v1, v0, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    .line 20
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiuix/animation/physics/DynamicAnimation$MassState;

    .line 22
    iget v1, p0, Lmiuix/animation/physics/FlingAnimation$DragForce;->mFriction:F

    .line 24
    div-float v2, p2, v1

    .line 26
    sub-float/2addr p1, v2

    .line 28
    float-to-double v2, p1

    .line 29
    div-float/2addr p2, v1

    .line 30
    float-to-double p1, p2

    .line 31
    mul-float/2addr v1, p3

    .line 32
    div-float/2addr v1, p4

    .line 33
    float-to-double p3, v1

    .line 34
    invoke-static {p3, p4}, Ljava/lang/Math;->exp(D)D

    .line 35
    move-result-wide p3

    .line 38
    mul-double/2addr p3, p1

    .line 39
    add-double/2addr p3, v2

    .line 40
    double-to-float p1, p3

    .line 41
    iput p1, v0, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    .line 42
    iget-object p1, p0, Lmiuix/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiuix/animation/physics/DynamicAnimation$MassState;

    .line 44
    iget p2, p1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    .line 46
    iget p1, p1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    .line 48
    invoke-virtual {p0, p2, p1}, Lmiuix/animation/physics/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    .line 50
    move-result p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lmiuix/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiuix/animation/physics/DynamicAnimation$MassState;

    .line 56
    const/4 p2, 0x0

    .line 58
    iput p2, p1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    .line 59
    :cond_0
    iget-object p0, p0, Lmiuix/animation/physics/FlingAnimation$DragForce;->mMassState:Lmiuix/animation/physics/DynamicAnimation$MassState;

    .line 61
    return-object p0
    .line 63
.end method
