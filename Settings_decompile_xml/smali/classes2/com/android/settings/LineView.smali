.class public Lcom/android/settings/LineView;
.super Landroid/view/View;
.source "LineView.java"


# instance fields
.field private mIsVertical:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I

.field private mXWidth:I

.field private mYHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/android/settings/LineView;->mIsVertical:Z

    const/4 p1, 0x5

    .line 15
    iput p1, p0, Lcom/android/settings/LineView;->mStrokeWidth:I

    .line 19
    invoke-virtual {p0}, Lcom/android/settings/LineView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/android/settings/LineView;->mIsVertical:Z

    const/4 p1, 0x5

    .line 15
    iput p1, p0, Lcom/android/settings/LineView;->mStrokeWidth:I

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/LineView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/android/settings/LineView;->mIsVertical:Z

    const/4 p1, 0x5

    .line 15
    iput p1, p0, Lcom/android/settings/LineView;->mStrokeWidth:I

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/LineView;->init()V

    return-void
.end method


# virtual methods
.method init()V
    .locals 2

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/LineView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/android/settings/LineView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object p0, p0, Lcom/android/settings/LineView;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 47
    iget-boolean v1, v0, Lcom/android/settings/LineView;->mIsVertical:Z

    if-eqz v1, :cond_0

    .line 48
    iget v1, v0, Lcom/android/settings/LineView;->mXWidth:I

    iget v2, v0, Lcom/android/settings/LineView;->mStrokeWidth:I

    sub-int v3, v1, v2

    int-to-float v5, v3

    const/4 v6, 0x0

    sub-int/2addr v1, v2

    int-to-float v7, v1

    iget v1, v0, Lcom/android/settings/LineView;->mYHeight:I

    int-to-float v8, v1

    iget-object v9, v0, Lcom/android/settings/LineView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 50
    iget v1, v0, Lcom/android/settings/LineView;->mYHeight:I

    iget v2, v0, Lcom/android/settings/LineView;->mStrokeWidth:I

    sub-int v3, v1, v2

    int-to-float v12, v3

    iget v3, v0, Lcom/android/settings/LineView;->mXWidth:I

    int-to-float v13, v3

    sub-int/2addr v1, v2

    int-to-float v14, v1

    iget-object v15, v0, Lcom/android/settings/LineView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/settings/LineView;->mXWidth:I

    .line 42
    iput p2, p0, Lcom/android/settings/LineView;->mYHeight:I

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/LineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOrientation(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/settings/LineView;->mIsVertical:Z

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/settings/LineView;->mStrokeWidth:I

    .line 64
    iget-object p0, p0, Lcom/android/settings/LineView;->mPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
