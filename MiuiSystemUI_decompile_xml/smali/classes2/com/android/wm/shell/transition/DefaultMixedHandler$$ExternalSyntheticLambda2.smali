.class public final synthetic Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/DefaultMixedHandler;

.field public final synthetic f$1:Ljava/util/Optional;

.field public final synthetic f$2:Ljava/util/Optional;

.field public final synthetic f$3:Ljava/util/Optional;

.field public final synthetic f$4:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;->f$1:Ljava/util/Optional;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;->f$2:Ljava/util/Optional;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;->f$3:Ljava/util/Optional;

    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;->f$4:Ljava/util/Optional;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;->f$1:Ljava/util/Optional;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;->f$2:Ljava/util/Optional;

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;->f$3:Ljava/util/Optional;

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;->f$4:Ljava/util/Optional;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 19
    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 21
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 23
    iput-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 25
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 31
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 33
    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 37
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 39
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 41
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 44
    if-eqz v1, :cond_0

    .line 46
    iput-object v0, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 48
    :cond_0
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 55
    iput-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 57
    if-eqz v2, :cond_1

    .line 59
    iget-object v2, v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 69
    check-cast p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 70
    iput-object p0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 72
    return-void
    .line 74
.end method
