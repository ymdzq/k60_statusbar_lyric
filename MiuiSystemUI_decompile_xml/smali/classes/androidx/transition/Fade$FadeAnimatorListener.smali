.class public final Landroidx/transition/Fade$FadeAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mLayerTypeChanged:Z

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 6
    iput-object p1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 2
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 8
    iget-boolean p1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object p0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 15
    const/4 p1, 0x0

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 2
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 4
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api16Impl;->hasOverlappingRendering(Landroid/view/View;)Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    .line 14
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 21
    iget-object p0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 23
    const/4 p1, 0x2

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 27
    :cond_0
    return-void
    .line 30
.end method
