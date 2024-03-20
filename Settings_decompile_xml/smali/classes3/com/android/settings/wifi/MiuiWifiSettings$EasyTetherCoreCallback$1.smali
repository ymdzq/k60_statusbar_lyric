.class Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback$1;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;->onApConnectFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;

.field final synthetic val$deviceId:Ljava/lang/String;

.field final synthetic val$wifiSettings:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;Lcom/android/settings/wifi/MiuiWifiSettings;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2781
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback$1;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;

    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback$1;->val$wifiSettings:Lcom/android/settings/wifi/MiuiWifiSettings;

    iput-object p3, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback$1;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2785
    :try_start_0
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherVirtualAPPreferences()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2786
    :try_start_1
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connect AP fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback$1;->val$wifiSettings:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmIsEasyTetherConnecting(Lcom/android/settings/wifi/MiuiWifiSettings;Z)V

    const/4 v1, 0x0

    .line 2788
    invoke-static {v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfputmEasyTetherConnectingPreference(Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;)V

    .line 2789
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherVirtualAPPreferences()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback$1;->val$deviceId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    if-eqz v1, :cond_1

    .line 2791
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2792
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " set STATE_DISCONNECTED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateState(I)V

    .line 2795
    invoke-virtual {v1}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateSummary()V

    .line 2798
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2799
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object v3

    .line 2800
    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    .line 2799
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2801
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2802
    :try_start_2
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback$1;->val$wifiSettings:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateWifiEntryPreferences()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2801
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

    .line 2804
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
