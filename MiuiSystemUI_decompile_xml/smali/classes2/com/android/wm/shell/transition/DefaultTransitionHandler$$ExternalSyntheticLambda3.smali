.class public final synthetic Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    .line 4
    iget-boolean v0, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mProvisioned:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string v0, "ShellTransitions"

    .line 10
    const-string/jumbo v1, "speed ui!!!!!!!!!!!"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->getInstance()Lcom/android/wm/shell/common/transition/DefaultTransitionStub;

    .line 18
    move-result-object v0

    .line 21
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 22
    move-result v1

    .line 25
    filled-new-array {v1}, [I

    .line 26
    move-result-object v1

    .line 29
    const-wide/16 v2, 0x3e8

    .line 30
    const/16 v4, 0xc

    .line 32
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/common/transition/DefaultTransitionStub;->beginSchedThreads([IJI)V

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v1

    .line 41
    if-ge v0, v1, :cond_1

    .line 42
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 47
    check-cast v1, Landroid/animation/Animator;

    .line 48
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    return-void
    .line 56
.end method
