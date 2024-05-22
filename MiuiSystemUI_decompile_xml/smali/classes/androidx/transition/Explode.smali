.class public Landroidx/transition/Explode;
.super Landroidx/transition/Visibility;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sAccelerate:Landroid/animation/TimeInterpolator;

.field public static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field public final mTempLoc:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 4
    sput-object v0, Landroidx/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 7
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 9
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 11
    sput-object v0, Landroidx/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 14
    return-void
    .line 16
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, 0x2

    .line 5
    new-array p1, p1, [I

    .line 6
    iput-object p1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 8
    new-instance p1, Landroidx/transition/CircularPropagation;

    .line 10
    invoke-direct {p1}, Landroidx/transition/CircularPropagation;-><init>()V

    .line 12
    iput-object p1, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 15
    return-void
    .line 17
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 2
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 4
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    iget-object p0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 9
    const/4 v0, 0x0

    .line 11
    aget v0, p0, v0

    .line 12
    const/4 v2, 0x1

    .line 14
    aget p0, p0, v2

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 17
    move-result v2

    .line 20
    add-int/2addr v2, v0

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 22
    move-result v1

    .line 25
    add-int/2addr v1, p0

    .line 26
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 27
    new-instance v3, Landroid/graphics/Rect;

    .line 29
    invoke-direct {v3, v0, p0, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 31
    check-cast p1, Ljava/util/HashMap;

    .line 34
    const-string p0, "android:explode:screenBounds"

    .line 36
    invoke-virtual {p1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
    .line 41
.end method


# virtual methods
.method public final calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    iget-object v0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 7
    const/4 v1, 0x0

    .line 9
    aget v2, v0, v1

    .line 10
    const/4 v3, 0x1

    .line 12
    aget v0, v0, v3

    .line 13
    invoke-virtual {p0}, Landroidx/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    .line 15
    move-result-object p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 21
    move-result p0

    .line 24
    div-int/lit8 p0, p0, 0x2

    .line 25
    add-int/2addr p0, v2

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 28
    move-result v4

    .line 31
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 32
    move-result v4

    .line 35
    add-int/2addr v4, p0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 37
    move-result p0

    .line 40
    div-int/lit8 p0, p0, 0x2

    .line 41
    add-int/2addr p0, v0

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 44
    move-result v5

    .line 47
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 48
    move-result v5

    .line 51
    add-int/2addr v5, p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    .line 54
    move-result v4

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    .line 58
    move-result v5

    .line 61
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    .line 62
    move-result p0

    .line 65
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    .line 66
    move-result p2

    .line 69
    sub-int/2addr p0, v4

    .line 70
    int-to-float p0, p0

    .line 71
    sub-int/2addr p2, v5

    .line 72
    int-to-float p2, p2

    .line 73
    const/4 v6, 0x0

    .line 74
    cmpl-float v7, p0, v6

    .line 75
    if-nez v7, :cond_1

    .line 77
    cmpl-float v6, p2, v6

    .line 79
    if-nez v6, :cond_1

    .line 81
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 83
    move-result-wide v6

    .line 86
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 87
    mul-double/2addr v6, v8

    .line 89
    double-to-float p0, v6

    .line 90
    const/high16 p2, 0x3f800000    # 1.0f

    .line 91
    sub-float/2addr p0, p2

    .line 93
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 94
    move-result-wide v6

    .line 97
    mul-double/2addr v6, v8

    .line 98
    double-to-float v6, v6

    .line 99
    sub-float p2, v6, p2

    .line 100
    :cond_1
    mul-float v6, p0, p0

    .line 102
    mul-float v7, p2, p2

    .line 104
    add-float/2addr v7, v6

    .line 106
    float-to-double v6, v7

    .line 107
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 108
    move-result-wide v6

    .line 111
    double-to-float v6, v6

    .line 112
    div-float/2addr p0, v6

    .line 113
    div-float/2addr p2, v6

    .line 114
    sub-int/2addr v4, v2

    .line 115
    sub-int/2addr v5, v0

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 117
    move-result v0

    .line 120
    sub-int/2addr v0, v4

    .line 121
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 122
    move-result v0

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 126
    move-result p1

    .line 129
    sub-int/2addr p1, v5

    .line 130
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    .line 131
    move-result p1

    .line 134
    int-to-float v0, v0

    .line 135
    int-to-float p1, p1

    .line 136
    mul-float/2addr v0, v0

    .line 137
    mul-float/2addr p1, p1

    .line 138
    add-float/2addr p1, v0

    .line 139
    float-to-double v4, p1

    .line 140
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 141
    move-result-wide v4

    .line 144
    double-to-float p1, v4

    .line 145
    mul-float/2addr p0, p1

    .line 146
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 147
    move-result p0

    .line 150
    aput p0, p3, v1

    .line 151
    mul-float/2addr p1, p2

    .line 153
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 154
    move-result p0

    .line 157
    aput p0, p3, v3

    .line 158
    return-void
    .line 160
.end method

.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    invoke-direct {p0, p1}, Landroidx/transition/Explode;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 5
    return-void
    .line 8
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    invoke-direct {p0, p1}, Landroidx/transition/Explode;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 5
    return-void
    .line 8
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
    const-string v0, "android:explode:screenBounds"

    .line 8
    check-cast p3, Ljava/util/HashMap;

    .line 10
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p3

    .line 15
    check-cast p3, Landroid/graphics/Rect;

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 18
    move-result v6

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 22
    move-result v7

    .line 25
    iget-object v0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 26
    invoke-virtual {p0, p1, p3, v0}, Landroidx/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 28
    iget-object p1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 31
    const/4 v0, 0x0

    .line 33
    aget v0, p1, v0

    .line 34
    int-to-float v0, v0

    .line 36
    add-float v4, v6, v0

    .line 37
    const/4 v0, 0x1

    .line 39
    aget p1, p1, v0

    .line 40
    int-to-float p1, p1

    .line 42
    add-float v5, v7, p1

    .line 43
    iget v2, p3, Landroid/graphics/Rect;->left:I

    .line 45
    iget v3, p3, Landroid/graphics/Rect;->top:I

    .line 47
    sget-object v8, Landroidx/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 49
    move-object v0, p2

    .line 51
    move-object v1, p4

    .line 52
    move-object v9, p0

    .line 53
    invoke-static/range {v0 .. v9}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    .line 54
    move-result-object p0

    .line 57
    return-object p0
    .line 58
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
    const-string v1, "android:explode:screenBounds"

    .line 8
    check-cast v0, Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Landroid/graphics/Rect;

    .line 16
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 18
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 22
    move-result v5

    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 26
    move-result v6

    .line 29
    iget-object v1, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 30
    const v2, 0x7f0a09da    # @id/transition_position

    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, [I

    .line 39
    const/4 v2, 0x1

    .line 41
    const/4 v7, 0x0

    .line 42
    if-eqz v1, :cond_1

    .line 43
    aget v8, v1, v7

    .line 45
    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 47
    sub-int v9, v8, v9

    .line 49
    int-to-float v9, v9

    .line 51
    add-float/2addr v9, v5

    .line 52
    aget v1, v1, v2

    .line 53
    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 55
    sub-int v10, v1, v10

    .line 57
    int-to-float v10, v10

    .line 59
    add-float/2addr v10, v6

    .line 60
    invoke-virtual {v0, v8, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 61
    goto :goto_0

    .line 64
    :cond_1
    move v9, v5

    .line 65
    move v10, v6

    .line 66
    :goto_0
    iget-object v1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 67
    invoke-virtual {p0, p1, v0, v1}, Landroidx/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 69
    iget-object p1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 72
    aget v0, p1, v7

    .line 74
    int-to-float v0, v0

    .line 76
    add-float v7, v9, v0

    .line 77
    aget p1, p1, v2

    .line 79
    int-to-float p1, p1

    .line 81
    add-float v8, v10, p1

    .line 82
    sget-object v9, Landroidx/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 84
    move-object v1, p2

    .line 86
    move-object v2, p3

    .line 87
    move-object v10, p0

    .line 88
    invoke-static/range {v1 .. v10}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    .line 89
    move-result-object p0

    .line 92
    return-object p0
    .line 93
.end method
