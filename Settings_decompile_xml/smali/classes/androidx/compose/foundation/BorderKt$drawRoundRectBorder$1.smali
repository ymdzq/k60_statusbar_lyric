.class final Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Border.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/BorderKt;->drawRoundRectBorder-SYlcjDY(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Border.kt\nandroidx/compose/foundation/BorderKt$drawRoundRectBorder$1\n+ 2 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,459:1\n221#2:460\n261#2,11:461\n*S KotlinDebug\n*F\n+ 1 Border.kt\nandroidx/compose/foundation/BorderKt$drawRoundRectBorder$1\n*L\n353#1:460\n353#1:461,11\n*E\n"
.end annotation


# instance fields
.field final synthetic $borderSize:J

.field final synthetic $borderStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field final synthetic $brush:Landroidx/compose/ui/graphics/Brush;

.field final synthetic $cornerRadius:J

.field final synthetic $fillArea:Z

.field final synthetic $halfStroke:F

.field final synthetic $strokeWidth:F

.field final synthetic $topLeft:J


# direct methods
.method constructor <init>(ZLandroidx/compose/ui/graphics/Brush;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$fillArea:Z

    iput-object p2, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    iput-wide p3, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$cornerRadius:J

    iput p5, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$halfStroke:F

    iput p6, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$strokeWidth:F

    iput-wide p7, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$topLeft:J

    iput-wide p9, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$borderSize:J

    iput-object p11, p0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$borderStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 340
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "$this$onDrawWithContent"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 343
    iget-boolean v1, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$fillArea:Z

    if-eqz v1, :cond_0

    .line 346
    iget-object v3, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    iget-wide v8, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$cornerRadius:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xf6

    const/4 v15, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    goto/16 :goto_0

    .line 348
    :cond_0
    iget-wide v3, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$cornerRadius:J

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v1

    iget v3, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$halfStroke:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 354
    iget v6, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$strokeWidth:F

    .line 356
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    iget v3, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$strokeWidth:F

    sub-float v7, v1, v3

    .line 357
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    iget v3, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$strokeWidth:F

    sub-float v8, v1, v3

    .line 358
    sget-object v1, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/ClipOp$Companion;->getDifference-rtfAjoo()I

    move-result v9

    .line 353
    iget-object v3, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    iget-wide v0, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$cornerRadius:J

    .line 261
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v15

    .line 265
    invoke-interface {v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v13

    .line 266
    invoke-interface {v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 267
    invoke-interface {v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v4

    move v5, v6

    .line 221
    invoke-interface/range {v4 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->clipRect-N_I0leg(FFFFI)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xf6

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-wide v8, v0

    move-wide v0, v13

    move/from16 v13, v16

    move/from16 v14, v17

    move-object/from16 p0, v15

    move-object/from16 v15, v18

    .line 360
    invoke-static/range {v2 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 269
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    move-object/from16 v2, p0

    .line 270
    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v1, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    .line 370
    iget-wide v4, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$topLeft:J

    .line 371
    iget-wide v6, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$borderSize:J

    .line 372
    iget-wide v8, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$cornerRadius:J

    invoke-static {v8, v9, v3}, Landroidx/compose/foundation/BorderKt;->access$shrink-Kibmq7A(JF)J

    move-result-wide v8

    const/4 v10, 0x0

    .line 373
    iget-object v11, v0, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;->$borderStroke:Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xd0

    const/4 v15, 0x0

    move-object/from16 v2, p1

    move-object v3, v1

    .line 368
    invoke-static/range {v2 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :goto_0
    return-void
.end method
