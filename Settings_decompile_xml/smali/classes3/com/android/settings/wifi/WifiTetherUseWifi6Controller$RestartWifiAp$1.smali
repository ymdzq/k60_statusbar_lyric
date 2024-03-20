.class Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp$1;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "WifiTetherUseWifi6Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;Landroid/content/Context;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp$1;->this$1:Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 1

    .line 152
    iget-object p0, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp$1;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->setRestartWifiApAfterConfigChange(Landroid/content/Context;Z)V

    const-string p0, "WifiTetherUseWifi6Controller"

    const-string v0, "onTetheringFailed"

    .line 153
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTetheringStarted()V
    .locals 1

    .line 146
    iget-object p0, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp$1;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->setRestartWifiApAfterConfigChange(Landroid/content/Context;Z)V

    const-string p0, "WifiTetherUseWifi6Controller"

    const-string v0, "onTetheringStarted"

    .line 147
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
