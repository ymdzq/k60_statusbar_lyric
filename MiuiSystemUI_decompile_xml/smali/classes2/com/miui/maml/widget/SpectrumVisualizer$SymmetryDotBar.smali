.class Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/widget/SpectrumVisualizer;


# direct methods
.method public constructor <init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 4
    iget v2, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 6
    int-to-float v3, v2

    .line 8
    iget-object v4, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    .line 9
    aget v4, v4, p2

    .line 11
    const/high16 v5, 0x3f800000    # 1.0f

    .line 13
    sub-float/2addr v5, v4

    .line 15
    mul-float/2addr v5, v3

    .line 16
    iget v12, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    .line 17
    int-to-float v3, v12

    .line 19
    div-float/2addr v5, v3

    .line 20
    float-to-double v3, v5

    .line 21
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 22
    add-double v3, v3, v16

    .line 24
    double-to-int v3, v3

    .line 26
    mul-int v11, v3, v12

    .line 27
    if-ge v11, v2, :cond_0

    .line 29
    iget-object v7, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPixels:[I

    .line 31
    mul-int v8, v12, v11

    .line 33
    mul-int v10, v12, p2

    .line 35
    sub-int v13, v2, v11

    .line 37
    const/4 v14, 0x1

    .line 39
    iget-object v15, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 40
    move-object/from16 v6, p1

    .line 42
    move v9, v12

    .line 44
    invoke-virtual/range {v6 .. v15}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 45
    :cond_0
    iget-object v0, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 48
    iget v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 50
    int-to-float v2, v1

    .line 52
    iget-object v3, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    .line 53
    aget v3, v3, p2

    .line 55
    mul-float/2addr v2, v3

    .line 57
    iget v9, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    .line 58
    int-to-float v3, v9

    .line 60
    div-float/2addr v2, v3

    .line 61
    float-to-double v2, v2

    .line 62
    add-double v2, v2, v16

    .line 63
    double-to-int v2, v2

    .line 65
    mul-int/2addr v2, v9

    .line 66
    if-le v2, v1, :cond_1

    .line 67
    move v10, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move v10, v2

    .line 71
    :goto_0
    if-lez v10, :cond_2

    .line 72
    iget-object v4, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowPixels:[I

    .line 74
    const/4 v5, 0x0

    .line 76
    mul-int v7, v9, p2

    .line 77
    iget v8, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 79
    const/4 v11, 0x1

    .line 81
    iget-object v12, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 82
    move-object/from16 v3, p1

    .line 84
    move v6, v9

    .line 86
    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 87
    :cond_2
    return-void
    .line 90
.end method
