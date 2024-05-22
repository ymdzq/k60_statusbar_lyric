.class public final Landroidx/core/animation/AnimatorSet$2;
.super Landroidx/core/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic val$anim:Landroidx/core/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroidx/core/animation/AnimatorSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/animation/AnimatorSet$2;->val$anim:Landroidx/core/animation/AnimatorSet;

    .line 2
    invoke-direct {p0}, Landroidx/core/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd$1(Landroidx/core/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/core/animation/AnimatorSet$2;->val$anim:Landroidx/core/animation/AnimatorSet;

    .line 2
    iget-object v0, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Landroidx/core/animation/AnimatorSet;->mNodeMap:Landroidx/collection/SimpleArrayMap;

    .line 12
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Landroidx/core/animation/AnimatorSet$Node;

    .line 18
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Landroidx/core/animation/AnimatorSet$Node;->mEnded:Z

    .line 21
    return-void

    .line 23
    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 24
    const-string p1, "Error: animation ended is not in the node map"

    .line 26
    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0
    .line 31
.end method
