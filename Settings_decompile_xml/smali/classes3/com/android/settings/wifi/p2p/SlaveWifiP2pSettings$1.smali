.class Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SlaveWifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "miui.wifi.p2p.action.REJECTION"

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 150
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmSlaveWifiP2pManager(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->sChannel:Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string p1, "SlaveWifiP2pSettings"

    const-string p2, "clear the reject status"

    .line 151
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmSlaveWifiP2pUtils(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;

    move-result-object p1

    sget-object p2, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->sChannel:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->stopPeerDiscovery(Ljava/lang/Object;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 153
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p0, v1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fputmResearchForClearRejectStatus(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;Z)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "android.net.wifi.p2p.SLAVE_STATE_CHANGED"

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 160
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    const-string/jumbo v0, "wifi_p2p_state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    invoke-static {p1, v1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fputmWifiSlaveP2pEnabled(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;Z)V

    .line 162
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$mhandleP2pStateChanged(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)V

    goto/16 :goto_2

    :cond_4
    const-string v0, "android.net.wifi.p2p.SLAVE_PEERS_CHANGED"

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    const-string/jumbo v0, "slave_wifiP2pDeviceList"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fputmPeers(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 166
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$mhandlePeersChanged(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "android.net.wifi.p2p.SLAVE_SLAVE_CONNECTION_STATE_CHANG"

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 168
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmSlaveWifiP2pManager(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    const-string/jumbo p1, "slave_networkInfo"

    .line 169
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    const-string/jumbo v0, "slave_wifiP2pInfo"

    .line 171
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    const-string/jumbo v3, "wifiP2pEnabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    iget-boolean p2, p2, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    iput-boolean p2, v0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->mLastGroupFormed:Z

    .line 179
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 181
    :cond_7
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    iget-boolean p2, p1, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->mLastGroupFormed:Z

    if-eq p2, v1, :cond_8

    .line 184
    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$mstartSearch(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)V

    .line 189
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p0, v1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fputmIsIgnoreInitConnectionInfoCallback(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;Z)V

    goto/16 :goto_2

    :cond_9
    const-string v0, "android.net.wifi.p2p.SLAVE_THIS_DEVICE_CHANGED"

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo p1, "wifiP2pDevice"

    .line 192
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz p1, :cond_a

    .line 193
    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_a

    return-void

    .line 201
    :cond_a
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmSlaveWifiP2pManager(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    sget-object p1, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->sChannel:Ljava/lang/Object;

    if-eqz p1, :cond_e

    .line 202
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmSlaveWifiP2pUtils(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;

    move-result-object p1

    sget-object p2, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->sChannel:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->requestDeviceInfo(Ljava/lang/Object;Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;)V

    goto :goto_2

    :cond_b
    const-string v0, "android.net.wifi.p2p.SLAVE_DISCOVERY_STATE_CHANGE"

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo p1, "slave_discoveryState"

    .line 205
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_c

    .line 209
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p0, v1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$mupdateSearchMenu(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;Z)V

    goto :goto_2

    .line 211
    :cond_c
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1, v3}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$mupdateSearchMenu(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;Z)V

    .line 213
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmResearchForClearRejectStatus(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 214
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1, v3}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fputmResearchForClearRejectStatus(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;Z)V

    .line 215
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$mstartSearch(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)V

    goto :goto_2

    :cond_d
    const-string p2, "android.net.wifi.p2p.action.SLAVE_WIFI_P2P_PERSISTENT_GROUPS_CHANGED"

    .line 219
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 220
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmSlaveWifiP2pManager(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    sget-object p1, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->sChannel:Ljava/lang/Object;

    if-eqz p1, :cond_e

    .line 221
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->-$$Nest$fgetmSlaveWifiP2pUtils(Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;)Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;

    move-result-object p1

    sget-object p2, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;->sChannel:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->requestPersistentGroupInfo(Ljava/lang/Object;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V

    :cond_e
    :goto_2
    return-void
.end method
