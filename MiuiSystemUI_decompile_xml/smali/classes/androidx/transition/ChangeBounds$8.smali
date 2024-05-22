.class public final Landroidx/transition/ChangeBounds$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mIsCanceled:Z

.field public final synthetic val$endBottom:I

.field public final synthetic val$endLeft:I

.field public final synthetic val$endRight:I

.field public final synthetic val$endTop:I

.field public final synthetic val$finalClip:Landroid/graphics/Rect;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    .line 2
    iput-object p2, p0, Landroidx/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    .line 4
    iput p3, p0, Landroidx/transition/ChangeBounds$8;->val$endLeft:I

    .line 6
    iput p4, p0, Landroidx/transition/ChangeBounds$8;->val$endTop:I

    .line 8
    iput p5, p0, Landroidx/transition/ChangeBounds$8;->val$endRight:I

    .line 10
    iput p6, p0, Landroidx/transition/ChangeBounds$8;->val$endBottom:I

    .line 12
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$8;->mIsCanceled:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Landroidx/transition/ChangeBounds$8;->mIsCanceled:Z

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    .line 6
    iget-object v0, p0, Landroidx/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    .line 8
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 10
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat$Api18Impl;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 12
    iget-object p1, p0, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    .line 15
    iget v0, p0, Landroidx/transition/ChangeBounds$8;->val$endLeft:I

    .line 17
    iget v1, p0, Landroidx/transition/ChangeBounds$8;->val$endTop:I

    .line 19
    iget v2, p0, Landroidx/transition/ChangeBounds$8;->val$endRight:I

    .line 21
    iget p0, p0, Landroidx/transition/ChangeBounds$8;->val$endBottom:I

    .line 23
    sget-object v3, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 25
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 27
    :cond_0
    return-void
    .line 30
.end method
