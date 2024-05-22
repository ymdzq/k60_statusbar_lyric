.class Lcom/android/settings/wifi/MiuiWifiSettings$25;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->onApAutoConnect(Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;ILcom/android/settings/wifi/MiuiWifiSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

.field final synthetic val$ap:Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

.field final synthetic val$method:I

.field final synthetic val$wifiSettings:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2842
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$25;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$25;->val$wifiSettings:Lcom/android/settings/wifi/MiuiWifiSettings;

    iput-object p3, p0, Lcom/android/settings/wifi/MiuiWifiSettings$25;->val$ap:Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    iput p4, p0, Lcom/android/settings/wifi/MiuiWifiSettings$25;->val$method:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2846
    :try_start_0
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherVirtualAPPreferences()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2847
    :try_start_1
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherVirtualAPPreferences()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$25;->val$ap:Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    invoke-virtual {v2}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    if-nez v1, :cond_0

    .line 2849
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preference is not exist, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$25;->val$ap:Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    monitor-exit v0

    return-void

    .line 2853
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$25;->val$wifiSettings:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$25;->val$wifiSettings:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2854
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2855
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EasyTether, UpdateConnectingState, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x2

    .line 2857
    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateState(I)V

    .line 2858
    invoke-virtual {v1}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateSummary()V

    .line 2859
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$25;->val$wifiSettings:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmIsEasyTetherConnecting(Lcom/android/settings/wifi/MiuiWifiSettings;Z)V

    .line 2860
    invoke-static {v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfputmEasyTetherConnectingPreference(Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;)V

    .line 2861
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$25;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$25;->val$ap:Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    invoke-virtual {v2}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmEasyTetherConnectingDeviceId(Lcom/android/settings/wifi/MiuiWifiSettings;Ljava/lang/String;)V

    .line 2863
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2864
    :try_start_2
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$25;->val$method:I

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$25;->val$ap:Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 2865
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 2864
    invoke-virtual {v1, v3, v2, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2866
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2867
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object p0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2863
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 2870
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
