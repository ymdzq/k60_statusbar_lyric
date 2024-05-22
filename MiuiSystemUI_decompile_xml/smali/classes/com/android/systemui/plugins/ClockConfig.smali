.class public final Lcom/android/systemui/plugins/ClockConfig;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private final isReactiveToTone:Z

.field private final useAlternateSmartspaceAODTransition:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/android/systemui/plugins/ClockConfig;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/plugins/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/plugins/ClockConfig;->isReactiveToTone:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/ClockConfig;-><init>(ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/plugins/ClockConfig;ZZILjava/lang/Object;)Lcom/android/systemui/plugins/ClockConfig;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    if-eqz p4, :cond_0

    .line 4
    iget-boolean p1, p0, Lcom/android/systemui/plugins/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    if-eqz p3, :cond_1

    .line 10
    iget-boolean p2, p0, Lcom/android/systemui/plugins/ClockConfig;->isReactiveToTone:Z

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/plugins/ClockConfig;->copy(ZZ)Lcom/android/systemui/plugins/ClockConfig;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/plugins/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    .line 2
    return p0
    .line 4
.end method

.method public final component2()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/plugins/ClockConfig;->isReactiveToTone:Z

    .line 2
    return p0
    .line 4
.end method

.method public final copy(ZZ)Lcom/android/systemui/plugins/ClockConfig;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/ClockConfig;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/ClockConfig;-><init>(ZZ)V

    .line 4
    return-object p0
    .line 7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/plugins/ClockConfig;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/plugins/ClockConfig;

    .line 12
    iget-boolean v1, p0, Lcom/android/systemui/plugins/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    .line 14
    iget-boolean v3, p1, Lcom/android/systemui/plugins/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    .line 16
    if-eq v1, v3, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/plugins/ClockConfig;->isReactiveToTone:Z

    .line 21
    iget-boolean p1, p1, Lcom/android/systemui/plugins/ClockConfig;->isReactiveToTone:Z

    .line 23
    if-eq p0, p1, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    return v0
    .line 28
.end method

.method public final getUseAlternateSmartspaceAODTransition()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/plugins/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/plugins/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    move v0, v1

    .line 7
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/plugins/ClockConfig;->isReactiveToTone:Z

    .line 10
    if-eqz p0, :cond_1

    .line 12
    goto :goto_0

    .line 14
    :cond_1
    move v1, p0

    .line 15
    :goto_0
    add-int/2addr v0, v1

    .line 16
    return v0
    .line 17
.end method

.method public final isReactiveToTone()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/plugins/ClockConfig;->isReactiveToTone:Z

    .line 2
    return p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/plugins/ClockConfig;->useAlternateSmartspaceAODTransition:Z

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/plugins/ClockConfig;->isReactiveToTone:Z

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string v2, "ClockConfig(useAlternateSmartspaceAODTransition="

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, ", isReactiveToTone="

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string p0, ")"

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    return-object p0
    .line 33
.end method
