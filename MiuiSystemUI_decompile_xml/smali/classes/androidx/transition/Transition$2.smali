.class public final Landroidx/transition/Transition$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Landroidx/transition/Transition;

.field public final synthetic val$runningAnimators:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Landroidx/transition/Transition;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/Transition$2;->this$0:Landroidx/transition/Transition;

    .line 2
    iput-object p2, p0, Landroidx/transition/Transition$2;->val$runningAnimators:Landroidx/collection/ArrayMap;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/Transition$2;->val$runningAnimators:Landroidx/collection/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Landroidx/transition/Transition$2;->this$0:Landroidx/transition/Transition;

    .line 7
    iget-object p0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    return-void
    .line 14
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/transition/Transition$2;->this$0:Landroidx/transition/Transition;

    .line 2
    iget-object p0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method
