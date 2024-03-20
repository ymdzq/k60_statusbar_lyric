.class Lcom/android/settings/wifi/MiuiWifiSettings$20;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->removeAllVirtualAPPreferenceForEasyEther()V
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

    .line 2530
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$20;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2533
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherVirtualAPPreferences()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 2534
    :try_start_0
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "removeAllVirtualAPPreferenceForEasyEther"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherVirtualAPPreferences()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2536
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    const/4 v3, 0x0

    .line 2537
    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateState(I)V

    .line 2538
    invoke-virtual {v2}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateSummary()V

    .line 2539
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings$20;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/MiuiWifiSettings;->access$600(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroidx/preference/PreferenceCategory;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2541
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfputmEasyTetherConnectingPreference(Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;)V

    .line 2542
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherVirtualAPPreferences()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 2543
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
