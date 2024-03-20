.class Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;
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
    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    .line 3
    iget v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 5
    int-to-float v2, v1

    .line 7
    iget-object v3, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    .line 8
    aget v3, v3, p2

    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 12
    sub-float/2addr v4, v3

    .line 14
    mul-float/2addr v4, v2

    .line 15
    iget v11, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    .line 16
    int-to-float v2, v11

    .line 18
    div-float/2addr v4, v2

    .line 19
    float-to-double v2, v4

    .line 20
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 21
    add-double/2addr v2, v4

    .line 23
    double-to-int v2, v2

    .line 24
    mul-int v10, v2, v11

    .line 25
    if-ge v10, v1, :cond_0

    .line 27
    iget-object v6, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPixels:[I

    .line 29
    mul-int v7, v11, v10

    .line 31
    mul-int v9, v11, p2

    .line 33
    sub-int v12, v1, v10

    .line 35
    const/4 v13, 0x1

    .line 37
    iget-object v14, v0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 38
    move-object/from16 v5, p1

    .line 40
    move v8, v11

    .line 42
    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 43
    :cond_0
    return-void
    .line 46
.end method
