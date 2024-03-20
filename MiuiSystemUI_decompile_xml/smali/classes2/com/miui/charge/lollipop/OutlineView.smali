.class public Lcom/miui/charge/lollipop/OutlineView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final OUTER_CIRCLE_END_COLOR:I

.field public static final OUTER_CIRCLE_MIDDLE_COLOR:I

.field public static final OUTER_CIRCLE_START_COLOR:I


# instance fields
.field public mArcAngleDegree:F

.field public mArcCircleCenterY:F

.field public mArcCircleRadius:F

.field public mArcLeftCircleCenterX:F

.field public mArcRightCircleCenterX:F

.field public mOutCirclePaint:Landroid/graphics/Paint;

.field public mOutSecCirclePaint:Landroid/graphics/Paint;

.field public mOutThrCirclePaint:Landroid/graphics/Paint;

.field public mOuterCircleCenterX:I

.field public mOuterCircleCenterY:I

.field public mOuterCircleRadius:I

.field public mOuterCircleWidth:I

.field public mOuterSecCircleRadius:I

.field public mOuterSecCircleWidth:I

.field public mOuterThrCircleRadius:I

.field public mOuterThrCircleWidth:I

.field public mScreenSize:Landroid/graphics/Point;

.field public mSecArcAngleDegree:F

.field public mSecArcCircleCenterY:F

.field public mSecArcCircleRadius:F

.field public mSecArcLeftCircleCenterX:F

.field public mSecArcRightCircleCenterX:F

.field public mSecTrackTopY:I

.field public mThrArcAngleDegree:F

.field public mThrArcCircleCenterY:F

.field public mThrArcCircleRadius:F

.field public mThrArcLeftCircleCenterX:F

.field public mThrArcRightCircleCenterX:F

.field public mThrTrackTopY:I

.field public mTrackLeftX:I

.field public mTrackRightX:I

.field public mTrackTopY:I

.field public mViewHeight:I

