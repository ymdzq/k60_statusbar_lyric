.class public final Landroidx/transition/TransitionManager$MultiListener$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Landroidx/transition/TransitionManager$MultiListener;

.field public final synthetic val$runningTransitions:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Landroidx/transition/TransitionManager$MultiListener;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/TransitionManager$MultiListener$1;->this$0:Landroidx/transition/TransitionManager$MultiListener;

    .line 2
    iput-object p2, p0, Landroidx/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroidx/collection/ArrayMap;

    .line 4
    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/transition/TransitionManager$MultiListener$1;->this$0:Landroidx/transition/TransitionManager$MultiListener;

    .line 2
    iget-object v0, v0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 4
    iget-object v1, p0, Landroidx/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroidx/collection/ArrayMap;

    .line 6
    invoke-virtual {v1, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 17
    return-void
    .line 20
.end method
