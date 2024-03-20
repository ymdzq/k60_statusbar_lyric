.class public final Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public mRegistered:Z

.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    new-instance p1, Landroid/content/IntentFilter;

    .line 7
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 12
    const-string v0, "com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string v0, "com.android.wm.shell.pip.tv.notification.action.SHOW_PIP_MENU"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    const-string v0, "com.android.wm.shell.pip.tv.notification.action.MOVE_PIP"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v0, "com.android.wm.shell.pip.tv.notification.action.TOGGLE_EXPANDED_PIP"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string v0, "com.android.wm.shell.pip.tv.notification.action.FULLSCREEN"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->mRegistered:Z

    .line 40
    return-void
    .line 42
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 6
    const/4 v0, 0x0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 14
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 15
    const-string v2, "TvPipController"

    .line 17
    filled-new-array {v2, p2}, [Ljava/lang/Object;

    .line 19
    move-result-object p2

    .line 22
    const v2, -0x466ae3a6

    .line 23
    const-string v3, "%s: on(Broadcast)Receive(), action=%s"

    .line 26
    invoke-static {v1, v2, v0, v3, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :cond_0
    const-string p2, "com.android.wm.shell.pip.tv.notification.action.SHOW_PIP_MENU"

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->showPictureInPictureMenu(Z)V

    .line 41
    goto :goto_1

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 45
    const-string p2, "com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP"

    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    const/4 v0, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string p2, "com.android.wm.shell.pip.tv.notification.action.MOVE_PIP"

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result p2

    .line 62
    if-eqz p2, :cond_3

    .line 63
    const/4 v0, 0x2

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const-string p2, "com.android.wm.shell.pip.tv.notification.action.TOGGLE_EXPANDED_PIP"

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p2

    .line 72
    if-eqz p2, :cond_4

    .line 73
    const/4 v0, 0x3

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const-string p2, "com.android.wm.shell.pip.tv.notification.action.FULLSCREEN"

    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result p1

    .line 82
    if-eqz p1, :cond_5

    .line 83
    goto :goto_0

    .line 85
    :cond_5
    const/4 v0, 0x4

    .line 86
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->executeAction(I)V

    .line 87
    :goto_1
    return-void
    .line 90
.end method
