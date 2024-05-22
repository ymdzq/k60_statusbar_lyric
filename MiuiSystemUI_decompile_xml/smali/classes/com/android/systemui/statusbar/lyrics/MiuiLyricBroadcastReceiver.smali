# classes5.dex

.class public Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiLyricBroadcastReceiver.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"  # Landroid/os/Handler;

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;->mHandler:Landroid/os/Handler;

    .line 14
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 23
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SCREEN_ON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_89

    .line 24
    :cond_21
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 26
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SCREEN_ON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_89

    .line 27
    :cond_3e
    const-string v1, "liming.update.lyric"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 29
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SET_SHOW_LYRICS:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result v2

    const-string v3, "lyric"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SET_SHOW_PACKAGE_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result v2

    const-string v3, "packageName"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_89

    .line 31
    :cond_71
    const-string v1, "liming.hide.lyric"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 33
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SET_SHOW_LYRICS:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 35
    :cond_89
    :goto_89
    return-void
.end method
