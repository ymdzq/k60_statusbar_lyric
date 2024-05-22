.class public Landroidx/transition/ChangeImageTransform;
.super Landroidx/transition/Transition;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ANIMATED_TRANSFORM_PROPERTY:Landroidx/transition/ChangeImageTransform$2;

.field public static final NULL_MATRIX_EVALUATOR:Landroidx/transition/ChangeImageTransform$1;

.field public static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "android:changeImageTransform:matrix"

    .line 2
    const-string v1, "android:changeImageTransform:bounds"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 10
    new-instance v0, Landroidx/transition/ChangeImageTransform$1;

    .line 12
    invoke-direct {v0}, Landroidx/transition/ChangeImageTransform$1;-><init>()V

    .line 14
    sput-object v0, Landroidx/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroidx/transition/ChangeImageTransform$1;

    .line 17
    new-instance v0, Landroidx/transition/ChangeImageTransform$2;

    .line 19
    const-class v1, Landroid/graphics/Matrix;

    .line 21
    invoke-direct {v0, v1}, Landroidx/transition/ChangeImageTransform$2;-><init>(Ljava/lang/Class;)V

    .line 23
    sput-object v0, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroidx/transition/ChangeImageTransform$2;

    .line 26
    return-void
    .line 28
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
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeImageTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    return-void
    .line 5
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeImageTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    return-void
    .line 5
.end method

