.class Lcom/android/settings/wifi/MiuiWifiSettings$24;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->registerEasyTetherCoreService()V
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

    .line 2691
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$24;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 2694
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EasyTetherCoreService connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$24;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p2}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;)V

    .line 2697
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$24;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2698
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mEasyTetherCoreService is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2701
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$24;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmEasyTetherCoreCallback(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2702
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$24;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    new-instance p2, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$24;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p2, v0}, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    invoke-static {p1, p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmEasyTetherCoreCallback(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;)V

    .line 2704
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$24;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$24;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmEasyTetherCoreCallback(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;->register(Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;)V

    .line 2705
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$24;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;->getEasyTetherHotspotEntries()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$smupdateEasyTetherHotspotEntries(Ljava/util/Map;)V

    .line 2706
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$24;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mrefreshVirtualApInfoForEasyEther(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2708
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EasyTetherCoreService register error"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 2714
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EasyTetherCoreService disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$24;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;)V

    return-void
.end method
