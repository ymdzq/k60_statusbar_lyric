.class public final Lcom/android/keyguard/mediator/ScreenOnCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final foldAodAnimationController:Lcom/android/systemui/unfold/FoldAodAnimationController;

.field public final mainHandler:Landroid/os/Handler;

.field public final pendingTasks:Lcom/android/systemui/util/concurrency/PendingTasksContainer;

.field public final unfoldLightRevealAnimation:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;


# direct methods
.method public constructor <init>(Ljava/util/Optional;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator;->mainHandler:Landroid/os/Handler;

    .line 5
    sget-object p2, Lcom/android/keyguard/mediator/ScreenOnCoordinator$unfoldLightRevealAnimation$1;->INSTANCE:Lcom/android/keyguard/mediator/ScreenOnCoordinator$unfoldLightRevealAnimation$1;

    .line 7
    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 9
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 17
    check-cast p2, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 18
    iput-object p2, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator;->unfoldLightRevealAnimation:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 20
    sget-object p2, Lcom/android/keyguard/mediator/ScreenOnCoordinator$foldAodAnimationController$1;->INSTANCE:Lcom/android/keyguard/mediator/ScreenOnCoordinator$foldAodAnimationController$1;

    .line 22
    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 24
    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 32
    iput-object p1, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator;->foldAodAnimationController:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 34
    new-instance p1, Lcom/android/systemui/util/concurrency/PendingTasksContainer;

    .line 36
    invoke-direct {p1}, Lcom/android/systemui/util/concurrency/PendingTasksContainer;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator;->pendingTasks:Lcom/android/systemui/util/concurrency/PendingTasksContainer;

    .line 41
    return-void
    .line 43
.end method
