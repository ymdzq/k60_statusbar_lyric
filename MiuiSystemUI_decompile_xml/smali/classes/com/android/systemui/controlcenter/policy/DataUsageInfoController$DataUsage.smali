.class public final Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final billType:I

.field public final billValue:Ljava/lang/String;

.field public final simSlot:I

.field public final trafficType:I

.field public final trafficUnit:I

.field public final trafficValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->simSlot:I

    .line 5
    iput p2, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficType:I

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 9
    iput p5, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficUnit:I

    .line 11
    iput p6, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->billType:I

    .line 13
    iput-object p4, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->billValue:Ljava/lang/String;

    .line 15
    return-void
    .line 17
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
    instance-of v1, p1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;

    .line 12
    iget v1, p1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->simSlot:I

    .line 14
    iget v3, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->simSlot:I

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficType:I

    .line 21
    iget v3, p1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficType:I

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 28
    iget-object v3, p1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 30
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    return v2

    .line 38
    :cond_4
    iget v1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficUnit:I

    .line 39
    iget v3, p1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficUnit:I

    .line 41
    if-eq v1, v3, :cond_5

    .line 43
    return v2

    .line 45
    :cond_5
    iget v1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->billType:I

    .line 46
    iget v3, p1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->billType:I

    .line 48
    if-eq v1, v3, :cond_6

    .line 50
    return v2

    .line 52
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->billValue:Ljava/lang/String;

    .line 53
    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->billValue:Ljava/lang/String;

    .line 55
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    move-result p0

    .line 60
    if-nez p0, :cond_7

    .line 61
    return v2

    .line 63
    :cond_7
    return v0
    .line 64
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->simSlot:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficType:I

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 19
    if-nez v2, :cond_0

    .line 21
    move v2, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 25
    move-result v2

    .line 28
    :goto_0
    add-int/2addr v0, v2

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget v2, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficUnit:I

    .line 32
    const/16 v3, 0x1f

    .line 34
    invoke-static {v2, v0, v3}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 36
    move-result v0

    .line 39
    iget v2, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->billType:I

    .line 40
    invoke-static {v2, v0, v3}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 42
    move-result v0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->billValue:Ljava/lang/String;

    .line 46
    if-nez p0, :cond_1

    .line 48
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 51
    move-result v1

    .line 54
    :goto_1
    add-int/2addr v0, v1

    .line 55
    return v0
    .line 56
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "DataUsage(simSlot="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->simSlot:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", trafficType="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficType:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", trafficValue="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficValue:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", trafficUnit="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->trafficUnit:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", billType="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->billType:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", billValue="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->billValue:Ljava/lang/String;

    .line 59
    const-string v1, ")"

    .line 61
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    return-object p0
    .line 67
.end method
