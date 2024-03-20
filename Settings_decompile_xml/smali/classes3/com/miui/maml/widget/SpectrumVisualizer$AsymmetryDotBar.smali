.class Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsymmetryDotBar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .locals 12

    .line 409
    iget-object p0, p0, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    int-to-float v1, v0

    iget-object v2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    aget v2, v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    iget v8, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    int-to-float v2, v8

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    mul-int v7, v1, v8

    if-ge v7, v0, :cond_0

    .line 411
    iget-object v3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPixels:[I

    mul-int v4, v8, v7

    mul-int v6, v8, p2

    sub-int v9, v0, v7

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v5, v8

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
