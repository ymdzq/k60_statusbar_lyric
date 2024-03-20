.class final Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;
.super Landroid/os/Handler;
.source "MiuiWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/os/Looper;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    .line 497
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmIsWorkHandlerQuit(Lcom/android/settings/wifi/MiuiWifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "the handler is quit, do not handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 506
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 530
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$misWifiValidated(Lcom/android/settings/wifi/MiuiWifiSettings;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 531
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mshowNoInternetToast(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    goto :goto_0

    .line 526
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmNextButton(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 527
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmNextArrow(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 522
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmNextButton(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 523
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmNextArrow(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 519
    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateScanState(Z)V

    goto :goto_0

    .line 511
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 512
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    .line 514
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 508
    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$minternalSmoothScrollToPosition(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
