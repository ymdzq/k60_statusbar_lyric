.class public final Lcom/android/systemui/util/animation/TransitionLayoutController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public animationStartState:Lcom/android/systemui/util/animation/TransitionViewState;

.field public final animator:Landroid/animation/ValueAnimator;

.field public currentHeight:I

.field public currentState:Lcom/android/systemui/util/animation/TransitionViewState;

.field public currentWidth:I

.field public sizeChangedListener:Lkotlin/jvm/functions/Function2;

.field public state:Lcom/android/systemui/util/animation/TransitionViewState;

.field public transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/util/animation/TransitionViewState;

    .line 5
    invoke-direct {v0}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 10
    new-instance v0, Lcom/android/systemui/util/animation/TransitionViewState;

    .line 12
    invoke-direct {v0}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->state:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 17
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [F

    .line 20
    fill-array-data v0, :array_0

    .line 22
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 25
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    .line 29
    new-instance v1, Lcom/android/systemui/util/animation/TransitionLayoutController$1$1;

    .line 31
    invoke-direct {v1, p0}, Lcom/android/systemui/util/animation/TransitionLayoutController$1$1;-><init>(Lcom/android/systemui/util/animation/TransitionLayoutController;)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36
    sget-object p0, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 39
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 41
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 46
.end method

.method public static getGoneState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 7

    .line 1
    iget v0, p1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearStart:F

    .line 2
    iget v1, p1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearEnd:F

    .line 4
    const/4 v2, 0x0

    .line 6
    const/high16 v3, 0x3f800000    # 1.0f

    .line 7
    invoke-static {v0, v1, v2, v3, p2}, Landroid/util/MathUtils;->map(FFFFF)F

    .line 9
    move-result p2

    .line 12
    invoke-static {p2, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 13
    move-result p2

    .line 16
    invoke-virtual {p0, p3}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    .line 17
    move-result-object p3

    .line 20
    iget v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    .line 21
    int-to-float v0, v0

    .line 23
    iget-object v1, p1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearSize:Landroid/graphics/PointF;

    .line 24
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 26
    mul-float/2addr v4, v0

    .line 28
    invoke-static {v0, v4, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 29
    move-result v0

    .line 32
    float-to-int v0, v0

    .line 33
    iput v0, p3, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    .line 34
    iget v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    .line 36
    int-to-float v0, v0

    .line 38
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 39
    mul-float/2addr v1, v0

    .line 41
    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 42
    move-result v0

    .line 45
    float-to-int v0, v0

    .line 46
    iput v0, p3, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    .line 47
    iget-object v1, p3, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    .line 49
    iget v4, p0, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    .line 51
    iget v5, p3, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    .line 53
    sub-int/2addr v4, v5

    .line 55
    int-to-float v4, v4

    .line 56
    iget-object v5, p1, Lcom/android/systemui/util/animation/DisappearParameters;->gonePivot:Landroid/graphics/PointF;

    .line 57
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 59
    mul-float/2addr v4, v6

    .line 61
    iput v4, v1, Landroid/graphics/PointF;->x:F

    .line 62
    iget p0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    .line 64
    sub-int/2addr p0, v0

    .line 66
    int-to-float p0, p0

    .line 67
    iget v0, v5, Landroid/graphics/PointF;->y:F

    .line 68
    mul-float/2addr p0, v0

    .line 70
    iput p0, v1, Landroid/graphics/PointF;->y:F

    .line 71
    iget-object v0, p3, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    .line 73
    iget-object v1, p1, Lcom/android/systemui/util/animation/DisappearParameters;->contentTranslationFraction:Landroid/graphics/PointF;

    .line 75
    iget v5, v1, Landroid/graphics/PointF;->x:F

    .line 77
    sub-float/2addr v5, v3

    .line 79
    mul-float/2addr v5, v4

    .line 80
    iput v5, v0, Landroid/graphics/PointF;->x:F

    .line 81
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 83
    sub-float/2addr v1, v3

    .line 85
    mul-float/2addr v1, p0

    .line 86
    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 87
    iget p0, p1, Lcom/android/systemui/util/animation/DisappearParameters;->fadeStartPosition:F

    .line 89
    invoke-static {p0, v3, v3, v2, p2}, Landroid/util/MathUtils;->map(FFFFF)F

    .line 91
    move-result p0

    .line 94
    invoke-static {p0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 95
    move-result p0

    .line 98
    iput p0, p3, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    .line 99
    return-object p3
    .line 101
.end method


# virtual methods
.method public final applyStateToLayout(Lcom/android/systemui/util/animation/TransitionViewState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/animation/TransitionLayout;->setState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentHeight:I

    .line 9
    iget v1, p1, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    .line 11
    if-ne v0, v1, :cond_1

    .line 13
    iget v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentWidth:I

    .line 15
    iget v2, p1, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    .line 17
    if-eq v0, v2, :cond_2

    .line 19
    :cond_1
    iput v1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentHeight:I

    .line 21
    iget p1, p1, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    .line 23
    iput p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentWidth:I

    .line 25
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->sizeChangedListener:Lkotlin/jvm/functions/Function2;

    .line 27
    if-eqz v0, :cond_2

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p1

    .line 34
    iget p0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentHeight:I

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p0

    .line 40
    invoke-interface {v0, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_2
    return-void
    .line 44
.end method

.method public final getInterpolatedState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    move-object/from16 v1, p2

    .line 4
    move/from16 v2, p3

    .line 6
    if-nez p4, :cond_0

    .line 8
    new-instance v3, Lcom/android/systemui/util/animation/TransitionViewState;

    .line 10
    invoke-direct {v3}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    .line 12
    move-object/from16 v4, p0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    move-object/from16 v4, p0

    .line 18
    move-object/from16 v3, p4

    .line 20
    :goto_0
    iget-object v4, v4, Lcom/android/systemui/util/animation/TransitionLayoutController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 22
    if-nez v4, :cond_1

    .line 24
    return-object v3

    .line 26
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    move-result v5

    .line 30
    const/4 v7, 0x0

    .line 31
    :goto_1
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x1

    .line 33
    if-ge v7, v5, :cond_9

    .line 34
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    move-result-object v10

    .line 39
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 40
    move-result v10

    .line 43
    iget-object v11, v3, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/Map;

    .line 44
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v12

    .line 49
    check-cast v11, Ljava/util/LinkedHashMap;

    .line 50
    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v11

    .line 55
    check-cast v11, Lcom/android/systemui/util/animation/WidgetState;

    .line 56
    if-nez v11, :cond_2

    .line 58
    new-instance v11, Lcom/android/systemui/util/animation/WidgetState;

    .line 60
    const/16 v12, 0x1ff

    .line 62
    invoke-direct {v11, v12}, Lcom/android/systemui/util/animation/WidgetState;-><init>(I)V

    .line 64
    :cond_2
    iget-object v12, v0, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/Map;

    .line 67
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v13

    .line 72
    check-cast v12, Ljava/util/LinkedHashMap;

    .line 73
    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object v12

    .line 78
    check-cast v12, Lcom/android/systemui/util/animation/WidgetState;

    .line 79
    if-nez v12, :cond_3

    .line 81
    goto :goto_2

    .line 83
    :cond_3
    iget-object v13, v1, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/Map;

    .line 84
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v14

    .line 89
    check-cast v13, Ljava/util/LinkedHashMap;

    .line 90
    invoke-virtual {v13, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object v13

    .line 95
    check-cast v13, Lcom/android/systemui/util/animation/WidgetState;

    .line 96
    if-nez v13, :cond_4

    .line 98
    :goto_2
    move-object/from16 v17, v4

    .line 100
    move/from16 v18, v5

    .line 102
    goto/16 :goto_7

    .line 104
    :cond_4
    iget-boolean v14, v12, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    .line 106
    iget-boolean v15, v13, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    .line 108
    if-eq v14, v15, :cond_8

    .line 110
    const/high16 v15, 0x3f800000    # 1.0f

    .line 112
    const/high16 v16, 0x40000000    # 2.0f

    .line 114
    const v6, 0x3f4ccccd    # 0.8f

    .line 116
    if-eqz v14, :cond_6

    .line 119
    invoke-static {v6, v15, v8, v15, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    .line 121
    move-result v8

    .line 124
    cmpg-float v14, v2, v6

    .line 125
    if-gez v14, :cond_5

    .line 127
    goto :goto_3

    .line 129
    :cond_5
    const/4 v9, 0x0

    .line 130
    :goto_3
    iget v14, v13, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    .line 131
    mul-float/2addr v6, v14

    .line 133
    invoke-static {v6, v14, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 134
    move-result v6

    .line 137
    iget v14, v13, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    .line 138
    iget v15, v13, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    .line 140
    move-object/from16 v17, v4

    .line 142
    iget v4, v12, Lcom/android/systemui/util/animation/WidgetState;->x:F

    .line 144
    move/from16 v18, v5

    .line 146
    int-to-float v5, v14

    .line 148
    div-float v5, v5, v16

    .line 149
    sub-float/2addr v4, v5

    .line 151
    iget v5, v13, Lcom/android/systemui/util/animation/WidgetState;->x:F

    .line 152
    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 154
    move-result v4

    .line 157
    iget v5, v12, Lcom/android/systemui/util/animation/WidgetState;->y:F

    .line 158
    move/from16 v19, v4

    .line 160
    int-to-float v4, v15

    .line 162
    div-float v4, v4, v16

    .line 163
    sub-float/2addr v5, v4

    .line 165
    iget v4, v13, Lcom/android/systemui/util/animation/WidgetState;->y:F

    .line 166
    invoke-static {v5, v4, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 168
    move-result v4

    .line 171
    move v5, v4

    .line 172
    move/from16 v4, v19

    .line 173
    move/from16 v19, v8

    .line 175
    const/high16 v8, 0x3f800000    # 1.0f

    .line 177
    goto :goto_5

    .line 179
    :cond_6
    move-object/from16 v17, v4

    .line 180
    move/from16 v18, v5

    .line 182
    const v4, 0x3e4ccccc    # 0.19999999f

    .line 184
    const/high16 v5, 0x3f800000    # 1.0f

    .line 187
    invoke-static {v8, v4, v8, v5, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    .line 189
    move-result v5

    .line 192
    cmpl-float v4, v2, v4

    .line 193
    if-lez v4, :cond_7

    .line 195
    goto :goto_4

    .line 197
    :cond_7
    const/4 v9, 0x0

    .line 198
    :goto_4
    iget v4, v12, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    .line 199
    mul-float/2addr v6, v4

    .line 201
    invoke-static {v4, v6, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 202
    move-result v6

    .line 205
    iget v14, v12, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    .line 206
    iget v15, v12, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    .line 208
    iget v4, v12, Lcom/android/systemui/util/animation/WidgetState;->x:F

    .line 210
    iget v8, v13, Lcom/android/systemui/util/animation/WidgetState;->x:F

    .line 212
    move/from16 v19, v5

    .line 214
    int-to-float v5, v14

    .line 216
    div-float v5, v5, v16

    .line 217
    sub-float/2addr v8, v5

    .line 219
    invoke-static {v4, v8, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 220
    move-result v4

    .line 223
    iget v5, v12, Lcom/android/systemui/util/animation/WidgetState;->y:F

    .line 224
    iget v8, v13, Lcom/android/systemui/util/animation/WidgetState;->y:F

    .line 226
    move/from16 v20, v4

    .line 228
    int-to-float v4, v15

    .line 230
    div-float v4, v4, v16

    .line 231
    sub-float/2addr v8, v4

    .line 233
    invoke-static {v5, v8, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 234
    move-result v4

    .line 237
    move v5, v4

    .line 238
    move/from16 v4, v20

    .line 239
    const/4 v8, 0x0

    .line 241
    :goto_5
    iput-boolean v9, v11, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    .line 242
    move/from16 v9, v19

    .line 244
    goto :goto_6

    .line 246
    :cond_8
    move-object/from16 v17, v4

    .line 247
    move/from16 v18, v5

    .line 249
    iput-boolean v14, v11, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    .line 251
    iget v14, v13, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    .line 253
    iget v15, v13, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    .line 255
    iget v4, v12, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    .line 257
    iget v5, v13, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    .line 259
    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 261
    move-result v6

    .line 264
    iget v4, v12, Lcom/android/systemui/util/animation/WidgetState;->x:F

    .line 265
    iget v5, v13, Lcom/android/systemui/util/animation/WidgetState;->x:F

    .line 267
    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 269
    move-result v4

    .line 272
    iget v5, v12, Lcom/android/systemui/util/animation/WidgetState;->y:F

    .line 273
    iget v8, v13, Lcom/android/systemui/util/animation/WidgetState;->y:F

    .line 275
    invoke-static {v5, v8, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 277
    move-result v5

    .line 280
    move v8, v2

    .line 281
    move v9, v8

    .line 282
    :goto_6
    iput v4, v11, Lcom/android/systemui/util/animation/WidgetState;->x:F

    .line 283
    iput v5, v11, Lcom/android/systemui/util/animation/WidgetState;->y:F

    .line 285
    iget v4, v12, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    .line 287
    iget v5, v13, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    .line 289
    invoke-static {v4, v5, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 291
    move-result v4

    .line 294
    iput v4, v11, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    .line 295
    iget v4, v12, Lcom/android/systemui/util/animation/WidgetState;->width:I

    .line 297
    int-to-float v4, v4

    .line 299
    iget v5, v13, Lcom/android/systemui/util/animation/WidgetState;->width:I

    .line 300
    int-to-float v5, v5

    .line 302
    invoke-static {v4, v5, v8}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 303
    move-result v4

    .line 306
    float-to-int v4, v4

    .line 307
    iput v4, v11, Lcom/android/systemui/util/animation/WidgetState;->width:I

    .line 308
    iget v4, v12, Lcom/android/systemui/util/animation/WidgetState;->height:I

    .line 310
    int-to-float v4, v4

    .line 312
    iget v5, v13, Lcom/android/systemui/util/animation/WidgetState;->height:I

    .line 313
    int-to-float v5, v5

    .line 315
    invoke-static {v4, v5, v8}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 316
    move-result v4

    .line 319
    float-to-int v4, v4

    .line 320
    iput v4, v11, Lcom/android/systemui/util/animation/WidgetState;->height:I

    .line 321
    iput v6, v11, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    .line 323
    iput v14, v11, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    .line 325
    iput v15, v11, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    .line 327
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    move-result-object v4

    .line 332
    iget-object v5, v3, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/Map;

    .line 333
    invoke-interface {v5, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 338
    move-object/from16 v4, v17

    .line 340
    move/from16 v5, v18

    .line 342
    goto/16 :goto_1

    .line 344
    :cond_9
    iget v4, v0, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    .line 346
    int-to-float v4, v4

    .line 348
    iget v5, v1, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    .line 349
    int-to-float v5, v5

    .line 351
    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 352
    move-result v4

    .line 355
    float-to-int v4, v4

    .line 356
    iput v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    .line 357
    iget v4, v0, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    .line 359
    int-to-float v4, v4

    .line 361
    iget v5, v1, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    .line 362
    int-to-float v5, v5

    .line 364
    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 365
    move-result v4

    .line 368
    float-to-int v4, v4

    .line 369
    iput v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    .line 370
    const/4 v4, 0x0

    .line 372
    cmpg-float v4, v2, v4

    .line 373
    if-nez v4, :cond_a

    .line 375
    move v6, v9

    .line 377
    goto :goto_8

    .line 378
    :cond_a
    const/4 v6, 0x0

    .line 379
    :goto_8
    if-eqz v6, :cond_b

    .line 380
    iget v4, v0, Lcom/android/systemui/util/animation/TransitionViewState;->measureWidth:I

    .line 382
    iput v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->measureWidth:I

    .line 384
    iget v4, v0, Lcom/android/systemui/util/animation/TransitionViewState;->measureHeight:I

    .line 386
    iput v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->measureHeight:I

    .line 388
    goto :goto_9

    .line 390
    :cond_b
    iget v4, v1, Lcom/android/systemui/util/animation/TransitionViewState;->measureWidth:I

    .line 391
    iput v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->measureWidth:I

    .line 393
    iget v4, v1, Lcom/android/systemui/util/animation/TransitionViewState;->measureHeight:I

    .line 395
    iput v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->measureHeight:I

    .line 397
    :goto_9
    iget-object v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    .line 399
    iget-object v5, v0, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    .line 401
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 403
    iget-object v7, v1, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    .line 405
    iget v8, v7, Landroid/graphics/PointF;->x:F

    .line 407
    invoke-static {v6, v8, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 409
    move-result v6

    .line 412
    iput v6, v4, Landroid/graphics/PointF;->x:F

    .line 413
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 415
    iget v6, v7, Landroid/graphics/PointF;->y:F

    .line 417
    invoke-static {v5, v6, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 419
    move-result v5

    .line 422
    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 423
    iget v4, v0, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    .line 425
    iget v5, v1, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    .line 427
    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 429
    move-result v4

    .line 432
    iput v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    .line 433
    iget-object v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    .line 435
    iget-object v0, v0, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    .line 437
    iget v5, v0, Landroid/graphics/PointF;->x:F

    .line 439
    iget-object v1, v1, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    .line 441
    iget v6, v1, Landroid/graphics/PointF;->x:F

    .line 443
    invoke-static {v5, v6, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 445
    move-result v5

    .line 448
    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 449
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 451
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 453
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 455
    move-result v0

    .line 458
    iput v0, v4, Landroid/graphics/PointF;->y:F

    .line 459
    return-object v3
    .line 461
.end method

.method public final setState(Lcom/android/systemui/util/animation/TransitionViewState;ZZJJ)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 4
    iget p3, p3, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    .line 6
    if-eqz p3, :cond_0

    .line 8
    const/4 p3, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p3, 0x0

    .line 12
    :goto_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    .line 14
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->state:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 18
    iget-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    .line 20
    if-nez p2, :cond_3

    .line 22
    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 24
    if-nez p2, :cond_1

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    if-eqz p3, :cond_2

    .line 29
    iget-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 31
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    .line 33
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animationStartState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 37
    invoke-virtual {v1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 39
    invoke-virtual {v1, p6, p7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 42
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 45
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 49
    move-result p2

    .line 52
    if-nez p2, :cond_4

    .line 53
    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->state:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 55
    invoke-virtual {p0, p2}, Lcom/android/systemui/util/animation/TransitionLayoutController;->applyStateToLayout(Lcom/android/systemui/util/animation/TransitionViewState;)V

    .line 57
    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 60
    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    .line 62
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 66
    goto :goto_2

    .line 68
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 69
    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->state:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 72
    invoke-virtual {p0, p2}, Lcom/android/systemui/util/animation/TransitionLayoutController;->applyStateToLayout(Lcom/android/systemui/util/animation/TransitionViewState;)V

    .line 74
    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 77
    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    .line 79
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 83
    :cond_4
    :goto_2
    return-void
    .line 85
.end method
