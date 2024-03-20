.class Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;
.super Ljava/lang/Object;
.source "WifiInfoService.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->startScan(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field found:Z

.field targetBssid:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;

.field final synthetic val$targetSsid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;->this$1:Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;

    iput-object p2, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;->val$targetSsid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 230
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;->found:Z

    const/4 p1, 0x0

    .line 231
    iput-object p1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;->targetBssid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    const-string p0, "WifiInfoService"

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scan onFailure. reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " description: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 272
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0

    const-string p0, "WifiInfoService"

    const-string/jumbo p1, "scan onFullResult."

    .line 235
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 0

    const-string p0, "WifiInfoService"

    const-string/jumbo p1, "scan onPeriodChanged"

    .line 233
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 10

    .line 241
    :try_start_0
    array-length v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "WifiInfoService"

    if-ge v2, v0, :cond_3

    :try_start_1
    aget-object v4, p1, v2

    .line 242
    invoke-virtual {v4}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 243
    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 244
    iget-object v8, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;->this$1:Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;

    iget-object v8, v8, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-static {v8}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$misVerboseLoggingEnabled(Lcom/android/settings/bluetooth/WifiInfoService;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getWifiSsid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " bssid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiSsid;->getBytes()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;->val$targetSsid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    .line 248
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;->found:Z

    .line 249
    iget-object v3, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;->targetBssid:Ljava/lang/String;

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;->this$1:Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;

    iget-object p1, p1, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-static {p1}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$misVerboseLoggingEnabled(Lcom/android/settings/bluetooth/WifiInfoService;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;->found:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " found target ssid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;->val$targetSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xiaomi.bluetooth.action.EASY_SCAN_COMPLETED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "easyconnectssid"

    .line 259
    iget-object v1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;->val$targetSsid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "easyconnectBssid"

    .line 260
    iget-object v1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;->targetBssid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;->this$1:Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;

    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/app/Service;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public onSuccess()V
    .locals 1

    const-string p0, "WifiInfoService"

    const-string/jumbo v0, "scan onSucces."

    .line 237
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
