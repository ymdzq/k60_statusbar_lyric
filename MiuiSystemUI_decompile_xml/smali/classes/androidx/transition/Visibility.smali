.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field public mMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "android:visibility:visibility"

    .line 2
    const-string v1, "android:visibility:parent"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    .line 10
    return-void
    .line 12
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    .line 5
    sget-object v0, Landroidx/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string/jumbo v0, "transitionVisibilityMode"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1

    and-int/lit8 p1, p2, -0x4

    if-nez p1, :cond_0

    .line 8
    iput p2, p0, Landroidx/transition/Visibility;->mMode:I

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;
    .locals 8

    .line 1
    new-instance v0, Landroidx/transition/Visibility$VisibilityInfo;

    .line 2
    invoke-direct {v0}, Landroidx/transition/Visibility$VisibilityInfo;-><init>()V

    .line 4
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 8
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 10
    const-string v2, "android:visibility:parent"

    .line 12
    const/4 v3, 0x0

    .line 14
    const/4 v4, -0x1

    .line 15
    const-string v5, "android:visibility:visibility"

    .line 16
    if-eqz p0, :cond_0

    .line 18
    iget-object v6, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 20
    check-cast v6, Ljava/util/HashMap;

    .line 22
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result v7

    .line 27
    if-eqz v7, :cond_0

    .line 28
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v7

    .line 33
    check-cast v7, Ljava/lang/Integer;

    .line 34
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v7

    .line 39
    iput v7, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 40
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v6

    .line 45
    check-cast v6, Landroid/view/ViewGroup;

    .line 46
    iput-object v6, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 48
    goto :goto_0

    .line 50
    :cond_0
    iput v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 51
    iput-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 53
    :goto_0
    if-eqz p1, :cond_1

    .line 55
    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 57
    check-cast v6, Ljava/util/HashMap;

    .line 59
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 61
    move-result v7

    .line 64
    if-eqz v7, :cond_1

    .line 65
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 70
    check-cast v3, Ljava/lang/Integer;

    .line 71
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 73
    move-result v3

    .line 76
    iput v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 77
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 82
    check-cast v2, Landroid/view/ViewGroup;

    .line 83
    iput-object v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 85
    goto :goto_1

    .line 87
    :cond_1
    iput v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 88
    iput-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 90
    :goto_1
    const/4 v2, 0x1

    .line 92
    if-eqz p0, :cond_6

    .line 93
    if-eqz p1, :cond_6

    .line 95
    iget p0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 97
    iget p1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 99
    if-ne p0, p1, :cond_2

    .line 101
    iget-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 103
    iget-object v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 105
    if-ne v3, v4, :cond_2

    .line 107
    return-object v0

    .line 109
    :cond_2
    if-eq p0, p1, :cond_4

    .line 110
    if-nez p0, :cond_3

    .line 112
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 114
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 116
    goto :goto_2

    .line 118
    :cond_3
    if-nez p1, :cond_8

    .line 119
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 121
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 123
    goto :goto_2

    .line 125
    :cond_4
    iget-object p0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 126
    if-nez p0, :cond_5

    .line 128
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 130
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 132
    goto :goto_2

    .line 134
    :cond_5
    iget-object p0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 135
    if-nez p0, :cond_8

    .line 137
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 139
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 141
    goto :goto_2

    .line 143
    :cond_6
    if-nez p0, :cond_7

    .line 144
    iget p0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 146
    if-nez p0, :cond_7

    .line 148
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 150
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 152
    goto :goto_2

    .line 154
    :cond_7
    if-nez p1, :cond_8

    .line 155
    iget p0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 157
    if-nez p0, :cond_8

    .line 159
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 161
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 163
    :cond_8
    :goto_2
    return-object v0
    .line 165
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    return-void
    .line 5
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    return-void
    .line 5
.end method

