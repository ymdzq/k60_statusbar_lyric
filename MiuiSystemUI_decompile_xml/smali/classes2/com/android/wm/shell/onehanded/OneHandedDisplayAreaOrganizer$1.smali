.class Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onOneHandedAnimationCancel(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->-$$Nest$fgetmAnimationController(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getToken()Landroid/window/WindowContainerToken;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->removeAnimator(Landroid/window/WindowContainerToken;)V

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getTransitionDirection()I

    .line 15
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 24
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->-$$Nest$fgetmAnimationController(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->isAnimatorsConsumed()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 36
    if-eqz v1, :cond_1

    .line 38
    const/16 v1, 0x2a

    .line 40
    goto :goto_1

    .line 42
    :cond_1
    const/16 v1, 0x2b

    .line 43
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->cancelCUJTracing(I)V

    .line 45
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 48
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getDestinationOffset()F

    .line 50
    move-result v0

    .line 53
    float-to-int v0, v0

    .line 54
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getTransitionDirection()I

    .line 55
    move-result p1

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->finishOffset(II)V

    .line 59
    :cond_2
    return-void
    .line 62
.end method

.method public onOneHandedAnimationEnd(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->-$$Nest$fgetmAnimationController(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getToken()Landroid/window/WindowContainerToken;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->removeAnimator(Landroid/window/WindowContainerToken;)V

    .line 12
    invoke-virtual {p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getTransitionDirection()I

    .line 15
    move-result p1

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 24
    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->-$$Nest$fgetmAnimationController(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->isAnimatorsConsumed()Z

    .line 30
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 36
    if-eqz v0, :cond_1

    .line 38
    const/16 v0, 0x2a

    .line 40
    goto :goto_1

    .line 42
    :cond_1
    const/16 v0, 0x2b

    .line 43
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->endCUJTracing(I)V

    .line 45
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 48
    invoke-virtual {p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getDestinationOffset()F

    .line 50
    move-result p1

    .line 53
    float-to-int p1, p1

    .line 54
    invoke-virtual {p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getTransitionDirection()I

    .line 55
    move-result p2

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->finishOffset(II)V

    .line 59
    :cond_2
    return-void
    .line 62
.end method

.method public onOneHandedAnimationStart(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getTransitionDirection()I

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    move p1, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 12
    invoke-static {v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->-$$Nest$fgetmTransitionCallbacks(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Ljava/util/List;

    .line 14
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 24
    invoke-static {v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->-$$Nest$fgetmTransitionCallbacks(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Ljava/util/List;

    .line 26
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    move-result v1

    .line 33
    sub-int/2addr v1, v0

    .line 34
    :goto_1
    if-ltz v1, :cond_1

    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 37
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->-$$Nest$fgetmTransitionCallbacks(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;)Ljava/util/List;

    .line 39
    move-result-object v0

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;

    .line 47
    invoke-interface {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;->onStartTransition(Z)V

    .line 49
    add-int/lit8 v1, v1, -0x1

    .line 52
    goto :goto_1

    .line 54
    :cond_1
    return-void
    .line 55
.end method
