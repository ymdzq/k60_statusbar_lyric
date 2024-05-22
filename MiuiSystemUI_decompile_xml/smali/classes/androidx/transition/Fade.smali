.class public Landroidx/transition/Fade;
.super Landroidx/transition/Visibility;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Landroidx/transition/Visibility;->mMode:I

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    sget-object v0, Landroidx/transition/Styleable;->FADE:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    check-cast p2, Landroid/content/res/XmlResourceParser;

    .line 7
    iget v0, p0, Landroidx/transition/Visibility;->mMode:I

    const-string v1, "fadingMode"

    const/4 v2, 0x0

    .line 8
    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    and-int/lit8 v0, p2, -0x4

    if-nez v0, :cond_0

    .line 9
    iput p2, p0, Landroidx/transition/Visibility;->mMode:I

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 5
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 7
    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    .line 11
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    move-result-object p1

    .line 18
    check-cast p0, Ljava/util/HashMap;

    .line 19
    const-string v0, "android:fade:transitionAlpha"

    .line 21
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
    .line 26
.end method

.method public final createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 2

    .line 1
    cmpl-float v0, p2, p3

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    sget-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 10
    sget-object p2, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    .line 13
    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [F

    .line 16
    const/4 v1, 0x0

    .line 18
    aput p3, v0, v1

    .line 19
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 21
    move-result-object p2

    .line 24
    new-instance p3, Landroidx/transition/Fade$FadeAnimatorListener;

    .line 25
    invoke-direct {p3, p1}, Landroidx/transition/Fade$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    .line 27
    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    new-instance p3, Landroidx/transition/Fade$1;

    .line 33
    invoke-direct {p3, p1}, Landroidx/transition/Fade$1;-><init>(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0, p3}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 38
    return-object p2
    .line 41
.end method

.method public final onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    iget-object p3, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 5
    const-string p4, "android:fade:transitionAlpha"

    .line 7
    check-cast p3, Ljava/util/HashMap;

    .line 9
    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p3

    .line 14
    check-cast p3, Ljava/lang/Float;

    .line 15
    if-eqz p3, :cond_0

    .line 17
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 19
    move-result p3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p3, p1

    .line 24
    :goto_0
    const/high16 p4, 0x3f800000    # 1.0f

    .line 25
    cmpl-float v0, p3, p4

    .line 27
    if-nez v0, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    move p1, p3

    .line 32
    :goto_1
    invoke-virtual {p0, p2, p1, p4}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 33
    move-result-object p0

    .line 36
    return-object p0
    .line 37
.end method

.method public final onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1
    sget-object p1, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 2
    if-eqz p3, :cond_0

    .line 4
    iget-object p1, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 6
    const-string p3, "android:fade:transitionAlpha"

    .line 8
    check-cast p1, Ljava/util/HashMap;

    .line 10
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Float;

    .line 16
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 20
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    :goto_0
    const/4 p3, 0x0

    .line 27
    invoke-virtual {p0, p2, p1, p3}, Landroidx/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    .line 28
    move-result-object p0

    .line 31
    return-object p0
    .line 32
.end method
