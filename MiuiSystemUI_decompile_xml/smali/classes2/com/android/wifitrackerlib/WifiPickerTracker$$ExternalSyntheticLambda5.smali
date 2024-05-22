.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda5;->f$0:Ljava/util/Set;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda5;->f$0:Ljava/util/Set;

    .line 10
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 12
    instance-of v0, p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 18
    iget-object p1, p1, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 20
    iget-object p1, p1, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 22
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    move v1, v2

    .line 30
    :cond_0
    return v1

    .line 31
    :pswitch_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda5;->f$0:Ljava/util/Set;

    .line 32
    check-cast p1, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 40
    iget v0, v0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 42
    const/4 v3, -0x1

    .line 44
    if-eq v0, v3, :cond_1

    .line 45
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 51
    move-result p0

    .line 54
    if-nez p0, :cond_2

    .line 55
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    move-result-object p0

    .line 60
    check-cast p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 61
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    .line 63
    move-result p0

    .line 66
    if-nez p0, :cond_2

    .line 67
    :cond_1
    move v1, v2

    .line 69
    :cond_2
    return v1

    .line 70
    :goto_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda5;->f$0:Ljava/util/Set;

    .line 71
    check-cast p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    .line 73
    iget-object p1, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    .line 75
    iget-wide v0, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mDeviceId:J

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    move-result-object p1

    .line 82
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result p0

    .line 86
    xor-int/2addr p0, v2

    .line 87
    return p0

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 90
.end method
