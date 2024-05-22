.class public final Lcom/android/systemui/navigationbar/gestural/BackPanel;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final allAnimatedFloat:Ljava/util/Set;

.field public arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final arrowBackgroundPaint:Landroid/graphics/Paint;

.field public final arrowBackgroundRect:Landroid/graphics/RectF;

.field public arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final arrowPaint:Landroid/graphics/Paint;

.field public final arrowPath:Landroid/graphics/Path;

.field public arrowsPointLeft:Z

.field public final backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public isLeftPanel:Z

.field public final latencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public final scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

.field public trackingBackArrowLatency:Z

.field public verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/LatencyTracker;)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    move-object/from16 v0, p2

    .line 7
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    .line 11
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 13
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPath:Landroid/graphics/Path;

    .line 16
    new-instance v7, Landroid/graphics/Paint;

    .line 18
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 20
    iput-object v7, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    .line 25
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 27
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundRect:Landroid/graphics/RectF;

    .line 30
    new-instance v8, Landroid/graphics/Paint;

    .line 32
    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 34
    iput-object v8, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundPaint:Landroid/graphics/Paint;

    .line 37
    new-instance v9, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 39
    const-string v2, "arrowLength"

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    move-result-object v10

    .line 48
    const/4 v11, 0x0

    .line 49
    const/16 v12, 0xc

    .line 50
    const/4 v4, 0x0

    .line 52
    const/16 v5, 0xc

    .line 53
    move-object v0, v9

    .line 55
    move-object/from16 v1, p0

    .line 56
    move-object v3, v10

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;I)V

    .line 59
    iput-object v9, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 62
    new-instance v13, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 64
    const-string v2, "arrowHeight"

    .line 66
    const v0, 0x3dcccccd    # 0.1f

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 71
    move-result-object v3

    .line 74
    move-object v0, v13

    .line 75
    move-object v4, v11

    .line 76
    move v5, v12

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;I)V

    .line 78
    iput-object v13, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 81
    new-instance v11, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 83
    const-string v2, "backgroundWidth"

    .line 85
    const/4 v0, 0x0

    .line 87
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 88
    move-result-object v12

    .line 91
    const/16 v13, 0x8

    .line 92
    const/16 v5, 0x8

    .line 94
    move-object v0, v11

    .line 96
    move-object v3, v10

    .line 97
    move-object v4, v12

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;I)V

    .line 99
    iput-object v11, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 102
    new-instance v14, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 104
    const-string v2, "backgroundHeight"

    .line 106
    move-object v0, v14

    .line 108
    move v5, v13

    .line 109
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;I)V

    .line 110
    iput-object v14, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 113
    new-instance v13, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 115
    const-string v2, "backgroundEdgeCornerRadius"

    .line 117
    const/4 v14, 0x0

    .line 119
    const/4 v15, 0x0

    .line 120
    const/16 v16, 0xe

    .line 121
    const/4 v3, 0x0

    .line 123
    const/4 v4, 0x0

    .line 124
    const/16 v5, 0xe

    .line 125
    move-object v0, v13

    .line 127
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;I)V

    .line 128
    iput-object v13, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 131
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 133
    const-string v2, "backgroundFarCornerRadius"

    .line 135
    move-object v0, v5

    .line 137
    move-object v3, v14

    .line 138
    move-object v4, v15

    .line 139
    move-object v14, v5

    .line 140
    move/from16 v5, v16

    .line 141
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;I)V

    .line 143
    iput-object v14, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 146
    new-instance v15, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 148
    const-string/jumbo v2, "scale"

    .line 150
    const v0, 0x3b03126f    # 0.002f

    .line 153
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 156
    move-result-object v3

    .line 159
    const/16 v5, 0x8

    .line 160
    move-object v0, v15

    .line 162
    move-object v4, v12

    .line 163
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;I)V

    .line 164
    iput-object v15, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 167
    new-instance v15, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 169
    const-string/jumbo v2, "scalePivotX"

    .line 171
    iget v0, v11, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 174
    const/4 v1, 0x2

    .line 176
    int-to-float v1, v1

    .line 177
    div-float/2addr v0, v1

    .line 178
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 179
    move-result-object v4

    .line 182
    move-object v0, v15

    .line 183
    move-object/from16 v1, p0

    .line 184
    move-object v3, v10

    .line 186
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;I)V

    .line 187
    iput-object v15, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 190
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 192
    const-string v2, "horizontalTranslation"

    .line 194
    const/4 v3, 0x0

    .line 196
    const/4 v4, 0x0

    .line 197
    move-object v0, v5

    .line 198
    move-object/from16 p1, v8

    .line 199
    move-object v8, v5

    .line 201
    move/from16 v5, v16

    .line 202
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;I)V

    .line 204
    iput-object v8, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 207
    new-instance v8, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 209
    const-string v2, "arrowAlpha"

    .line 211
    const/high16 v0, 0x3b800000    # 0.00390625f

    .line 213
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 215
    move-result-object v16

    .line 218
    move-object v0, v8

    .line 219
    move-object/from16 v3, v16

    .line 220
    move-object v4, v12

    .line 222
    move-object v5, v10

    .line 223
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 224
    iput-object v8, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 227
    new-instance v8, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 229
    const-string v2, "backgroundAlpha"

    .line 231
    move-object v0, v8

    .line 233
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 234
    iput-object v8, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 237
    iget-object v10, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 239
    iget-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 241
    iget-object v1, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 243
    iget-object v2, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 245
    move-object v12, v13

    .line 247
    move-object v13, v14

    .line 248
    move-object v14, v15

    .line 249
    move-object v15, v0

    .line 250
    move-object/from16 v16, v1

    .line 251
    move-object/from16 v17, v2

    .line 253
    move-object/from16 v18, v8

    .line 255
    filled-new-array/range {v9 .. v18}, [Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 257
    move-result-object v0

    .line 260
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 261
    move-result-object v0

    .line 264
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->allAnimatedFloat:Ljava/util/Set;

    .line 265
    new-instance v8, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 267
    const-string/jumbo v2, "verticalTranslation"

    .line 269
    const/4 v3, 0x0

    .line 272
    const/4 v4, 0x0

    .line 273
    const/16 v5, 0xe

    .line 274
    move-object v0, v8

    .line 276
    move-object/from16 v1, p0

    .line 277
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanel;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;I)V

    .line 279
    iput-object v8, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 282
    const/16 v0, 0x8

    .line 284
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 286
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 289
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 291
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 294
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 296
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 299
    move-object/from16 v1, p1

    .line 301
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 303
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 306
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 308
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 311
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 313
    return-void
    .line 316
