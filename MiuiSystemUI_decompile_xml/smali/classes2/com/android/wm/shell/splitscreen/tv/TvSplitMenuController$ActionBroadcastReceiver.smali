.class public final Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public mRegistered:Z

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    new-instance p1, Landroid/content/IntentFilter;

    .line 7
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 12
    const-string v0, "com.android.wm.shell.splitscreen.SHOW_MENU"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;->mRegistered:Z

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string p2, "com.android.wm.shell.splitscreen.SHOW_MENU"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;

    .line 14
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/tv/TvSplitMenuController;->setMenuVisibility(Z)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method