.method public final captureValues(Landroidx/transition/TransitionValues;)V
    .locals 5

    .line 1
    iget-object p0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    instance-of v0, p0, Landroid/widget/ImageView;

    .line 4
    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    goto/16 :goto_1

    .line 14
    :cond_0
    move-object v0, p0

    .line 16
    check-cast v0, Landroid/widget/ImageView;

    .line 17
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    return-void

    .line 25
    :cond_1
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 28
    move-result v1

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 32
    move-result v2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 36
    move-result v3

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 40
    move-result p0

    .line 43
    new-instance v4, Landroid/graphics/Rect;

    .line 44
    invoke-direct {v4, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 46
    check-cast p1, Ljava/util/HashMap;

    .line 49
    const-string p0, "android:changeImageTransform:bounds"

    .line 51
    invoke-virtual {p1, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 60
    move-result v1

    .line 63
    if-lez v1, :cond_4

    .line 64
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 66
    move-result p0

    .line 69
    if-lez p0, :cond_4

    .line 70
    sget-object p0, Landroidx/transition/ChangeImageTransform$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    .line 72
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    .line 78
    move-result v1

    .line 81
    aget p0, p0, v1

    .line 82
    const/4 v1, 0x1

    .line 84
    if-eq p0, v1, :cond_3

    .line 85
    const/4 v1, 0x2

    .line 87
    if-eq p0, v1, :cond_2

    .line 88
    new-instance p0, Landroid/graphics/Matrix;

    .line 90
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 92
    move-result-object v0

    .line 95
    invoke-direct {p0, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 96
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 100
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 104
    move-result v1

    .line 107
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    .line 108
    move-result v2

    .line 111
    int-to-float v2, v2

    .line 112
    int-to-float v1, v1

    .line 113
    div-float v3, v2, v1

    .line 114
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 116
    move-result p0

    .line 119
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    .line 120
    move-result v0

    .line 123
    int-to-float v0, v0

    .line 124
    int-to-float p0, p0

    .line 125
    div-float v4, v0, p0

    .line 126
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 128
    move-result v3

    .line 131
    mul-float/2addr v1, v3

    .line 132
    mul-float/2addr p0, v3

    .line 133
    sub-float/2addr v2, v1

    .line 134
    const/high16 v1, 0x40000000    # 2.0f

    .line 135
    div-float/2addr v2, v1

    .line 137
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 138
    move-result v2

    .line 141
    sub-float/2addr v0, p0

    .line 142
    div-float/2addr v0, v1

    .line 143
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 144
    move-result p0

    .line 147
    new-instance v0, Landroid/graphics/Matrix;

    .line 148
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 150
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 153
    int-to-float v1, v2

    .line 156
    int-to-float p0, p0

    .line 157
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 158
    move-object p0, v0

    .line 161
    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 163
    move-result-object p0

    .line 166
    new-instance v1, Landroid/graphics/Matrix;

    .line 167
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 169
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    .line 172
    move-result v2

    .line 175
    int-to-float v2, v2

    .line 176
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 177
    move-result v3

    .line 180
    int-to-float v3, v3

    .line 181
    div-float/2addr v2, v3

    .line 182
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    .line 183
    move-result v0

    .line 186
    int-to-float v0, v0

    .line 187
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 188
    move-result p0

    .line 191
    int-to-float p0, p0

    .line 192
    div-float/2addr v0, p0

    .line 193
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 194
    move-object p0, v1

    .line 197
    goto :goto_0

    .line 198
    :cond_4
    new-instance p0, Landroid/graphics/Matrix;

    .line 199
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 201
    move-result-object v0

    .line 204
    invoke-direct {p0, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 205
    :goto_0
    const-string v0, "android:changeImageTransform:matrix"

    .line 208
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_5
    :goto_1
    return-void
    .line 213
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p2, :cond_a

    .line 3
    if-nez p3, :cond_0

    .line 5
    goto/16 :goto_2

    .line 7
    :cond_0
    iget-object p1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 9
    check-cast p1, Ljava/util/HashMap;

    .line 11
    const-string p2, "android:changeImageTransform:bounds"

    .line 13
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Landroid/graphics/Rect;

    .line 19
    iget-object v1, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 21
    check-cast v1, Ljava/util/HashMap;

    .line 23
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 28
    check-cast p2, Landroid/graphics/Rect;

    .line 29
    if-eqz v0, :cond_a

    .line 31
    if-nez p2, :cond_1

    .line 33
    goto :goto_2

    .line 35
    :cond_1
    const-string v2, "android:changeImageTransform:matrix"

    .line 36
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 41
    check-cast p1, Landroid/graphics/Matrix;

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 47
    check-cast v1, Landroid/graphics/Matrix;

    .line 48
    if-nez p1, :cond_2

    .line 50
    if-eqz v1, :cond_3

    .line 52
    :cond_2
    if-eqz p1, :cond_4

    .line 54
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    :cond_3
    const/4 v2, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const/4 v2, 0x0

    .line 64
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result p2

    .line 68
    if-eqz p2, :cond_5

    .line 69
    if-eqz v2, :cond_5

    .line 71
    return-object p0

    .line 73
    :cond_5
    iget-object p0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 74
    check-cast p0, Landroid/widget/ImageView;

    .line 76
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 78
    move-result-object p2

    .line 81
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 82
    move-result p3

    .line 85
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 86
    move-result p2

    .line 89
    if-lez p3, :cond_9

    .line 90
    if-gtz p2, :cond_6

    .line 92
    goto :goto_1

    .line 94
    :cond_6
    if-nez p1, :cond_7

    .line 95
    sget-object p1, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroidx/transition/MatrixUtils$1;

    .line 97
    :cond_7
    if-nez v1, :cond_8

    .line 99
    sget-object v1, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroidx/transition/MatrixUtils$1;

    .line 101
    :cond_8
    sget-object p2, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroidx/transition/ChangeImageTransform$2;

    .line 103
    invoke-virtual {p2, p0, p1}, Landroidx/transition/ChangeImageTransform$2;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    new-instance p3, Landroidx/transition/TransitionUtils$MatrixEvaluator;

    .line 108
    invoke-direct {p3}, Landroidx/transition/TransitionUtils$MatrixEvaluator;-><init>()V

    .line 110
    filled-new-array {p1, v1}, [Landroid/graphics/Matrix;

    .line 113
    move-result-object p1

    .line 116
    invoke-static {p0, p2, p3, p1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 117
    move-result-object p0

    .line 120
    goto :goto_2

    .line 121
    :cond_9
    :goto_1
    sget-object p1, Landroidx/transition/ChangeImageTransform;->ANIMATED_TRANSFORM_PROPERTY:Landroidx/transition/ChangeImageTransform$2;

    .line 122
    sget-object p2, Landroidx/transition/ChangeImageTransform;->NULL_MATRIX_EVALUATOR:Landroidx/transition/ChangeImageTransform$1;

    .line 124
    sget-object p3, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroidx/transition/MatrixUtils$1;

    .line 126
    filled-new-array {p3, p3}, [Landroid/graphics/Matrix;

    .line 128
    move-result-object p3

    .line 131
    invoke-static {p0, p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 132
    move-result-object p0

    .line 135
    :cond_a
    :goto_2
    return-object p0
    .line 136
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Landroidx/transition/ChangeImageTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
