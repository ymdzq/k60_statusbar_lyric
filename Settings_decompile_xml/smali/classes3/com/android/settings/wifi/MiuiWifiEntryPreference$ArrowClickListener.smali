.class Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;
.super Ljava/lang/Object;
.source "MiuiWifiEntryPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiWifiEntryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrowClickListener"
.end annotation


# instance fields
.field private mSpf:Lcom/android/settings/SettingsPreferenceFragment;

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 724
    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;->mSpf:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 729
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiEntryPreference;->getEasyTetherConnectedDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/WifiEntryPreference;->getEasyTetherConnectedBssid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 731
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 732
    const-class v3, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;->mSpf:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v4}, Lcom/android/settings/SettingsPreferenceFragment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 733
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v4, ":miui:starting_window_label"

    const-string v5, ""

    .line 734
    invoke-virtual {v8, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_salve_wifi"

    .line 735
    invoke-virtual {v8, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 736
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ssid"

    invoke-virtual {v8, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "title_name"

    invoke-virtual {v8, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v6, "key_chosen_wifientry_key"

    invoke-virtual {v8, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 740
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 741
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrowClickListener easyTetherConnectedDeviceName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiWifiEntryPreference"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_0
    invoke-virtual {v8, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-virtual {v8, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;->mSpf:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 751
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const-string v2, "extra_show_on_finddevice_keyguard"

    .line 755
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 756
    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 758
    :cond_3
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 759
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;->mSpf:Lcom/android/settings/SettingsPreferenceFragment;

    const-class p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xc8

    const/4 v9, 0x0

    move-object v4, v5

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method
