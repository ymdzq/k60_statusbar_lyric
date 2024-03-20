.class Lcom/android/settings/wifi/WifiSettings$10;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1799
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$10;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$10;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1803
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$10;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/wifi/WifiSettings;->mIsShareDialogShow:Z

    .line 1804
    iput-boolean v0, p1, Lcom/android/settings/wifi/WifiSettings;->mIsDppQrCodeFgShow:Z

    const-string/jumbo p1, "wifi_qrCode_scanner"

    .line 1805
    invoke-static {p1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1806
    invoke-static {p1, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 1807
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$10;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    .line 1808
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$10;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1809
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1810
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 1811
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, p1, :cond_0

    move-object v3, v4

    .line 1819
    :cond_1
    iget p1, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 1820
    new-instance p1, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$10;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 1821
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v0

    move-object p1, v1

    :goto_0
    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    :cond_3
    const-string/jumbo v2, "vendor"

    .line 1826
    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mediatek"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$10;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1827
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isEasyConnectSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$10;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$misFromMiuiSlaveWifiSettings(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1828
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$10;->this$0:Lcom/android/settings/wifi/WifiSettings;

    .line 1829
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$10;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1828
    invoke-static {v1, v2, p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getMiuiConfiguratorQrCodeScannerIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1831
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$10;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1833
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$10;->val$activity:Landroid/app/Activity;

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 1836
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$10;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$10;->this$0:Lcom/android/settings/wifi/WifiSettings;

    .line 1837
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings$10;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$misFromMiuiSlaveWifiSettings(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v3

    .line 1836
    invoke-static {v2, v1, v3}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1839
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$10;->val$activity:Landroid/app/Activity;

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_5
    :goto_1
    return-void
.end method
