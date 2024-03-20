.class public Lcom/miui/charge/lollipop/FireworksView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final OUTER_TRACK_END_COLOR:I

.field public static final OUTER_TRACK_MIDDLE_COLOR:I

.field public static final OUTER_TRACK_START_COLOR:I


# instance fields
.field public mFireDrawable:Landroid/graphics/drawable/Drawable;

.field public mFireHeight:I

.field public mFireList:Ljava/util/List;

.field public final mFireRunnable:Lcom/miui/charge/lollipop/FireworksView$2;

.field public mFireWidth:I

.field public mFireworksManager:Lcom/miui/charge/lollipop/FireworksManager;

.field public final mFrameCallback:Lcom/miui/charge/lollipop/FireworksView$1;

.field public mIsAnimationRuning:Z

.field public mLastTime:J

.field public mScreenSize:Landroid/graphics/Point;

.field public mSpeedMove:F

.field public mTrackPaint:Landroid/graphics/Paint;

.field public mTrackStokeWidth:I

.field public mViewHeight:I

.field public mViewWidth:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "#002F3A81"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    move-result v0

    .line 7
    sput v0, Lcom/miui/charge/lollipop/FireworksView;->OUTER_TRACK_START_COLOR:I

    .line 8
    const-string v0, "#ff210672"

    .line 10
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 15
    sput v0, Lcom/miui/charge/lollipop/FireworksView;->OUTER_TRACK_END_COLOR:I

    .line 16
    const-string v0, "#B42F3A81"

    .line 18
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 20
    move-result v0

    .line 23
    sput v0, Lcom/miui/charge/lollipop/FireworksView;->OUTER_TRACK_MIDDLE_COLOR:I

    .line 24
    return-void
    .line 26
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/charge/lollipop/FireworksView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/lollipop/FireworksView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/miui/charge/lollipop/FireworksView$1;

    invoke-direct {p2, p0}, Lcom/miui/charge/lollipop/FireworksView$1;-><init>(Lcom/miui/charge/lollipop/FireworksView;)V

    iput-object p2, p0, Lcom/miui/charge/lollipop/FireworksView;->mFrameCallback:Lcom/miui/charge/lollipop/FireworksView$1;

    .line 5
    new-instance p2, Lcom/miui/charge/lollipop/FireworksView$2;

    invoke-direct {p2, p0}, Lcom/miui/charge/lollipop/FireworksView$2;-><init>(Lcom/miui/charge/lollipop/FireworksView;)V

    iput-object p2, p0, Lcom/miui/charge/lollipop/FireworksView;->mFireRunnable:Lcom/miui/charge/lollipop/FireworksView$2;

    const-string/jumbo p2, "window"

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/miui/charge/lollipop/FireworksView;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/lollipop/FireworksView;->mScreenSize:Landroid/graphics/Point;

    .line 8
    iget-object p2, p0, Lcom/miui/charge/lollipop/FireworksView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/charge/lollipop/FireworksView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p2, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 9
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/FireworksView;->updateSizeForScreenSizeChange()V

    .line 10
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/miui/charge/lollipop/FireworksView;->mTrackPaint:Landroid/graphics/Paint;

    .line 11
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object p2, p0, Lcom/miui/charge/lollipop/FireworksView;->mTrackPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/miui/charge/lollipop/FireworksView;->mTrackStokeWidth:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    new-instance p2, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget p3, p0, Lcom/miui/charge/lollipop/FireworksView;->mViewHeight:I

    int-to-float v4, p3

    sget p3, Lcom/miui/charge/lollipop/FireworksView;->OUTER_TRACK_START_COLOR:I

    sget v0, Lcom/miui/charge/lollipop/FireworksView;->OUTER_TRACK_MIDDLE_COLOR:I

    sget v5, Lcom/miui/charge/lollipop/FireworksView;->OUTER_TRACK_END_COLOR:I

    filled-new-array {p3, v0, v5}, [I

    move-result-object v5

    const/4 p3, 0x3

    new-array v6, p3, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 14
    iget-object p3, p0, Lcom/miui/charge/lollipop/FireworksView;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 15
    new-instance p2, Lcom/miui/charge/lollipop/FireworksManager;

    iget p3, p0, Lcom/miui/charge/lollipop/FireworksView;->mViewHeight:I

    iget v0, p0, Lcom/miui/charge/lollipop/FireworksView;->mSpeedMove:F

    invoke-direct {p2, v0, p3}, Lcom/miui/charge/lollipop/FireworksManager;-><init>(FI)V

    iput-object p2, p0, Lcom/miui/charge/lollipop/FireworksView;->mFireworksManager:Lcom/miui/charge/lollipop/FireworksManager;

    .line 16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/lollipop/FireworksView;->mFireList:Ljava/util/List;

    const p2, 0x7f080bdf    # @drawable/charge_animation_fire_light_icon 'res/drawable-nodpi/charge_animation_fire_light_icon.webp'

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/charge/lollipop/FireworksView;->mFireDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3df5c28f    # 0.12f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final checkScreenSize()V
    .locals 10

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/miui/charge/lollipop/FireworksView;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 13
    iget-object v1, p0, Lcom/miui/charge/lollipop/FireworksView;->mScreenSize:Landroid/graphics/Point;

    .line 16
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 18
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->equals(II)Z

    .line 22
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/miui/charge/lollipop/FireworksView;->mScreenSize:Landroid/graphics/Point;

    .line 28
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 30
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/FireworksView;->updateSizeForScreenSizeChange()V

    .line 37
    iget-object v0, p0, Lcom/miui/charge/lollipop/FireworksView;->mTrackPaint:Landroid/graphics/Paint;

    .line 40
    iget v1, p0, Lcom/miui/charge/lollipop/FireworksView;->mTrackStokeWidth:I

    .line 42
    int-to-float v1, v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 48
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    iget v1, p0, Lcom/miui/charge/lollipop/FireworksView;->mViewHeight:I

    .line 53
    int-to-float v6, v1

    .line 55
    sget v1, Lcom/miui/charge/lollipop/FireworksView;->OUTER_TRACK_START_COLOR:I

    .line 56
    sget v2, Lcom/miui/charge/lollipop/FireworksView;->OUTER_TRACK_MIDDLE_COLOR:I

    .line 58
    sget v7, Lcom/miui/charge/lollipop/FireworksView;->OUTER_TRACK_END_COLOR:I

    .line 60
    filled-new-array {v1, v2, v7}, [I

    .line 62
    move-result-object v7

    .line 65
    const/4 v1, 0x3

    .line 66
    new-array v8, v1, [F

    .line 67
    fill-array-data v8, :array_0

    .line 69
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 72
    move-object v2, v0

    .line 74
    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 75
    iget-object v1, p0, Lcom/miui/charge/lollipop/FireworksView;->mTrackPaint:Landroid/graphics/Paint;

    .line 78
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 80
    iget-object v0, p0, Lcom/miui/charge/lollipop/FireworksView;->mFireworksManager:Lcom/miui/charge/lollipop/FireworksManager;

    .line 83
    iget v1, p0, Lcom/miui/charge/lollipop/FireworksView;->mViewHeight:I

    .line 85
    iget v2, p0, Lcom/miui/charge/lollipop/FireworksView;->mSpeedMove:F

    .line 87
    iput v1, v0, Lcom/miui/charge/lollipop/FireworksManager;->mDistance:I

    .line 89
    iput v2, v0, Lcom/miui/charge/lollipop/FireworksManager;->mSpeed:F

    .line 91
    iget-object v0, v0, Lcom/miui/charge/lollipop/FireworksManager;->mFireList:Ljava/util/List;

    .line 93
    check-cast v0, Ljava/util/LinkedList;

    .line 95
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 100
    :cond_0
    return-void

    .line 103
    :array_0
    .array-data 4
        0x0
        0x3df5c28f    # 0.12f
        0x3f800000    # 1.0f
    .end array-data
    .line 104
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/FireworksView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/FireworksView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/miui/charge/lollipop/FireworksView;->mViewWidth:I

    .line 5
    int-to-float v0, v0

    .line 7
    const/high16 v1, 0x40c00000    # 6.0f

    .line 8
    div-float/2addr v0, v1

    .line 10
    const/4 v2, 0x1

    .line 11
    :goto_0
    const/4 v3, 0x5

    .line 12
    if-gt v2, v3, :cond_0

    .line 13
    int-to-float v3, v2

    .line 15
    mul-float v7, v0, v3

    .line 16
    const/4 v6, 0x0

    .line 18
    iget v3, p0, Lcom/miui/charge/lollipop/FireworksView;->mViewHeight:I

    .line 19
    int-to-float v8, v3

    .line 21
    iget-object v9, p0, Lcom/miui/charge/lollipop/FireworksView;->mTrackPaint:Landroid/graphics/Paint;

    .line 22
    move-object v4, p1

    .line 24
    move v5, v7

    .line 25
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/lollipop/FireworksView;->mFireList:Ljava/util/List;

    .line 32
    if-nez v0, :cond_1

    .line 34
    goto :goto_3

    .line 36
    :cond_1
    iget v2, p0, Lcom/miui/charge/lollipop/FireworksView;->mViewWidth:I

    .line 37
    int-to-float v2, v2

    .line 39
    div-float/2addr v2, v1

    .line 40
    check-cast v0, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v0

    .line 46
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 56
    check-cast v1, Landroid/graphics/PointF;

    .line 57
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 59
    const/high16 v4, 0x3f800000    # 1.0f

    .line 61
    add-float/2addr v3, v4

    .line 63
    mul-float/2addr v3, v2

    .line 64
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 65
    iget v4, p0, Lcom/miui/charge/lollipop/FireworksView;->mFireWidth:I

    .line 67
    div-int/lit8 v5, v4, 0x2

    .line 69
    int-to-float v5, v5

    .line 71
    sub-float/2addr v3, v5

    .line 72
    float-to-int v3, v3

    .line 73
    float-to-int v1, v1

    .line 74
    add-int/2addr v4, v3

    .line 75
    iget v5, p0, Lcom/miui/charge/lollipop/FireworksView;->mFireHeight:I

    .line 76
    add-int/2addr v5, v1

    .line 78
    iget v6, p0, Lcom/miui/charge/lollipop/FireworksView;->mViewHeight:I

    .line 79
    int-to-float v6, v6

    .line 81
    const v7, 0x3e99999a    # 0.3f

    .line 82
    mul-float/2addr v6, v7

    .line 85
    int-to-float v7, v1

    .line 86
    cmpl-float v7, v7, v6

    .line 87
    if-lez v7, :cond_2

    .line 89
    const/16 v6, 0xff

    .line 91
    goto :goto_2

    .line 93
    :cond_2
    mul-int/lit16 v7, v1, 0xff

    .line 94
    int-to-float v7, v7

    .line 96
    div-float/2addr v7, v6

    .line 97
    float-to-int v6, v7

    .line 98
    :goto_2
    iget-object v7, p0, Lcom/miui/charge/lollipop/FireworksView;->mFireDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 101
    iget-object v6, p0, Lcom/miui/charge/lollipop/FireworksView;->mFireDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-virtual {v6, v3, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    iget-object v1, p0, Lcom/miui/charge/lollipop/FireworksView;->mFireDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    goto :goto_1

    .line 114
    :cond_3
    :goto_3
    return-void
    .line 115
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget p1, p0, Lcom/miui/charge/lollipop/FireworksView;->mViewWidth:I

    .line 5
    iget p2, p0, Lcom/miui/charge/lollipop/FireworksView;->mViewHeight:I

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 9
    return-void
    .line 12
.end method

.method public final updateSizeForScreenSizeChange()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/charge/lollipop/FireworksView;->mScreenSize:Landroid/graphics/Point;

    .line 2
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/miui/charge/lollipop/FireworksView;->mScreenSize:Landroid/graphics/Point;

    .line 12
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 14
    int-to-float v0, v0

    .line 16
    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    mul-float/2addr v0, v2

    .line 19
    const/high16 v3, 0x44870000    # 1080.0f

    .line 20
    div-float/2addr v0, v3

    .line 22
    int-to-float v3, v1

    .line 23
    mul-float/2addr v3, v2

    .line 24
    const v2, 0x45124000    # 2340.0f

    .line 25
    div-float/2addr v3, v2

    .line 28
    const/high16 v2, 0x42f40000    # 122.0f

    .line 29
    mul-float/2addr v2, v0

    .line 31
    float-to-int v2, v2

    .line 32
    iput v2, p0, Lcom/miui/charge/lollipop/FireworksView;->mViewWidth:I

    .line 33
    div-int/lit8 v1, v1, 0x2

    .line 35
    const/high16 v2, 0x43920000    # 292.0f

    .line 37
    mul-float/2addr v2, v0

    .line 39
    float-to-int v2, v2

    .line 40
    sub-int/2addr v1, v2

    .line 41
    iput v1, p0, Lcom/miui/charge/lollipop/FireworksView;->mViewHeight:I

    .line 42
    const/high16 v1, 0x41700000    # 15.0f

    .line 44
    mul-float/2addr v1, v0

    .line 46
    float-to-int v1, v1

    .line 47
    iput v1, p0, Lcom/miui/charge/lollipop/FireworksView;->mFireWidth:I

    .line 48
    const v1, 0x43ac8000    # 345.0f

    .line 50
    mul-float/2addr v1, v3

    .line 53
    float-to-int v1, v1

    .line 54
    iput v1, p0, Lcom/miui/charge/lollipop/FireworksView;->mFireHeight:I

    .line 55
    const/high16 v1, 0x40800000    # 4.0f

    .line 57
    mul-float/2addr v0, v1

    .line 59
    float-to-int v0, v0

    .line 60
    iput v0, p0, Lcom/miui/charge/lollipop/FireworksView;->mTrackStokeWidth:I

    .line 61
    const v0, 0x3fbb4e82

    .line 63
    mul-float/2addr v3, v0

    .line 66
    iput v3, p0, Lcom/miui/charge/lollipop/FireworksView;->mSpeedMove:F

    .line 67
    return-void
    .line 69
.end method