.end method

.method public static synthetic setRestingDimens$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    if-eqz p3, :cond_0

    .line 4
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setRestingDimens$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;Z)V

    .line 7
    return-void
    .line 10
.end method

.method public static synthetic setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p13, p12, 0x1

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p13, :cond_0

    .line 5
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p13, p12, 0x2

    .line 8
    if-eqz p13, :cond_1

    .line 10
    move-object p2, v0

    .line 12
    :cond_1
    and-int/lit8 p13, p12, 0x4

    .line 13
    if-eqz p13, :cond_2

    .line 15
    move-object p3, v0

    .line 17
    :cond_2
    and-int/lit8 p13, p12, 0x8

    .line 18
    if-eqz p13, :cond_3

    .line 20
    move-object p4, v0

    .line 22
    :cond_3
    and-int/lit8 p13, p12, 0x10

    .line 23
    if-eqz p13, :cond_4

    .line 25
    move-object p5, v0

    .line 27
    :cond_4
    and-int/lit8 p13, p12, 0x20

    .line 28
    if-eqz p13, :cond_5

    .line 30
    move-object p6, v0

    .line 32
    :cond_5
    and-int/lit8 p13, p12, 0x40

    .line 33
    if-eqz p13, :cond_6

    .line 35
    move-object p7, v0

    .line 37
    :cond_6
    and-int/lit16 p13, p12, 0x80

    .line 38
    if-eqz p13, :cond_7

    .line 40
    move-object p8, v0

    .line 42
    :cond_7
    and-int/lit16 p13, p12, 0x100

    .line 43
    if-eqz p13, :cond_8

    .line 45
    move-object p9, v0

    .line 47
    :cond_8
    and-int/lit16 p13, p12, 0x200

    .line 48
    if-eqz p13, :cond_9

    .line 50
    move-object p10, v0

    .line 52
    :cond_9
    and-int/lit16 p12, p12, 0x400

    .line 53
    if-eqz p12, :cond_a

    .line 55
    move-object p11, v0

    .line 57
    :cond_a
    invoke-virtual/range {p0 .. p11}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 58
    return-void
    .line 61
.end method


