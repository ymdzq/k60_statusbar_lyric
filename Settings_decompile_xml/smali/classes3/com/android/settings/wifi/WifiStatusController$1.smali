.class Lcom/android/settings/wifi/WifiStatusController$1;
.super Landroid/os/Handler;
.source "WifiStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusController;


# direct methods
.method public static synthetic $r8$lambda$IyMHwYpRmmQj3JkBAaRULLn1ero(Lcom/android/settings/wifi/WifiStatusController$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusController$1;->lambda$handleMessage$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/wifi/WifiStatusController;Landroid/os/Looper;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$1;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$0()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController$1;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$mgetWifiState(Lcom/android/settings/wifi/WifiStatusController;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusController$1;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmVerbose(Lcom/android/settings/wifi/WifiStatusController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiStatusController"

    const-string v2, "getWifiState complete."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusController$1;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmStatusViewText(Lcom/android/settings/wifi/WifiStatusController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusController$1;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fputmStatusViewText(Lcom/android/settings/wifi/WifiStatusController;Ljava/lang/String;)V

    const/16 v0, 0x102

    .line 66
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "WifiStatusController"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController$1;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$mregisterEasyTetherCoreService(Lcom/android/settings/wifi/WifiStatusController;)V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$1;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmVerbose(Lcom/android/settings/wifi/WifiStatusController;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "do refresh view."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$1;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiStatusController;->access$000(Lcom/android/settings/wifi/WifiStatusController;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 73
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$1;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiStatusController;->access$100(Lcom/android/settings/wifi/WifiStatusController;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController$1;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmStatusViewText(Lcom/android/settings/wifi/WifiStatusController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController$1;->this$0:Lcom/android/settings/wifi/WifiStatusController;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiStatusController;->-$$Nest$fgetmVerbose(Lcom/android/settings/wifi/WifiStatusController;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "do refresh state background."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    new-instance p1, Lcom/android/settings/wifi/WifiStatusController$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiStatusController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/WifiStatusController$1;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
