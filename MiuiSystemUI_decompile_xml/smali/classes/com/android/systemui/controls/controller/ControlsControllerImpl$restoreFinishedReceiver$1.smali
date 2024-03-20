.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

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
    const-string p1, "android.intent.extra.USER_ID"

    .line 2
    const/16 v0, -0x2710

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    move-result p1

    .line 9
    iget-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 10
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getCurrentUserId()I

    .line 12
    move-result p2

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 18
    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 20
    new-instance p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1$onReceive$1;

    .line 22
    invoke-direct {p2, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$restoreFinishedReceiver$1$onReceive$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    .line 24
    check-cast p1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 27
    invoke-virtual {p1, p2}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 29
    :cond_0
    return-void
    .line 32
.end method
