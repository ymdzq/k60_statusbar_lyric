.class Lcom/android/settings/network/NetworkProviderSettings$7;
.super Ljava/lang/Object;
.source "NetworkProviderSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/NetworkProviderSettings;->showWifiSwitchPrompt(Landroid/net/wifi/WifiConfiguration;Lcom/android/wifitrackerlib/WifiEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/NetworkProviderSettings;

.field final synthetic val$config:Landroid/net/wifi/WifiConfiguration;

.field final synthetic val$wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2014
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$7;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$7;->val$wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iput-object p3, p0, Lcom/android/settings/network/NetworkProviderSettings$7;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 2018
    move-object p2, p1

    check-cast p2, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2020
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$7;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 2021
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "dual_wifi_switching_not_remind"

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2023
    :cond_0
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$7;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    iget-object p2, p2, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->disconnectSlaveWifi()Z

    .line 2024
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$7;->val$wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    instance-of v0, p2, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    if-eqz v0, :cond_1

    .line 2025
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$7;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-virtual {p0, p2}, Lcom/android/settings/network/NetworkProviderSettings;->showPrivacyDialog(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    .line 2026
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings$7;->val$config:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_2

    .line 2027
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$7;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    goto :goto_0

    .line 2030
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$7;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener-IA;)V

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2032
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
