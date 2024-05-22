.class public final Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;
.super Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final isOnlineSignUpForPasspointAccessPoint:Z

.field public final isPasspointAccessPoint:Z

.field public final isValidated:Z

.field public final level:I

.field public final networkId:I

.field public final passpointProviderFriendlyName:Ljava/lang/String;

.field public final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZILjava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->networkId:I

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    .line 7
    iput p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->level:I

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->ssid:Ljava/lang/String;

    .line 11
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isPasspointAccessPoint:Z

    .line 13
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isOnlineSignUpForPasspointAccessPoint:Z

    .line 15
    iput-object p7, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->passpointProviderFriendlyName:Ljava/lang/String;

    .line 17
    if-ltz p3, :cond_0

    .line 19
    const/4 p0, 0x5

    .line 21
    if-ge p3, p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    if-eqz p0, :cond_1

    .line 27
    return-void

    .line 29
    :cond_1
    const-string p0, "0 <= wifi level <= 4 required; level was "

    .line 30
    invoke-static {p0, p3}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 41
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
    .line 45
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
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 12
    iget v1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->networkId:I

    .line 14
    iget v3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->networkId:I

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    .line 21
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->level:I

    .line 28
    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->level:I

    .line 30
    if-eq v1, v3, :cond_4

    .line 32
    return v2

    .line 34
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->ssid:Ljava/lang/String;

    .line 35
    iget-object v3, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->ssid:Ljava/lang/String;

    .line 37
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 42
    if-nez v1, :cond_5

    .line 43
    return v2

    .line 45
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isPasspointAccessPoint:Z

    .line 46
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isPasspointAccessPoint:Z

    .line 48
    if-eq v1, v3, :cond_6

    .line 50
    return v2

    .line 52
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isOnlineSignUpForPasspointAccessPoint:Z

    .line 53
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isOnlineSignUpForPasspointAccessPoint:Z

    .line 55
    if-eq v1, v3, :cond_7

    .line 57
    return v2

    .line 59
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->passpointProviderFriendlyName:Ljava/lang/String;

    .line 60
    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->passpointProviderFriendlyName:Ljava/lang/String;

    .line 62
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result p0

    .line 67
    if-nez p0, :cond_8

    .line 68
    return v2

    .line 70
    :cond_8
    return v0
    .line 71
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->networkId:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    const/4 v1, 0x1

    .line 10
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    .line 11
    if-eqz v2, :cond_0

    .line 13
    move v2, v1

    .line 15
    :cond_0
    add-int/2addr v0, v2

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->level:I

    .line 19
    const/16 v3, 0x1f

    .line 21
    invoke-static {v2, v0, v3}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 23
    move-result v0

    .line 26
    const/4 v2, 0x0

    .line 27
    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->ssid:Ljava/lang/String;

    .line 28
    if-nez v3, :cond_1

    .line 30
    move v3, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 34
    move-result v3

    .line 37
    :goto_0
    add-int/2addr v0, v3

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isPasspointAccessPoint:Z

    .line 41
    if-eqz v3, :cond_2

    .line 43
    move v3, v1

    .line 45
    :cond_2
    add-int/2addr v0, v3

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isOnlineSignUpForPasspointAccessPoint:Z

    .line 49
    if-eqz v3, :cond_3

    .line 51
    goto :goto_1

    .line 53
    :cond_3
    move v1, v3

    .line 54
    :goto_1
    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->passpointProviderFriendlyName:Ljava/lang/String;

    .line 58
    if-nez p0, :cond_4

    .line 60
    goto :goto_2

    .line 62
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 63
    move-result v2

    .line 66
    :goto_2
    add-int/2addr v0, v2

    .line 67
    return v0
    .line 68
.end method

.method public final logDiffs(Lcom/android/systemui/log/table/Diffable;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    .line 2
    instance-of v0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 4
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->logFull(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 12
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->networkId:I

    .line 14
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->networkId:I

    .line 16
    if-eq v0, v1, :cond_1

    .line 18
    const-string v0, "networkId"

    .line 20
    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 22
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    .line 25
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    .line 27
    if-eq v0, v1, :cond_2

    .line 29
    const-string v0, "isValidated"

    .line 31
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 33
    :cond_2
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->level:I

    .line 36
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->level:I

    .line 38
    if-eq v0, v1, :cond_3

    .line 40
    const-string v0, "level"

    .line 42
    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 44
    :cond_3
    iget-object v0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->ssid:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->ssid:Ljava/lang/String;

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 54
    if-nez v0, :cond_4

    .line 55
    const-string/jumbo v0, "ssid"

    .line 57
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_4
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isPasspointAccessPoint:Z

    .line 63
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isPasspointAccessPoint:Z

    .line 65
    if-eq v0, v1, :cond_5

    .line 67
    const-string v0, "isPasspointAccessPoint"

    .line 69
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 71
    :cond_5
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isOnlineSignUpForPasspointAccessPoint:Z

    .line 74
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isOnlineSignUpForPasspointAccessPoint:Z

    .line 76
    if-eq v0, v1, :cond_6

    .line 78
    const-string v0, "isOnlineSignUpForPasspointAccessPoint"

    .line 80
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 82
    :cond_6
    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->passpointProviderFriendlyName:Ljava/lang/String;

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->passpointProviderFriendlyName:Ljava/lang/String;

    .line 87
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    move-result p1

    .line 92
    if-nez p1, :cond_7

    .line 93
    const-string p1, "passpointProviderFriendlyName"

    .line 95
    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_7
    :goto_0
    return-void
    .line 100
.end method

.method public final logFull(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "type"

    .line 2
    const-string v1, "Active"

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string v0, "networkId"

    .line 10
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->networkId:I

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 14
    const-string/jumbo v0, "subscriptionId"

    .line 17
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "isValidated"

    .line 24
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    .line 26
    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 28
    const-string v0, "level"

    .line 31
    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->level:I

    .line 33
    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    .line 35
    const-string v0, "maxLevel"

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "ssid"

    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->ssid:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "isPasspointAccessPoint"

    .line 51
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isPasspointAccessPoint:Z

    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 55
    const-string v0, "isOnlineSignUpForPasspointAccessPoint"

    .line 58
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isOnlineSignUpForPasspointAccessPoint:Z

    .line 60
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    .line 62
    const-string v0, "passpointProviderFriendlyName"

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->passpointProviderFriendlyName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
    .line 72
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->passpointProviderFriendlyName:Ljava/lang/String;

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isOnlineSignUpForPasspointAccessPoint:Z

    .line 4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isPasspointAccessPoint:Z

    .line 6
    if-nez v2, :cond_1

    .line 8
    if-nez v1, :cond_1

    .line 10
    if-eqz v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, ""

    .line 15
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const-string v3, ", isPasspointAp="

    .line 18
    const-string v4, ", isOnlineSignUpForPasspointAp="

    .line 20
    const-string v5, ", passpointName="

    .line 22
    invoke-static {v3, v2, v4, v1, v5}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "WifiNetworkModel.Active(networkId="

    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->networkId:I

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, ", isValidated="

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    const-string v2, ", level="

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->level:I

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, ", ssid="

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->ssid:Ljava/lang/String;

    .line 72
    const-string v2, ")"

    .line 74
    invoke-static {v1, p0, v0, v2}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    return-object p0
    .line 80
.end method
