.class Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;
.super Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub;
.source "MiuiWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EasyTetherCoreCallback"
.end annotation


# instance fields
.field private mWifiSettingsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/wifi/MiuiWifiSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 1

    .line 2749
    invoke-direct {p0}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub;-><init>()V

    .line 2750
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;->mWifiSettingsRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onApConnectFail(Ljava/lang/String;)V
    .locals 3

    .line 2774
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2775
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;->mWifiSettingsRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2779
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;->mWifiSettingsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/MiuiWifiSettings;

    if-eqz v0, :cond_2

    .line 2780
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2781
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback$1;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;Lcom/android/settings/wifi/MiuiWifiSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void

    .line 2776
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "wifi settings is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onApInfoUpdate(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;",
            ">;)V"
        }
    .end annotation

    .line 2756
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$smupdateEasyTetherHotspotEntries(Ljava/util/Map;)V

    .line 2757
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;->mWifiSettingsRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2761
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;->mWifiSettingsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/MiuiWifiSettings;

    if-eqz p0, :cond_1

    .line 2763
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mrefreshVirtualApInfoForEasyEther(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    goto :goto_1

    .line 2765
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EasyTether onApInfoUpdate: MiuiWifiSettings is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2758
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "wifisettings is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2768
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onApSupportAutoConnect(Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;I)V
    .locals 3

    .line 2812
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onApSupportAutoConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;->mWifiSettingsRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;->mWifiSettingsRef:Ljava/lang/ref/WeakReference;

    .line 2814
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2815
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;->mWifiSettingsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;->mWifiSettingsRef:Ljava/lang/ref/WeakReference;

    .line 2816
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object p0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2815
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
