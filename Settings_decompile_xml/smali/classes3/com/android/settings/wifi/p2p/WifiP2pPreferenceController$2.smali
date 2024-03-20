.class Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;
.super Ljava/lang/Object;
.source "WifiP2pPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 80
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->-$$Nest$misHotSpotOn(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 81
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_direct_close_hotspot_hint:I

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return v0

    .line 85
    :cond_0
    new-instance p1, Lcom/android/settingslib/wifi/SlaveWifiUtils;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->isSlaveWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_direct_close_slave_wifi_hint:I

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return v0

    .line 90
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiP2pSettingsActivity"

    .line 91
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0
.end method
