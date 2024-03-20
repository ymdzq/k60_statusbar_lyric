.class public Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;
.super Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;
.source "WifiDppConfiguratorActivity.java"

# interfaces
.implements Lcom/android/settings/wifi/dpp/WifiNetworkConfig$Retriever;
.implements Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;
.implements Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;
.implements Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$OnChooseNetworkListener;


# instance fields
.field private mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

.field private mWifiDppRemoteBandSupport:[I

.field private mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;


# direct methods
.method public static synthetic $r8$lambda$n_aE_sgYD-GY27zyKMcM4bruGrg(Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->lambda$handleIntent$0(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;-><init>()V

    return-void
.end method

.method private getConnectedWifiNetworkConfigOrNull()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 10

    .line 378
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 379
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 383
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 388
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 389
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 390
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 391
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v0, :cond_2

    .line 393
    invoke-static {v2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getSecurityString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, 0x0

    .line 392
    invoke-static/range {v4 .. v9}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method private handleActionProcessWifiEasyConnectUriIntent(Landroid/content/Intent;)V
    .locals 2

    .line 178
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_0
    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValidWifiDppQrCodeOrNull(Ljava/lang/String;)Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    const-string v0, "android.provider.extra.EASY_CONNECT_BAND_LIST"

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppRemoteBandSupport:[I

    .line 183
    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isWifiDppEnabled(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "WifiDppConfiguratorActivity"

    if-nez p1, :cond_1

    const-string v1, "ACTION_PROCESS_WIFI_EASY_CONNECT_URI for a device that doesn\'t support Wifi DPP - use WifiManager#isEasyConnectSupported"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    if-nez v1, :cond_2

    const-string v1, "ACTION_PROCESS_WIFI_EASY_CONNECT_URI with null URI!"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    if-eqz v0, :cond_6

    if-nez p1, :cond_3

    goto :goto_2

    .line 195
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getConnectedWifiNetworkConfigOrNull()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 196
    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isSupportWifiDpp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 199
    :cond_4
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    .line 200
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showAddDeviceFragment(Z)V

    goto :goto_3

    .line 197
    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showChooseSavedWifiNetworkFragment(Z)V

    goto :goto_3

    .line 193
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_3
    return-void
.end method

.method private static isGuestUser(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 407
    :cond_0
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_1

    return v0

    .line 409
    :cond_1
    invoke-virtual {p0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$handleIntent$0(Landroid/content/Intent;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->handleActionProcessWifiEasyConnectUriIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private showAddDeviceFragment(Z)V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "add_device_fragment"

    .line 282
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    if-nez v0, :cond_1

    .line 286
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;-><init>()V

    .line 297
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 299
    sget v2, Lcom/android/settings/R$id;->fragment_container:I

    invoke-virtual {p0, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 302
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 304
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 288
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 294
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method private showChooseSavedWifiNetworkFragment(Z)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "choose_saved_wifi_network_fragment"

    .line 255
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;

    if-nez v0, :cond_1

    .line 259
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;-><init>()V

    .line 270
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 272
    sget v2, Lcom/android/settings/R$id;->fragment_container:I

    invoke-virtual {p0, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 275
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 261
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 267
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method private showQrCodeGeneratorFragment()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "qr_code_generator_fragment"

    .line 232
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;-><init>()V

    .line 246
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 248
    sget v2, Lcom/android/settings/R$id;->fragment_container:I

    invoke-virtual {p0, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 237
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 243
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

    .line 313
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    return-object p0
.end method

.method public getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    return-object p0
.end method

.method protected handleIntent(Landroid/content/Intent;)V
    .locals 6

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "WifiDppConfiguratorActivity"

    if-eqz v0, :cond_0

    const-string p1, "Guest user is not allowed to configure Wi-Fi!"

    .line 130
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "User is a guest"

    const-string v1, "224772890"

    filled-new-array {v1, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x534e4554

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 132
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 138
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    .line 144
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_SCANNER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_1

    :sswitch_2
    const-string v3, "android.settings.PROCESS_WIFI_EASY_CONNECT_URI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v4

    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string p1, "Launch with an invalid action"

    .line 169
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v4, v5

    goto :goto_4

    .line 146
    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    if-nez p1, :cond_6

    :goto_3
    goto :goto_2

    .line 150
    :cond_6
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showQrCodeScannerFragment()V

    goto :goto_4

    .line 155
    :pswitch_1
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    .line 159
    :cond_7
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    .line 160
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showQrCodeGeneratorFragment()V

    goto :goto_4

    .line 164
    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;Landroid/content/Intent;)V

    invoke-static {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    :goto_4
    if-eqz v4, :cond_8

    .line 173
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_8
    return-void

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

    .line 372
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    const/4 p1, 0x1

    .line 374
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showAddDeviceFragment(Z)V

    return-void
.end method

.method public onClickChooseDifferentNetwork()V
    .locals 1

    const/4 v0, 0x1

    .line 349
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showChooseSavedWifiNetworkFragment(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz p1, :cond_0

    const-string v0, "key_qr_code"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getValidWifiDppQrCodeOrNull(Ljava/lang/String;)Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    const-string v0, "key_wifi_security"

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "key_wifi_ssid"

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "key_wifi_preshared_key"

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "key_wifi_hidden_ssid"

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v0, "key_wifi_network_id"

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "key_is_hotspot"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 122
    invoke-static/range {v1 .. v6}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    if-eqz v0, :cond_0

    const-string v1, "key_qr_code"

    .line 355
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    if-eqz v0, :cond_1

    const-string v1, "key_wifi_security"

    .line 359
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSecurity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_wifi_ssid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getPreSharedKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_wifi_preshared_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getHiddenSsid()Z

    move-result v0

    const-string v1, "key_wifi_hidden_ssid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getNetworkId()I

    move-result v0

    const-string v1, "key_wifi_network_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isHotspot()Z

    move-result v0

    const-string v1, "key_is_hotspot"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 367
    :cond_1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScanWifiDppSuccess(Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    const/4 p1, 0x1

    .line 344
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showAddDeviceFragment(Z)V

    return-void
.end method

.method setWifiDppQrCode(Lcom/android/settings/wifi/dpp/WifiQrCode;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "DPP"

    .line 332
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 336
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/WifiQrCode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    const/4 p0, 0x1

    return p0
.end method

.method setWifiNetworkConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z
    .locals 1

    .line 318
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 321
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    const/4 p0, 0x1

    return p0
.end method

.method showQrCodeScannerFragment()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "qr_code_scanner_fragment"

    .line 208
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;-><init>()V

    .line 223
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 225
    sget v2, Lcom/android/settings/R$id;->fragment_container:I

    invoke-virtual {p0, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 214
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 220
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method
