.class public final Lcom/google/android/material/appbar/AppBarLayout$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic val$background:Lcom/google/android/material/shape/MaterialShapeDrawable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$2;->this$0:Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$2;->val$background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$2;->val$background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 14
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$2;->this$0:Lcom/google/android/material/appbar/AppBarLayout;

    .line 17
    iget-object v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 19
    instance-of v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 21
    if-eqz v1, :cond_0

    .line 23
    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$2;->this$0:Lcom/google/android/material/appbar/AppBarLayout;

    .line 30
    iget-object p1, p1, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    .line 32
    check-cast p1, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    return-void

    .line 46
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 50
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 51
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout$2;->val$background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 54
    iget p0, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->resolvedTintColor:I

    .line 56
    const/4 p0, 0x0

    .line 58
    throw p0
    .line 59
.end method
