.class public final Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final dataUsage:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;

.field public final deviceId:Ljava/lang/String;

.field public final deviceName:Ljava/lang/String;

.field public final state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->deviceId:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->deviceName:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->state:I

    .line 9
    iput-object p4, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->dataUsage:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;

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
    const-class v1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;

    .line 6
    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_2

    .line 21
    return v2

    .line 23
    :cond_2
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;

    .line 24
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->dataUsage:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;

    .line 26
    iget-object v3, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->dataUsage:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;

    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 33
    if-nez v1, :cond_3

    .line 34
    return v2

    .line 36
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->deviceId:Ljava/lang/String;

    .line 37
    iget-object v3, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->deviceId:Ljava/lang/String;

    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 44
    if-nez v1, :cond_4

    .line 45
    return v2

    .line 47
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->deviceName:Ljava/lang/String;

    .line 48
    iget-object v3, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->deviceName:Ljava/lang/String;

    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 55
    if-nez v1, :cond_5

    .line 56
    return v2

    .line 58
    :cond_5
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->state:I

    .line 59
    iget p1, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->state:I

    .line 61
    if-ne p0, p1, :cond_6

    .line 63
    goto :goto_1

    .line 65
    :cond_6
    move v0, v2

    .line 66
    :goto_1
    return v0
    .line 67
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->dataUsage:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;

    .line 3
    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;->hashCode()I

    .line 7
    move-result v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->deviceId:Ljava/lang/String;

    .line 15
    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 19
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v0

    .line 24
    :goto_1
    add-int/2addr v1, v2

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->deviceName:Ljava/lang/String;

    .line 28
    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 32
    move-result v0

    .line 35
    :cond_2
    add-int/2addr v1, v0

    .line 36
    mul-int/lit8 v1, v1, 0x1f

    .line 37
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->state:I

    .line 39
    add-int/2addr v1, p0

    .line 41
    return v1
    .line 42
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    iget v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->state:I

    .line 3
    if-ne v1, v0, :cond_0

    .line 5
    sget-boolean v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->WIFI_ENABLED:Z

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$Companion;->getTetherStateString(Ljava/lang/Integer;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, " "

    .line 17
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->dataUsage:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-boolean p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->WIFI_ENABLED:Z

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p0

    .line 38
    invoke-static {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$Companion;->getTetherStateString(Ljava/lang/Integer;)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    :goto_0
    return-object p0
    .line 43
.end method