# virtual methods
.method public final getArrowAlpha()Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getArrowHeight()Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getArrowsPointLeft()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowsPointLeft:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getBackgroundAlpha()Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getBackgroundEdgeCornerRadius()Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getBackgroundFarCornerRadius()Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getBackgroundHeight()Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getBackgroundWidth()Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDrawDebugInfo()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getHorizontalTranslation()Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getScale()Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getScalePivotX()Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getVerticalTranslation()Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-object p0
    .line 4
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    iget v0, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 4
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 6
    iget v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 8
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 10
    iget v2, v2, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 12
    const/4 v3, 0x2

    .line 14
    int-to-float v4, v3

    .line 15
    div-float/2addr v2, v4

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    move-result v5

    .line 20
    iget-object v6, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 21
    iget v6, v6, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 23
    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 25
    iget v7, v7, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    iget-boolean v8, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    .line 32
    const/high16 v9, 0x3f800000    # 1.0f

    .line 34
    const/high16 v10, -0x40800000    # -1.0f

    .line 36
    const/4 v11, 0x0

    .line 38
    if-nez v8, :cond_0

    .line 39
    int-to-float v5, v5

    .line 41
    const/high16 v8, 0x40000000    # 2.0f

    .line 42
    div-float/2addr v5, v8

    .line 44
    invoke-virtual {p1, v10, v9, v5, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 45
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 48
    iget v5, v5, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 52
    move-result v8

    .line 55
    int-to-float v8, v8

    .line 56
    const/high16 v12, 0x3f000000    # 0.5f

    .line 57
    mul-float/2addr v8, v12

    .line 59
    iget-object v12, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 60
    iget v12, v12, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 62
    add-float/2addr v8, v12

    .line 64
    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 68
    iget v5, v5, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 70
    invoke-virtual {p1, v5, v5, v7, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 72
    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundRect:Landroid/graphics/RectF;

    .line 75
    iput v11, v5, Landroid/graphics/RectF;->left:F

    .line 77
    neg-float v7, v2

    .line 79
    iput v7, v5, Landroid/graphics/RectF;->top:F

    .line 80
    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 82
    iput v2, v5, Landroid/graphics/RectF;->bottom:F

    .line 84
    new-instance v2, Landroid/graphics/Path;

    .line 86
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 88
    const/16 v7, 0x8

    .line 91
    new-array v7, v7, [F

    .line 93
    const/4 v8, 0x0

    .line 95
    aput v0, v7, v8

    .line 96
    const/4 v12, 0x1

    .line 98
    aput v0, v7, v12

    .line 99
    aput v1, v7, v3

    .line 101
    const/4 v3, 0x3

    .line 103
    aput v1, v7, v3

    .line 104
    const/4 v3, 0x4

    .line 106
    aput v1, v7, v3

    .line 107
    const/4 v3, 0x5

    .line 109
    aput v1, v7, v3

    .line 110
    const/4 v1, 0x6

    .line 112
    aput v0, v7, v1

    .line 113
    const/4 v1, 0x7

    .line 115
    aput v0, v7, v1

    .line 116
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 118
    invoke-virtual {v2, v5, v7, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowBackgroundPaint:Landroid/graphics/Paint;

    .line 123
    const/16 v1, 0xff

    .line 125
    int-to-float v1, v1

    .line 127
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 128
    iget v3, v3, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 130
    mul-float/2addr v3, v1

    .line 132
    float-to-int v3, v3

    .line 133
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 140
    iget v0, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 142
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 144
    iget v2, v2, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 146
    sub-float/2addr v6, v0

    .line 148
    div-float/2addr v6, v4

    .line 149
    invoke-virtual {p1, v6, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowsPointLeft:Z

    .line 153
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    .line 155
    xor-int/2addr v3, v4

    .line 157
    xor-int/2addr v3, v12

    .line 158
    if-eqz v3, :cond_1

    .line 159
    invoke-virtual {p1, v10, v9, v11, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 161
    neg-float v3, v0

    .line 164
    invoke-virtual {p1, v3, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 165
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPath:Landroid/graphics/Path;

    .line 168
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 170
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPath:Landroid/graphics/Path;

    .line 173
    neg-float v4, v2

    .line 175
    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 176
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPath:Landroid/graphics/Path;

    .line 179
    invoke-virtual {v3, v11, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPath:Landroid/graphics/Path;

    .line 184
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPath:Landroid/graphics/Path;

    .line 189
    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPath:Landroid/graphics/Path;

    .line 194
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowPaint:Landroid/graphics/Paint;

    .line 196
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 198
    iget v3, v3, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 200
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 202
    iget v4, v4, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 204
    invoke-static {v3, v4}, Landroid/util/MathUtils;->min(FF)F

    .line 206
    move-result v3

    .line 209
    mul-float/2addr v3, v1

    .line 210
    float-to-int v1, v3

    .line 211
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 212
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 218
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->trackingBackArrowLatency:Z

    .line 221
    if-eqz p1, :cond_2

    .line 223
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 225
    const/16 v0, 0xf

    .line 227
    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 229
    iput-boolean v8, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->trackingBackArrowLatency:Z

    .line 232
    :cond_2
    return-void
    .line 234
.end method

.method public final popOffEdge(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    const v1, -0x40b33333    # -0.8f

    .line 4
    mul-float/2addr v1, p1

    .line 7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x4

    .line 13
    invoke-static {v0, v2, v1, v3}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchTo$default(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;FLjava/lang/Float;I)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 17
    const/high16 v0, 0x43480000    # 200.0f

    .line 19
    mul-float/2addr p1, v0

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    move-result-object p1

    .line 25
    invoke-static {p0, v2, p1, v3}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchTo$default(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;FLjava/lang/Float;I)V

    .line 26
    return-void
    .line 29
.end method

.method public final setArrowAlpha(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-void
    .line 4
.end method

.method public final setArrowHeight(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-void
    .line 4
.end method

.method public final setArrowsPointLeft(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowsPointLeft:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowsPointLeft:Z

    .line 9
    :cond_0
    return-void
    .line 11
.end method

.method public final setDrawDebugInfo(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setHorizontalTranslation(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-void
    .line 4
.end method

.method public final setLeftPanel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    .line 2
    return-void
    .line 4
.end method

.method public final setRestingDimens$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    iget-object v1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    .line 4
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 10
    iget v1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scale:F

    .line 12
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 21
    iget-object v1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 23
    iget v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->alpha:F

    .line 25
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    move-result-object v3

    .line 30
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 34
    iget-object v2, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 36
    iget v3, v2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alpha:F

    .line 38
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    move-result-object v3

    .line 43
    invoke-virtual {v0, v3, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 47
    iget-object v3, v2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->length:Ljava/lang/Float;

    .line 49
    invoke-virtual {v0, v3, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 54
    iget-object v2, v2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->height:Ljava/lang/Float;

    .line 56
    invoke-virtual {v0, v2, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 61
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scalePivotX:Ljava/lang/Float;

    .line 63
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 65
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 68
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->width:Ljava/lang/Float;

    .line 70
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 72
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 75
    iget v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->height:F

    .line 77
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    move-result-object v0

    .line 82
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 83
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 86
    iget v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadius:F

    .line 88
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 90
    move-result-object v0

    .line 93
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 94
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 97
    iget p1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadius:F

    .line 99
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 101
    move-result-object p1

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 105
    return-void
    .line 108
.end method

.method public final setScale(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-void
    .line 4
.end method

.method public final setSpring(Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)V
    .locals 1

    .line 1
    if-eqz p4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 4
    invoke-virtual {v0, p4}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 6
    :cond_0
    if-eqz p5, :cond_1

    .line 9
    iget-object p4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 11
    invoke-virtual {p4, p5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 13
    :cond_1
    if-eqz p6, :cond_2

    .line 16
    iget-object p4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 18
    invoke-virtual {p4, p6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 20
    :cond_2
    if-eqz p7, :cond_3

    .line 23
    iget-object p4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 25
    invoke-virtual {p4, p7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 27
    :cond_3
    if-eqz p8, :cond_4

    .line 30
    iget-object p4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 32
    invoke-virtual {p4, p8}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 34
    :cond_4
    if-eqz p9, :cond_5

    .line 37
    iget-object p4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 39
    invoke-virtual {p4, p9}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 41
    :cond_5
    if-eqz p3, :cond_6

    .line 44
    iget-object p4, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 46
    invoke-virtual {p4, p3}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 48
    :cond_6
    if-eqz p10, :cond_7

    .line 51
    iget-object p3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 53
    invoke-virtual {p3, p10}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 55
    :cond_7
    if-eqz p11, :cond_8

    .line 58
    iget-object p3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 60
    invoke-virtual {p3, p11}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 62
    :cond_8
    if-eqz p1, :cond_9

    .line 65
    iget-object p3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 67
    invoke-virtual {p3, p1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 69
    :cond_9
    if-eqz p2, :cond_a

    .line 72
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 74
    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 76
    :cond_a
    return-void
    .line 79
.end method

.method public final setStretch(FFFFFFFFLcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    iget-object v1, p9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 9
    iget-object v0, p9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 11
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->length:Ljava/lang/Float;

    .line 13
    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    .line 15
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 18
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->height:Ljava/lang/Float;

    .line 20
    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    .line 22
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 25
    iget p2, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alpha:F

    .line 27
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    .line 33
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 36
    iget-object p2, p9, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 38
    iget p3, p2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->alpha:F

    .line 40
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object p3

    .line 45
    invoke-virtual {p1, p3, p4}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    .line 46
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 49
    iget-object p3, p2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->width:Ljava/lang/Float;

    .line 51
    invoke-virtual {p1, p3, p5}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    .line 53
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 56
    iget p3, p2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->height:F

    .line 58
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 60
    move-result-object p3

    .line 63
    invoke-virtual {p1, p3, p6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    .line 64
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 67
    iget p3, p2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadius:F

    .line 69
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 71
    move-result-object p3

    .line 74
    invoke-virtual {p1, p3, p7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    .line 75
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 78
    iget p1, p2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadius:F

    .line 80
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 82
    move-result-object p1

    .line 85
    invoke-virtual {p0, p1, p8}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchBy(Ljava/lang/Float;F)V

    .line 86
    return-void
    .line 89
.end method

.method public final setVerticalTranslation(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 2
    return-void
    .line 4
.end method
