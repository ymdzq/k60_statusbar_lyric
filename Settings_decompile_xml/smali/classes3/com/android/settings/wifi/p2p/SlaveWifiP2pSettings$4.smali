.class Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$4;
.super Ljava/lang/Object;
.source "SlaveWifiP2pSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


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

    .line 344
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 347
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string p1, ":miui:starting_window_label"

    const-string v0, "p2p1_label"

    .line 348
    invoke-virtual {v4, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings$4;->this$0:Lcom/android/settings/wifi/p2p/SlaveWifiP2pSettings;

    const-class p0, Lcom/android/settings/MiuiDeviceNameEditFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    const/4 p0, 0x1

    return p0
.end method
