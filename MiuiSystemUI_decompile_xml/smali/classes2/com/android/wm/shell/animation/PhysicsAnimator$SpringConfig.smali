.class public final Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final dampingRatio:F

.field public finalPosition:F

.field public startVelocity:F

.field public final stiffness:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/animation/PhysicsAnimatorKt;->animators:Ljava/util/WeakHashMap;

    const v0, -0x800001

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    .line 5
    iput p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    .line 6
    iput p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    .line 7
    iput p4, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    return-void
.end method


# virtual methods
.method public final applyToAnimation$frameworks__base__libs__WindowManager__Shell__android_common__WindowManager_Shell(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 6
    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 8
    :cond_0
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    .line 11
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 13
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    .line 16
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 18
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    .line 21
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 23
    iput-object v0, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 26
    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    .line 28
    const/4 v0, 0x0

    .line 30
    cmpg-float v0, p0, v0

    .line 31
    if-nez v0, :cond_1

    .line 33
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    if-nez v0, :cond_2

    .line 38
    iput p0, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 40
    :cond_2
    return-void
    .line 42
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 12
    iget v1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    .line 14
    iget v3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    .line 16
    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    .line 25
    iget v3, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    .line 27
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 29
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    .line 36
    iget v3, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    .line 38
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 40
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    return v2

    .line 46
    :cond_4
    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    .line 47
    iget p1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    .line 49
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 51
    move-result p0

    .line 54
    if-eqz p0, :cond_5

    .line 55
    return v2

    .line 57
    :cond_5
    return v0
    .line 58
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 14
    move-result v0

    .line 17
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    .line 18
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 20
    move-result v0

    .line 23
    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    .line 24
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 26
    move-result p0

    .line 29
    add-int/2addr p0, v0

    .line 30
    return p0
    .line 31
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    .line 2
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    const-string v3, "SpringConfig(stiffness="

    .line 8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget v3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    const-string v3, ", dampingRatio="

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    .line 23
    const-string v3, ", startVelocity="

    .line 25
    const-string v4, ", finalPosition="

    .line 27
    invoke-static {v2, p0, v3, v0, v4}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    const-string p0, ")"

    .line 35
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    return-object p0
    .line 44
.end method
