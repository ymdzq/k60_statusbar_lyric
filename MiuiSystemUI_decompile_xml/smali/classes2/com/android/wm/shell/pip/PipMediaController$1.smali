.class public final Lcom/android/wm/shell/pip/PipMediaController$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipMediaController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipMediaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    .line 2
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 4
    if-eqz p1, :cond_5

    .line 6
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 8
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    goto/16 :goto_1

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 23
    move-result p2

    .line 26
    const/4 v0, -0x1

    .line 27
    sparse-switch p2, :sswitch_data_0

    .line 28
    goto :goto_0

    .line 31
    :sswitch_0
    const-string p2, "com.android.wm.shell.pip.PAUSE"

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x3

    .line 41
    goto :goto_0

    .line 42
    :sswitch_1
    const-string p2, "com.android.wm.shell.pip.PREV"

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x2

    .line 52
    goto :goto_0

    .line 53
    :sswitch_2
    const-string p2, "com.android.wm.shell.pip.PLAY"

    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p1

    .line 59
    if-nez p1, :cond_3

    .line 60
    goto :goto_0

    .line 62
    :cond_3
    const/4 v0, 0x1

    .line 63
    goto :goto_0

    .line 64
    :sswitch_3
    const-string p2, "com.android.wm.shell.pip.NEXT"

    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p1

    .line 70
    if-nez p1, :cond_4

    .line 71
    goto :goto_0

    .line 73
    :cond_4
    const/4 v0, 0x0

    .line 74
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 75
    goto :goto_1

    .line 78
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    .line 79
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 81
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 83
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 87
    goto :goto_1

    .line 90
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    .line 91
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 93
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 95
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    .line 99
    goto :goto_1

    .line 102
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    .line 103
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 105
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 107
    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 111
    goto :goto_1

    .line 114
    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$1;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    .line 115
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 117
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 119
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    .line 123
    :cond_5
    :goto_1
    return-void

    .line 126
    nop

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x2681914 -> :sswitch_3
        0x2691955 -> :sswitch_2
        0x2693054 -> :sswitch_1
        0x4ab55bd5 -> :sswitch_0
    .end sparse-switch

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 146
.end method
