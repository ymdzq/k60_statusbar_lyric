.class final Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;
.super Landroid/os/Handler;
.source "MiuiSlaveWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiSlaveWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Landroid/os/Looper;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    .line 254
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 259
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$mregisterEasyTetherCoreService(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->updateScanState(Z)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$mupdateSlaveWifiEnabler(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V

    goto :goto_0

    .line 264
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 265
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    const/16 p1, 0x8

    .line 267
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 261
    :cond_4
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->-$$Nest$minternalSmoothScrollToPosition(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V

    :cond_5
    :goto_0
    return-void
.end method
