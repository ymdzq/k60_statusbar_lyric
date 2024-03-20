.class public Landroidx/transition/ChangeScroll;
.super Landroidx/transition/Transition;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final PROPERTIES:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "android:changeScroll:x"

    .line 2
    const-string v1, "android:changeScroll:y"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    .line 10
    return-void
    .line 12
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
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeScroll;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    return-void
    .line 5
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeScroll;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    return-void
    .line 5
.end method

.method public final captureValues(Landroidx/transition/TransitionValues;)V
    .locals 3

    .line 1
    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 2
    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 6
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 13
    move-object v1, p0

    .line 14
    check-cast v1, Ljava/util/HashMap;

    .line 15
    const-string v2, "android:changeScroll:x"

    .line 17
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 22
    move-result p1

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 29
    check-cast p0, Ljava/util/HashMap;

    .line 30
    const-string v0, "android:changeScroll:y"

    .line 32
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
    .line 37
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p2, :cond_5

    .line 3
    if-nez p3, :cond_0

    .line 5
    goto :goto_1

    .line 7
    :cond_0
    iget-object p1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 8
    check-cast p1, Ljava/util/HashMap;

    .line 10
    const-string p2, "android:changeScroll:x"

    .line 12
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v0

    .line 23
    iget-object v1, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 24
    check-cast v1, Ljava/util/HashMap;

    .line 26
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 31
    check-cast p2, Ljava/lang/Integer;

    .line 32
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result p2

    .line 37
    const-string v2, "android:changeScroll:y"

    .line 38
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Integer;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result p1

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/Integer;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 56
    move-result v1

    .line 59
    iget-object p3, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 60
    if-eq v0, p2, :cond_1

    .line 62
    invoke-virtual {p3, v0}, Landroid/view/View;->setScrollX(I)V

    .line 64
    const-string/jumbo v2, "scrollX"

    .line 67
    filled-new-array {v0, p2}, [I

    .line 70
    move-result-object p2

    .line 73
    invoke-static {p3, v2, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 74
    move-result-object p2

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move-object p2, p0

    .line 79
    :goto_0
    if-eq p1, v1, :cond_2

    .line 80
    invoke-virtual {p3, p1}, Landroid/view/View;->setScrollY(I)V

    .line 82
    const-string/jumbo p0, "scrollY"

    .line 85
    filled-new-array {p1, v1}, [I

    .line 88
    move-result-object p1

    .line 91
    invoke-static {p3, p0, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 92
    move-result-object p0

    .line 95
    :cond_2
    if-nez p2, :cond_3

    .line 96
    goto :goto_1

    .line 98
    :cond_3
    if-nez p0, :cond_4

    .line 99
    move-object p0, p2

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 103
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 105
    filled-new-array {p2, p0}, [Landroid/animation/Animator;

    .line 108
    move-result-object p0

    .line 111
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 112
    move-object p0, p1

    .line 115
    :cond_5
    :goto_1
    return-object p0
    .line 116
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Landroidx/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
