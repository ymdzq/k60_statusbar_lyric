.class public Landroidx/transition/ChangeTransform;
.super Landroidx/transition/Transition;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final NON_TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$1;

.field public static final SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

.field public static final TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$1;

.field public static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field public final mReparent:Z

.field public final mTempMatrix:Landroid/graphics/Matrix;

.field public final mUseOverlay:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "android:changeTransform:parentMatrix"

    .line 2
    const-string v1, "android:changeTransform:matrix"

    .line 4
    const-string v2, "android:changeTransform:transforms"

    .line 6
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 12
    new-instance v0, Landroidx/transition/ChangeTransform$1;

    .line 14
    const/4 v1, 0x0

    .line 16
    const-class v2, [F

    .line 17
    const-string v3, "nonTranslations"

    .line 19
    invoke-direct {v0, v3, v1, v2}, Landroidx/transition/ChangeTransform$1;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 21
    sput-object v0, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$1;

    .line 24
    new-instance v0, Landroidx/transition/ChangeTransform$1;

    .line 26
    const-class v1, Landroid/graphics/PointF;

    .line 28
    const-string/jumbo v2, "translations"

    .line 30
    const/4 v3, 0x1

    .line 33
    invoke-direct {v0, v2, v3, v1}, Landroidx/transition/ChangeTransform$1;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 34
    sput-object v0, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$1;

    .line 37
    sput-boolean v3, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    .line 39
    return-void
    .line 41
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 6
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 8
    new-instance v1, Landroid/graphics/Matrix;

    .line 10
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 12
    iput-object v1, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 15
    sget-object v1, Landroidx/transition/Styleable;->CHANGE_TRANSFORM:[I

    .line 17
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 19
    move-result-object p1

    .line 22
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    .line 23
    const-string/jumbo v1, "reparentWithOverlay"

    .line 25
    invoke-static {p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 28
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    move v1, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 36
    move-result v1

    .line 39
    :goto_0
    iput-boolean v1, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 40
    const-string/jumbo v1, "reparent"

    .line 42
    invoke-static {p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 45
    move-result p2

    .line 48
    if-nez p2, :cond_1

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    const/4 p2, 0x0

    .line 52
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 53
    move-result v0

    .line 56
    :goto_1
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
    .line 62
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    return-void
    .line 5
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    sget-boolean p0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    .line 5
    if-nez p0, :cond_0

    .line 7
    iget-object p0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final captureValues(Landroidx/transition/TransitionValues;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v1

    .line 7
    const/16 v2, 0x8

    .line 8
    if-ne v1, v2, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v1

    .line 18
    check-cast p1, Ljava/util/HashMap;

    .line 19
    const-string v2, "android:changeTransform:parent"

    .line 21
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Landroidx/transition/ChangeTransform$Transforms;

    .line 26
    invoke-direct {v1, v0}, Landroidx/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    .line 28
    const-string v2, "android:changeTransform:transforms"

    .line 31
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 36
    move-result-object v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 42
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    .line 49
    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 51
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 55
    :goto_1
    const-string v1, "android:changeTransform:matrix"

    .line 56
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-boolean p0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 61
    if-eqz p0, :cond_3

    .line 63
    new-instance p0, Landroid/graphics/Matrix;

    .line 65
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 70
    move-result-object v1

    .line 73
    check-cast v1, Landroid/view/ViewGroup;

    .line 74
    sget-object v2, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 76
    invoke-virtual {v1, p0}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 78
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    .line 81
    move-result v2

    .line 84
    neg-int v2, v2

    .line 85
    int-to-float v2, v2

    .line 86
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    .line 87
    move-result v1

    .line 90
    neg-int v1, v1

    .line 91
    int-to-float v1, v1

    .line 92
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 93
    const-string v1, "android:changeTransform:parentMatrix"

    .line 96
    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const p0, 0x7f0a09dc    # @id/transition_transform

    .line 101
    invoke-virtual {v0, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 104
    move-result-object p0

    .line 107
    const-string v1, "android:changeTransform:intermediateMatrix"

    .line 108
    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const p0, 0x7f0a06ec    # @id/parent_matrix

    .line 113
    invoke-virtual {v0, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 116
    move-result-object p0

    .line 119
    const-string v0, "android:changeTransform:intermediateParentMatrix"

    .line 120
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_3
    return-void
    .line 125
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    move-object/from16 v9, p2

    .line 6
    move-object/from16 v0, p3

    .line 8
    if-eqz v9, :cond_23

    .line 10
    if-eqz v0, :cond_23

    .line 12
    iget-object v1, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 14
    move-object v11, v1

    .line 16
    check-cast v11, Ljava/util/HashMap;

    .line 17
    const-string v12, "android:changeTransform:parent"

    .line 19
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_23

    .line 25
    iget-object v1, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 27
    move-object v13, v1

    .line 29
    check-cast v13, Ljava/util/HashMap;

    .line 30
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    goto/16 :goto_14

    .line 38
    :cond_0
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 43
    move-object v14, v1

    .line 44
    check-cast v14, Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 50
    check-cast v1, Landroid/view/ViewGroup;

    .line 51
    iget-boolean v2, v7, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 53
    const/4 v15, 0x1

    .line 55
    if-eqz v2, :cond_4

    .line 56
    invoke-virtual {v7, v14}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 58
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {v7, v1}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    .line 64
    move-result v2

    .line 67
    if-nez v2, :cond_1

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v7, v14, v15}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 71
    move-result-object v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    iget-object v2, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 77
    if-ne v1, v2, :cond_3

    .line 79
    goto :goto_1

    .line 81
    :cond_2
    :goto_0
    if-ne v14, v1, :cond_3

    .line 82
    :goto_1
    move v1, v15

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v1, 0x0

    .line 86
    :goto_2
    if-nez v1, :cond_4

    .line 87
    move/from16 v16, v15

    .line 89
    goto :goto_3

    .line 91
    :cond_4
    const/16 v16, 0x0

    .line 92
    :goto_3
    const-string v1, "android:changeTransform:intermediateMatrix"

    .line 94
    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object v1

    .line 99
    check-cast v1, Landroid/graphics/Matrix;

    .line 100
    const-string v2, "android:changeTransform:matrix"

    .line 102
    if-eqz v1, :cond_5

    .line 104
    invoke-virtual {v11, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_5
    const-string v1, "android:changeTransform:intermediateParentMatrix"

    .line 109
    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-result-object v1

    .line 114
    check-cast v1, Landroid/graphics/Matrix;

    .line 115
    const-string v5, "android:changeTransform:parentMatrix"

    .line 117
    if-eqz v1, :cond_6

    .line 119
    invoke-virtual {v11, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_6
    iget-object v4, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 124
    if-eqz v16, :cond_8

    .line 126
    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-result-object v0

    .line 131
    check-cast v0, Landroid/graphics/Matrix;

    .line 132
    const v1, 0x7f0a06ec    # @id/parent_matrix

    .line 134
    invoke-virtual {v4, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 137
    iget-object v1, v7, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 140
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 142
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 145
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    move-result-object v0

    .line 151
    check-cast v0, Landroid/graphics/Matrix;

    .line 152
    if-nez v0, :cond_7

    .line 154
    new-instance v0, Landroid/graphics/Matrix;

    .line 156
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 158
    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_7
    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    move-result-object v3

    .line 167
    check-cast v3, Landroid/graphics/Matrix;

    .line 168
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 170
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 173
    :cond_8
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    move-result-object v0

    .line 179
    check-cast v0, Landroid/graphics/Matrix;

    .line 180
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    move-result-object v1

    .line 185
    check-cast v1, Landroid/graphics/Matrix;

    .line 186
    if-nez v0, :cond_9

    .line 188
    sget-object v0, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroidx/transition/MatrixUtils$1;

    .line 190
    :cond_9
    if-nez v1, :cond_a

    .line 192
    sget-object v1, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroidx/transition/MatrixUtils$1;

    .line 194
    :cond_a
    move-object v3, v1

    .line 196
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    .line 197
    move-result v1

    .line 200
    const/high16 v2, 0x3f800000    # 1.0f

    .line 201
    const/4 v15, 0x0

    .line 203
    const/16 v17, 0x2

    .line 204
    if-eqz v1, :cond_b

    .line 206
    move-object/from16 v21, v4

    .line 208
    move-object/from16 v18, v11

    .line 210
    move-object/from16 v20, v14

    .line 212
    const/4 v4, 0x0

    .line 214
    const/4 v11, 0x0

    .line 215
    move-object v14, v5

    .line 216
    goto/16 :goto_4

    .line 217
    :cond_b
    const-string v1, "android:changeTransform:transforms"

    .line 219
    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    move-result-object v1

    .line 224
    move-object/from16 v18, v1

    .line 225
    check-cast v18, Landroidx/transition/ChangeTransform$Transforms;

    .line 227
    invoke-virtual {v4, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 229
    invoke-virtual {v4, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 232
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 235
    invoke-static {v4, v15}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    .line 237
    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleX(F)V

    .line 240
    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleY(F)V

    .line 243
    invoke-virtual {v4, v15}, Landroid/view/View;->setRotationX(F)V

    .line 246
    invoke-virtual {v4, v15}, Landroid/view/View;->setRotationY(F)V

    .line 249
    invoke-virtual {v4, v15}, Landroid/view/View;->setRotation(F)V

    .line 252
    const/16 v1, 0x9

    .line 255
    new-array v2, v1, [F

    .line 257
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 259
    new-array v0, v1, [F

    .line 262
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 264
    new-instance v6, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 267
    invoke-direct {v6, v4, v2}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    .line 269
    sget-object v15, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$1;

    .line 272
    new-instance v10, Landroidx/transition/FloatArrayEvaluator;

    .line 274
    new-array v1, v1, [F

    .line 276
    invoke-direct {v10, v1}, Landroidx/transition/FloatArrayEvaluator;-><init>([F)V

    .line 278
    filled-new-array {v2, v0}, [[F

    .line 281
    move-result-object v1

    .line 284
    invoke-static {v15, v10, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 285
    move-result-object v1

    .line 288
    iget-object v10, v7, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 289
    aget v15, v2, v17

    .line 291
    const/16 v20, 0x5

    .line 293
    aget v2, v2, v20

    .line 295
    move-object/from16 v21, v4

    .line 297
    aget v4, v0, v17

    .line 299
    aget v0, v0, v20

    .line 301
    invoke-virtual {v10, v15, v2, v4, v0}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 303
    move-result-object v0

    .line 306
    sget-object v2, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$1;

    .line 307
    const/4 v4, 0x0

    .line 309
    invoke-static {v2, v4, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    .line 310
    move-result-object v0

    .line 313
    filled-new-array {v1, v0}, [Landroid/animation/PropertyValuesHolder;

    .line 314
    move-result-object v0

    .line 317
    invoke-static {v6, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 318
    move-result-object v10

    .line 321
    new-instance v15, Landroidx/transition/ChangeTransform$3;

    .line 322
    move-object v0, v15

    .line 324
    move-object/from16 v1, p0

    .line 325
    const/high16 v4, 0x3f800000    # 1.0f

    .line 327
    move/from16 v2, v16

    .line 329
    move-object/from16 v20, v14

    .line 331
    move v14, v4

    .line 333
    move-object/from16 v4, v21

    .line 334
    move-object v14, v5

    .line 336
    move-object/from16 v5, v18

    .line 337
    move-object/from16 v18, v11

    .line 339
    const/4 v11, 0x0

    .line 341
    invoke-direct/range {v0 .. v6}, Landroidx/transition/ChangeTransform$3;-><init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)V

    .line 342
    invoke-virtual {v10, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 345
    invoke-virtual {v10, v15}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 348
    move-object v4, v10

    .line 351
    :goto_4
    iget-object v0, v9, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 352
    if-eqz v16, :cond_21

    .line 354
    if-eqz v4, :cond_21

    .line 356
    iget-boolean v1, v7, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 358
    if-eqz v1, :cond_21

    .line 360
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    move-result-object v1

    .line 365
    check-cast v1, Landroid/graphics/Matrix;

    .line 366
    new-instance v2, Landroid/graphics/Matrix;

    .line 368
    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 370
    sget-object v1, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 373
    invoke-virtual {v8, v2}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 375
    sget v1, Landroidx/transition/GhostViewPort;->$r8$clinit:I

    .line 378
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 380
    move-result-object v1

    .line 383
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 384
    if-eqz v1, :cond_20

    .line 386
    sget v1, Landroidx/transition/GhostViewHolder;->$r8$clinit:I

    .line 388
    const v1, 0x7f0a03a6    # @id/ghost_view_holder

    .line 390
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    .line 393
    move-result-object v1

    .line 396
    check-cast v1, Landroidx/transition/GhostViewHolder;

    .line 397
    const v3, 0x7f0a03a5    # @id/ghost_view

    .line 399
    move-object/from16 v5, v21

    .line 402
    invoke-virtual {v5, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 404
    move-result-object v3

    .line 407
    check-cast v3, Landroidx/transition/GhostViewPort;

    .line 408
    if-eqz v3, :cond_c

    .line 410
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 412
    move-result-object v6

    .line 415
    check-cast v6, Landroidx/transition/GhostViewHolder;

    .line 416
    if-eq v6, v1, :cond_c

    .line 418
    iget v9, v3, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 420
    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 422
    move v6, v9

    .line 425
    const/4 v10, 0x0

    .line 426
    goto :goto_5

    .line 427
    :cond_c
    move-object v10, v3

    .line 428
    move v6, v11

    .line 429
    :goto_5
    if-nez v10, :cond_1d

    .line 430
    new-instance v10, Landroidx/transition/GhostViewPort;

    .line 432
    invoke-direct {v10, v5}, Landroidx/transition/GhostViewPort;-><init>(Landroid/view/View;)V

    .line 434
    iput-object v2, v10, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    .line 437
    if-nez v1, :cond_d

    .line 439
    new-instance v1, Landroidx/transition/GhostViewHolder;

    .line 441
    invoke-direct {v1, v8}, Landroidx/transition/GhostViewHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 443
    goto :goto_6

    .line 446
    :cond_d
    iget-boolean v2, v1, Landroidx/transition/GhostViewHolder;->mAttached:Z

    .line 447
    if-eqz v2, :cond_1c

    .line 449
    iget-object v2, v1, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    .line 451
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 453
    move-result-object v2

    .line 456
    invoke-virtual {v2, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 457
    iget-object v2, v1, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    .line 460
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 462
    move-result-object v2

    .line 465
    invoke-virtual {v2, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 466
    :goto_6
    invoke-static {v8, v1}, Landroidx/transition/GhostViewPort;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 469
    invoke-static {v8, v10}, Landroidx/transition/GhostViewPort;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 472
    new-instance v2, Ljava/util/ArrayList;

    .line 475
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 477
    iget-object v3, v10, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    .line 480
    invoke-static {v2, v3}, Landroidx/transition/GhostViewHolder;->getParents(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 482
    new-instance v3, Ljava/util/ArrayList;

    .line 485
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 487
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 490
    move-result v8

    .line 493
    add-int/lit8 v8, v8, -0x1

    .line 494
    move v9, v8

    .line 496
    move v8, v11

    .line 497
    :goto_7
    if-gt v8, v9, :cond_19

    .line 498
    add-int v13, v8, v9

    .line 500
    div-int/lit8 v13, v13, 0x2

    .line 502
    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 504
    move-result-object v14

    .line 507
    check-cast v14, Landroidx/transition/GhostViewPort;

    .line 508
    iget-object v14, v14, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    .line 510
    invoke-static {v3, v14}, Landroidx/transition/GhostViewHolder;->getParents(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 512
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 515
    move-result v14

    .line 518
    if-nez v14, :cond_e

    .line 519
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 521
    move-result v14

    .line 524
    if-nez v14, :cond_e

    .line 525
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 527
    move-result-object v14

    .line 530
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 531
    move-result-object v15

    .line 534
    if-eq v14, v15, :cond_10

    .line 535
    :cond_e
    move-object/from16 p1, v2

    .line 537
    :cond_f
    :goto_8
    move/from16 v16, v9

    .line 539
    goto/16 :goto_c

    .line 541
    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 543
    move-result v14

    .line 546
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 547
    move-result v15

    .line 550
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 551
    move-result v14

    .line 554
    const/4 v15, 0x1

    .line 555
    :goto_9
    if-ge v15, v14, :cond_16

    .line 556
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 558
    move-result-object v16

    .line 561
    move-object/from16 v11, v16

    .line 562
    check-cast v11, Landroid/view/View;

    .line 564
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 566
    move-result-object v16

    .line 569
    move-object/from16 p1, v2

    .line 570
    move-object/from16 v2, v16

    .line 572
    check-cast v2, Landroid/view/View;

    .line 574
    if-eq v11, v2, :cond_15

    .line 576
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 578
    move-result-object v14

    .line 581
    check-cast v14, Landroid/view/ViewGroup;

    .line 582
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    .line 584
    move-result v15

    .line 587
    invoke-virtual {v11}, Landroid/view/View;->getZ()F

    .line 588
    move-result v16

    .line 591
    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    .line 592
    move-result v19

    .line 595
    cmpl-float v16, v16, v19

    .line 596
    if-eqz v16, :cond_12

    .line 598
    invoke-virtual {v11}, Landroid/view/View;->getZ()F

    .line 600
    move-result v11

    .line 603
    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    .line 604
    move-result v2

    .line 607
    cmpl-float v2, v11, v2

    .line 608
    if-lez v2, :cond_11

    .line 610
    goto :goto_8

    .line 612
    :cond_11
    move/from16 v16, v9

    .line 613
    goto :goto_b

    .line 615
    :cond_12
    const/4 v7, 0x0

    .line 616
    :goto_a
    if-ge v7, v15, :cond_f

    .line 617
    move/from16 v16, v9

    .line 619
    invoke-virtual {v14, v7}, Landroid/view/ViewGroup;->getChildDrawingOrder(I)I

    .line 621
    move-result v9

    .line 624
    invoke-virtual {v14, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 625
    move-result-object v9

    .line 628
    if-ne v9, v11, :cond_13

    .line 629
    goto :goto_b

    .line 631
    :cond_13
    if-ne v9, v2, :cond_14

    .line 632
    goto :goto_c

    .line 634
    :cond_14
    add-int/lit8 v7, v7, 0x1

    .line 635
    move/from16 v9, v16

    .line 637
    goto :goto_a

    .line 639
    :cond_15
    move/from16 v16, v9

    .line 640
    add-int/lit8 v15, v15, 0x1

    .line 642
    const/4 v11, 0x0

    .line 644
    move-object/from16 v7, p0

    .line 645
    move-object/from16 v2, p1

    .line 647
    goto :goto_9

    .line 649
    :cond_16
    move-object/from16 p1, v2

    .line 650
    move/from16 v16, v9

    .line 652
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 654
    move-result v2

    .line 657
    if-ne v2, v14, :cond_17

    .line 658
    goto :goto_c

    .line 660
    :cond_17
    :goto_b
    const/4 v2, 0x0

    .line 661
    goto :goto_d

    .line 662
    :goto_c
    const/4 v2, 0x1

    .line 663
    :goto_d
    if-eqz v2, :cond_18

    .line 664
    add-int/lit8 v13, v13, 0x1

    .line 666
    move v8, v13

    .line 668
    move/from16 v9, v16

    .line 669
    goto :goto_e

    .line 671
    :cond_18
    add-int/lit8 v13, v13, -0x1

    .line 672
    move v9, v13

    .line 674
    :goto_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 675
    const/4 v11, 0x0

    .line 678
    move-object/from16 v7, p0

    .line 679
    move-object/from16 v2, p1

    .line 681
    goto/16 :goto_7

    .line 683
    :cond_19
    if-ltz v8, :cond_1b

    .line 685
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 687
    move-result v2

    .line 690
    if-lt v8, v2, :cond_1a

    .line 691
    goto :goto_f

    .line 693
    :cond_1a
    invoke-virtual {v1, v10, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 694
    goto :goto_10

    .line 697
    :cond_1b
    :goto_f
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 698
    :goto_10
    iput v6, v10, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 701
    goto :goto_11

    .line 703
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 704
    const-string v1, "This GhostViewHolder is detached!"

    .line 706
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 708
    throw v0

    .line 711
    :cond_1d
    iput-object v2, v10, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    .line 712
    :goto_11
    iget v1, v10, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 714
    const/4 v2, 0x1

    .line 716
    add-int/2addr v1, v2

    .line 717
    iput v1, v10, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 718
    move-object/from16 v1, v18

    .line 720
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    move-result-object v1

    .line 725
    check-cast v1, Landroid/view/ViewGroup;

    .line 726
    iput-object v1, v10, Landroidx/transition/GhostViewPort;->mStartParent:Landroid/view/ViewGroup;

    .line 728
    iput-object v0, v10, Landroidx/transition/GhostViewPort;->mStartView:Landroid/view/View;

    .line 730
    move-object/from16 v1, p0

    .line 732
    :goto_12
    iget-object v2, v1, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 734
    if-eqz v2, :cond_1e

    .line 736
    move-object v1, v2

    .line 738
    goto :goto_12

    .line 739
    :cond_1e
    new-instance v2, Landroidx/transition/ChangeTransform$GhostListener;

    .line 740
    invoke-direct {v2, v5, v10}, Landroidx/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroidx/transition/GhostViewPort;)V

    .line 742
    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 745
    sget-boolean v1, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    .line 748
    if-eqz v1, :cond_22

    .line 750
    if-eq v0, v5, :cond_1f

    .line 752
    const/4 v1, 0x0

    .line 754
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 755
    :cond_1f
    const/high16 v0, 0x3f800000    # 1.0f

    .line 758
    invoke-virtual {v5, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 760
    goto :goto_13

    .line 763
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 764
    const-string v1, "Ghosted views must be parented by a ViewGroup"

    .line 766
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 768
    throw v0

    .line 771
    :cond_21
    sget-boolean v1, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    .line 772
    if-nez v1, :cond_22

    .line 774
    move-object/from16 v1, v20

    .line 776
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 778
    :cond_22
    :goto_13
    return-object v4

    .line 781
    :cond_23
    :goto_14
    const/4 v0, 0x0

    .line 782
    return-object v0
    .line 783
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
