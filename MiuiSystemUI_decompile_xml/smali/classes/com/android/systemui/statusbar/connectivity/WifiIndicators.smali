.class public final Lcom/android/systemui/statusbar/connectivity/WifiIndicators;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final activityIn:Z

.field public final activityOut:Z

.field public final description:Ljava/lang/String;

.field public final enabled:Z

.field public final isTransient:Z

.field public final level:I

.field public final macAddress:Landroid/net/MacAddress;

.field public final meteredHint:Z

.field public final noNetwork:Z

.field public final qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

.field public final statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

.field public final statusLabel:Ljava/lang/String;

.field public final wifiStandard:I


# direct methods
.method public constructor <init>(ZLcom/android/systemui/statusbar/connectivity/IconState;Lcom/android/systemui/statusbar/connectivity/IconState;ZZLjava/lang/String;ZLjava/lang/String;ZIZLandroid/net/MacAddress;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->enabled:Z

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->activityIn:Z

    .line 11
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->activityOut:Z

    .line 13
    iput-object p6, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->description:Ljava/lang/String;

    .line 15
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->isTransient:Z

    .line 17
    iput-object p8, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->statusLabel:Ljava/lang/String;

    .line 19
    iput-boolean p9, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->noNetwork:Z

    .line 21
    iput p10, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->wifiStandard:I

    .line 23
    iput-boolean p11, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->meteredHint:Z

    .line 25
    iput-object p12, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->macAddress:Landroid/net/MacAddress;

    .line 27
    iput p13, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->level:I

    .line 29
    return-void
    .line 31
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
    instance-of v1, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;

    .line 12
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->enabled:Z

    .line 14
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->enabled:Z

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 21
    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 23
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 32
    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 34
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    return v2

    .line 42
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->activityIn:Z

    .line 43
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->activityIn:Z

    .line 45
    if-eq v1, v3, :cond_5

    .line 47
    return v2

    .line 49
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->activityOut:Z

    .line 50
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->activityOut:Z

    .line 52
    if-eq v1, v3, :cond_6

    .line 54
    return v2

    .line 56
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->description:Ljava/lang/String;

    .line 57
    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->description:Ljava/lang/String;

    .line 59
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 64
    if-nez v1, :cond_7

    .line 65
    return v2

    .line 67
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->isTransient:Z

    .line 68
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->isTransient:Z

    .line 70
    if-eq v1, v3, :cond_8

    .line 72
    return v2

    .line 74
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->statusLabel:Ljava/lang/String;

    .line 75
    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->statusLabel:Ljava/lang/String;

    .line 77
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 82
    if-nez v1, :cond_9

    .line 83
    return v2

    .line 85
    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->noNetwork:Z

    .line 86
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->noNetwork:Z

    .line 88
    if-eq v1, v3, :cond_a

    .line 90
    return v2

    .line 92
    :cond_a
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->wifiStandard:I

    .line 93
    iget v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->wifiStandard:I

    .line 95
    if-eq v1, v3, :cond_b

    .line 97
    return v2

    .line 99
    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->meteredHint:Z

    .line 100
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->meteredHint:Z

    .line 102
    if-eq v1, v3, :cond_c

    .line 104
    return v2

    .line 106
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->macAddress:Landroid/net/MacAddress;

    .line 107
    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->macAddress:Landroid/net/MacAddress;

    .line 109
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    move-result v1

    .line 114
    if-nez v1, :cond_d

    .line 115
    return v2

    .line 117
    :cond_d
    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->level:I

    .line 118
    iget p1, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->level:I

    .line 120
    if-eq p0, p1, :cond_e

    .line 122
    return v2

    .line 124
    :cond_e
    return v0
    .line 125
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->enabled:Z

    .line 3
    if-eqz v1, :cond_0

    .line 5
    move v1, v0

    .line 7
    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 8
    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 11
    if-nez v3, :cond_1

    .line 13
    move v3, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/connectivity/IconState;->hashCode()I

    .line 17
    move-result v3

    .line 20
    :goto_0
    add-int/2addr v1, v3

    .line 21
    mul-int/lit8 v1, v1, 0x1f

    .line 22
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 24
    if-nez v3, :cond_2

    .line 26
    move v3, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/connectivity/IconState;->hashCode()I

    .line 30
    move-result v3

    .line 33
    :goto_1
    add-int/2addr v1, v3

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 35
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->activityIn:Z

    .line 37
    if-eqz v3, :cond_3

    .line 39
    move v3, v0

    .line 41
    :cond_3
    add-int/2addr v1, v3

    .line 42
    mul-int/lit8 v1, v1, 0x1f

    .line 43
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->activityOut:Z

    .line 45
    if-eqz v3, :cond_4

    .line 47
    move v3, v0

    .line 49
    :cond_4
    add-int/2addr v1, v3

    .line 50
    mul-int/lit8 v1, v1, 0x1f

    .line 51
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->description:Ljava/lang/String;

    .line 53
    if-nez v3, :cond_5

    .line 55
    move v3, v2

    .line 57
    goto :goto_2

    .line 58
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 59
    move-result v3

    .line 62
    :goto_2
    add-int/2addr v1, v3

    .line 63
    mul-int/lit8 v1, v1, 0x1f

    .line 64
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->isTransient:Z

    .line 66
    if-eqz v3, :cond_6

    .line 68
    move v3, v0

    .line 70
    :cond_6
    add-int/2addr v1, v3

    .line 71
    mul-int/lit8 v1, v1, 0x1f

    .line 72
    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->statusLabel:Ljava/lang/String;

    .line 74
    if-nez v3, :cond_7

    .line 76
    move v3, v2

    .line 78
    goto :goto_3

    .line 79
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 80
    move-result v3

    .line 83
    :goto_3
    add-int/2addr v1, v3

    .line 84
    mul-int/lit8 v1, v1, 0x1f

    .line 85
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->noNetwork:Z

    .line 87
    if-eqz v3, :cond_8

    .line 89
    move v3, v0

    .line 91
    :cond_8
    add-int/2addr v1, v3

    .line 92
    mul-int/lit8 v1, v1, 0x1f

    .line 93
    iget v3, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->wifiStandard:I

    .line 95
    const/16 v4, 0x1f

    .line 97
    invoke-static {v3, v1, v4}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 99
    move-result v1

    .line 102
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->meteredHint:Z

    .line 103
    if-eqz v3, :cond_9

    .line 105
    goto :goto_4

    .line 107
    :cond_9
    move v0, v3

    .line 108
    :goto_4
    add-int/2addr v1, v0

    .line 109
    mul-int/lit8 v1, v1, 0x1f

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->macAddress:Landroid/net/MacAddress;

    .line 112
    if-nez v0, :cond_a

    .line 114
    goto :goto_5

    .line 116
    :cond_a
    invoke-virtual {v0}, Landroid/net/MacAddress;->hashCode()I

    .line 117
    move-result v2

    .line 120
    :goto_5
    add-int/2addr v1, v2

    .line 121
    mul-int/lit8 v1, v1, 0x1f

    .line 122
    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->level:I

    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 126
    move-result p0

    .line 129
    add-int/2addr p0, v1

    .line 130
    return p0
    .line 131
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "WifiIndicators[enabled="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->enabled:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ",statusIcon="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ""

    .line 19
    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 21
    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/connectivity/IconState;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v2, v1

    .line 30
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, ",qsIcon="

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 39
    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/connectivity/IconState;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 46
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ",activityIn="

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->activityIn:Z

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ",activityOut="

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->activityOut:Z

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ",qsDescription="

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->description:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ",isTransient="

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->isTransient:Z

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ",statusLabel="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->statusLabel:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ",noNetwork="

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->noNetwork:Z

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ",wifiStandard="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->wifiStandard:I

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ",meteredHint="

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->meteredHint:Z

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ",macAddress="

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->macAddress:Landroid/net/MacAddress;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, ", level="

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->level:I

    .line 145
    const/16 v1, 0x5d

    .line 147
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 149
    move-result-object p0

    .line 152
    return-object p0
    .line 153
.end method
