.class Lcom/android/settings/wifi/WifiStatusController$3;
.super Ljava/lang/Object;
.source "WifiStatusController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiStatusController;->registerEasyTetherCoreService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiStatusController;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$3;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "EasyTetherCoreService connected"

    const-string v0, "WifiStatusController"

    .line 263
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$3;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p2}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fputmEasyTetherCoreService(Lcom/android/settings/wifi/WifiStatusController;Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;)V

    .line 266
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController$3;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmEasyTetherCoreService(Lcom/android/settings/wifi/WifiStatusController;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "mEasyTetherCoreService is null."

    .line 267
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerEasyTetherCoreService error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "WifiStatusController"

    const-string v0, "EasyTetherCoreService disconnected"

    .line 277
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController$3;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fputmEasyTetherCoreService(Lcom/android/settings/wifi/WifiStatusController;Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;)V

    return-void
.end method
