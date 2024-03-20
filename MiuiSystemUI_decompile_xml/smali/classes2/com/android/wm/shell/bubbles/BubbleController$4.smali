.class public final Lcom/android/wm/shell/bubbles/BubbleController$4;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$4;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

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
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$4;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->isStackExpanded()Z

    .line 4
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 14
    const-string v0, "reason"

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 20
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    const-string v0, "gestureNav"

    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p2

    .line 34
    if-nez p2, :cond_2

    .line 35
    :cond_1
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 42
    if-eqz p1, :cond_3

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$4;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 45
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 47
    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda0;

    .line 49
    const/4 v0, 0x2

    .line 51
    invoke-direct {p2, v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 52
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 55
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 57
    :cond_3
    return-void
    .line 60
.end method
