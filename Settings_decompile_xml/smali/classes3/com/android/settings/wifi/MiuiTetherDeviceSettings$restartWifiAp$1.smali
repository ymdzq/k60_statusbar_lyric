.class Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp$1;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "MiuiTetherDeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp$1;->this$1:Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 1

    .line 418
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp$1;->this$1:Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->setRestartWifiApAfterConfigChange(Landroid/content/Context;Z)V

    return-void
.end method

.method public onTetheringStarted()V
    .locals 1

    .line 413
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp$1;->this$1:Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->setRestartWifiApAfterConfigChange(Landroid/content/Context;Z)V

    return-void
.end method
