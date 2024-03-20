.class public final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final authIsRequired:Z

.field public final blockable:Z

.field public final controlId:Ljava/lang/String;

.field public final f:Lkotlin/jvm/functions/Function0;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->controlId:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->f:Lkotlin/jvm/functions/Function0;

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->blockable:Z

    .line 11
    iput-boolean p5, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->authIsRequired:Z

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final invoke()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->blockable:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 6
    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->actionsInProgress:Ljava/util/Set;

    .line 8
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->controlId:Ljava/lang/String;

    .line 10
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    new-instance v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$shouldRunAction$1;

    .line 18
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$shouldRunAction$1;-><init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Ljava/lang/String;)V

    .line 20
    const-wide/16 v2, 0xbb8

    .line 23
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 25
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 27
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->f:Lkotlin/jvm/functions/Function0;

    .line 35
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 37
    :cond_2
    return-void
    .line 40
.end method
