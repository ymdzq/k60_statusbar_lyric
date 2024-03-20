.class public Lcom/android/settings/wifi/dpp/MiuiWifiDppEnrolleeActivity;
.super Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;
.source "MiuiWifiDppEnrolleeActivity.java"

# interfaces
.implements Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;-><init>()V

    return-void
.end method

.method private showQrCodeScannerFragment(Ljava/lang/String;Z)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "qr_code_scanner_fragment"

    .line 68
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;-><init>(Ljava/lang/String;Z)V

    .line 83
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 85
    sget p1, Lcom/android/settings/R$id;->fragment_container:I

    invoke-virtual {p0, p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x63c

    return p0
.end method

.method protected handleIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_1
    const-string v1, "miui.settings.WIFI_DPP_ENROLLEE_QR_CODE_SCANNER"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.settings.WIFI_DPP_ENROLLEE_QR_CODE_SCANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "MiuiWifiDppEnrolleeActivity"

    const-string v0, "Launch with an invalid action"

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "ssid"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_slave"

    const/4 v2, 0x0

    .line 57
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 58
    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppEnrolleeActivity;->showQrCodeScannerFragment(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public onScanWifiDppSuccess(Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 0

    .line 0
    return-void
.end method
