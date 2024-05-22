.class public Lmiuix/popupwidget/internal/widget/GuidePopupView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnchor:Landroid/view/View;

.field public mAnchorHeight:I

.field public mAnchorLocationX:I

.field public mAnchorLocationY:I

.field public mAnchorWidth:I

.field public mArrowMode:I

.field public final mColorBackground:I

.field public mDefaultOffset:I

.field public mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

.field public mIsMirrored:Z

.field public final mLineLength:F

.field public final mMinBorder:I

.field public mMirroredTextGroup:Landroid/widget/LinearLayout;

.field public mOffsetX:I

.field public mOffsetY:I

.field public final mPaint:Landroid/graphics/Paint;

.field public final mStartPointRadius:F

.field public mTextCircleRadius:F

.field public mTextGroup:Landroid/widget/LinearLayout;

.field public mUseDefaultOffset:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04034c    # @attr/guidePopupViewStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    .line 5
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 6
    new-instance v2, Lmiuix/popupwidget/internal/widget/GuidePopupView$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiuix/popupwidget/internal/widget/GuidePopupView$1;-><init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;I)V

    .line 7
    new-instance v2, Lmiuix/popupwidget/internal/widget/GuidePopupView$1;

    invoke-direct {v2, p0, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView$1;-><init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;I)V

    const/4 v2, -0x1

    .line 8
    iput v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    .line 9
    sget-object v4, Lmiuix/popupwidget/R$styleable;->GuidePopupView:[I

    const v5, 0x7f1406d3    # @style/Widget.GuidePopupView.DayNight

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    const/4 p3, 0x0

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mStartPointRadius:F

    const/4 p2, 0x3

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mLineLength:F

    const/4 v4, 0x6

    .line 12
    invoke-virtual {p1, v4, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 13
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mColorBackground:I

    const/4 p3, 0x4

    .line 14
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 15
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p3, 0xf

    .line 16
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    const/4 p3, 0x2

    .line 17
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    const/high16 p3, 0x40200000    # 2.5f

    mul-float/2addr p1, p3

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMinBorder:I

    return-void
.end method

.method private getMirroredMode()I
    .locals 1

    .line 1
    iget p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    .line 2
    const/4 v0, -0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    rem-int/lit8 v0, p0, 0x2

    .line 8
    if-nez v0, :cond_1

    .line 10
    add-int/lit8 p0, p0, 0x1

    .line 12
    return p0

    .line 14
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 15
    return p0
    .line 17
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    .line 8
    int-to-float v0, v0

    .line 10
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 11
    int-to-float v1, v1

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 17
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 20
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 25
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 30
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 36
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 39
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 45
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    .line 48
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    .line 50
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    .line 52
    invoke-virtual {p0, p1, v0, v1, v2}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->drawPopup(Landroid/graphics/Canvas;III)V

    .line 54
    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsMirrored:Z

    .line 57
    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->getMirroredMode()I

    .line 61
    move-result v0

    .line 64
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    .line 65
    neg-int v1, v1

    .line 67
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    .line 68
    neg-int v2, v2

    .line 70
    invoke-virtual {p0, p1, v0, v1, v2}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->drawPopup(Landroid/graphics/Canvas;III)V

    .line 71
    :cond_0
    return-void
    .line 74
.end method

.method public final drawPopup(Landroid/graphics/Canvas;III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 8
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    .line 15
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    .line 17
    div-int/lit8 v1, v1, 0x2

    .line 19
    add-int/2addr v1, v0

    .line 21
    add-int/2addr v1, p3

    .line 22
    int-to-float p3, v1

    .line 23
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 24
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    .line 26
    div-int/lit8 v1, v1, 0x2

    .line 28
    add-int/2addr v1, v0

    .line 30
    add-int/2addr v1, p4

    .line 31
    int-to-float p4, v1

    .line 32
    const/4 v0, 0x0

    .line 33
    packed-switch p2, :pswitch_data_0

    .line 34
    :pswitch_0
    move p2, v0

    .line 37
    goto :goto_0

    .line 38
    :pswitch_1
    const/high16 p2, -0x3cf90000    # -135.0f

    .line 39
    goto :goto_0

    .line 41
    :pswitch_2
    const/high16 p2, 0x42340000    # 45.0f

    .line 42
    goto :goto_0

    .line 44
    :pswitch_3
    const/high16 p2, 0x43070000    # 135.0f

    .line 45
    goto :goto_0

    .line 47
    :pswitch_4
    const/high16 p2, -0x3dcc0000    # -45.0f

    .line 48
    goto :goto_0

    .line 50
    :pswitch_5
    const/high16 p2, -0x3d4c0000    # -90.0f

    .line 51
    goto :goto_0

    .line 53
    :pswitch_6
    const/high16 p2, 0x42b40000    # 90.0f

    .line 54
    goto :goto_0

    .line 56
    :pswitch_7
    const/high16 p2, 0x43340000    # 180.0f

    .line 57
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 59
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 62
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    .line 65
    int-to-float p2, p2

    .line 67
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 71
    move-result p2

    .line 74
    const/high16 v0, 0x40000000    # 2.0f

    .line 75
    sub-float v3, p3, v0

    .line 77
    add-float v5, p3, v0

    .line 79
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mStartPointRadius:F

    .line 81
    add-float v6, p4, v0

    .line 83
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 85
    move-object v2, p1

    .line 87
    move v4, p4

    .line 88
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 89
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mStartPointRadius:F

    .line 92
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 96
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 99
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 102
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 104
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 109
    const/high16 v0, 0x40800000    # 4.0f

    .line 111
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mLineLength:F

    .line 116
    add-float v6, p4, p2

    .line 118
    iget-object v7, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 120
    move v3, p3

    .line 122
    move v5, p3

    .line 123
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 124
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mLineLength:F

    .line 127
    add-float/2addr p4, p2

    .line 129
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 130
    add-float/2addr p4, p2

    .line 132
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 133
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 135
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 140
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 145
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 147
    invoke-virtual {p1, p3, p4, p2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 152
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 156
.end method

.method public final drawText(ILandroid/widget/LinearLayout;II)V
    .locals 6

    .line 1
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    .line 2
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mLineLength:F

    .line 5
    add-float/2addr v0, v1

    .line 7
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 8
    add-float/2addr v0, v1

    .line 10
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    .line 11
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    .line 13
    div-int/lit8 v2, v2, 0x2

    .line 15
    add-int/2addr v2, v1

    .line 17
    iget v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 18
    iget p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    .line 20
    div-int/lit8 p0, p0, 0x2

    .line 22
    add-int/2addr p0, v1

    .line 24
    packed-switch p1, :pswitch_data_0

    .line 25
    const/4 v1, 0x0

    .line 28
    move p0, v1

    .line 29
    goto :goto_2

    .line 30
    :pswitch_0
    int-to-float v1, v2

    .line 31
    add-float/2addr v1, v0

    .line 32
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 33
    move-result v2

    .line 36
    div-int/lit8 v2, v2, 0x2

    .line 37
    int-to-float v2, v2

    .line 39
    sub-float/2addr v1, v2

    .line 40
    float-to-int v1, v1

    .line 41
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 42
    move-result v2

    .line 45
    div-int/lit8 v2, v2, 0x2

    .line 46
    goto :goto_0

    .line 48
    :pswitch_1
    int-to-float v1, v2

    .line 49
    sub-float/2addr v1, v0

    .line 50
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 51
    move-result v2

    .line 54
    div-int/lit8 v2, v2, 0x2

    .line 55
    int-to-float v2, v2

    .line 57
    sub-float/2addr v1, v2

    .line 58
    float-to-int v1, v1

    .line 59
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 60
    move-result v2

    .line 63
    div-int/lit8 v2, v2, 0x2

    .line 64
    :goto_0
    sub-int/2addr p0, v2

    .line 66
    goto :goto_2

    .line 67
    :pswitch_2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 68
    move-result v1

    .line 71
    div-int/lit8 v1, v1, 0x2

    .line 72
    sub-int v1, v2, v1

    .line 74
    int-to-float p0, p0

    .line 76
    add-float/2addr p0, v0

    .line 77
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 78
    move-result v2

    .line 81
    div-int/lit8 v2, v2, 0x2

    .line 82
    goto :goto_1

    .line 84
    :pswitch_3
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 85
    move-result v1

    .line 88
    div-int/lit8 v1, v1, 0x2

    .line 89
    sub-int v1, v2, v1

    .line 91
    int-to-float p0, p0

    .line 93
    sub-float/2addr p0, v0

    .line 94
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 95
    move-result v2

    .line 98
    div-int/lit8 v2, v2, 0x2

    .line 99
    :goto_1
    int-to-float v2, v2

    .line 101
    sub-float/2addr p0, v2

    .line 102
    float-to-int p0, p0

    .line 103
    :goto_2
    float-to-double v2, v0

    .line 104
    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 105
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 110
    move-result-wide v4

    .line 113
    mul-double/2addr v4, v2

    .line 114
    double-to-int v2, v4

    .line 115
    int-to-float v3, v2

    .line 116
    sub-float/2addr v0, v3

    .line 117
    float-to-int v0, v0

    .line 118
    const/4 v3, 0x4

    .line 119
    if-eq p1, v3, :cond_3

    .line 120
    const/4 v3, 0x5

    .line 122
    if-eq p1, v3, :cond_2

    .line 123
    const/4 v3, 0x6

    .line 125
    if-eq p1, v3, :cond_1

    .line 126
    const/4 v3, 0x7

    .line 128
    if-eq p1, v3, :cond_0

    .line 129
    goto :goto_5

    .line 131
    :cond_0
    add-int/2addr v1, v2

    .line 132
    goto :goto_3

    .line 133
    :cond_1
    sub-int/2addr v1, v2

    .line 134
    goto :goto_4

    .line 135
    :cond_2
    sub-int/2addr v1, v2

    .line 136
    :goto_3
    add-int/2addr p0, v0

    .line 137
    goto :goto_5

    .line 138
    :cond_3
    add-int/2addr v1, v2

    .line 139
    :goto_4
    sub-int/2addr p0, v0

    .line 140
    :goto_5
    add-int/2addr v1, p3

    .line 141
    add-int/2addr p0, p4

    .line 142
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 143
    move-result p1

    .line 146
    add-int/2addr p1, v1

    .line 147
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 148
    move-result p3

    .line 151
    add-int/2addr p3, p0

    .line 152
    invoke-virtual {p2, v1, p0, p1, p3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 153
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
    .line 158
.end method

.method public getArrowMode()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    .line 2
    return p0
    .line 4
.end method

.method public getColorBackground()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mColorBackground:I

    .line 2
    return p0
    .line 4
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0971    # @id/text_group

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    .line 12
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    .line 14
    const v0, 0x7f0a05c1    # @id/mirrored_text_group

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/LinearLayout;

    .line 23
    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    .line 25
    return-void
    .line 27
.end method

.method public final onLayout(ZIIII)V
    .locals 9

    .line 1
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    .line 6
    if-nez p1, :cond_1

    .line 8
    :cond_0
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setAnchor(Landroid/view/View;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    .line 15
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 17
    move-result p1

    .line 20
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    .line 21
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 23
    move-result p2

    .line 26
    int-to-double p3, p1

    .line 27
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 28
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 30
    move-result-wide p3

    .line 33
    int-to-double p1, p2

    .line 34
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 35
    move-result-wide p1

    .line 38
    add-double/2addr p1, p3

    .line 39
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 40
    move-result-wide p1

    .line 43
    div-double/2addr p1, v0

    .line 44
    iget p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 45
    float-to-double p3, p3

    .line 47
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    .line 48
    move-result-wide p1

    .line 51
    double-to-float p1, p1

    .line 52
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 53
    iget-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsMirrored:Z

    .line 55
    if-eqz p1, :cond_2

    .line 57
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    .line 59
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 61
    move-result p1

    .line 64
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    .line 65
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 67
    move-result p2

    .line 70
    int-to-double p3, p1

    .line 71
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 72
    move-result-wide p3

    .line 75
    int-to-double p1, p2

    .line 76
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 77
    move-result-wide p1

    .line 80
    add-double/2addr p1, p3

    .line 81
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 82
    move-result-wide p1

    .line 85
    div-double/2addr p1, v0

    .line 86
    iget p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 87
    float-to-double p3, p3

    .line 89
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    .line 90
    move-result-wide p1

    .line 93
    double-to-float p1, p1

    .line 94
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 95
    :cond_2
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    .line 97
    const/4 p2, -0x1

    .line 99
    const/4 p3, 0x3

    .line 100
    const/4 p4, 0x0

    .line 101
    const/4 p5, 0x2

    .line 102
    const/4 v2, 0x1

    .line 103
    if-ne p1, p2, :cond_f

    .line 104
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 106
    move-result p1

    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 110
    move-result p2

    .line 113
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 114
    sub-int v1, p2, v0

    .line 116
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    .line 118
    sub-int/2addr v1, v3

    .line 120
    iget v4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    .line 121
    sub-int v5, p1, v4

    .line 123
    iget v6, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    .line 125
    sub-int/2addr v5, v6

    .line 127
    filled-new-array {v0, v1, v4, v5}, [I

    .line 128
    move-result-object v1

    .line 131
    div-int/2addr v6, p5

    .line 132
    add-int/2addr v6, v4

    .line 133
    div-int/2addr v3, p5

    .line 134
    add-int/2addr v3, v0

    .line 135
    const/high16 v0, -0x80000000

    .line 136
    move v4, v0

    .line 138
    move v0, p4

    .line 139
    :goto_0
    const/4 v5, 0x4

    .line 140
    if-ge p4, v5, :cond_5

    .line 141
    aget v7, v1, p4

    .line 143
    iget v8, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMinBorder:I

    .line 145
    if-lt v7, v8, :cond_3

    .line 147
    goto :goto_1

    .line 149
    :cond_3
    if-le v7, v4, :cond_4

    .line 150
    move v0, p4

    .line 152
    move v4, v7

    .line 153
    :cond_4
    add-int/lit8 p4, p4, 0x1

    .line 154
    goto :goto_0

    .line 156
    :cond_5
    move p4, v0

    .line 157
    :goto_1
    if-eqz p4, :cond_c

    .line 158
    if-eq p4, v2, :cond_a

    .line 160
    if-eq p4, p5, :cond_8

    .line 162
    if-eq p4, p3, :cond_6

    .line 164
    goto :goto_5

    .line 166
    :cond_6
    int-to-float p1, v3

    .line 167
    iget p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 168
    cmpg-float p1, p1, p3

    .line 170
    if-gez p1, :cond_7

    .line 172
    goto :goto_6

    .line 174
    :cond_7
    sub-int/2addr p2, v3

    .line 175
    int-to-float p1, p2

    .line 176
    cmpg-float p1, p1, p3

    .line 177
    if-gez p1, :cond_e

    .line 179
    goto :goto_3

    .line 181
    :cond_8
    int-to-float p1, v3

    .line 182
    iget p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 183
    cmpg-float p1, p1, p3

    .line 185
    if-gez p1, :cond_9

    .line 187
    goto :goto_2

    .line 189
    :cond_9
    sub-int/2addr p2, v3

    .line 190
    int-to-float p1, p2

    .line 191
    cmpg-float p1, p1, p3

    .line 192
    if-gez p1, :cond_e

    .line 194
    goto :goto_4

    .line 196
    :cond_a
    int-to-float p2, v6

    .line 197
    iget p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 198
    cmpg-float p2, p2, p3

    .line 200
    if-gez p2, :cond_b

    .line 202
    goto :goto_6

    .line 204
    :cond_b
    sub-int/2addr p1, v6

    .line 205
    int-to-float p1, p1

    .line 206
    cmpg-float p1, p1, p3

    .line 207
    if-gez p1, :cond_e

    .line 209
    :goto_2
    const/4 v5, 0x6

    .line 211
    goto :goto_6

    .line 212
    :cond_c
    int-to-float p2, v6

    .line 213
    iget p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 214
    cmpg-float p2, p2, p3

    .line 216
    if-gez p2, :cond_d

    .line 218
    :goto_3
    const/4 v5, 0x7

    .line 220
    goto :goto_6

    .line 221
    :cond_d
    sub-int/2addr p1, v6

    .line 222
    int-to-float p1, p1

    .line 223
    cmpg-float p1, p1, p3

    .line 224
    if-gez p1, :cond_e

    .line 226
    :goto_4
    const/4 v5, 0x5

    .line 228
    goto :goto_6

    .line 229
    :cond_e
    :goto_5
    move v5, p4

    .line 230
    :goto_6
    invoke-virtual {p0, v5}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setArrowMode(I)V

    .line 231
    goto :goto_8

    .line 234
    :cond_f
    iget-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    .line 235
    if-nez p1, :cond_10

    .line 237
    iput p4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    .line 239
    goto :goto_7

    .line 241
    :cond_10
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    .line 242
    div-int/2addr p1, p5

    .line 244
    iget p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    .line 245
    div-int/2addr p2, p5

    .line 247
    int-to-double v3, p1

    .line 248
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 249
    move-result-wide v3

    .line 252
    int-to-double v5, p2

    .line 253
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 254
    move-result-wide v0

    .line 257
    add-double/2addr v0, v3

    .line 258
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 259
    move-result-wide v0

    .line 262
    double-to-int p4, v0

    .line 263
    iget v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    .line 264
    if-eqz v0, :cond_12

    .line 266
    if-eq v0, v2, :cond_12

    .line 268
    if-eq v0, p5, :cond_11

    .line 270
    if-eq v0, p3, :cond_11

    .line 272
    iput p4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    .line 274
    goto :goto_7

    .line 276
    :cond_11
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    .line 277
    goto :goto_7

    .line 279
    :cond_12
    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mDefaultOffset:I

    .line 280
    :goto_7
    iget p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    .line 282
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    .line 284
    iget p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    .line 286
    iget p4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    .line 288
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->drawText(ILandroid/widget/LinearLayout;II)V

    .line 290
    iget-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsMirrored:Z

    .line 293
    if-eqz p1, :cond_13

    .line 295
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->getMirroredMode()I

    .line 297
    move-result p1

    .line 300
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    .line 301
    iget p3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    .line 303
    neg-int p3, p3

    .line 305
    iget p4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    .line 306
    neg-int p4, p4

    .line 308
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->drawText(ILandroid/widget/LinearLayout;II)V

    .line 309
    :cond_13
    :goto_8
    return-void
    .line 312
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 2
    move-result p1

    .line 5
    float-to-int p1, p1

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 7
    move-result v0

    .line 10
    float-to-int v0, v0

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    .line 12
    iget v2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    .line 14
    iget v3, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 16
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 18
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 20
    move-result v4

    .line 23
    add-int/2addr v4, v2

    .line 24
    iget v5, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 25
    iget-object v6, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 27
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 29
    move-result v6

    .line 32
    add-int/2addr v6, v5

    .line 33
    invoke-direct {v1, v2, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 37
    move-result p2

    .line 40
    const/4 v2, 0x1

    .line 41
    if-nez p2, :cond_0

    .line 42
    invoke-virtual {v1, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    .line 44
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 52
    return v2

    .line 55
    :cond_0
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 56
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->dismiss$1()V

    .line 58
    return v2
    .line 61
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result p1

    .line 7
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorWidth:I

    .line 8
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 12
    move-result p1

    .line 15
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorHeight:I

    .line 16
    const/4 p1, 0x2

    .line 18
    new-array p1, p1, [I

    .line 19
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 23
    const/4 v0, 0x0

    .line 26
    aget v0, p1, v0

    .line 27
    iput v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationX:I

    .line 29
    const/4 v0, 0x1

    .line 31
    aget p1, p1, v0

    .line 32
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 34
    return-void
    .line 36
.end method

.method public setArrowMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mArrowMode:I

    return-void
.end method

.method public setArrowMode(IZ)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->setArrowMode(I)V

    .line 3
    iput-boolean p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mIsMirrored:Z

    if-eqz p2, :cond_0

    .line 4
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setGuidePopupWindow(Lmiuix/popupwidget/widget/GuidePopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 2
    return-void
    .line 4
.end method

.method public setOffset(II)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetX:I

    .line 2
    iput p2, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mOffsetY:I

    .line 4
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    .line 7
    return-void
    .line 9
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
