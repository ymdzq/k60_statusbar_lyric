.class public final Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final friction:F

.field public max:F

.field public min:F

.field public startVelocity:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    .line 5
    iput p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    .line 7
    iput p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    .line 9
    iput p4, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    .line 11
    return-void
    .line 13
.end method


# virtual methods
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
    instance-of v1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 12
    iget v1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    .line 14
    iget v3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

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
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    .line 25
    iget v3, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

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
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    .line 36
    iget v3, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

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
    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    .line 47
    iget p1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

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
    iget v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 14
    move-result v0

    .line 17
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    .line 18
    invoke-static {v1, v0, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 20
    move-result v0

    .line 23
    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

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
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    .line 2
    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    .line 4
    iget v2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    const-string v4, "FlingConfig(friction="

    .line 10
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    .line 15
    const-string v4, ", min="

    .line 17
    const-string v5, ", max="

    .line 19
    invoke-static {v3, p0, v4, v0, v5}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    const-string p0, ", startVelocity="

    .line 27
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    const-string p0, ")"

    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    return-object p0
    .line 44
.end method
