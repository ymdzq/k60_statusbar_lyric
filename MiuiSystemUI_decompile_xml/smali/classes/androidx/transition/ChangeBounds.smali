.class public Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$2;

.field public static final BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ChangeBounds$2;

.field public static final DRAWABLE_ORIGIN_PROPERTY:Landroidx/transition/ChangeBounds$1;

.field public static final POSITION_PROPERTY:Landroidx/transition/ChangeBounds$2;

.field public static final TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$2;

.field public static final TOP_LEFT_PROPERTY:Landroidx/transition/ChangeBounds$2;

.field public static final sRectEvaluator:Landroidx/transition/RectEvaluator;

.field public static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field public mResizeClip:Z

.field public final mTempLocation:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "android:changeBounds:clip"

    .line 2
    const-string v1, "android:changeBounds:parent"

    .line 4
    const-string v2, "android:changeBounds:bounds"

    .line 6
    const-string v3, "android:changeBounds:windowX"

    .line 8
    const-string v4, "android:changeBounds:windowY"

    .line 10
    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 16
    new-instance v0, Landroidx/transition/ChangeBounds$1;

    .line 18
    const-class v1, Landroid/graphics/PointF;

    .line 20
    invoke-direct {v0, v1}, Landroidx/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;)V

    .line 22
    sput-object v0, Landroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroidx/transition/ChangeBounds$1;

    .line 25
    new-instance v0, Landroidx/transition/ChangeBounds$2;

    .line 27
    const-class v1, Landroid/graphics/PointF;

    .line 29
    const-string/jumbo v2, "topLeft"

    .line 31
    const/4 v3, 0x0

    .line 34
    invoke-direct {v0, v2, v3, v1}, Landroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 35
    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroidx/transition/ChangeBounds$2;

    .line 38
    new-instance v0, Landroidx/transition/ChangeBounds$2;

    .line 40
    const-class v1, Landroid/graphics/PointF;

    .line 42
    const-string v3, "bottomRight"

    .line 44
    const/4 v4, 0x1

    .line 46
    invoke-direct {v0, v3, v4, v1}, Landroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 47
    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ChangeBounds$2;

    .line 50
    new-instance v0, Landroidx/transition/ChangeBounds$2;

    .line 52
    const-class v1, Landroid/graphics/PointF;

    .line 54
    const/4 v4, 0x2

    .line 56
    invoke-direct {v0, v3, v4, v1}, Landroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 57
    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$2;

    .line 60
    new-instance v0, Landroidx/transition/ChangeBounds$2;

    .line 62
    const-class v1, Landroid/graphics/PointF;

    .line 64
    const/4 v3, 0x3

    .line 66
    invoke-direct {v0, v2, v3, v1}, Landroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 67
    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$2;

    .line 70
    new-instance v0, Landroidx/transition/ChangeBounds$2;

    .line 72
    const-class v1, Landroid/graphics/PointF;

    .line 74
    const-string v2, "position"

    .line 76
    const/4 v3, 0x4

    .line 78
    invoke-direct {v0, v2, v3, v1}, Landroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 79
    sput-object v0, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroidx/transition/ChangeBounds$2;

    .line 82
    new-instance v0, Landroidx/transition/RectEvaluator;

    .line 84
    invoke-direct {v0}, Landroidx/transition/RectEvaluator;-><init>()V

    .line 86
    sput-object v0, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    .line 89
    return-void
    .line 91
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 7
    sget-object v1, Landroidx/transition/Styleable;->CHANGE_BOUNDS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string/jumbo v1, "resizeClip"

    .line 9
    invoke-static {p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    return-void
    .line 5
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    return-void
    .line 5
.end method

.method public final captureValues(Landroidx/transition/TransitionValues;)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 4
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 6
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    :cond_0
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 24
    new-instance v1, Landroid/graphics/Rect;

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 28
    move-result v2

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 32
    move-result v3

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 36
    move-result v4

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 40
    move-result v5

    .line 43
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    check-cast p1, Ljava/util/HashMap;

    .line 47
    const-string v2, "android:changeBounds:bounds"

    .line 49
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    move-result-object v1

    .line 57
    const-string v2, "android:changeBounds:parent"

    .line 58
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-boolean p0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 63
    if-eqz p0, :cond_1

    .line 65
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api18Impl;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    .line 67
    move-result-object p0

    .line 70
    const-string v0, "android:changeBounds:clip"

    .line 71
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_1
    return-void
    .line 76
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    move-object/from16 v2, p3

    .line 6
    if-eqz v1, :cond_1b

    .line 8
    if-nez v2, :cond_0

    .line 10
    goto/16 :goto_c

    .line 12
    :cond_0
    iget-object v1, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 14
    iget-object v4, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 16
    check-cast v1, Ljava/util/HashMap;

    .line 18
    const-string v5, "android:changeBounds:parent"

    .line 20
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v6

    .line 25
    check-cast v6, Landroid/view/ViewGroup;

    .line 26
    check-cast v4, Ljava/util/HashMap;

    .line 28
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 33
    check-cast v5, Landroid/view/ViewGroup;

    .line 34
    if-eqz v6, :cond_1a

    .line 36
    if-nez v5, :cond_1

    .line 38
    goto/16 :goto_b

    .line 40
    :cond_1
    const-string v5, "android:changeBounds:bounds"

    .line 42
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v6

    .line 47
    check-cast v6, Landroid/graphics/Rect;

    .line 48
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 53
    check-cast v5, Landroid/graphics/Rect;

    .line 54
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 56
    iget v11, v5, Landroid/graphics/Rect;->left:I

    .line 58
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 60
    iget v12, v5, Landroid/graphics/Rect;->top:I

    .line 62
    iget v9, v6, Landroid/graphics/Rect;->right:I

    .line 64
    iget v13, v5, Landroid/graphics/Rect;->right:I

    .line 66
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 68
    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    .line 70
    sub-int v5, v9, v7

    .line 72
    sub-int v10, v6, v8

    .line 74
    sub-int v15, v13, v11

    .line 76
    sub-int v3, v14, v12

    .line 78
    const-string v2, "android:changeBounds:clip"

    .line 80
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 85
    check-cast v1, Landroid/graphics/Rect;

    .line 86
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 91
    check-cast v2, Landroid/graphics/Rect;

    .line 92
    if-eqz v5, :cond_2

    .line 94
    if-nez v10, :cond_3

    .line 96
    :cond_2
    if-eqz v15, :cond_7

    .line 98
    if-eqz v3, :cond_7

    .line 100
    :cond_3
    if-ne v7, v11, :cond_5

    .line 102
    if-eq v8, v12, :cond_4

    .line 104
    goto :goto_0

    .line 106
    :cond_4
    const/16 v16, 0x0

    .line 107
    goto :goto_1

    .line 109
    :cond_5
    :goto_0
    const/16 v16, 0x1

    .line 110
    :goto_1
    if-ne v9, v13, :cond_6

    .line 112
    if-eq v6, v14, :cond_8

    .line 114
    :cond_6
    add-int/lit8 v16, v16, 0x1

    .line 116
    goto :goto_2

    .line 118
    :cond_7
    const/16 v16, 0x0

    .line 119
    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    .line 121
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v17

    .line 126
    if-eqz v17, :cond_a

    .line 127
    :cond_9
    if-nez v1, :cond_b

    .line 129
    if-eqz v2, :cond_b

    .line 131
    :cond_a
    add-int/lit8 v16, v16, 0x1

    .line 133
    :cond_b
    move/from16 v4, v16

    .line 135
    if-lez v4, :cond_19

    .line 137
    move-object/from16 v16, v2

    .line 139
    iget-boolean v2, v0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 141
    move-object/from16 v18, v1

    .line 143
    move-object/from16 v1, p3

    .line 145
    iget-object v1, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 147
    if-nez v2, :cond_10

    .line 149
    sget-object v2, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 151
    invoke-virtual {v1, v7, v8, v9, v6}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 153
    const/4 v2, 0x2

    .line 156
    if-ne v4, v2, :cond_d

    .line 157
    if-ne v5, v15, :cond_c

    .line 159
    if-ne v10, v3, :cond_c

    .line 161
    iget-object v2, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 163
    int-to-float v3, v7

    .line 165
    int-to-float v4, v8

    .line 166
    int-to-float v5, v11

    .line 167
    int-to-float v6, v12

    .line 168
    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 169
    move-result-object v2

    .line 172
    sget-object v3, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroidx/transition/ChangeBounds$2;

    .line 173
    const/4 v4, 0x0

    .line 175
    invoke-static {v1, v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 176
    move-result-object v2

    .line 179
    goto :goto_4

    .line 180
    :cond_c
    new-instance v2, Landroidx/transition/ChangeBounds$ViewBounds;

    .line 181
    invoke-direct {v2, v1}, Landroidx/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 183
    iget-object v3, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 186
    int-to-float v4, v7

    .line 188
    int-to-float v5, v8

    .line 189
    int-to-float v7, v11

    .line 190
    int-to-float v8, v12

    .line 191
    invoke-virtual {v3, v4, v5, v7, v8}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 192
    move-result-object v3

    .line 195
    sget-object v4, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroidx/transition/ChangeBounds$2;

    .line 196
    const/4 v5, 0x0

    .line 198
    invoke-static {v2, v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 199
    move-result-object v3

    .line 202
    iget-object v4, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 203
    int-to-float v7, v9

    .line 205
    int-to-float v6, v6

    .line 206
    int-to-float v8, v13

    .line 207
    int-to-float v9, v14

    .line 208
    invoke-virtual {v4, v7, v6, v8, v9}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 209
    move-result-object v4

    .line 212
    sget-object v6, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ChangeBounds$2;

    .line 213
    invoke-static {v2, v6, v5, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 215
    move-result-object v4

    .line 218
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 219
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 221
    filled-new-array {v3, v4}, [Landroid/animation/Animator;

    .line 224
    move-result-object v3

    .line 227
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 228
    new-instance v3, Landroidx/transition/ChangeBounds$7;

    .line 231
    invoke-direct {v3, v2}, Landroidx/transition/ChangeBounds$7;-><init>(Landroidx/transition/ChangeBounds$ViewBounds;)V

    .line 233
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 236
    goto/16 :goto_a

    .line 239
    :cond_d
    if-ne v7, v11, :cond_f

    .line 241
    if-eq v8, v12, :cond_e

    .line 243
    goto :goto_3

    .line 245
    :cond_e
    iget-object v2, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 246
    int-to-float v3, v9

    .line 248
    int-to-float v4, v6

    .line 249
    int-to-float v5, v13

    .line 250
    int-to-float v6, v14

    .line 251
    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 252
    move-result-object v2

    .line 255
    sget-object v3, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$2;

    .line 256
    const/4 v4, 0x0

    .line 258
    invoke-static {v1, v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 259
    move-result-object v2

    .line 262
    goto :goto_4

    .line 263
    :cond_f
    :goto_3
    const/4 v4, 0x0

    .line 264
    iget-object v2, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 265
    int-to-float v3, v7

    .line 267
    int-to-float v5, v8

    .line 268
    int-to-float v6, v11

    .line 269
    int-to-float v7, v12

    .line 270
    invoke-virtual {v2, v3, v5, v6, v7}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 271
    move-result-object v2

    .line 274
    sget-object v3, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$2;

    .line 275
    invoke-static {v1, v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 277
    move-result-object v2

    .line 280
    :goto_4
    move-object v5, v2

    .line 281
    goto/16 :goto_a

    .line 282
    :cond_10
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    .line 284
    move-result v2

    .line 287
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    .line 288
    move-result v4

    .line 291
    add-int/2addr v2, v7

    .line 292
    add-int/2addr v4, v8

    .line 293
    sget-object v6, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 294
    invoke-virtual {v1, v7, v8, v2, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 296
    if-ne v7, v11, :cond_12

    .line 299
    if-eq v8, v12, :cond_11

    .line 301
    goto :goto_5

    .line 303
    :cond_11
    const/4 v4, 0x0

    .line 304
    goto :goto_6

    .line 305
    :cond_12
    :goto_5
    iget-object v2, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 306
    int-to-float v4, v7

    .line 308
    int-to-float v6, v8

    .line 309
    int-to-float v7, v11

    .line 310
    int-to-float v8, v12

    .line 311
    invoke-virtual {v2, v4, v6, v7, v8}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    .line 312
    move-result-object v2

    .line 315
    sget-object v4, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroidx/transition/ChangeBounds$2;

    .line 316
    const/4 v6, 0x0

    .line 318
    invoke-static {v1, v4, v6, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 319
    move-result-object v4

    .line 322
    :goto_6
    if-nez v18, :cond_13

    .line 323
    new-instance v2, Landroid/graphics/Rect;

    .line 325
    const/4 v6, 0x0

    .line 327
    invoke-direct {v2, v6, v6, v5, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 328
    goto :goto_7

    .line 331
    :cond_13
    const/4 v6, 0x0

    .line 332
    move-object/from16 v2, v18

    .line 333
    :goto_7
    if-nez v16, :cond_14

    .line 335
    new-instance v5, Landroid/graphics/Rect;

    .line 337
    invoke-direct {v5, v6, v6, v15, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 339
    goto :goto_8

    .line 342
    :cond_14
    move-object/from16 v5, v16

    .line 343
    :goto_8
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 345
    move-result v3

    .line 348
    if-nez v3, :cond_15

    .line 349
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 351
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat$Api18Impl;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 353
    sget-object v3, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    .line 356
    filled-new-array {v2, v5}, [Ljava/lang/Object;

    .line 358
    move-result-object v2

    .line 361
    const-string v5, "clipBounds"

    .line 362
    invoke-static {v1, v5, v3, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 364
    move-result-object v3

    .line 367
    new-instance v2, Landroidx/transition/ChangeBounds$8;

    .line 368
    move-object v8, v2

    .line 370
    move-object v9, v1

    .line 371
    move-object/from16 v10, v16

    .line 372
    invoke-direct/range {v8 .. v14}, Landroidx/transition/ChangeBounds$8;-><init>(Landroid/view/View;Landroid/graphics/Rect;IIII)V

    .line 374
    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    goto :goto_9

    .line 380
    :cond_15
    const/4 v3, 0x0

    .line 381
    :goto_9
    if-nez v4, :cond_16

    .line 382
    move-object v5, v3

    .line 384
    goto :goto_a

    .line 385
    :cond_16
    if-nez v3, :cond_17

    .line 386
    move-object v5, v4

    .line 388
    goto :goto_a

    .line 389
    :cond_17
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 390
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 392
    filled-new-array {v4, v3}, [Landroid/animation/Animator;

    .line 395
    move-result-object v3

    .line 398
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 399
    goto :goto_4

    .line 402
    :goto_a
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 403
    move-result-object v2

    .line 406
    instance-of v2, v2, Landroid/view/ViewGroup;

    .line 407
    if-eqz v2, :cond_18

    .line 409
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 411
    move-result-object v1

    .line 414
    check-cast v1, Landroid/view/ViewGroup;

    .line 415
    const/4 v2, 0x1

    .line 417
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 418
    new-instance v2, Landroidx/transition/ChangeBounds$9;

    .line 421
    invoke-direct {v2, v1}, Landroidx/transition/ChangeBounds$9;-><init>(Landroid/view/ViewGroup;)V

    .line 423
    invoke-virtual {v0, v2}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 426
    :cond_18
    return-object v5

    .line 429
    :cond_19
    const/4 v0, 0x0

    .line 430
    return-object v0

    .line 431
    :cond_1a
    :goto_b
    const/4 v0, 0x0

    .line 432
    return-object v0

    .line 433
    :cond_1b
    :goto_c
    const/4 v0, 0x0

    .line 434
    return-object v0
    .line 435
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
