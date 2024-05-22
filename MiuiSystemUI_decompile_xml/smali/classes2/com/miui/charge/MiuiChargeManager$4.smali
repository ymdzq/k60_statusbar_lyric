.class public final Lcom/miui/charge/MiuiChargeManager$4;
.super Landroid/os/AsyncTask;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/MiuiChargeManager;


# direct methods
.method public constructor <init>(Lcom/miui/charge/MiuiChargeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/MiuiChargeManager$4;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeManager$4;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 4
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeManager;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p0

    .line 11
    const-string p1, "content://com.miui.powercenter.provider"

    .line 12
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object p1

    .line 17
    const-string v0, "getPowerSupplyInfo"

    .line 18
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 21
    move-result-object p0

    .line 24
    const-string p1, "quick_charge"

    .line 25
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 27
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    const-string p0, "MiuiChargeManager"

    .line 32
    const-string p1, "cannot find the path getPowerSupplyInfo of content://com.miui.powercenter.provider"

    .line 34
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 p0, 0x0

    .line 39
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object p0

    .line 43
    return-object p0
    .line 44
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeManager$4;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 10
    iget-object v0, p1, Lcom/miui/charge/MiuiChargeManager;->mHandler:Landroid/os/Handler;

    .line 12
    iget-object p1, p1, Lcom/miui/charge/MiuiChargeManager;->mUpdateChargingFromPowerCenterRunnable:Lcom/miui/charge/MiuiChargeManager$2;

    .line 14
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeManager$4;->this$0:Lcom/miui/charge/MiuiChargeManager;

    .line 19
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 21
    const/4 v0, 0x0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    iget v2, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 27
    const/4 v3, 0x2

    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    move v2, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, v0

    .line 34
    :goto_0
    if-nez v2, :cond_2

    .line 35
    if-eqz p1, :cond_1

    .line 37
    iget v2, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 39
    if-ne v2, v1, :cond_1

    .line 41
    move v0, v1

    .line 43
    :cond_1
    if-nez v0, :cond_2

    .line 44
    iput v1, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 46
    invoke-static {p0, v1}, Lcom/miui/charge/MiuiChargeManager;->-$$Nest$monChargeDeviceTypeChanged(Lcom/miui/charge/MiuiChargeManager;I)V

    .line 48
    :cond_2
    return-void
    .line 51
.end method
