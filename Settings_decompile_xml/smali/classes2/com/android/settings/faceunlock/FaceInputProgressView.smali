.class public Lcom/android/settings/faceunlock/FaceInputProgressView;
.super Landroid/view/View;
.source "FaceInputProgressView.java"


# instance fields
.field private mDrawInitCircle:Z

.field private mInitPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mProgressCircleLeft:I

.field private mProgressCircleTop:I

.field private mProgressCircleWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/android/settings/faceunlock/FaceInputProgressView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/android/settings/faceunlock/FaceInputProgressView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-direct {p0}, Lcom/android/settings/faceunlock/FaceInputProgressView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 4

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mDrawInitCircle:Z

    .line 37
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mInitPaint:Landroid/graphics/Paint;

    const v2, -0xcccccd

    .line 38
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v1, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mInitPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object v1, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mInitPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v1, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mInitPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v1, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mInitPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 43
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mPaint:Landroid/graphics/Paint;

    const v3, -0xf27b01

    .line 44
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v1, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v1, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v1, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object v1, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mDrawInitCircle:Z

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getProgressCircleLeft(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mProgressCircleLeft:I

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getProgressCircleTop(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mProgressCircleTop:I

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getProgressCircleWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mProgressCircleWidth:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 57
    new-instance v6, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mProgressCircleLeft:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mProgressCircleTop:I

    int-to-float v3, v2

    iget v4, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mProgressCircleWidth:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-direct {v6, v1, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 58
    iget-boolean v0, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mDrawInitCircle:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    .line 59
    iget-object v5, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mInitPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 62
    :cond_0
    iget v0, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mProgress:I

    add-int/lit8 v1, v0, -0x53

    int-to-float v2, v1

    rsub-int v0, v0, 0x160

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mInitPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v2, -0x3d520000    # -87.0f

    .line 63
    iget v0, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mProgress:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 65
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public updateFaceInputProgress(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mDrawInitCircle:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mDrawInitCircle:Z

    .line 75
    :goto_0
    iput p1, p0, Lcom/android/settings/faceunlock/FaceInputProgressView;->mProgress:I

    if-ltz p1, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
