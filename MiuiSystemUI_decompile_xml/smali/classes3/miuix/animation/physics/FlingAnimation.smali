.class public final Lmiuix/animation/physics/FlingAnimation;
.super Lmiuix/animation/physics/DynamicAnimation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private final mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    .line 5
    new-instance p1, Lmiuix/animation/physics/FlingAnimation$DragForce;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;-><init>(Lmiuix/animation/physics/FlingAnimation$1;)V

    iput-object p1, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getValueThreshold()F

    move-result p0

    invoke-virtual {p1, p0}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/property/FloatValueHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Lmiuix/animation/property/FloatValueHolder;)V

    .line 2
    new-instance p1, Lmiuix/animation/physics/FlingAnimation$DragForce;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lmiuix/animation/physics/FlingAnimation$DragForce;-><init>(Lmiuix/animation/physics/FlingAnimation$1;)V

    iput-object p1, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 3
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getValueThreshold()F

    move-result p0

    invoke-virtual {p1, p0}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    return-void
.end method


# virtual methods
.method public getAcceleration(FF)F
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 2
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->getAcceleration(FF)F

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getFriction()F
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 2
    invoke-virtual {p0}, Lmiuix/animation/physics/FlingAnimation$DragForce;->getFrictionScalar()F

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public isAtEquilibrium(FF)Z
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 2
    cmpl-float v0, p1, v0

    .line 4
    if-gez v0, :cond_1

    .line 6
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    .line 8
    cmpg-float v0, p1, v0

    .line 10
    if-lez v0, :cond_1

    .line 12
    iget-object p0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 14
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
    .line 26
.end method

.method public setFriction(F)Lmiuix/animation/physics/FlingAnimation;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setFrictionScalar(F)V

    .line 9
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string p1, "Friction must be positive"

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0
    .line 20
.end method

.method public bridge synthetic setMaxValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/FlingAnimation;->setMaxValue(F)Lmiuix/animation/physics/FlingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setMaxValue(F)Lmiuix/animation/physics/FlingAnimation;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setMaxValue(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/FlingAnimation;->setMinValue(F)Lmiuix/animation/physics/FlingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setMinValue(F)Lmiuix/animation/physics/FlingAnimation;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setMinValue(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/FlingAnimation;->setStartVelocity(F)Lmiuix/animation/physics/FlingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setStartVelocity(F)Lmiuix/animation/physics/FlingAnimation;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method public setValueThreshold(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/FlingAnimation$DragForce;->setValueThreshold(F)V

    .line 4
    return-void
    .line 7
.end method

.method public updateValueAndVelocity(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/FlingAnimation;->mFlingForce:Lmiuix/animation/physics/FlingAnimation$DragForce;

    .line 2
    iget v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 4
    iget v2, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 6
    invoke-virtual {v0, v1, v2, p1, p2}, Lmiuix/animation/physics/FlingAnimation$DragForce;->updateValueAndVelocity(FFJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    .line 8
    move-result-object p1

    .line 11
    iget p2, p1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    .line 12
    iput p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 14
    iget p1, p1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    .line 16
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 18
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    .line 20
    cmpg-float v1, p2, v0

    .line 22
    const/4 v2, 0x1

    .line 24
    if-gez v1, :cond_0

    .line 25
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 27
    return v2

    .line 29
    :cond_0
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 30
    cmpl-float v1, p2, v0

    .line 32
    if-lez v1, :cond_1

    .line 34
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 36
    return v2

    .line 38
    :cond_1
    invoke-virtual {p0, p2, p1}, Lmiuix/animation/physics/FlingAnimation;->isAtEquilibrium(FF)Z

    .line 39
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    return v2

    .line 45
    :cond_2
    const/4 p0, 0x0

    .line 46
    return p0
    .line 47
.end method
