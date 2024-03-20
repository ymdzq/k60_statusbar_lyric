.class Lcom/android/settings/wifi/MiuiSlaveWifiSettings$5;
.super Ljava/lang/Object;
.source "MiuiSlaveWifiSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->registerEasyTetherCoreService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$5;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1121
    invoke-static {}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EasyTetherCoreService connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$5;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-static {p2}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$fputmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;)V

    .line 1124
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$5;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$fgetmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1125
    invoke-static {}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mEasyTetherCoreService is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1129
    invoke-static {}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerEasyTetherCoreService error"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1135
    invoke-static {}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EasyTetherCoreService disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$5;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$fputmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;)V

    return-void
.end method
