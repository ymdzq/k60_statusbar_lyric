.class Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;
.super Landroid/net/wifi/EasyConnectStatusCallback;
.source "MiuiWifiDppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyConnectConfiguratorStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-direct {p0}, Landroid/net/wifi/EasyConnectStatusCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)V

    return-void
.end method


# virtual methods
.method public onConfiguratorSuccess(I)V
    .locals 1

    .line 284
    invoke-static {}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "success to share wifi."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fputmIsEasyConnectCallback(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Z)V

    .line 286
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fputmIsShareWifi(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Z)V

    .line 287
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fputmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Landroid/net/wifi/WifiManager;)V

    .line 288
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fputmConnectivityManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Landroid/net/ConnectivityManager;)V

    .line 289
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fputmDppModel(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    .line 291
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmWifiNetworkConfig(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmWifiNetworkConfig(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getHiddenSsid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmContext(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dpp_not_support:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmContext(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dpp_shared_success:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 296
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$mdppToast(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Ljava/lang/String;)V

    return-void
.end method

.method public onEnrolleeSuccess(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;[I)V"
        }
    .end annotation

    .line 302
    invoke-static {}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "fail to share wifi, caused by code "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fputmIsEasyConnectCallback(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Z)V

    .line 304
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopEasyConnectSession()V

    .line 306
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fputmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Landroid/net/wifi/WifiManager;)V

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fputmConnectivityManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Landroid/net/ConnectivityManager;)V

    .line 309
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fputmDppModel(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    .line 310
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$fgetmContext(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->dpp_shared_fail:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 311
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$mdppToast(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    .line 316
    invoke-static {}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "on progress"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
