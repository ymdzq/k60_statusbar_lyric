.class public final Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $onReady:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/FoldAodAnimationController;Lcom/android/systemui/util/concurrency/PendingTasksContainer$registerTask$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->$onReady:Ljava/lang/Runnable;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    iget-boolean v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isScrimOpaque:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->$onReady:Ljava/lang/Runnable;

    .line 13
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->$onReady:Ljava/lang/Runnable;

    .line 19
    iput-object v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->pendingScrimReadyCallback:Ljava/lang/Runnable;

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    iget-boolean v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isFolded:Z

    .line 24
    if-eqz v1, :cond_2

    .line 26
    iget-boolean v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isFoldHandled:Z

    .line 28
    if-nez v1, :cond_2

    .line 30
    iget-boolean v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->alwaysOnEnabled:Z

    .line 32
    if-eqz v1, :cond_2

    .line 34
    iget-boolean v1, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isDozing:Z

    .line 36
    if-eqz v1, :cond_2

    .line 38
    invoke-virtual {v0, v2}, Lcom/android/systemui/unfold/FoldAodAnimationController;->setAnimationState(Z)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->getShadeFoldAnimator()Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController$11;->prepareFoldToAodAnimation()V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 52
    invoke-virtual {v0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->getShadeFoldAnimator()Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 54
    move-result-object v0

    .line 57
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$11;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 58
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 60
    iget-object v1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->$onReady:Ljava/lang/Runnable;

    .line 62
    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 64
    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->$onReady:Ljava/lang/Runnable;

    .line 68
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 70
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isFolded:Z

    .line 75
    if-eqz v0, :cond_3

    .line 77
    iput-boolean v2, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isFoldHandled:Z

    .line 79
    :cond_3
    return-void
    .line 81
.end method
