.class public Landroidx/transition/ChangeClipBounds;
.super Landroidx/transition/Transition;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "android:clipBounds:clip"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeClipBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    return-void
    .line 5
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeClipBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    return-void
    .line 5
.end method

.method public final captureValues(Landroidx/transition/TransitionValues;)V
    .locals 3

    .line 1
    iget-object p0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 13
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api18Impl;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    .line 15
    move-result-object v0

    .line 18
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 19
    check-cast p1, Ljava/util/HashMap;

    .line 21
    const-string v1, "android:clipBounds:clip"

    .line 23
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    if-nez v0, :cond_1

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 32
    move-result v1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    move-result p0

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 41
    const-string p0, "android:clipBounds:bounds"

    .line 44
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_1
    return-void
    .line 49
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 4

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p2, :cond_7

    .line 3
    if-eqz p3, :cond_7

    .line 5
    iget-object p1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 7
    check-cast p1, Ljava/util/HashMap;

    .line 9
    const-string p2, "android:clipBounds:clip"

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_7

    .line 17
    iget-object v0, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 19
    check-cast v0, Ljava/util/HashMap;

    .line 21
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    goto :goto_2

    .line 29
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Landroid/graphics/Rect;

    .line 34
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 39
    check-cast p2, Landroid/graphics/Rect;

    .line 40
    if-nez p2, :cond_1

    .line 42
    const/4 v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    :goto_0
    if-nez v1, :cond_2

    .line 47
    if-nez p2, :cond_2

    .line 49
    return-object p0

    .line 51
    :cond_2
    const-string v3, "android:clipBounds:bounds"

    .line 52
    if-nez v1, :cond_3

    .line 54
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 59
    move-object v1, p1

    .line 60
    check-cast v1, Landroid/graphics/Rect;

    .line 61
    goto :goto_1

    .line 63
    :cond_3
    if-nez p2, :cond_4

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object p1

    .line 69
    move-object p2, p1

    .line 70
    check-cast p2, Landroid/graphics/Rect;

    .line 71
    :cond_4
    :goto_1
    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result p1

    .line 76
    if-eqz p1, :cond_5

    .line 77
    return-object p0

    .line 79
    :cond_5
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 80
    iget-object p0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 82
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat$Api18Impl;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 84
    new-instance p1, Landroidx/transition/RectEvaluator;

    .line 87
    new-instance p3, Landroid/graphics/Rect;

    .line 89
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 91
    invoke-direct {p1, p3}, Landroidx/transition/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 94
    sget-object p3, Landroidx/transition/ViewUtils;->CLIP_BOUNDS:Landroidx/transition/ViewUtils$1;

    .line 97
    filled-new-array {v1, p2}, [Landroid/graphics/Rect;

    .line 99
    move-result-object p2

    .line 102
    invoke-static {p0, p3, p1, p2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 103
    move-result-object p1

    .line 106
    if-eqz v2, :cond_6

    .line 107
    new-instance p2, Landroidx/transition/ChangeClipBounds$1;

    .line 109
    invoke-direct {p2, p0}, Landroidx/transition/ChangeClipBounds$1;-><init>(Landroid/view/View;)V

    .line 111
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    :cond_6
    return-object p1

    .line 117
    :cond_7
    :goto_2
    return-object p0
    .line 118
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Landroidx/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
