# classes.dex

.class public Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiLyricBroadcastReceiver.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "action"

    .line 18
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "lyric"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 20
    iget-object p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SET_SHOW_LYRICS:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;->mHandler:Landroid/os/Handler;

    sget-object p1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SET_SHOW_PACKAGE_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result p1

    const-string v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4f

    :cond_37
    const-string p2, "hideLyric"

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;->mHandler:Landroid/os/Handler;

    sget-object p1, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SET_SHOW_LYRICS:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_4f
    :goto_4f
    return-void
.end method
