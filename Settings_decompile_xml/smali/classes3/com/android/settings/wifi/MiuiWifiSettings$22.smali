.class Lcom/android/settings/wifi/MiuiWifiSettings$22;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->handleEasyConnectChanged(Landroid/net/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 2617
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$22;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2620
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherVirtualAPPreferences()Ljava/util/Map;

    move-result-object p0

    monitor-enter p0

    .line 2621
    :try_start_0
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherConnectingPreference()Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2622
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherConnectingPreference()Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateState(I)V

    .line 2623
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherConnectingPreference()Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateSummary()V

    .line 2625
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