.method public final captureValues(Landroidx/transition/TransitionValues;)V
    .locals 2

    .line 1
    iget-object p0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 13
    check-cast p1, Ljava/util/HashMap;

    .line 14
    const-string v1, "android:visibility:visibility"

    .line 16
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object v0

    .line 24
    const-string v1, "android:visibility:parent"

    .line 25
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [I

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 33
    const-string p0, "android:visibility:screenLocation"

    .line 36
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
    .line 41
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    invoke-static/range {p2 .. p3}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    .line 10
    move-result-object v4

    .line 13
    iget-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 14
    if-eqz v5, :cond_1c

    .line 16
    iget-object v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 18
    if-nez v5, :cond_0

    .line 20
    iget-object v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 22
    if-eqz v5, :cond_1c

    .line 24
    :cond_0
    iget-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 26
    const/4 v7, 0x1

    .line 28
    const/4 v8, 0x0

    .line 29
    if-eqz v5, :cond_4

    .line 30
    iget v4, v0, Landroidx/transition/Visibility;->mMode:I

    .line 32
    and-int/2addr v4, v7

    .line 34
    if-ne v4, v7, :cond_3

    .line 35
    if-nez v3, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    iget-object v4, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 40
    if-nez v2, :cond_2

    .line 42
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    move-result-object v5

    .line 47
    check-cast v5, Landroid/view/View;

    .line 48
    invoke-virtual {v0, v5, v8}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 50
    move-result-object v7

    .line 53
    invoke-virtual {v0, v5, v8}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 54
    move-result-object v5

    .line 57
    invoke-static {v7, v5}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    .line 58
    move-result-object v5

    .line 61
    iget-boolean v5, v5, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 62
    if-eqz v5, :cond_2

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v0, v1, v4, v2, v3}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    .line 67
    move-result-object v6

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    const/4 v6, 0x0

    .line 72
    :goto_1
    return-object v6

    .line 73
    :cond_4
    iget v4, v4, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 74
    iget v5, v0, Landroidx/transition/Visibility;->mMode:I

    .line 76
    const/4 v9, 0x2

    .line 78
    and-int/2addr v5, v9

    .line 79
    if-eq v5, v9, :cond_5

    .line 80
    goto/16 :goto_c

    .line 82
    :cond_5
    if-nez v2, :cond_6

    .line 84
    goto/16 :goto_c

    .line 86
    :cond_6
    if-eqz v3, :cond_7

    .line 88
    iget-object v3, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 90
    goto :goto_2

    .line 92
    :cond_7
    const/4 v3, 0x0

    .line 93
    :goto_2
    iget-object v5, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 94
    const v10, 0x7f0a07e4    # @id/save_overlay_view

    .line 96
    invoke-virtual {v5, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 99
    move-result-object v11

    .line 102
    check-cast v11, Landroid/view/View;

    .line 103
    if-eqz v11, :cond_8

    .line 105
    move/from16 v18, v4

    .line 107
    const/4 v3, 0x0

    .line 109
    goto/16 :goto_b

    .line 110
    :cond_8
    if-eqz v3, :cond_b

    .line 112
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 114
    move-result-object v11

    .line 117
    if-nez v11, :cond_9

    .line 118
    goto :goto_4

    .line 120
    :cond_9
    const/4 v11, 0x4

    .line 121
    if-ne v4, v11, :cond_a

    .line 122
    goto :goto_3

    .line 124
    :cond_a
    if-ne v5, v3, :cond_c

    .line 125
    :goto_3
    const/4 v11, 0x0

    .line 127
    goto :goto_5

    .line 128
    :cond_b
    :goto_4
    if-eqz v3, :cond_c

    .line 129
    move-object v11, v3

    .line 131
    const/4 v3, 0x0

    .line 132
    :goto_5
    move v12, v8

    .line 133
    goto :goto_6

    .line 134
    :cond_c
    move v12, v7

    .line 135
    const/4 v3, 0x0

    .line 136
    const/4 v11, 0x0

    .line 137
    :goto_6
    if-eqz v12, :cond_14

    .line 138
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 140
    move-result-object v12

    .line 143
    if-nez v12, :cond_d

    .line 144
    move/from16 v18, v4

    .line 146
    move-object v11, v5

    .line 148
    move v7, v8

    .line 149
    goto/16 :goto_b

    .line 150
    :cond_d
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 152
    move-result-object v12

    .line 155
    instance-of v12, v12, Landroid/view/View;

    .line 156
    if-eqz v12, :cond_14

    .line 158
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 160
    move-result-object v12

    .line 163
    check-cast v12, Landroid/view/View;

    .line 164
    invoke-virtual {v0, v12, v7}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 166
    move-result-object v13

    .line 169
    invoke-virtual {v0, v12, v7}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 170
    move-result-object v14

    .line 173
    invoke-static {v13, v14}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    .line 174
    move-result-object v13

    .line 177
    iget-boolean v13, v13, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 178
    if-nez v13, :cond_13

    .line 180
    new-instance v11, Landroid/graphics/Matrix;

    .line 182
    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 184
    invoke-virtual {v12}, Landroid/view/View;->getScrollX()I

    .line 187
    move-result v13

    .line 190
    neg-int v13, v13

    .line 191
    int-to-float v13, v13

    .line 192
    invoke-virtual {v12}, Landroid/view/View;->getScrollY()I

    .line 193
    move-result v12

    .line 196
    neg-int v12, v12

    .line 197
    int-to-float v12, v12

    .line 198
    invoke-virtual {v11, v13, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 199
    sget-object v12, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 202
    invoke-virtual {v5, v11}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 204
    invoke-virtual {v1, v11}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 207
    new-instance v12, Landroid/graphics/RectF;

    .line 210
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 212
    move-result v13

    .line 215
    int-to-float v13, v13

    .line 216
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 217
    move-result v14

    .line 220
    int-to-float v14, v14

    .line 221
    const/4 v15, 0x0

    .line 222
    invoke-direct {v12, v15, v15, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 223
    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 226
    iget v13, v12, Landroid/graphics/RectF;->left:F

    .line 229
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 231
    move-result v13

    .line 234
    iget v14, v12, Landroid/graphics/RectF;->top:F

    .line 235
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    .line 237
    move-result v14

    .line 240
    iget v15, v12, Landroid/graphics/RectF;->right:F

    .line 241
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 243
    move-result v15

    .line 246
    iget v6, v12, Landroid/graphics/RectF;->bottom:F

    .line 247
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 249
    move-result v6

    .line 252
    new-instance v10, Landroid/widget/ImageView;

    .line 253
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 255
    move-result-object v9

    .line 258
    invoke-direct {v10, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 259
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 262
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 264
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    .line 267
    move-result v9

    .line 270
    xor-int/2addr v9, v7

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 272
    move-result v16

    .line 275
    if-eqz v9, :cond_f

    .line 276
    if-nez v16, :cond_e

    .line 278
    move-object/from16 v17, v3

    .line 280
    move/from16 v18, v4

    .line 282
    const/4 v0, 0x0

    .line 284
    goto/16 :goto_9

    .line 285
    :cond_e
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 287
    move-result-object v16

    .line 290
    move-object/from16 v7, v16

    .line 291
    check-cast v7, Landroid/view/ViewGroup;

    .line 293
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 295
    move-result v16

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 299
    move-result-object v8

    .line 302
    invoke-virtual {v8, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 303
    move/from16 v8, v16

    .line 306
    goto :goto_7

    .line 308
    :cond_f
    const/4 v7, 0x0

    .line 309
    const/4 v8, 0x0

    .line 310
    :goto_7
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    .line 311
    move-result v16

    .line 314
    move-object/from16 v17, v3

    .line 315
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 317
    move-result v3

    .line 320
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    .line 321
    move-result v16

    .line 324
    move/from16 v18, v4

    .line 325
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 327
    move-result v4

    .line 330
    if-lez v3, :cond_10

    .line 331
    if-lez v4, :cond_10

    .line 333
    mul-int v0, v3, v4

    .line 335
    int-to-float v0, v0

    .line 337
    const/high16 v16, 0x49800000    # 1048576.0f

    .line 338
    div-float v0, v16, v0

    .line 340
    const/high16 v2, 0x3f800000    # 1.0f

    .line 342
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 344
    move-result v0

    .line 347
    int-to-float v2, v3

    .line 348
    mul-float/2addr v2, v0

    .line 349
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 350
    move-result v2

    .line 353
    int-to-float v3, v4

    .line 354
    mul-float/2addr v3, v0

    .line 355
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 356
    move-result v3

    .line 359
    iget v4, v12, Landroid/graphics/RectF;->left:F

    .line 360
    neg-float v4, v4

    .line 362
    iget v12, v12, Landroid/graphics/RectF;->top:F

    .line 363
    neg-float v12, v12

    .line 365
    invoke-virtual {v11, v4, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 366
    invoke-virtual {v11, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 369
    new-instance v0, Landroid/graphics/Picture;

    .line 372
    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 374
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    .line 377
    move-result-object v2

    .line 380
    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 381
    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 384
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 387
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    .line 390
    move-result-object v0

    .line 393
    goto :goto_8

    .line 394
    :cond_10
    const/4 v0, 0x0

    .line 395
    :goto_8
    if-eqz v9, :cond_11

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 398
    move-result-object v2

    .line 401
    invoke-virtual {v2, v5}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 402
    invoke-virtual {v7, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 405
    :cond_11
    :goto_9
    if-eqz v0, :cond_12

    .line 408
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 410
    :cond_12
    sub-int v0, v15, v13

    .line 413
    const/high16 v2, 0x40000000    # 2.0f

    .line 415
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 417
    move-result v0

    .line 420
    sub-int v3, v6, v14

    .line 421
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 423
    move-result v2

    .line 426
    invoke-virtual {v10, v0, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 427
    invoke-virtual {v10, v13, v14, v15, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 430
    move-object v11, v10

    .line 433
    goto :goto_a

    .line 434
    :cond_13
    move-object/from16 v17, v3

    .line 435
    move/from16 v18, v4

    .line 437
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    .line 439
    move-result v0

    .line 442
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 443
    move-result-object v2

    .line 446
    if-nez v2, :cond_15

    .line 447
    const/4 v2, -0x1

    .line 449
    if-eq v0, v2, :cond_15

    .line 450
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 452
    goto :goto_a

    .line 455
    :cond_14
    move-object/from16 v17, v3

    .line 456
    move/from16 v18, v4

    .line 458
    :cond_15
    :goto_a
    move-object/from16 v3, v17

    .line 460
    const/4 v7, 0x0

    .line 462
    :goto_b
    if-eqz v11, :cond_18

    .line 463
    move-object/from16 v0, p2

    .line 465
    if-nez v7, :cond_16

    .line 467
    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 469
    const-string v3, "android:visibility:screenLocation"

    .line 471
    check-cast v2, Ljava/util/HashMap;

    .line 473
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    move-result-object v2

    .line 478
    check-cast v2, [I

    .line 479
    const/4 v3, 0x0

    .line 481
    aget v4, v2, v3

    .line 482
    const/4 v6, 0x1

    .line 484
    aget v2, v2, v6

    .line 485
    const/4 v8, 0x2

    .line 487
    new-array v8, v8, [I

    .line 488
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 490
    aget v3, v8, v3

    .line 493
    sub-int/2addr v4, v3

    .line 495
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    .line 496
    move-result v3

    .line 499
    sub-int/2addr v4, v3

    .line 500
    invoke-virtual {v11, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 501
    aget v3, v8, v6

    .line 504
    sub-int/2addr v2, v3

    .line 506
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    .line 507
    move-result v3

    .line 510
    sub-int/2addr v2, v3

    .line 511
    invoke-virtual {v11, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 515
    move-result-object v2

    .line 518
    invoke-virtual {v2, v11}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 519
    :cond_16
    move-object/from16 v2, p0

    .line 522
    invoke-virtual {v2, v1, v11, v0}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    .line 524
    move-result-object v6

    .line 527
    if-nez v7, :cond_1b

    .line 528
    if-nez v6, :cond_17

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 532
    move-result-object v0

    .line 535
    invoke-virtual {v0, v11}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 536
    goto :goto_d

    .line 539
    :cond_17
    const v0, 0x7f0a07e4    # @id/save_overlay_view

    .line 540
    invoke-virtual {v5, v0, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 543
    new-instance v0, Landroidx/transition/Visibility$1;

    .line 546
    invoke-direct {v0, v2, v1, v11, v5}, Landroidx/transition/Visibility$1;-><init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    .line 548
    invoke-virtual {v2, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 551
    goto :goto_d

    .line 554
    :cond_18
    move-object/from16 v2, p0

    .line 555
    move-object/from16 v0, p2

    .line 557
    if-eqz v3, :cond_1a

    .line 559
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 561
    move-result v4

    .line 564
    sget-object v5, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 565
    const/4 v5, 0x0

    .line 567
    invoke-virtual {v3, v5}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 568
    invoke-virtual {v2, v1, v3, v0}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    .line 571
    move-result-object v6

    .line 574
    if-eqz v6, :cond_19

    .line 575
    new-instance v0, Landroidx/transition/Visibility$DisappearListener;

    .line 577
    move/from16 v1, v18

    .line 579
    invoke-direct {v0, v1, v3}, Landroidx/transition/Visibility$DisappearListener;-><init>(ILandroid/view/View;)V

    .line 581
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 584
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 587
    invoke-virtual {v2, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    .line 590
    goto :goto_d

    .line 593
    :cond_19
    invoke-virtual {v3, v4}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 594
    goto :goto_d

    .line 597
    :cond_1a
    :goto_c
    const/4 v6, 0x0

    .line 598
    :cond_1b
    :goto_d
    return-object v6

    .line 599
    :cond_1c
    const/4 v0, 0x0

    .line 600
    return-object v0
    .line 601
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    if-nez p2, :cond_0

    .line 5
    return p0

    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    if-eqz p2, :cond_1

    .line 10
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 12
    check-cast v0, Ljava/util/HashMap;

    .line 14
    const-string v1, "android:visibility:visibility"

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 21
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 22
    check-cast v2, Ljava/util/HashMap;

    .line 24
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    return p0

    .line 32
    :cond_1
    invoke-static {p1, p2}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    .line 33
    move-result-object p1

    .line 36
    iget-boolean p2, p1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 37
    if-eqz p2, :cond_3

    .line 39
    iget p2, p1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 41
    if-eqz p2, :cond_2

    .line 43
    iget p1, p1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 45
    if-nez p1, :cond_3

    .line 47
    :cond_2
    const/4 p0, 0x1

    .line 49
    :cond_3
    return p0
    .line 50
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method
