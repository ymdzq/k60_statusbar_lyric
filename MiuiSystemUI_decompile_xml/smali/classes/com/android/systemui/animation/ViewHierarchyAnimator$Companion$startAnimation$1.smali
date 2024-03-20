.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $bounds:Ljava/util/Set;

.field public final synthetic $ephemeral:Z

.field public final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic $view:Landroid/view/View;

.field public cancelled:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/Set;ZLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$view:Landroid/view/View;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$bounds:Ljava/util/Set;

    .line 4
    iput-boolean p3, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$ephemeral:Z

    .line 6
    iput-object p4, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$onAnimationEnd:Ljava/lang/Runnable;

    .line 8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->cancelled:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$view:Landroid/view/View;

    .line 2
    const v0, 0x7f0a0949    # @id/tag_animator

    .line 4
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$bounds:Ljava/util/Set;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$view:Landroid/view/View;

    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .line 29
    invoke-virtual {v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getOverrideTag()I

    .line 31
    move-result v2

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$ephemeral:Z

    .line 39
    if-eqz p1, :cond_1

    .line 41
    iget-boolean p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->cancelled:Z

    .line 43
    if-nez p1, :cond_1

    .line 45
    sget-object p1, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    .line 47
    iget-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$view:Landroid/view/View;

    .line 49
    invoke-static {p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->recursivelyRemoveListener(Landroid/view/View;)V

    .line 51
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->cancelled:Z

    .line 54
    if-nez p1, :cond_2

    .line 56
    iget-object p0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$onAnimationEnd:Ljava/lang/Runnable;

    .line 58
    if-eqz p0, :cond_2

    .line 60
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 62
    :cond_2
    return-void
    .line 65
.end method
