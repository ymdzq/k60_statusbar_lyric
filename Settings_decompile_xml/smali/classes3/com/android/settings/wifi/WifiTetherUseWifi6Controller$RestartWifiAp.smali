.class Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;
.super Landroid/os/AsyncTask;
.source "WifiTetherUseWifi6Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestartWifiAp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;Landroid/content/Context;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;->this$0:Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 118
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6

    .line 123
    iget-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo v1, "wifi"

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const-string v2, "connectivity"

    .line 128
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    move v3, v0

    :goto_0
    const/16 v4, 0xa

    if-ge v3, v4, :cond_3

    .line 132
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, -0x1

    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 135
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_2

    const-wide/16 v4, 0x1f4

    .line 137
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 p0, -0x2

    .line 140
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 143
    :cond_2
    new-instance v1, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp$1;-><init>(Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-virtual {v2, v0, p0, v1}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    :cond_3
    const/4 p0, -0x3

    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 114
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0

    .line 164
    iget-object p1, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;->this$0:Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->-$$Nest$fgetmTetherUseWifi6(Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p0, p0, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;->this$0:Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;->-$$Nest$fgetmTetherUseWifi6(Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller$RestartWifiAp;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
