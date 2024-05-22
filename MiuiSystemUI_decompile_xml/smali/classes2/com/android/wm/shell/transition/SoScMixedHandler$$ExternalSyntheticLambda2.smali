.class public final synthetic Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/SoScMixedHandler;

.field public final synthetic f$1:Ljava/util/Optional;

.field public final synthetic f$2:Ljava/util/Optional;

.field public final synthetic f$3:Lcom/android/wm/shell/transition/DefaultMixedHandler;

.field public final synthetic f$4:Ljava/util/Optional;

.field public final synthetic f$5:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/SoScMixedHandler;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/DefaultMixedHandler;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/transition/SoScMixedHandler;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda2;->f$1:Ljava/util/Optional;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda2;->f$2:Ljava/util/Optional;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda2;->f$3:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda2;->f$4:Ljava/util/Optional;

    .line 13
    iput-object p6, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda2;->f$5:Ljava/util/Optional;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/transition/SoScMixedHandler;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda2;->f$1:Ljava/util/Optional;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda2;->f$2:Ljava/util/Optional;

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda2;->f$3:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 8
    iget-object v4, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda2;->f$4:Ljava/util/Optional;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda2;->f$5:Ljava/util/Optional;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 21
    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 23
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 25
    iput-object v1, v0, Lcom/android/wm/shell/transition/SoScMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 27
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 33
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 35
    move-result-object v1

    .line 38
    iput-object v1, v0, Lcom/android/wm/shell/transition/SoScMixedHandler;->mSplitHandler:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 39
    iget-object v1, v0, Lcom/android/wm/shell/transition/SoScMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 43
    iget-object v1, v1, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 48
    iget-object v1, v0, Lcom/android/wm/shell/transition/SoScMixedHandler;->mSplitHandler:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 51
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->setMixedHandler(Lcom/android/wm/shell/transition/SoScMixedHandler;)V

    .line 55
    :cond_0
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v4, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 62
    check-cast v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 63
    iput-object v2, v0, Lcom/android/wm/shell/transition/SoScMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 65
    if-eqz v2, :cond_1

    .line 67
    iget-object v2, v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, v0, Lcom/android/wm/shell/transition/SoScMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 74
    iget-object v2, v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 78
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object p0

    .line 84
    check-cast p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 85
    iput-object p0, v0, Lcom/android/wm/shell/transition/SoScMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 87
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 89
    move-result-object p0

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/sosc/SoScUtils;->setMixedHandler(Lcom/android/wm/shell/transition/SoScMixedHandler;)V

    .line 93
    return-void
    .line 96
.end method
