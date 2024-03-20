.class Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;
.super Landroid/net/wifi/EasyConnectStatusCallback;
.source "MiuiWifiDppQrCodeScannerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyConnectEnrolleeStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 873
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-direct {p0}, Landroid/net/wifi/EasyConnectStatusCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V

    return-void
.end method


# virtual methods
.method public onConfiguratorSuccess(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onEnrolleeSuccess(I)V
    .locals 4

    .line 878
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 880
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 881
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 882
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 883
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fputmLatestStatusCode(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;I)V

    .line 884
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {p1, v2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fputmEnrolleeWifiConfiguration(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)V

    .line 885
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->canConnectWifi(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 886
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-virtual {v0, v2, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void

    .line 891
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid networkId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiWifiDppQrCodeScanner"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    const/4 v0, -0x7

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fputmLatestStatusCode(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;I)V

    .line 893
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$mupdateEnrolleeSummary(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V

    .line 894
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    sget p1, Lcom/android/settings/R$string;->wifi_dpp_check_connection_try_again:I

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->showErrorMessageAndRestartCamera(I)V

    return-void
.end method

.method public onFailure(I)V
    .locals 2

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EasyConnectEnrolleeStatusCallback.onFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiWifiDppQrCodeScanner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    .line 954
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected Wi-Fi DPP error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 909
    :pswitch_0
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_qr_code_is_not_valid_format:I

    goto :goto_0

    .line 913
    :pswitch_1
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_failure_authentication_or_configuration:I

    goto :goto_0

    .line 917
    :pswitch_2
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_failure_not_compatible:I

    goto :goto_0

    .line 921
    :pswitch_3
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_failure_authentication_or_configuration:I

    goto :goto_0

    .line 925
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fgetmLatestStatusCode(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fputmLatestStatusCode(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;I)V

    .line 931
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    .line 932
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 933
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopEasyConnectSession()V

    .line 934
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fgetmWifiQrCode(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$mstartWifiDppEnrolleeInitiator(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    return-void

    .line 926
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "stopEasyConnectSession and try again forEASY_CONNECT_EVENT_FAILURE_BUSY but still failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 938
    :pswitch_5
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_failure_timeout:I

    goto :goto_0

    .line 942
    :pswitch_6
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_failure_generic:I

    .line 957
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {v1, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fputmLatestStatusCode(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;I)V

    .line 958
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$mupdateEnrolleeSummary(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V

    .line 959
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$EasyConnectEnrolleeStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->showErrorMessageAndRestartCamera(I)V

    return-void

    .line 946
    :pswitch_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "EASY_CONNECT_EVENT_FAILURE_NOT_SUPPORTED should be a configurator only error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 950
    :pswitch_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "EASY_CONNECT_EVENT_FAILURE_INVALID_NETWORK should be a configurator only error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgress(I)V
    .locals 0

    .line 0
    return-void
.end method
