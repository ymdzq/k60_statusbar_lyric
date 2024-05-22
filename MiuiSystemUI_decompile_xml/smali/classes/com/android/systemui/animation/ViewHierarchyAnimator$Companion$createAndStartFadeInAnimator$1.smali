.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createAndStartFadeInAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createAndStartFadeInAnimator$1;->$view:Landroid/view/View;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createAndStartFadeInAnimator$1;->$view:Landroid/view/View;

    .line 2
    const p1, 0x7f0a0947    # @id/tag_alpha_animator

    .line 4
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    return-void
    .line 11
.end method
