.class public Lcom/android/settings/bluetooth/WifiInfoService;
.super Landroid/app/Service;
.source "WifiInfoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;,
        Lcom/android/settings/bluetooth/WifiInfoService$WifiScanBroadcastReceiver;,
        Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;
    }
.end annotation


# instance fields
.field mCallback:Lcom/android/bluetooth/ble/app/IWifiInfoCallback;

.field private mWifiInfoApi:Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiScanReceiver:Lcom/android/settings/bluetooth/WifiInfoService$WifiScanBroadcastReceiver;

.field mWifiScanResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;


# direct methods
.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/android/settings/bluetooth/WifiInfoService;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiScanner(Lcom/android/settings/bluetooth/WifiInfoService;)Landroid/net/wifi/WifiScanner;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misVerboseLoggingEnabled(Lcom/android/settings/bluetooth/WifiInfoService;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/WifiInfoService;->isVerboseLoggingEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveDoubleQuotes(Lcom/android/settings/bluetooth/WifiInfoService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/WifiInfoService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mscanFailure(Lcom/android/settings/bluetooth/WifiInfoService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/WifiInfoService;->scanFailure()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscanSuccess(Lcom/android/settings/bluetooth/WifiInfoService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/WifiInfoService;->scanSuccess()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartScan(Lcom/android/settings/bluetooth/WifiInfoService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/WifiInfoService;->startScan()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiScanResults:Ljava/util/HashMap;

    return-void
.end method

.method private handleScanResult(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 142
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 143
    iget-object v2, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiScanResults:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiScanResults:Ljava/util/HashMap;

    new-instance v3, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;-><init>(Lcom/android/settings/bluetooth/WifiInfoService;Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult-IA;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiScanResults:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiScanResults:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;->setFrequency(I)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/WifiInfoService;->getCurrentSSID()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiScanResults:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiScanResults:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;

    invoke-static {v0}, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;->-$$Nest$fgetmFrequency(Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;)I

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiScanResults:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;

    invoke-static {v1}, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;->-$$Nest$mis245G(Lcom/android/settings/bluetooth/WifiInfoService$WifiScanResult;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    const/16 v0, -0xa

    .line 160
    :cond_4
    :goto_1
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mCallback:Lcom/android/bluetooth/ble/app/IWifiInfoCallback;

    invoke-interface {p0, p1, v0}, Lcom/android/bluetooth/ble/app/IWifiInfoCallback;->wifiInfoCallBack(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 162
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wifiSsid: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", frequency: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiInfoService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isVerboseLoggingEnabled()Z
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 405
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    move-result p0

    return p0
.end method

.method private registerWifiScanReceiver()V
    .locals 3

    .line 121
    new-instance v0, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/WifiInfoService$WifiScanBroadcastReceiver;-><init>(Lcom/android/settings/bluetooth/WifiInfoService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiScanReceiver:Lcom/android/settings/bluetooth/WifiInfoService$WifiScanBroadcastReceiver;

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiScanReceiver:Lcom/android/settings/bluetooth/WifiInfoService$WifiScanBroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    sub-int/2addr p0, v0

    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 93
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private scanFailure()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/WifiInfoService;->handleScanResult(Ljava/util/List;)V

    return-void
.end method

.method private scanSuccess()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/WifiInfoService;->handleScanResult(Ljava/util/List;)V

    return-void
.end method

.method private startScan()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/android/settings/bluetooth/WifiInfoService;->registerWifiScanReceiver()V

    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/settings/bluetooth/WifiInfoService;->scanFailure()V

    :cond_0
    return-void
.end method

.method private unregisterWifiScanBroadcast()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiScanReceiver:Lcom/android/settings/bluetooth/WifiInfoService$WifiScanBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiScanReceiver:Lcom/android/settings/bluetooth/WifiInfoService$WifiScanBroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentSSID()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "WifiInfoService"

    const-string/jumbo v0, "winfo == null"

    .line 80
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/WifiInfoService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiInfoApi:Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 46
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "WifiInfoService"

    const-string/jumbo v1, "onCreate"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;-><init>(Lcom/android/settings/bluetooth/WifiInfoService;Lcom/android/settings/bluetooth/WifiInfoService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiInfoApi:Lcom/android/settings/bluetooth/WifiInfoService$WifiInfoApi;

    const-string/jumbo v0, "wifi"

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "wifiscanner"

    .line 50
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner;

    iput-object v0, p0, Lcom/android/settings/bluetooth/WifiInfoService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "WifiInfoService"

    const-string/jumbo v1, "onDestroy"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/android/settings/bluetooth/WifiInfoService;->unregisterWifiScanBroadcast()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onStartCommand: startId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", flags: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiInfoService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0
.end method
