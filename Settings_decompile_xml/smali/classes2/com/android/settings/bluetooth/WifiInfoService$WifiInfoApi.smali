.class Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;
.super Lcom/android/bluetooth/ble/app/IWifiInfoService$Stub;
.source "WifiInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/WifiInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiInfoApi"
.end annotation


# instance fields
.field private final mWifiInfoService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/WifiInfoService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/bluetooth/WifiInfoService;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/WifiInfoService;Lcom/android/settings/bluetooth/WifiInfoService;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/IWifiInfoService$Stub;-><init>()V

    .line 173
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->mWifiInfoService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public deleteSaveWifiConfig(Ljava/lang/String;)V
    .locals 5

    .line 340
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3ea

    const-string v2, "WifiInfoService"

    if-eq v0, v1, :cond_0

    const-string p0, "check uid failed"

    .line 342
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$fgetmWifiManager(Lcom/android/settings/bluetooth/WifiInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$fgetmWifiManager(Lcom/android/settings/bluetooth/WifiInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 353
    iget-object v3, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$mremoveDoubleQuotes(Lcom/android/settings/bluetooth/WifiInfoService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " deleteSaveWifiConfig NetId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-static {p0}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$fgetmWifiManager(Lcom/android/settings/bluetooth/WifiInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    iget p1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string/jumbo p0, "ssid or mWifiManager is null."

    .line 348
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 360
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error to deleteSaveWifiConfig"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public disableCurrentWifi()V
    .locals 4

    .line 199
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3ea

    const-string v2, "WifiInfoService"

    if-eq v0, v1, :cond_0

    const-string p0, "check uid failed"

    .line 201
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$fgetmWifiManager(Lcom/android/settings/bluetooth/WifiInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect netid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-static {p0}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$fgetmWifiManager(Lcom/android/settings/bluetooth/WifiInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    return-void
.end method

.method public getCurrentSSID()Ljava/lang/String;
    .locals 4

    .line 319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    const-string v3, "WifiInfoService"

    if-eq v0, v1, :cond_0

    const-string p0, "check uid failed"

    .line 321
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 326
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$fgetmWifiManager(Lcom/android/settings/bluetooth/WifiInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "winfo is null."

    .line 328
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 331
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$mremoveDoubleQuotes(Lcom/android/settings/bluetooth/WifiInfoService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error to getCurrentSSID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getWifiInfo(Lcom/android/bluetooth/ble/app/IWifiInfoCallback;)I
    .locals 3

    const-string v0, "WifiInfoService"

    :try_start_0
    const-string v1, "getWifiInfo"

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "IWifiInfoCallback is null"

    .line 180
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 183
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_1

    const-string p0, "check uid failed"

    .line 185
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    iput-object p1, v0, Lcom/android/settings/bluetooth/WifiInfoService;->mCallback:Lcom/android/bluetooth/ble/app/IWifiInfoCallback;

    .line 189
    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->mWifiInfoService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-static {p0}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$mstartScan(Lcom/android/settings/bluetooth/WifiInfoService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x3

    return p0
.end method

.method public setSoftApConfiguration(Ljava/lang/String;IIJLjava/lang/String;Z)V
    .locals 7

    .line 283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3ea

    const-string v2, "WifiInfoService"

    if-eq v0, v1, :cond_0

    const-string p0, "check uid failed"

    .line 285
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 289
    fill-array-data v0, :array_0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-static {v1}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$fgetmWifiManager(Lcom/android/settings/bluetooth/WifiInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    .line 294
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    new-instance v4, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v5, 0x0

    const/16 v6, 0xdd

    invoke-direct {v4, v6, v5, v0}, Landroid/net/wifi/ScanResult$InformationElement;-><init>(II[B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 298
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    .line 299
    invoke-virtual {p1, p3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    .line 300
    invoke-virtual {p1, p4, p5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setShutdownTimeoutMillis(J)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    .line 301
    invoke-static {p6}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    .line 302
    invoke-virtual {p1, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMacRandomizationSetting(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    .line 303
    invoke-virtual {p1, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setVendorElements(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 306
    iget-object p2, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-static {p2}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$fgetmWifiManager(Lcom/android/settings/bluetooth/WifiInfoService;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result p1

    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setSoftApConfiguration result "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p7, :cond_1

    .line 309
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.xiaomi.bluetooth.action.SET_SOFTAP_CONF_COMPLETED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error to setSoftApConfiguration"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x17t
        -0xet
        0x6t
        0x1t
        0x1t
        0x3t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public startScan(Ljava/lang/String;I)V
    .locals 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "easy tether start scan freq "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiInfoService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3ea

    if-eq v0, v2, :cond_0

    const-string p0, "check uid failed"

    .line 214
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 218
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    if-eqz p2, :cond_1

    .line 221
    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v1, p2}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    filled-new-array {v1}, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object p2

    .line 222
    iput-object p2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    goto :goto_0

    :cond_1
    const/4 p2, 0x6

    .line 224
    iput p2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    :goto_0
    const/4 p2, 0x2

    .line 227
    iput p2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    const/4 p2, 0x3

    .line 228
    iput p2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 231
    new-instance p2, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi$1;-><init>(Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;Ljava/lang/String;)V

    .line 278
    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;->this$0:Lcom/android/settings/bluetooth/WifiInfoService;

    invoke-static {p0}, Lcom/android/settings/bluetooth/WifiInfoService;->-$$Nest$fgetmWifiScanner(Lcom/android/settings/bluetooth/WifiInfoService;)Landroid/net/wifi/WifiScanner;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V

    return-void
.end method
