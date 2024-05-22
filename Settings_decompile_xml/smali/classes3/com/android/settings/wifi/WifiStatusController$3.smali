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

    .line 261
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$3;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "EasyTetherCoreService connected"

    const-string v0, "WifiStatusController"

    .line 264
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$3;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p2}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fputmEasyTetherCoreService(Lcom/android/settings/wifi/WifiStatusController;Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;)V

    .line 267
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$3;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmEasyTetherCoreService(Lcom/android/settings/wifi/WifiStatusController;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "mEasyTetherCoreService is null."

    .line 268
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 272
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerEasyTetherCoreService error"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$3;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmHandler(Lcom/android/settings/wifi/WifiStatusController;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x101

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 275
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController$3;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmHandler(Lcom/android/settings/wifi/WifiStatusController;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "WifiStatusController"

    const-string v0, "EasyTetherCoreService disconnected"

    .line 281
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController$3;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fputmEasyTetherCoreService(Lcom/android/settings/wifi/WifiStatusController;Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;)V

    return-void
.end method
