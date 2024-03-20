.class Lcom/android/settings/wifi/MiuiWifiSettings$19;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->addVirtualAPPrefForEasyTetherInternal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

.field final synthetic val$deviceId:Ljava/lang/String;

.field final synthetic val$item:Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;Ljava/lang/String;Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2479
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$19;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$19;->val$deviceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/wifi/MiuiWifiSettings$19;->val$item:Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 2482
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, " EasyTether click virtual AP Preference!"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$19;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmIsEasyTetherConnecting(Lcom/android/settings/wifi/MiuiWifiSettings;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 2484
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, " wifi is connetcing, ignore click."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2487
    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$19;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2488
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, " getActivity is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2491
    :cond_1
    check-cast p1, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    .line 2493
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$19;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 2494
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$19;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p2, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmIsEasyTetherConnecting(Lcom/android/settings/wifi/MiuiWifiSettings;Z)V

    .line 2495
    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfputmEasyTetherConnectingPreference(Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;)V

    .line 2496
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$19;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$19;->val$deviceId:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmEasyTetherConnectingDeviceId(Lcom/android/settings/wifi/MiuiWifiSettings;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 2497
    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateState(I)V

    .line 2498
    invoke-virtual {p1}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateSummary()V

    .line 2499
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$19;->val$item:Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x6

    invoke-virtual {p2, v2, v1, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2500
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2501
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    move-result-object p0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v0

    .line 2503
    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mEasyTetherCoreService is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
