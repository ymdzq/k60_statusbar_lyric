.class public Landroidx/transition/Slide;
.super Landroidx/transition/Visibility;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sAccelerate:Landroid/animation/TimeInterpolator;

.field public static final sCalculateBottom:Landroidx/transition/Slide$3;

.field public static final sCalculateEnd:Landroidx/transition/Slide$1;

.field public static final sCalculateLeft:Landroidx/transition/Slide$1;

.field public static final sCalculateRight:Landroidx/transition/Slide$1;

.field public static final sCalculateStart:Landroidx/transition/Slide$1;

.field public static final sCalculateTop:Landroidx/transition/Slide$3;

.field public static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field public mSlideCalculator:Landroidx/transition/Slide$CalculateSlideVertical;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 4
    sput-object v0, Landroidx/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 7
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 9
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 11
    sput-object v0, Landroidx/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 14
    new-instance v0, Landroidx/transition/Slide$1;

    .line 16
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Landroidx/transition/Slide$1;-><init>(I)V

    .line 19
    sput-object v0, Landroidx/transition/Slide;->sCalculateLeft:Landroidx/transition/Slide$1;

    .line 22
    new-instance v0, Landroidx/transition/Slide$1;

    .line 24
    const/4 v2, 0x1

    .line 26
    invoke-direct {v0, v2}, Landroidx/transition/Slide$1;-><init>(I)V

    .line 27
    sput-object v0, Landroidx/transition/Slide;->sCalculateStart:Landroidx/transition/Slide$1;

    .line 30
    new-instance v0, Landroidx/transition/Slide$3;

    .line 32
    invoke-direct {v0, v1}, Landroidx/transition/Slide$3;-><init>(I)V

    .line 34
    sput-object v0, Landroidx/transition/Slide;->sCalculateTop:Landroidx/transition/Slide$3;

    .line 37
    new-instance v0, Landroidx/transition/Slide$1;

    .line 39
    const/4 v1, 0x2

    .line 41
    invoke-direct {v0, v1}, Landroidx/transition/Slide$1;-><init>(I)V

    .line 42
    sput-object v0, Landroidx/transition/Slide;->sCalculateRight:Landroidx/transition/Slide$1;

    .line 45
    new-instance v0, Landroidx/transition/Slide$1;

    .line 47
    const/4 v1, 0x3

    .line 49
    invoke-direct {v0, v1}, Landroidx/transition/Slide$1;-><init>(I)V

    .line 50
    sput-object v0, Landroidx/transition/Slide;->sCalculateEnd:Landroidx/transition/Slide$1;

    .line 53
    new-instance v0, Landroidx/transition/Slide$3;

    .line 55
    invoke-direct {v0, v2}, Landroidx/transition/Slide$3;-><init>(I)V

    .line 57
    sput-object v0, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$3;

    .line 60
    return-void
    .line 62
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v0, Landroidx/transition/Slide;->sCalculateBottom:Landroidx/transition/Slide$3;

    .line 5
    iput-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlideVertical;

    .line 7
    sget-object v1, Landroidx/transition/Styleable;->SLIDE:[I

    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p1

    .line 14
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    .line 15
    const-string/jumbo v1, "slideEdge"

    .line 17
    const/4 v2, 0x0

    .line 20
    const/16 v3, 0x50

    .line 21
    invoke-static {p1, p2, v1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 23
    move-result p2

    .line 26
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    const/4 p1, 0x3

    .line 30
    if-eq p2, p1, :cond_5

    .line 31
    const/4 p1, 0x5

    .line 33
    if-eq p2, p1, :cond_4

    .line 34
    const/16 p1, 0x30

    .line 36
    if-eq p2, p1, :cond_3

    .line 38
    if-eq p2, v3, :cond_2

    .line 40
    const p1, 0x800003

    .line 42
    if-eq p2, p1, :cond_1

    .line 45
    const p1, 0x800005

    .line 47
    if-ne p2, p1, :cond_0

    .line 50
    sget-object p1, Landroidx/transition/Slide;->sCalculateEnd:Landroidx/transition/Slide$1;

    .line 52
    iput-object p1, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlideVertical;

    .line 54
    goto :goto_0

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    const-string p1, "Invalid slide direction"

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p0

    .line 64
    :cond_1
    sget-object p1, Landroidx/transition/Slide;->sCalculateStart:Landroidx/transition/Slide$1;

    .line 65
    iput-object p1, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlideVertical;

    .line 67
    goto :goto_0

    .line 69
    :cond_2
    iput-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlideVertical;

    .line 70
    goto :goto_0

    .line 72
    :cond_3
    sget-object p1, Landroidx/transition/Slide;->sCalculateTop:Landroidx/transition/Slide$3;

    .line 73
    iput-object p1, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlideVertical;

    .line 75
    goto :goto_0

    .line 77
    :cond_4
    sget-object p1, Landroidx/transition/Slide;->sCalculateRight:Landroidx/transition/Slide$1;

    .line 78
    iput-object p1, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlideVertical;

    .line 80
    goto :goto_0

    .line 82
    :cond_5
    sget-object p1, Landroidx/transition/Slide;->sCalculateLeft:Landroidx/transition/Slide$1;

    .line 83
    iput-object p1, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlideVertical;

    .line 85
    :goto_0
    new-instance p1, Landroidx/transition/SidePropagation;

    .line 87
    invoke-direct {p1}, Landroidx/transition/SidePropagation;-><init>()V

    .line 89
    iput p2, p1, Landroidx/transition/SidePropagation;->mSide:I

    .line 92
    iput-object p1, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 94
    return-void
    .line 96
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    const/4 p0, 0x2

    .line 5
    new-array p0, p0, [I

    .line 6
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 10
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 13
    const-string v0, "android:slide:screenPosition"

    .line 15
    check-cast p1, Ljava/util/HashMap;

    .line 17
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
    .line 22
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    const/4 p0, 0x2

    .line 5
    new-array p0, p0, [I

    .line 6
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 10
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 13
    const-string v0, "android:slide:screenPosition"

    .line 15
    check-cast p1, Ljava/util/HashMap;

    .line 17
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
    .line 22
.end method

.method public final onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    .line 1
    if-nez p4, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object p3, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 6
    const-string v0, "android:slide:screenPosition"

    .line 8
    check-cast p3, Ljava/util/HashMap;

    .line 10
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p3

    .line 15
    check-cast p3, [I

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 18
    move-result v6

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 22
    move-result v7

    .line 25
    iget-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlideVertical;

    .line 26
    invoke-interface {v0, p2, p1}, Landroidx/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/View;Landroid/view/ViewGroup;)F

    .line 28
    move-result v4

    .line 31
    iget-object v0, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlideVertical;

    .line 32
    invoke-interface {v0, p2, p1}, Landroidx/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/View;Landroid/view/ViewGroup;)F

    .line 34
    move-result v5

    .line 37
    const/4 p1, 0x0

    .line 38
    aget v2, p3, p1

    .line 39
    const/4 p1, 0x1

    .line 41
    aget v3, p3, p1

    .line 42
    sget-object v8, Landroidx/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 44
    move-object v0, p2

    .line 46
    move-object v1, p4

    .line 47
    move-object v9, p0

    .line 48
    invoke-static/range {v0 .. v9}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    .line 49
    move-result-object p0

    .line 52
    return-object p0
    .line 53
.end method

.method public final onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11

    .line 1
    if-nez p3, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object v0, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 6
    const-string v1, "android:slide:screenPosition"

    .line 8
    check-cast v0, Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, [I

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 18
    move-result v5

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 22
    move-result v6

    .line 25
    iget-object v1, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlideVertical;

    .line 26
    invoke-interface {v1, p2, p1}, Landroidx/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/View;Landroid/view/ViewGroup;)F

    .line 28
    move-result v7

    .line 31
    iget-object v1, p0, Landroidx/transition/Slide;->mSlideCalculator:Landroidx/transition/Slide$CalculateSlideVertical;

    .line 32
    invoke-interface {v1, p2, p1}, Landroidx/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/View;Landroid/view/ViewGroup;)F

    .line 34
    move-result v8

    .line 37
    const/4 p1, 0x0

    .line 38
    aget v3, v0, p1

    .line 39
    const/4 p1, 0x1

    .line 41
    aget v4, v0, p1

    .line 42
    sget-object v9, Landroidx/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 44
    move-object v1, p2

    .line 46
    move-object v2, p3

    .line 47
    move-object v10, p0

    .line 48
    invoke-static/range {v1 .. v10}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    .line 49
    move-result-object p0

    .line 52
    return-object p0
    .line 53
.end method