.field public mViewWidth:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "#d013ff"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    move-result v0

    .line 7
    sput v0, Lcom/miui/charge/lollipop/OutlineView;->OUTER_CIRCLE_START_COLOR:I

    .line 8
    const-string v0, "#0e5dff"

    .line 10
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 15
    sput v0, Lcom/miui/charge/lollipop/OutlineView;->OUTER_CIRCLE_MIDDLE_COLOR:I

    .line 16
    const-string v0, "#3216a5"

    .line 18
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 20
    move-result v0

    .line 23
    sput v0, Lcom/miui/charge/lollipop/OutlineView;->OUTER_CIRCLE_END_COLOR:I

    .line 24
    return-void
    .line 26
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/charge/lollipop/OutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/lollipop/OutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo p2, "window"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/miui/charge/lollipop/OutlineView;->mWindowManager:Landroid/view/WindowManager;

    .line 5
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/miui/charge/lollipop/OutlineView;->mScreenSize:Landroid/graphics/Point;

    .line 6
    iget-object p1, p0, Lcom/miui/charge/lollipop/OutlineView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/charge/lollipop/OutlineView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 7
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/OutlineView;->updateSizeForScreenSizeChange()V

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutCirclePaint:Landroid/graphics/Paint;

    .line 9
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object p1, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutCirclePaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterCircleWidth:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget p3, p0, Lcom/miui/charge/lollipop/OutlineView;->mViewHeight:I

    int-to-float v4, p3

    sget p3, Lcom/miui/charge/lollipop/OutlineView;->OUTER_CIRCLE_START_COLOR:I

    sget v0, Lcom/miui/charge/lollipop/OutlineView;->OUTER_CIRCLE_MIDDLE_COLOR:I

    sget v5, Lcom/miui/charge/lollipop/OutlineView;->OUTER_CIRCLE_END_COLOR:I

    filled-new-array {p3, v0, v5}, [I

    move-result-object v5

    const/4 p3, 0x3

    new-array v6, p3, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 12
    iget-object p3, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 13
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutSecCirclePaint:Landroid/graphics/Paint;

    .line 14
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object p3, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutSecCirclePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterSecCircleWidth:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object p3, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutSecCirclePaint:Landroid/graphics/Paint;

    const/16 v0, 0xb2

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17
    iget-object p3, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutSecCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 18
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutThrCirclePaint:Landroid/graphics/Paint;

    .line 19
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object p2, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutThrCirclePaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterThrCircleWidth:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    iget-object p2, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutThrCirclePaint:Landroid/graphics/Paint;

    const/16 p3, 0x66

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 22
    iget-object p0, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutThrCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3eae147b    # 0.34f
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
    iget-object v1, p0, Lcom/miui/charge/lollipop/OutlineView;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 13
    iget-object v1, p0, Lcom/miui/charge/lollipop/OutlineView;->mScreenSize:Landroid/graphics/Point;

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
    iget-object v1, p0, Lcom/miui/charge/lollipop/OutlineView;->mScreenSize:Landroid/graphics/Point;

    .line 28
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 30
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/OutlineView;->updateSizeForScreenSizeChange()V

    .line 37
    iget-object v0, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutCirclePaint:Landroid/graphics/Paint;

    .line 40
    iget v1, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterCircleWidth:I

    .line 42
    int-to-float v1, v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    iget-object v0, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutSecCirclePaint:Landroid/graphics/Paint;

    .line 48
    iget v1, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterSecCircleWidth:I

    .line 50
    int-to-float v1, v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v0, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutThrCirclePaint:Landroid/graphics/Paint;

    .line 56
    iget v1, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterThrCircleWidth:I

    .line 58
    int-to-float v1, v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 64
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    iget v1, p0, Lcom/miui/charge/lollipop/OutlineView;->mViewHeight:I

    .line 69
    int-to-float v6, v1

    .line 71
    sget v1, Lcom/miui/charge/lollipop/OutlineView;->OUTER_CIRCLE_START_COLOR:I

    .line 72
    sget v2, Lcom/miui/charge/lollipop/OutlineView;->OUTER_CIRCLE_MIDDLE_COLOR:I

    .line 74
    sget v7, Lcom/miui/charge/lollipop/OutlineView;->OUTER_CIRCLE_END_COLOR:I

    .line 76
    filled-new-array {v1, v2, v7}, [I

    .line 78
    move-result-object v7

    .line 81
    const/4 v1, 0x3

    .line 82
    new-array v8, v1, [F

    .line 83
    fill-array-data v8, :array_0

    .line 85
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 88
    move-object v2, v0

    .line 90
    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 91
    iget-object v1, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutCirclePaint:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 96
    iget-object v1, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutSecCirclePaint:Landroid/graphics/Paint;

    .line 99
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 101
    iget-object v1, p0, Lcom/miui/charge/lollipop/OutlineView;->mOutThrCirclePaint:Landroid/graphics/Paint;

    .line 104
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 109
    :cond_0
    return-void

    .line 112
    nop

    .line 113
    :array_0
    .array-data 4
        0x0
        0x3eae147b    # 0.34f
        0x3f800000    # 1.0f
    .end array-data
    .line 114
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/OutlineView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/OutlineView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mOuterCircleCenterX:I

    .line 7
    iget v2, v0, Lcom/miui/charge/lollipop/OutlineView;->mOuterCircleRadius:I

    .line 9
    sub-int v3, v1, v2

    .line 11
    iget v4, v0, Lcom/miui/charge/lollipop/OutlineView;->mOuterCircleCenterY:I

    .line 13
    sub-int v5, v4, v2

    .line 15
    add-int/2addr v1, v2

    .line 17
    add-int/2addr v4, v2

    .line 18
    int-to-float v7, v3

    .line 19
    int-to-float v8, v5

    .line 20
    int-to-float v9, v1

    .line 21
    int-to-float v10, v4

    .line 22
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mArcAngleDegree:F

    .line 23
    const/high16 v2, 0x43870000    # 270.0f

    .line 25
    sub-float v11, v1, v2

    .line 27
    const/high16 v3, 0x40000000    # 2.0f

    .line 29
    mul-float/2addr v1, v3

    .line 31
    const/high16 v4, 0x43b40000    # 360.0f

    .line 32
    sub-float v12, v4, v1

    .line 34
    const/4 v13, 0x0

    .line 36
    iget-object v14, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutCirclePaint:Landroid/graphics/Paint;

    .line 37
    move-object/from16 v6, p1

    .line 39
    invoke-virtual/range {v6 .. v14}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 41
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mOuterCircleCenterX:I

    .line 44
    iget v5, v0, Lcom/miui/charge/lollipop/OutlineView;->mOuterSecCircleRadius:I

    .line 46
    sub-int v6, v1, v5

    .line 48
    iget v7, v0, Lcom/miui/charge/lollipop/OutlineView;->mOuterCircleCenterY:I

    .line 50
    sub-int v8, v7, v5

    .line 52
    add-int/2addr v1, v5

    .line 54
    add-int/2addr v7, v5

    .line 55
    int-to-float v10, v6

    .line 56
    int-to-float v11, v8

    .line 57
    int-to-float v12, v1

    .line 58
    int-to-float v13, v7

    .line 59
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcAngleDegree:F

    .line 60
    sub-float v14, v1, v2

    .line 62
    mul-float/2addr v1, v3

    .line 64
    sub-float v15, v4, v1

    .line 65
    const/16 v16, 0x0

    .line 67
    iget-object v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutSecCirclePaint:Landroid/graphics/Paint;

    .line 69
    move-object/from16 v9, p1

    .line 71
    move-object/from16 v17, v1

    .line 73
    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 75
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mOuterCircleCenterX:I

    .line 78
    iget v5, v0, Lcom/miui/charge/lollipop/OutlineView;->mOuterThrCircleRadius:I

    .line 80
    sub-int v6, v1, v5

    .line 82
    iget v7, v0, Lcom/miui/charge/lollipop/OutlineView;->mOuterCircleCenterY:I

    .line 84
    sub-int v8, v7, v5

    .line 86
    add-int/2addr v1, v5

    .line 88
    add-int/2addr v7, v5

    .line 89
    int-to-float v10, v6

    .line 90
    int-to-float v11, v8

    .line 91
    int-to-float v12, v1

    .line 92
    int-to-float v13, v7

    .line 93
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcAngleDegree:F

    .line 94
    sub-float v14, v1, v2

    .line 96
    mul-float/2addr v1, v3

    .line 98
    sub-float v15, v4, v1

    .line 99
    iget-object v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutThrCirclePaint:Landroid/graphics/Paint;

    .line 101
    move-object/from16 v17, v1

    .line 103
    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 105
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mArcLeftCircleCenterX:F

    .line 108
    iget v2, v0, Lcom/miui/charge/lollipop/OutlineView;->mArcCircleRadius:F

    .line 110
    sub-float v4, v1, v2

    .line 112
    iget v3, v0, Lcom/miui/charge/lollipop/OutlineView;->mArcCircleCenterY:F

    .line 114
    sub-float v5, v3, v2

    .line 116
    add-float v6, v1, v2

    .line 118
    add-float v7, v3, v2

    .line 120
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mArcAngleDegree:F

    .line 122
    const/high16 v2, 0x42b40000    # 90.0f

    .line 124
    sub-float v8, v1, v2

    .line 126
    sub-float v9, v2, v1

    .line 128
    const/4 v10, 0x0

    .line 130
    iget-object v11, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutCirclePaint:Landroid/graphics/Paint;

    .line 131
    move-object/from16 v3, p1

    .line 133
    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 135
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcLeftCircleCenterX:F

    .line 138
    iget v3, v0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcCircleRadius:F

    .line 140
    sub-float v5, v1, v3

    .line 142
    iget v4, v0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcCircleCenterY:F

    .line 144
    sub-float v6, v4, v3

    .line 146
    add-float v7, v1, v3

    .line 148
    add-float v8, v4, v3

    .line 150
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcAngleDegree:F

    .line 152
    sub-float v9, v1, v2

    .line 154
    sub-float v10, v2, v1

    .line 156
    const/4 v11, 0x0

    .line 158
    iget-object v12, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutSecCirclePaint:Landroid/graphics/Paint;

    .line 159
    move-object/from16 v4, p1

    .line 161
    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 163
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcLeftCircleCenterX:F

    .line 166
    iget v3, v0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcCircleRadius:F

    .line 168
    sub-float v5, v1, v3

    .line 170
    iget v4, v0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcCircleCenterY:F

    .line 172
    sub-float v6, v4, v3

    .line 174
    add-float v7, v1, v3

    .line 176
    add-float v8, v4, v3

    .line 178
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcAngleDegree:F

    .line 180
    sub-float v9, v1, v2

    .line 182
    sub-float v10, v2, v1

    .line 184
    iget-object v12, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutThrCirclePaint:Landroid/graphics/Paint;

    .line 186
    move-object/from16 v4, p1

    .line 188
    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 190
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mArcRightCircleCenterX:F

    .line 193
    iget v3, v0, Lcom/miui/charge/lollipop/OutlineView;->mArcCircleRadius:F

    .line 195
    sub-float v5, v1, v3

    .line 197
    iget v4, v0, Lcom/miui/charge/lollipop/OutlineView;->mArcCircleCenterY:F

    .line 199
    sub-float v6, v4, v3

    .line 201
    add-float v7, v1, v3

    .line 203
    add-float v8, v4, v3

    .line 205
    const/high16 v9, 0x43340000    # 180.0f

    .line 207
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mArcAngleDegree:F

    .line 209
    sub-float v10, v2, v1

    .line 211
    iget-object v12, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutCirclePaint:Landroid/graphics/Paint;

    .line 213
    move-object/from16 v4, p1

    .line 215
    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 217
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcRightCircleCenterX:F

    .line 220
    iget v3, v0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcCircleRadius:F

    .line 222
    sub-float v5, v1, v3

    .line 224
    iget v4, v0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcCircleCenterY:F

    .line 226
    sub-float v6, v4, v3

    .line 228
    add-float v7, v1, v3

    .line 230
    add-float v8, v4, v3

    .line 232
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcAngleDegree:F

    .line 234
    sub-float v10, v2, v1

    .line 236
    iget-object v12, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutSecCirclePaint:Landroid/graphics/Paint;

    .line 238
    move-object/from16 v4, p1

    .line 240
    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 242
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcRightCircleCenterX:F

    .line 245
    iget v3, v0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcCircleRadius:F

    .line 247
    sub-float v5, v1, v3

    .line 249
    iget v4, v0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcCircleCenterY:F

    .line 251
    sub-float v6, v4, v3

    .line 253
    add-float v7, v1, v3

    .line 255
    add-float v8, v4, v3

    .line 257
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcAngleDegree:F

    .line 259
    sub-float v10, v2, v1

    .line 261
    iget-object v12, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutThrCirclePaint:Landroid/graphics/Paint;

    .line 263
    move-object/from16 v4, p1

    .line 265
    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 267
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mTrackLeftX:I

    .line 270
    int-to-float v3, v1

    .line 272
    iget v2, v0, Lcom/miui/charge/lollipop/OutlineView;->mTrackTopY:I

    .line 273
    int-to-float v4, v2

    .line 275
    int-to-float v5, v1

    .line 276
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mViewHeight:I

    .line 277
    int-to-float v6, v1

    .line 279
    iget-object v7, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutCirclePaint:Landroid/graphics/Paint;

    .line 280
    move-object/from16 v2, p1

    .line 282
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 284
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mTrackRightX:I

    .line 287
    int-to-float v3, v1

    .line 289
    iget v2, v0, Lcom/miui/charge/lollipop/OutlineView;->mTrackTopY:I

    .line 290
    int-to-float v4, v2

    .line 292
    int-to-float v5, v1

    .line 293
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mViewHeight:I

    .line 294
    int-to-float v6, v1

    .line 296
    iget-object v7, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutCirclePaint:Landroid/graphics/Paint;

    .line 297
    move-object/from16 v2, p1

    .line 299
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 301
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mTrackLeftX:I

    .line 304
    int-to-float v3, v1

    .line 306
    iget v2, v0, Lcom/miui/charge/lollipop/OutlineView;->mSecTrackTopY:I

    .line 307
    int-to-float v4, v2

    .line 309
    int-to-float v5, v1

    .line 310
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mViewHeight:I

    .line 311
    int-to-float v6, v1

    .line 313
    iget-object v7, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutSecCirclePaint:Landroid/graphics/Paint;

    .line 314
    move-object/from16 v2, p1

    .line 316
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 318
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mTrackRightX:I

    .line 321
    int-to-float v3, v1

    .line 323
    iget v2, v0, Lcom/miui/charge/lollipop/OutlineView;->mSecTrackTopY:I

    .line 324
    int-to-float v4, v2

    .line 326
    int-to-float v5, v1

    .line 327
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mViewHeight:I

    .line 328
    int-to-float v6, v1

    .line 330
    iget-object v7, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutSecCirclePaint:Landroid/graphics/Paint;

    .line 331
    move-object/from16 v2, p1

    .line 333
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 335
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mTrackLeftX:I

    .line 338
    int-to-float v3, v1

    .line 340
    iget v2, v0, Lcom/miui/charge/lollipop/OutlineView;->mThrTrackTopY:I

    .line 341
    int-to-float v4, v2

    .line 343
    int-to-float v5, v1

    .line 344
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mViewHeight:I

    .line 345
    int-to-float v6, v1

    .line 347
    iget-object v7, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutThrCirclePaint:Landroid/graphics/Paint;

    .line 348
    move-object/from16 v2, p1

    .line 350
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 352
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mTrackRightX:I

    .line 355
    int-to-float v3, v1

    .line 357
    iget v2, v0, Lcom/miui/charge/lollipop/OutlineView;->mThrTrackTopY:I

    .line 358
    int-to-float v4, v2

    .line 360
    int-to-float v5, v1

    .line 361
    iget v1, v0, Lcom/miui/charge/lollipop/OutlineView;->mViewHeight:I

    .line 362
    int-to-float v6, v1

    .line 364
    iget-object v7, v0, Lcom/miui/charge/lollipop/OutlineView;->mOutThrCirclePaint:Landroid/graphics/Paint;

    .line 365
    move-object/from16 v2, p1

    .line 367
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 369
    return-void
    .line 372
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget p1, p0, Lcom/miui/charge/lollipop/OutlineView;->mViewWidth:I

    .line 5
    iget p2, p0, Lcom/miui/charge/lollipop/OutlineView;->mViewHeight:I

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 9
    return-void
    .line 12
.end method

.method public final updateSizeForScreenSizeChange()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/miui/charge/lollipop/OutlineView;->mScreenSize:Landroid/graphics/Point;

    .line 2
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/miui/charge/lollipop/OutlineView;->mScreenSize:Landroid/graphics/Point;

    .line 12
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 14
    int-to-float v2, v0

    .line 16
    const/high16 v3, 0x3f800000    # 1.0f

    .line 17
    mul-float/2addr v2, v3

    .line 19
    const/high16 v3, 0x44870000    # 1080.0f

    .line 20
    div-float/2addr v2, v3

    .line 22
    const/high16 v3, 0x40c00000    # 6.0f

    .line 23
    mul-float/2addr v3, v2

    .line 25
    float-to-int v3, v3

    .line 26
    iput v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterCircleWidth:I

    .line 27
    const/high16 v4, 0x40800000    # 4.0f

    .line 29
    mul-float/2addr v4, v2

    .line 31
    float-to-int v4, v4

    .line 32
    iput v4, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterSecCircleWidth:I

    .line 33
    iput v4, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterThrCircleWidth:I

    .line 35
    const/high16 v4, 0x43bd0000    # 378.0f

    .line 37
    mul-float/2addr v4, v2

    .line 39
    float-to-int v4, v4

    .line 40
    iput v4, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterCircleRadius:I

    .line 41
    const/high16 v5, 0x43b30000    # 358.0f

    .line 43
    mul-float/2addr v5, v2

    .line 45
    float-to-int v5, v5

    .line 46
    iput v5, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterSecCircleRadius:I

    .line 47
    const/high16 v5, 0x43a90000    # 338.0f

    .line 49
    mul-float/2addr v5, v2

    .line 51
    float-to-int v5, v5

    .line 52
    iput v5, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterThrCircleRadius:I

    .line 53
    add-int v5, v3, v4

    .line 55
    iput v5, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterCircleCenterX:I

    .line 57
    iput v5, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterCircleCenterY:I

    .line 59
    add-int/2addr v3, v4

    .line 61
    mul-int/lit8 v3, v3, 0x2

    .line 62
    iput v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mViewWidth:I

    .line 64
    div-int/lit8 v3, v1, 0x2

    .line 66
    add-int/2addr v3, v5

    .line 68
    iput v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mViewHeight:I

    .line 69
    const v3, 0x43ed8000    # 475.0f

    .line 71
    mul-float/2addr v3, v2

    .line 74
    float-to-int v3, v3

    .line 75
    const v6, 0x43e38000    # 455.0f

    .line 76
    mul-float/2addr v6, v2

    .line 79
    float-to-int v6, v6

    .line 80
    const v7, 0x43d98000    # 435.0f

    .line 81
    mul-float/2addr v7, v2

    .line 84
    float-to-int v7, v7

    .line 85
    const/high16 v8, 0x42f40000    # 122.0f

    .line 86
    mul-float/2addr v2, v8

    .line 88
    float-to-int v2, v2

    .line 89
    div-int/lit8 v8, v2, 0x2

    .line 90
    sub-int v9, v5, v8

    .line 92
    iput v9, p0, Lcom/miui/charge/lollipop/OutlineView;->mTrackLeftX:I

    .line 94
    add-int/2addr v8, v5

    .line 96
    iput v8, p0, Lcom/miui/charge/lollipop/OutlineView;->mTrackRightX:I

    .line 97
    add-int v8, v5, v3

    .line 99
    iput v8, p0, Lcom/miui/charge/lollipop/OutlineView;->mTrackTopY:I

    .line 101
    add-int v8, v5, v6

    .line 103
    iput v8, p0, Lcom/miui/charge/lollipop/OutlineView;->mSecTrackTopY:I

    .line 105
    add-int/2addr v5, v7

    .line 107
    iput v5, p0, Lcom/miui/charge/lollipop/OutlineView;->mThrTrackTopY:I

    .line 108
    int-to-float v3, v3

    .line 110
    int-to-float v2, v2

    .line 111
    const/high16 v5, 0x40000000    # 2.0f

    .line 112
    div-float/2addr v2, v5

    .line 114
    int-to-float v4, v4

    .line 115
    sub-float v8, v4, v2

    .line 116
    mul-float/2addr v8, v5

    .line 118
    mul-float v9, v3, v3

    .line 119
    mul-float v10, v2, v2

    .line 121
    add-float/2addr v9, v10

    .line 123
    invoke-static {v4, v4, v9, v8}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 124
    move-result v4

    .line 127
    iput v4, p0, Lcom/miui/charge/lollipop/OutlineView;->mArcCircleRadius:F

    .line 128
    add-float/2addr v4, v2

    .line 130
    div-float/2addr v4, v3

    .line 131
    float-to-double v3, v4

    .line 132
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    .line 133
    move-result-wide v3

    .line 136
    double-to-float v3, v3

    .line 137
    const/high16 v4, 0x43340000    # 180.0f

    .line 138
    mul-float/2addr v3, v4

    .line 140
    float-to-double v8, v3

    .line 141
    const-wide v11, 0x400921fb54442d18L    # Math.PI

    .line 142
    div-double/2addr v8, v11

    .line 147
    double-to-float v3, v8

    .line 148
    iput v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mArcAngleDegree:F

    .line 149
    iget v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mTrackLeftX:I

    .line 151
    int-to-float v3, v3

    .line 153
    iget v8, p0, Lcom/miui/charge/lollipop/OutlineView;->mArcCircleRadius:F

    .line 154
    sub-float/2addr v3, v8

    .line 156
    iput v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mArcLeftCircleCenterX:F

    .line 157
    iget v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mTrackRightX:I

    .line 159
    int-to-float v3, v3

    .line 161
    add-float/2addr v3, v8

    .line 162
    iput v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mArcRightCircleCenterX:F

    .line 163
    iget v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mTrackTopY:I

    .line 165
    int-to-float v3, v3

    .line 167
    iput v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mArcCircleCenterY:F

    .line 168
    int-to-float v3, v6

    .line 170
    iget v6, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterSecCircleRadius:I

    .line 171
    int-to-float v6, v6

    .line 173
    sub-float v8, v6, v2

    .line 174
    mul-float/2addr v8, v5

    .line 176
    mul-float v9, v3, v3

    .line 177
    add-float/2addr v9, v10

    .line 179
    invoke-static {v6, v6, v9, v8}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 180
    move-result v6

    .line 183
    iput v6, p0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcCircleRadius:F

    .line 184
    add-float/2addr v6, v2

    .line 186
    div-float/2addr v6, v3

    .line 187
    float-to-double v8, v6

    .line 188
    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    .line 189
    move-result-wide v8

    .line 192
    double-to-float v3, v8

    .line 193
    mul-float/2addr v3, v4

    .line 194
    float-to-double v8, v3

    .line 195
    div-double/2addr v8, v11

    .line 196
    double-to-float v3, v8

    .line 197
    iput v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcAngleDegree:F

    .line 198
    iget v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mTrackLeftX:I

    .line 200
    int-to-float v3, v3

    .line 202
    iget v6, p0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcCircleRadius:F

    .line 203
    sub-float/2addr v3, v6

    .line 205
    iput v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcLeftCircleCenterX:F

    .line 206
    iget v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mTrackRightX:I

    .line 208
    int-to-float v3, v3

    .line 210
    add-float/2addr v3, v6

    .line 211
    iput v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcRightCircleCenterX:F

    .line 212
    iget v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mSecTrackTopY:I

    .line 214
    int-to-float v3, v3

    .line 216
    iput v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mSecArcCircleCenterY:F

    .line 217
    int-to-float v3, v7

    .line 219
    iget v6, p0, Lcom/miui/charge/lollipop/OutlineView;->mOuterThrCircleRadius:I

    .line 220
    int-to-float v6, v6

    .line 222
    sub-float v7, v6, v2

    .line 223
    mul-float/2addr v7, v5

    .line 225
    mul-float v5, v3, v3

    .line 226
    add-float/2addr v5, v10

    .line 228
    invoke-static {v6, v6, v5, v7}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 229
    move-result v5

    .line 232
    iput v5, p0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcCircleRadius:F

    .line 233
    add-float/2addr v5, v2

    .line 235
    div-float/2addr v5, v3

    .line 236
    float-to-double v2, v5

    .line 237
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    .line 238
    move-result-wide v2

    .line 241
    double-to-float v2, v2

    .line 242
    mul-float/2addr v2, v4

    .line 243
    float-to-double v2, v2

    .line 244
    div-double/2addr v2, v11

    .line 245
    double-to-float v2, v2

    .line 246
    iput v2, p0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcAngleDegree:F

    .line 247
    iget v2, p0, Lcom/miui/charge/lollipop/OutlineView;->mTrackLeftX:I

    .line 249
    int-to-float v2, v2

    .line 251
    iget v3, p0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcCircleRadius:F

    .line 252
    sub-float/2addr v2, v3

    .line 254
    iput v2, p0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcLeftCircleCenterX:F

    .line 255
    iget v2, p0, Lcom/miui/charge/lollipop/OutlineView;->mTrackRightX:I

    .line 257
    int-to-float v2, v2

    .line 259
    add-float/2addr v2, v3

    .line 260
    iput v2, p0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcRightCircleCenterX:F

    .line 261
    iget v2, p0, Lcom/miui/charge/lollipop/OutlineView;->mThrTrackTopY:I

    .line 263
    int-to-float v2, v2

    .line 265
    iput v2, p0, Lcom/miui/charge/lollipop/OutlineView;->mThrArcCircleCenterY:F

    .line 266
    const-string/jumbo p0, "updateSizeForScreenSizeChange:  screenWidth: "

    .line 268
    const-string v2, " screenHeight: "

    .line 271
    const-string v3, " IS_NOTCH "

    .line 273
    invoke-static {p0, v0, v2, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    move-result-object p0

    .line 278
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_NOTCH:Z

    .line 279
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object p0

    .line 287
    const-string v0, "OutlineView"

    .line 288
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
    .line 293
.end method
