.class Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;
.super Landroid/os/Handler;
.source "MiuiWifiDppAddDeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 502
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fgetMSG_CLICK_SHARE_WIFI_BUTTON(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 503
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$mstartWifiDppConfiguratorInitiator(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V

    goto/16 :goto_0

    .line 504
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fgetMSG_RE_START_EASY_CONNECT(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)I

    move-result v1

    const-string v2, "MiuiWifiDppAddDeviceFragment"

    if-ne v0, v1, :cond_1

    .line 505
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fgetmModel(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fgetmIsShareWifi(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "restart Easy Connect"

    .line 506
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopEasyConnectSession()V

    .line 508
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$mstartWifiDppConfiguratorInitiator(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V

    goto :goto_0

    .line 510
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fgetMSG_FAIL_TO_SHARE_WIFI(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 511
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fgetmModel(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fgetmIsShareWifi(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "fail to share wifi"

    .line 512
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopEasyConnectSession()V

    .line 514
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 515
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
