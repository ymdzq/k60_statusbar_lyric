.class Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$3;
.super Ljava/lang/Object;
.source "MiuiWifiDppQrCodeScannerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$3;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 576
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$3;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo p1, "wifi_qrCode_shared_wifi"

    const/4 v0, 0x0

    .line 579
    invoke-static {p1, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 580
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "show_dpp_qr_code"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 581
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    .line 582
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$3;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 584
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$3;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
