.class public Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;
.super Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;
.source "MiuiWifiDppConfiguratorActivity.java"

# interfaces
.implements Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;
.implements Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;
.implements Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;
.implements Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$OnChooseNetworkListener;


# instance fields
.field private mIsTest:Z

.field private mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

.field private mWifiDppRemoteBandSupport:[I

.field private mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;-><init>()V

    return-void
.end method

.method private getConnectedWifiNetworkConfigOrNull()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 10

    .line 379
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 380
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 384
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 389
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 390
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 391
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 392
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v0, :cond_2

    .line 394
    invoke-static {v2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getSecurityString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v4

    .line 395
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, 0x0

    .line 393
    invoke-static/range {v4 .. v9}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method private showAddDeviceFragment(Z)V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "add_device_fragment"

    .line 278
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    if-nez v0, :cond_1

    .line 282
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;-><init>()V

    .line 293
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 295
    sget v2, Lcom/android/settings/R$id;->fragment_container:I

    invoke-virtual {p0, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 298
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 300
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 284
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 290
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method private showChooseSavedWifiNetworkFragment(Z)V
    .locals 5

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "choose_saved_wifi_network_fragment"

    .line 246
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppChooseSavedWifiNetworkFragment;

    if-nez v0, :cond_2

    .line 250
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppChooseSavedWifiNetworkFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppChooseSavedWifiNetworkFragment;-><init>()V

    .line 251
    iget-boolean v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mIsTest:Z

    if-eqz v2, :cond_0

    .line 252
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "test"

    const/4 v4, 0x1

    .line 253
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 266
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 268
    sget v2, Lcom/android/settings/R$id;->fragment_container:I

    invoke-virtual {p0, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 271
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 273
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 257
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 263
    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method private showQrCodeGeneratorFragment()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "qr_code_generator_fragment"

    .line 222
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;-><init>()V

    .line 237
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 239
    sget v2, Lcom/android/settings/R$id;->fragment_container:I

    invoke-virtual {p0, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 241
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 228
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 234
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method private showQrCodeScannerFragment()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "qr_code_scanner_fragment"

    .line 198
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;-><init>()V

    .line 213
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 215
    sget v2, Lcom/android/settings/R$id;->fragment_container:I

    invoke-virtual {p0, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 204
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 210
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x63b

    return p0
.end method

.method getWifiDppQrCode()Lcom/android/settings/wifi/dpp/WifiQrCode;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    return-object p0
.end method

.method public getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    return-object p0
.end method

.method protected handleIntent(Landroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    .line 139
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_SCANNER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v5, v3

    goto :goto_1

    :sswitch_2
    const-string v2, "android.settings.PROCESS_WIFI_EASY_CONNECT_URI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    const-string v1, "MiuiWifiDppConfiguratorActivity"

    packed-switch v5, :pswitch_data_0

    const-string p1, "Launch with an invalid action"

    .line 188
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 141
    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    if-nez p1, :cond_5

    goto/16 :goto_5

    .line 145
    :cond_5
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    .line 146
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->showQrCodeScannerFragment()V

    goto :goto_4

    .line 150
    :pswitch_1
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_5

    .line 154
    :cond_6
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    .line 155
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->showQrCodeGeneratorFragment()V

    goto :goto_4

    .line 159
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_2

    .line 160
    :cond_7
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string/jumbo v2, "test"

    .line 161
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mIsTest:Z

    .line 162
    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValidWifiDppQrCodeOrNull(Ljava/lang/String;)Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    const-string v0, "android.provider.extra.EASY_CONNECT_BAND_LIST"

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiDppRemoteBandSupport:[I

    .line 165
    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isWifiDppEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string v0, "ACTION_PROCESS_WIFI_EASY_CONNECT_URI for a device that doesn\'t support Wifi DPP - use WifiManager#isEasyConnectSupported"

    .line 167
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    if-nez v0, :cond_9

    const-string v0, "ACTION_PROCESS_WIFI_EASY_CONNECT_URI with null URI!"

    .line 172
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    if-eqz v0, :cond_d

    if-nez p1, :cond_a

    goto :goto_5

    .line 177
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->getConnectedWifiNetworkConfigOrNull()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 178
    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isSupportWifiDpp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    .line 181
    :cond_b
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    .line 182
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->showAddDeviceFragment(Z)V

    goto :goto_4

    .line 179
    :cond_c
    :goto_3
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->showChooseSavedWifiNetworkFragment(Z)V

    :goto_4
    move v3, v4

    :cond_d
    :goto_5
    if-eqz v3, :cond_e

    .line 192
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35cc7698 -> :sswitch_2
        0x158370ce -> :sswitch_1
        0x512412b9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onChooseNetwork(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V
    .locals 1

    .line 373
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    const/4 p1, 0x1

    .line 375
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->showAddDeviceFragment(Z)V

    return-void
.end method

.method public onClickChooseDifferentNetwork()V
    .locals 1

    const/4 v0, 0x1

    .line 350
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->showChooseSavedWifiNetworkFragment(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz p1, :cond_0

    const-string v0, "key_qr_code"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValidWifiDppQrCodeOrNull(Ljava/lang/String;)Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    const-string v0, "key_wifi_security"

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "key_wifi_ssid"

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "key_wifi_preshared_key"

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "key_wifi_hidden_ssid"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v0, "key_wifi_network_id"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "key_is_hotspot"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 124
    invoke-static/range {v1 .. v6}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    if-eqz v0, :cond_0

    const-string v1, "key_qr_code"

    .line 356
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    if-eqz v0, :cond_1

    const-string v1, "key_wifi_security"

    .line 360
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSecurity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_wifi_ssid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getPreSharedKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_wifi_preshared_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getHiddenSsid()Z

    move-result v0

    const-string v1, "key_wifi_hidden_ssid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getNetworkId()I

    move-result v0

    const-string v1, "key_wifi_network_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isHotspot()Z

    move-result v0

    const-string v1, "key_is_hotspot"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 368
    :cond_1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScanWifiDppSuccess(Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 3

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "scan_dpp_success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 339
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "wifi_qr_code"

    .line 341
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo p1, "wifi_net_work_config"

    .line 342
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 343
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 345
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method setWifiDppQrCode(Lcom/android/settings/wifi/dpp/WifiQrCode;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "DPP"

    .line 328
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 332
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    const/4 p0, 0x1

    return p0
.end method

.method setWifiNetworkConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z
    .locals 1

    .line 314
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 317
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    const/4 p0, 0x1

    return p0
.end method
