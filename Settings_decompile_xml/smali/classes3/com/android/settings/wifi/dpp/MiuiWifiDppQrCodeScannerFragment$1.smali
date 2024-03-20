.class Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;
.super Landroid/os/Handler;
.source "MiuiWifiDppQrCodeScannerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;
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

    .line 192
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    const/4 v3, 0x2

    const/16 v4, 0x20

    const/4 v5, 0x0

    if-eq v0, v3, :cond_c

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-eq v0, v3, :cond_9

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 305
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$sfgetTRACK_SCAN_OCR_WIFI_FORMAT()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$sfgetTRACK_SCAN_OCR_WIFI_FORMAT()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 307
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fgetmMaxSimilarySsid(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ssid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fgetmOcrPossibleWifiPwd(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_ocr_wifi_token"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 310
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "MiuiWifiDppQrCodeScanner"

    const-string p1, "Scan success but context is null"

    .line 246
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 252
    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$sfgetTRACK_SCAN_ZXING_WIFI_FORMAT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$sfgetTRACK_SCAN_ZXING_WIFI_FORMAT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 254
    const-class v1, Landroid/net/wifi/WifiManager;

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 256
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    .line 261
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    .line 262
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getWifiConfigurations(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 268
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v5

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 269
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    goto :goto_0

    .line 274
    :cond_4
    iget-object v6, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->canConnectWifi(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    return-void

    .line 276
    :cond_5
    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 279
    iget-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    .line 280
    invoke-static {v6, v3}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$misReachableWifiNetwork(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 282
    :cond_6
    iput v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 283
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {v1, v3}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fputmEnrolleeWifiConfiguration(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)V

    .line 284
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->onSuccess()V

    move v1, v2

    goto :goto_0

    :cond_7
    if-nez v1, :cond_8

    .line 289
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    sget p1, Lcom/android/settings/R$string;->wifi_dpp_check_connection_try_again:I

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->showErrorMessageAndRestartCamera(I)V

    return-void

    .line 294
    :cond_8
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->access$100(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    .line 295
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->access$000(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v1

    const/16 v2, 0x6af

    const/16 v3, 0x63c

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    .line 294
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 301
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$mnotifyUserForQrCodeRecognition(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V

    goto/16 :goto_1

    .line 222
    :cond_9
    invoke-static {}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$sfgetTRACK_SCAN_WIFI_DPP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$sfgetTRACK_SCAN_WIFI_DPP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fgetmScanWifiDppSuccessListener(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 228
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fgetmScanWifiDppSuccessListener(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$OnScanWifiDppSuccessListener;->onScanWifiDppSuccess(Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fgetmIsConfiguratorMode(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$mstartWifiDppEnrolleeInitiator(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiQrCode;)V

    .line 233
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$mupdateEnrolleeSummary(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V

    .line 234
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    iget-object p1, p1, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 238
    :cond_b
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$mnotifyUserForQrCodeRecognition(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V

    goto :goto_1

    .line 201
    :cond_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fgetmErrorMessage(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fgetmErrorMessage(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fgetmErrorMessage(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 210
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x2710

    .line 211
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 214
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_e

    .line 215
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-virtual {p1, v5}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    .line 216
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fgetmDecorateView(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->setFocused(Z)V

    .line 217
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$mrestartCamera(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)V

    goto :goto_1

    .line 197
    :cond_d
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;->-$$Nest$fgetmErrorMessage(Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e
    :goto_1
    return-void
.end method
