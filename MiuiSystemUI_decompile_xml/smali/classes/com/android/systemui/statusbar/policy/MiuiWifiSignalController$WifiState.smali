.class public final Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;
.super Lcom/android/systemui/statusbar/SignalIcon$State;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public isCarrierMerged:Z

.field public isDefault:Z

.field public isTransient:Z

.field public macAddress:Landroid/net/MacAddress;

.field public meteredHint:Z

.field public ssid:Ljava/lang/String;

.field public statusLabel:Ljava/lang/String;

.field public subId:I

.field public validate:Z

.field public wifiStandard:I


# virtual methods
.method public final copyFrom(Lcom/android/systemui/statusbar/SignalIcon$State;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/SignalIcon$State;->copyFrom(Lcom/android/systemui/statusbar/SignalIcon$State;)V

    .line 2
    check-cast p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 5
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 9
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isTransient:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isTransient:Z

    .line 13
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isDefault:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isDefault:Z

    .line 17
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 21
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isCarrierMerged:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isCarrierMerged:Z

    .line 25
    iget v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->subId:I

    .line 27
    iput v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->subId:I

    .line 29
    iget v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->wifiStandard:I

    .line 31
    iput v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->wifiStandard:I

    .line 33
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->validate:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->validate:Z

    .line 37
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->meteredHint:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->meteredHint:Z

    .line 41
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->macAddress:Landroid/net/MacAddress;

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->macAddress:Landroid/net/MacAddress;

    .line 45
    return-void
    .line 47
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/SignalIcon$State;->equals(Ljava/lang/Object;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 10
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 12
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 14
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isTransient:Z

    .line 22
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isTransient:Z

    .line 24
    if-ne v0, v2, :cond_4

    .line 26
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isDefault:Z

    .line 28
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isDefault:Z

    .line 30
    if-ne v0, v2, :cond_4

    .line 32
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 34
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 36
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isCarrierMerged:Z

    .line 44
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isCarrierMerged:Z

    .line 46
    if-ne v0, v2, :cond_4

    .line 48
    iget v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->subId:I

    .line 50
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->subId:I

    .line 52
    if-ne v0, v2, :cond_4

    .line 54
    iget v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->wifiStandard:I

    .line 56
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->wifiStandard:I

    .line 58
    if-ne v0, v2, :cond_4

    .line 60
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->validate:Z

    .line 62
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->validate:Z

    .line 64
    if-ne v0, v2, :cond_4

    .line 66
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->meteredHint:Z

    .line 68
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->meteredHint:Z

    .line 70
    if-ne v0, v2, :cond_4

    .line 72
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->macAddress:Landroid/net/MacAddress;

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->macAddress:Landroid/net/MacAddress;

    .line 76
    const/4 v0, 0x1

    .line 78
    if-nez p1, :cond_1

    .line 79
    if-nez p0, :cond_1

    .line 81
    move p0, v0

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    if-eqz p1, :cond_3

    .line 85
    if-nez p0, :cond_2

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 93
    invoke-virtual {p0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 97
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 98
    move-result p0

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    :goto_0
    move p0, v1

    .line 103
    :goto_1
    if-eqz p0, :cond_4

    .line 104
    move v1, v0

    .line 106
    :cond_4
    return v1
    .line 107
.end method

.method public final toString(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/SignalIcon$State;->toString(Ljava/lang/StringBuilder;)V

    .line 2
    const-string v0, ",ssid="

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v0, ",isTransient="

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isTransient:Z

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    const-string v0, ",isDefault="

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isDefault:Z

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    const-string v0, ",statusLabel="

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v0, ",isCarrierMerged="

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isCarrierMerged:Z

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    const-string v0, ",subId="

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->subId:I

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, ",wifiStandard="

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->wifiStandard:I

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v0, ",validate="

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->validate:Z

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    const-string v0, ",meteredHint="

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->meteredHint:Z

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    const-string v0, ",macAddress="

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->macAddress:Landroid/net/MacAddress;

    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    return-void
    .line 105
.end method
