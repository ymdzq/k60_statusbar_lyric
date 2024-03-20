.class Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;
.super Landroid/os/AsyncTask;
.source "MiuiTetherDeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiTetherDeviceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "restartWifiAp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Landroid/content/Context;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 390
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    const-wide/16 v1, 0x1f4

    .line 404
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 406
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;->this$0:Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->-$$Nest$fgetmCm(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp$1;-><init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
