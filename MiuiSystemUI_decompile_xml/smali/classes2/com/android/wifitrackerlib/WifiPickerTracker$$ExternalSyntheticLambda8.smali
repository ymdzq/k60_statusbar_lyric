.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 9
    check-cast p0, Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 11
    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 13
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    .line 15
    iget-object v0, p1, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 17
    check-cast p0, Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    check-cast p0, Ljava/util/List;

    .line 25
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    .line 27
    return-void

    .line 30
    :pswitch_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 31
    check-cast p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    .line 33
    check-cast p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    .line 35
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->getStatus()I

    .line 37
    move-result p0

    .line 40
    iget-object v0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    .line 41
    if-nez v0, :cond_0

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 46
    goto :goto_0

    .line 49
    :pswitch_2
    new-instance p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$$ExternalSyntheticLambda0;

    .line 50
    invoke-direct {p0, v1, p1}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 52
    iget-object v0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    .line 55
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    iput-boolean v1, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mServerInitiatedConnection:Z

    .line 60
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    .line 62
    goto :goto_0

    .line 65
    :pswitch_3
    const/4 p0, 0x1

    .line 66
    iput-boolean p0, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mServerInitiatedConnection:Z

    .line 67
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    .line 69
    :goto_0
    return-void

    .line 72
    :goto_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 73
    check-cast p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    .line 75
    check-cast p1, Lcom/android/wifitrackerlib/KnownNetworkEntry;

    .line 77
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->getStatus()I

    .line 79
    move-result p0

    .line 82
    const/4 v0, 0x2

    .line 83
    if-ne p0, v0, :cond_1

    .line 84
    iget-object p0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    .line 86
    if-eqz p0, :cond_2

    .line 88
    new-instance p0, Lcom/android/wifitrackerlib/KnownNetworkEntry$$ExternalSyntheticLambda0;

    .line 90
    invoke-direct {p0, v1, p1}, Lcom/android/wifitrackerlib/KnownNetworkEntry$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 92
    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    .line 95
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    goto :goto_2

    .line 100
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    :cond_2
    :goto_2
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 106
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
