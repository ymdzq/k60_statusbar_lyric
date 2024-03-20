.class Lcom/android/settings/wifi/MiuiWifiSettings$7;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;
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

    .line 1427
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$7;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 1430
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "COME_FROM"

    const-string v1, "MIUI_WIFI_CONNECT_HELP"

    .line 1431
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.bluetooth.MiuiHeadsetActivityPlugin"

    .line 1432
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    invoke-static {}, Lcom/android/settings/bluetooth/FitSplitUtils;->isFitSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    .line 1435
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$7;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1438
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$7;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "WIFI"

    invoke-static {p0, p1}, Lcom/android/settings/OneTrackManager;->trackHelpClick(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
