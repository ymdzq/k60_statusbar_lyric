.class public final Landroidx/compose/foundation/BorderKt;
.super Ljava/lang/Object;
.source "Border.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Border.kt\nandroidx/compose/foundation/BorderKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Border.kt\nandroidx/compose/foundation/BorderCache\n+ 5 CanvasDrawScope.kt\nandroidx/compose/ui/graphics/drawscope/CanvasDrawScope\n+ 6 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,459:1\n135#2:460\n1#3:461\n1#3:487\n181#4,25:462\n206#4,4:488\n215#4,6:501\n221#4:528\n222#4,2:537\n558#5,9:492\n567#5,8:529\n120#6,2:507\n173#6,6:509\n261#6,11:515\n122#6,2:526\n*S KotlinDebug\n*F\n+ 1 Border.kt\nandroidx/compose/foundation/BorderKt\n*L\n149#1:460\n290#1:487\n290#1:462,25\n290#1:488,4\n290#1:501,6\n290#1:528\n290#1:537,2\n290#1:492,9\n290#1:529,8\n296#1:507,2\n304#1:509,6\n304#1:515,11\n296#1:526,2\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$drawContentWithoutBorder(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/BorderKt;->drawContentWithoutBorder(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$drawGenericBorder(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/BorderKt;->drawGenericBorder(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$drawRectBorder-NsqcLGU(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/foundation/BorderKt;->drawRectBorder-NsqcLGU(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$drawRoundRectBorder-SYlcjDY(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/foundation/BorderKt;->drawRoundRectBorder-SYlcjDY(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$shrink-Kibmq7A(JF)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final border(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "border"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Landroidx/compose/foundation/BorderStroke;->getWidth-D9Ej5fM()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/BorderStroke;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object p1

    invoke-static {p0, v0, p1, p2}, Landroidx/compose/foundation/BorderKt;->border-ziNgDLE(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "$this$border"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shape"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, p1, v0, p4}, Landroidx/compose/foundation/BorderKt;->border-ziNgDLE(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final border-ziNgDLE(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "$this$border"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brush"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shape"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/BorderKt$border-ziNgDLE$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/foundation/BorderKt$border-ziNgDLE$$inlined$debugInspectorInfo$1;-><init>(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 93
    :goto_0
    new-instance v1, Landroidx/compose/foundation/BorderKt$border$2;

    invoke-direct {v1, p1, p3, p2}, Landroidx/compose/foundation/BorderKt$border$2;-><init>(FLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Brush;)V

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final createInsetRoundedRect(FLandroidx/compose/ui/geometry/RoundRect;)Landroidx/compose/ui/geometry/RoundRect;
    .locals 15

    move v2, p0

    .line 443
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v0

    sub-float v3, v0, v2

    .line 444
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v0

    sub-float v4, v0, v2

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    move-result-wide v5

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    move-result-wide v7

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    move-result-wide v11

    .line 448
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->shrink-Kibmq7A(JF)J

    move-result-wide v9

    .line 440
    new-instance v14, Landroidx/compose/ui/geometry/RoundRect;

    const/4 v13, 0x0

    move-object v0, v14

    move v1, p0

    invoke-direct/range {v0 .. v13}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14
.end method

.method private static final createRoundRectPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;FZ)Landroidx/compose/ui/graphics/Path;
    .locals 0

    .line 427
    invoke-interface {p0}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 428
    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/Path;->addRoundRect(Landroidx/compose/ui/geometry/RoundRect;)V

    if-nez p3, :cond_0

    .line 430
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p3

    .line 431
    invoke-static {p2, p1}, Landroidx/compose/foundation/BorderKt;->createInsetRoundedRect(FLandroidx/compose/ui/geometry/RoundRect;)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object p1

    invoke-interface {p3, p1}, Landroidx/compose/ui/graphics/Path;->addRoundRect(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 433
    sget-object p1, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getDifference-b3I0S0c()I

    move-result p1

    invoke-interface {p0, p0, p3, p1}, Landroidx/compose/ui/graphics/Path;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    :cond_0
    return-object p0
.end method

.method private static final drawContentWithoutBorder(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 1

    .line 235
    sget-object v0, Landroidx/compose/foundation/BorderKt$drawContentWithoutBorder$1;->INSTANCE:Landroidx/compose/foundation/BorderKt$drawContentWithoutBorder$1;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method private static final drawGenericBorder(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/draw/CacheDrawScope;",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/foundation/BorderCache;",
            ">;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/ui/graphics/Outline$Generic;",
            "ZF)",
            "Landroidx/compose/ui/draw/DrawResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    if-eqz p4, :cond_0

    .line 253
    new-instance v1, Landroidx/compose/foundation/BorderKt$drawGenericBorder$1;

    move-object/from16 v2, p3

    invoke-direct {v1, v2, v10}, Landroidx/compose/foundation/BorderKt$drawGenericBorder$1;-><init>(Landroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;)V

    invoke-virtual {v0, v1}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    goto/16 :goto_5

    :cond_0
    move-object/from16 v2, p3

    .line 263
    instance-of v1, v10, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 264
    sget-object v1, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getAlpha8-_sVssgQ()I

    move-result v1

    .line 265
    sget-object v4, Landroidx/compose/ui/graphics/ColorFilter;->Companion:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    move-object v5, v10

    check-cast v5, Landroidx/compose/ui/graphics/SolidColor;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/SolidColor;->getValue-0d7_KjU()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->tint-xETnrds$default(Landroidx/compose/ui/graphics/ColorFilter$Companion;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v4

    move v13, v1

    move-object/from16 v18, v4

    goto :goto_0

    .line 267
    :cond_1
    sget-object v1, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getArgb8888-_sVssgQ()I

    move-result v1

    move v13, v1

    move-object/from16 v18, v3

    .line 271
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Path;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    .line 272
    invoke-static/range {p1 .. p1}, Landroidx/compose/foundation/BorderKt;->obtain(Landroidx/compose/ui/node/Ref;)Landroidx/compose/foundation/BorderCache;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Landroidx/compose/foundation/BorderCache;->obtainPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v8

    .line 275
    invoke-interface {v8}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 276
    invoke-interface {v8, v9}, Landroidx/compose/ui/graphics/Path;->addRect(Landroidx/compose/ui/geometry/Rect;)V

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getDifference-b3I0S0c()I

    move-result v5

    invoke-interface {v8, v8, v4, v5}, Landroidx/compose/ui/graphics/Path;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    .line 280
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 282
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    .line 283
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-int v5, v5

    .line 281
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v19

    .line 181
    invoke-static {v1}, Landroidx/compose/foundation/BorderCache;->access$getImageBitmap$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/ImageBitmap;

    move-result-object v4

    .line 182
    invoke-static {v1}, Landroidx/compose/foundation/BorderCache;->access$getCanvas$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/Canvas;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 185
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->getConfig-_sVssgQ()I

    move-result v6

    invoke-static {v6}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->box-impl(I)Landroidx/compose/ui/graphics/ImageBitmapConfig;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v3

    :goto_1
    sget-object v11, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getArgb8888-_sVssgQ()I

    move-result v11

    const/4 v12, 0x0

    if-nez v6, :cond_3

    move v6, v12

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->unbox-impl()I

    move-result v6

    invoke-static {v6, v11}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    move-result v6

    :goto_2
    const/4 v15, 0x1

    if-nez v6, :cond_5

    if-eqz v4, :cond_4

    .line 186
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->getConfig-_sVssgQ()I

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->box-impl(I)Landroidx/compose/ui/graphics/ImageBitmapConfig;

    move-result-object v3

    :cond_4
    invoke-static {v13, v3}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v12, v15

    :cond_6
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v3

    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_8

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v3

    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_8

    if-nez v12, :cond_7

    goto :goto_3

    :cond_7
    move-object v11, v4

    move-object v12, v5

    move v6, v15

    goto :goto_4

    .line 194
    :cond_8
    :goto_3
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v11

    .line 195
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v12

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x18

    const/16 v17, 0x0

    move v6, v15

    move-object v15, v3

    .line 193
    invoke-static/range {v11 .. v17}, Landroidx/compose/ui/graphics/ImageBitmapKt;->ImageBitmap-x__-hDU$default(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;ILjava/lang/Object;)Landroidx/compose/ui/graphics/ImageBitmap;

    move-result-object v4

    .line 198
    invoke-static {v1, v4}, Landroidx/compose/foundation/BorderCache;->access$setImageBitmap$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/ImageBitmap;)V

    .line 200
    invoke-static {v4}, Landroidx/compose/ui/graphics/CanvasKt;->Canvas(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;

    move-result-object v5

    .line 201
    invoke-static {v1, v5}, Landroidx/compose/foundation/BorderCache;->access$setCanvas$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/Canvas;)V

    move-object v11, v4

    move-object v12, v5

    .line 205
    :goto_4
    invoke-static {v1}, Landroidx/compose/foundation/BorderCache;->access$getCanvasDrawScope$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-result-object v3

    if-nez v3, :cond_9

    new-instance v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    invoke-static {v1, v3}, Landroidx/compose/foundation/BorderCache;->access$setCanvasDrawScope$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V

    :cond_9
    move-object v13, v3

    .line 206
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v3

    .line 209
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    .line 558
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component1()Landroidx/compose/ui/unit/Density;

    move-result-object v14

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component2()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v15

    move-object/from16 p1, v8

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component3()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v8

    move-object/from16 p4, v7

    move-object/from16 v16, v8

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component4-NH-jbRc()J

    move-result-wide v7

    .line 559
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v5

    .line 560
    invoke-virtual {v5, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 561
    invoke-virtual {v5, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 562
    invoke-virtual {v5, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 563
    invoke-virtual {v5, v3, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 565
    invoke-interface {v12}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 216
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 218
    sget-object v17, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getClear-0nO6VwU()I

    move-result v31

    const/16 v32, 0x3a

    const/16 v33, 0x0

    move-object/from16 v21, v13

    move-wide/from16 v26, v3

    .line 215
    invoke-static/range {v21 .. v33}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 296
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    neg-float v5, v1

    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    neg-float v4, v1

    .line 120
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v1

    invoke-interface {v1, v5, v4}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    .line 300
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v2

    const/16 v21, 0x0

    new-instance v30, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float v23, p5, v1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1e

    move-object/from16 v22, v30

    invoke-direct/range {v22 .. v29}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x34

    const/16 v25, 0x0

    move-object v1, v13

    move-object/from16 v3, p2

    move/from16 v34, v4

    move/from16 v4, v21

    move/from16 v35, v5

    move-object/from16 v5, v30

    move-object/from16 v6, v22

    move-wide/from16 v36, v7

    move-object/from16 v8, p4

    move/from16 v7, v23

    move-object/from16 v38, v8

    move-object/from16 v39, v16

    move-object/from16 v16, p1

    move/from16 v8, v24

    move-object/from16 v21, v9

    move-object/from16 v9, v25

    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 305
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    const/4 v2, 0x1

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v3

    div-float/2addr v1, v3

    .line 306
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v3

    add-float/2addr v3, v2

    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v2

    div-float/2addr v3, v2

    .line 176
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v4

    .line 261
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v9

    .line 265
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v7

    .line 266
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 267
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v2

    .line 178
    invoke-interface {v2, v1, v3, v4, v5}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->scale-0AR0LA0(FFJ)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 309
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getClear-0nO6VwU()I

    move-result v17

    const/16 v22, 0x1c

    const/16 v23, 0x0

    move-object v1, v13

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-wide/from16 v40, v7

    move/from16 v7, v17

    move/from16 v8, v22

    move-object v10, v9

    move-object/from16 v9, v23

    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 269
    invoke-interface {v10}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    move-wide/from16 v1, v40

    .line 270
    invoke-interface {v10, v1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 122
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v1

    move/from16 v2, v35

    neg-float v2, v2

    move/from16 v3, v34

    neg-float v3, v3

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    .line 567
    invoke-interface {v12}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 568
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v1

    .line 569
    invoke-virtual {v1, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 570
    invoke-virtual {v1, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    move-object/from16 v2, v39

    .line 571
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    move-wide/from16 v2, v36

    .line 572
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 222
    invoke-interface {v11}, Landroidx/compose/ui/graphics/ImageBitmap;->prepareToDraw()V

    move-object/from16 v1, v38

    .line 290
    iput-object v11, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 315
    new-instance v2, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;

    move-object v4, v2

    move-object/from16 v5, v21

    move-object v6, v1

    move-wide/from16 v7, v19

    move-object/from16 v9, v18

    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;-><init>(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroidx/compose/ui/graphics/ColorFilter;)V

    invoke-virtual {v0, v2}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    :goto_5
    return-object v0
.end method

.method private static final drawRectBorder-NsqcLGU(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 16

    if-eqz p6, :cond_0

    .line 402
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p2

    :goto_0
    if-eqz p6, :cond_1

    .line 403
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p4

    :goto_1
    if-eqz p6, :cond_2

    .line 404
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    move-object v8, v0

    goto :goto_2

    :cond_2
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1e

    const/4 v15, 0x0

    move-object v8, v0

    move/from16 v9, p7

    invoke-direct/range {v8 .. v15}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 405
    :goto_2
    new-instance v0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;

    move-object v2, v0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;-><init>(Landroidx/compose/ui/graphics/Brush;JJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    return-object v0
.end method

.method private static final drawRoundRectBorder-SYlcjDY(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/draw/CacheDrawScope;",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/foundation/BorderCache;",
            ">;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/ui/graphics/Outline$Rounded;",
            "JJZF)",
            "Landroidx/compose/ui/draw/DrawResult;"
        }
    .end annotation

    move-object v0, p0

    move/from16 v9, p9

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/geometry/RoundRectKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v10

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float v12, v9, v1

    .line 339
    new-instance v13, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v1, v13

    move/from16 v2, p9

    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 340
    new-instance v14, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;

    move-object v1, v14

    move/from16 v2, p8

    move-object/from16 v3, p2

    move-wide v4, v10

    move v6, v12

    move/from16 v7, p9

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object v12, v13

    invoke-direct/range {v1 .. v12}, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;-><init>(ZLandroidx/compose/ui/graphics/Brush;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    invoke-virtual {p0, v14}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/compose/foundation/BorderKt;->obtain(Landroidx/compose/ui/node/Ref;)Landroidx/compose/foundation/BorderCache;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/BorderCache;->obtainPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v1

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v2

    move/from16 v3, p8

    invoke-static {v1, v2, v9, v3}, Landroidx/compose/foundation/BorderKt;->createRoundRectPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;FZ)Landroidx/compose/ui/graphics/Path;

    move-result-object v1

    .line 381
    new-instance v2, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$2;

    move-object/from16 v3, p2

    invoke-direct {v2, v1, v3}, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$2;-><init>(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;)V

    invoke-virtual {p0, v2}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static final obtain(Landroidx/compose/ui/node/Ref;)Landroidx/compose/foundation/BorderCache;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/foundation/BorderCache;",
            ">;)",
            "Landroidx/compose/foundation/BorderCache;"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Landroidx/compose/ui/node/Ref;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/BorderCache;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/BorderCache;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/BorderCache;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/Ref;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static final shrink-Kibmq7A(JF)J
    .locals 2

    .line 456
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v0

    sub-float/2addr v0, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 457
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result p0

    sub-float/2addr p0, p2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 455
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide p0

    return-wide p0
.end method
