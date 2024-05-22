.class public final Landroidx/core/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCurrentNode:Landroidx/core/animation/AnimatorSet$Node;

.field public final synthetic this$0:Landroidx/core/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroidx/core/animation/AnimatorSet;Landroidx/core/animation/Animator;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/core/animation/AnimatorSet$Builder;->this$0:Landroidx/core/animation/AnimatorSet;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Landroidx/core/animation/AnimatorSet;->mDependencyDirty:Z

    .line 8
    invoke-virtual {p1, p2}, Landroidx/core/animation/AnimatorSet;->getNodeForAnimation(Landroidx/core/animation/Animator;)Landroidx/core/animation/AnimatorSet$Node;

    .line 10
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/core/animation/AnimatorSet$Builder;->mCurrentNode:Landroidx/core/animation/AnimatorSet$Node;

    .line 14
    return-void
    .line 16
.end method
