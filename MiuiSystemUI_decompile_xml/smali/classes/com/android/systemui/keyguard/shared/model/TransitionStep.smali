.class public final Lcom/android/systemui/keyguard/shared/model/TransitionStep;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public final ownerName:Ljava/lang/String;

.field public final to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public final transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

.field public final value:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;FLcom/android/systemui/keyguard/shared/model/TransitionState;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 7
    iput p3, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    .line 9
    iput-object p4, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->ownerName:Ljava/lang/String;

    .line 13
    return-void
    .line 15
.end method

.method public static copy$default(Lcom/android/systemui/keyguard/shared/model/TransitionStep;FLcom/android/systemui/keyguard/shared/model/TransitionState;I)Lcom/android/systemui/keyguard/shared/model/TransitionStep;
    .locals 8

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 7
    move-object v3, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v3, v1

    .line 11
    :goto_0
    and-int/lit8 v0, p3, 0x2

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 16
    move-object v4, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v4, v1

    .line 20
    :goto_1
    and-int/lit8 v0, p3, 0x4

    .line 21
    if-eqz v0, :cond_2

    .line 23
    iget p1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    .line 25
    :cond_2
    move v5, p1

    .line 27
    and-int/lit8 p1, p3, 0x8

    .line 28
    if-eqz p1, :cond_3

    .line 30
    iget-object p2, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 32
    :cond_3
    move-object v6, p2

    .line 34
    and-int/lit8 p1, p3, 0x10

    .line 35
    if-eqz p1, :cond_4

    .line 37
    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->ownerName:Ljava/lang/String;

    .line 39
    :cond_4
    move-object v7, v1

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    new-instance p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 45
    move-object v2, p0

    .line 47
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/keyguard/shared/model/TransitionStep;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;FLcom/android/systemui/keyguard/shared/model/TransitionState;Ljava/lang/String;)V

    .line 48
    return-object p0
    .line 51
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
    instance-of v1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 12
    iget-object v1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 14
    iget-object v3, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 21
    iget-object v3, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    .line 28
    iget v3, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    .line 30
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 39
    iget-object v3, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 41
    if-eq v1, v3, :cond_5

    .line 43
    return v2

    .line 45
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->ownerName:Ljava/lang/String;

    .line 46
    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->ownerName:Ljava/lang/String;

    .line 48
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result p0

    .line 53
    if-nez p0, :cond_6

    .line 54
    return v2

    .line 56
    :cond_6
    return v0
    .line 57
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    .line 12
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    iget v0, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    .line 19
    const/16 v2, 0x1f

    .line 21
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams$$ExternalSyntheticOutline0;->m(FII)I

    .line 23
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    .line 29
    move-result v1

    .line 32
    add-int/2addr v1, v0

    .line 33
    mul-int/lit8 v1, v1, 0x1f

    .line 34
    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->ownerName:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 38
    move-result p0

    .line 41
    add-int/2addr p0, v1

    .line 42
    return p0
    .line 43
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "TransitionStep(from="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", to="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", value="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", transitionState="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", ownerName="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->ownerName:Ljava/lang/String;

    .line 49
    const-string v1, ")"

    .line 51
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    return-object p0
    .line 57
.end method
