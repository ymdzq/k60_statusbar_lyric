.class Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;
.super Landroid/os/Handler;
.source "MiuiWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field private miuiWifiSettingsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/wifi/MiuiWifiSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 945
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 946
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;->miuiWifiSettingsRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;-><init>(Landroid/os/Looper;Lcom/android/settings/wifi/MiuiWifiSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 952
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 953
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;->miuiWifiSettingsRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 956
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/MiuiWifiSettings;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p0, :cond_6

    .line 1001
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 1005
    :cond_1
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$misWifiConnected(Lcom/android/settings/wifi/MiuiWifiSettings;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmNetworkState(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 1009
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1010
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->ap_connect_failed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 1009
    invoke-static {p1, p0, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_2

    .line 1006
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "wifi is connected, ignore fail toast."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    if-eqz p0, :cond_6

    .line 997
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    move-result-object p0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;->connectHotspotForEasyTether(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_2
    if-eqz p0, :cond_6

    .line 990
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 991
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 992
    invoke-virtual {p0, v0, p1, p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->onApAutoConnect(Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;ILcom/android/settings/wifi/MiuiWifiSettings;)V

    goto :goto_2

    :pswitch_3
    if-eqz p0, :cond_6

    .line 984
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkInfo;

    .line 985
    invoke-static {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mhandleEasyConnectChanged(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/net/NetworkInfo;)V

    goto :goto_2

    .line 975
    :pswitch_4
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$smisPad()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    if-eqz p0, :cond_6

    .line 978
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherConnectingPreference()Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 979
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mupdatePrefForEasyTetherConnectFail(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    goto :goto_2

    :pswitch_5
    if-eqz p0, :cond_6

    .line 966
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetisEasyTetherSwitchOn(Lcom/android/settings/wifi/MiuiWifiSettings;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 967
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mregisterEasyTetherCoreService(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    goto :goto_2

    .line 969
    :cond_5
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetmEasyTetherHotspotEntries()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 970
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$munregisterEasyTetherCoreService(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    goto :goto_2

    :pswitch_6
    if-eqz p0, :cond_6

    .line 961
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mcheckEnableHelpPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1016
    :catch_0
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "error "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
