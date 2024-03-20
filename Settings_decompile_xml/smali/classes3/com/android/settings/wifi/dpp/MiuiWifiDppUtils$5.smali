.class Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;
.super Landroid/os/Handler;
.source "MiuiWifiDppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 324
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x821

    const-wide/16 v1, 0x7d0

    const/16 v3, 0x824

    if-ne p1, v0, :cond_0

    .line 325
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$mstartWifiDppConfiguratorInitiator(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)V

    .line 326
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmWifiQrCode(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmWifiQrCode(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmWifiQrCode(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object p1

    .line 327
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "C:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 328
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x822

    if-ne p1, v0, :cond_1

    .line 331
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmIsShareWifi(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmDppModel(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 332
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmTimesOfReStartEasyConnect(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fputmTimesOfReStartEasyConnect(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;I)V

    .line 333
    invoke-static {}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restart Easy Connect for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {v4}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmTimesOfReStartEasyConnect(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " time"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopEasyConnectSession()V

    .line 335
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$mstartWifiDppConfiguratorInitiator(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)V

    .line 336
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x823

    if-ne p1, v1, :cond_2

    .line 339
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmIsShareWifi(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmDppModel(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 340
    invoke-static {}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fail to share wifi, caused by no response from enrollee"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopEasyConnectSession()V

    .line 342
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmSharingDialog(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmSharingDialog(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 343
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmSharingDialog(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 344
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmContext(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dpp_shared_fail:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 345
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$mdppToast(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_4

    .line 349
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmHandler(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/os/Handler;

    move-result-object p1

    const/4 v2, 0x4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmIsEasyConnectCallback(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmTimesOfReStartEasyConnect(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)I

    move-result p1

    if-ge p1, v2, :cond_3

    .line 351
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 352
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmHandler(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmIsEasyConnectCallback(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmTimesOfReStartEasyConnect(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 354
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_0
    return-void
.end method
