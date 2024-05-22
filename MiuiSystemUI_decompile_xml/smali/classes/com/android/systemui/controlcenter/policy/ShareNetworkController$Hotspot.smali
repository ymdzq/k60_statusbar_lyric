.class public final Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final ap:Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

.field public final bssid:Ljava/lang/String;

.field public final deviceId:Ljava/lang/String;

.field public final realSsid:Ljava/lang/String;

.field public final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->ap:Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 5
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object v1, p1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->ssid:Ljava/lang/String;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move-object v1, v0

    .line 13
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->ssid:Ljava/lang/String;

    .line 14
    if-eqz p1, :cond_1

    .line 16
    iget-object v1, p1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->deviceId:Ljava/lang/String;

    .line 18
    goto :goto_1

    .line 20
    :cond_1
    move-object v1, v0

    .line 21
    :goto_1
    iput-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->deviceId:Ljava/lang/String;

    .line 22
    if-eqz p1, :cond_2

    .line 24
    iget-object v1, p1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->bssid:Ljava/lang/String;

    .line 26
    goto :goto_2

    .line 28
    :cond_2
    move-object v1, v0

    .line 29
    :goto_2
    iput-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->bssid:Ljava/lang/String;

    .line 30
    if-eqz p1, :cond_3

    .line 32
    iget-object v0, p1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->realSsid:Ljava/lang/String;

    .line 34
    :cond_3
    iput-object v0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->realSsid:Ljava/lang/String;

    .line 36
    return-void
    .line 38
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
    const-class v1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

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
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 24
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->ssid:Ljava/lang/String;

    .line 26
    iget-object v3, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->ssid:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->deviceId:Ljava/lang/String;

    .line 37
    iget-object v3, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->deviceId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->bssid:Ljava/lang/String;

    .line 48
    iget-object v3, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->bssid:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->realSsid:Ljava/lang/String;

    .line 59
    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->realSsid:Ljava/lang/String;

    .line 61
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result p0

    .line 66
    if-nez p0, :cond_6

    .line 67
    return v2

    .line 69
    :cond_6
    return v0
    .line 70
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->ssid:Ljava/lang/String;

    .line 3
    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->deviceId:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->bssid:Ljava/lang/String;

    .line 28
    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 32
    move-result v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v2, v0

    .line 37
    :goto_2
    add-int/2addr v1, v2

    .line 38
    mul-int/lit8 v1, v1, 0x1f

    .line 39
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->realSsid:Ljava/lang/String;

    .line 41
    if-eqz p0, :cond_3

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 45
    move-result v0

    .line 48
    :cond_3
    add-int/2addr v1, v0

    .line 49
    return v1
    .line 50
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Hotspot(ap="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->ap:Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string p0, ")"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method
