.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field static final RADIUS_L:I = 0xc

.field static final RADIUS_M:I = 0x5

.field static final RADIUS_S:I = 0x3

.field static final RADIUS_XL:I = 0xf


# instance fields
.field private final BOTTOMBOARD_STROKEWIDTH:I

.field protected final DRAWSHAPESIZE:I

.field protected final TEXTMAXWIDTH:I

.field private mAppBitmap:Landroid/graphics/Bitmap;

.field private mAppDesRectF:Landroid/graphics/RectF;

.field private mAppLayerFreeformRatio:F

.field private mAppLayerRatio:F

.field private mAppSourceRect:Landroid/graphics/Rect;

.field protected mBottomBoardRect:Landroid/graphics/RectF;

.field protected mBottomBoardStrokeWidth:I

.field private mChangLayerColor:I

.field private mChangeLayerFreeformHeightRatio:F

.field private mChangeLayerFreeformWidthRatio:F

.field private mChangeLayerRatio:F

.field private mContext:Landroid/content/Context;

.field private mFontScale:F

.field private mFreeformLayout:Landroid/text/DynamicLayout;

.field private mFreeformTextHeight:F

.field private mFullscreenLayout:Landroid/text/DynamicLayout;

.field private mFullscreenTextHeight:F

.field protected mIconMarginBottom:F

.field protected mIsSupport:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPath:Landroid/graphics/Path;

.field private mRadius_L:F

.field private mRadius_M:F

.field private mRadius_S:F

.field private mRadius_XL:F

.field protected mShapeSize:F

.field private mSplitBottomLayout:Landroid/text/DynamicLayout;

.field private mSplitBottomTextHeight:F

.field private mSplitLeftLayout:Landroid/text/DynamicLayout;

.field private mSplitLeftRight:Z

.field private mSplitLeftTextHeight:F

.field private mSplitRightLayout:Landroid/text/DynamicLayout;

.field private mSplitRightTextHeight:F

.field private mSplitTopLayout:Landroid/text/DynamicLayout;

.field private mSplitTopTextHeight:F

.field private mSurface:Landroid/view/Surface;

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I

.field protected mTextMaxWidth:I

.field protected mType:I

.field private mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

.field private mUnSupportFreeformLayout:Landroid/text/DynamicLayout;

.field private mUnSupportFreeformTextHeight:F

.field private mUnSupportSplitLayout:Landroid/text/DynamicLayout;

.field private mUnSupportSplitTextHeight:F

.field private tempCentX:F

.field private tempCentY:F

.field private tempContentHeight:F

.field private tempShapeLeft:F

.field private tempShapeTop:F

.field protected tempTextLeft:F

.field protected tempTextTop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x30

    .line 5
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->DRAWSHAPESIZE:I

    .line 7
    const/16 v1, 0x78

    .line 9
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->TEXTMAXWIDTH:I

    .line 11
    const/high16 v2, 0x41400000    # 12.0f

    .line 13
    iput v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_L:F

    .line 15
    const/high16 v2, 0x40a00000    # 5.0f

    .line 17
    iput v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_M:F

    .line 19
    const/high16 v2, 0x40400000    # 3.0f

    .line 21
    iput v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_S:F

    .line 23
    const/high16 v2, 0x41700000    # 15.0f

    .line 25
    iput v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_XL:F

    .line 27
    new-instance v2, Landroid/graphics/RectF;

    .line 29
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 31
    iput-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppDesRectF:Landroid/graphics/RectF;

    .line 34
    const v2, 0x3f666666    # 0.9f

    .line 36
    iput v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerRatio:F

    .line 39
    const v2, 0x3eddddde

    .line 41
    iput v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerFreeformWidthRatio:F

    .line 44
    const v2, 0x3f19999a    # 0.6f

    .line 46
    iput v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerFreeformHeightRatio:F

    .line 49
    const v2, 0x3ebbbbbc

    .line 51
    iput v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppLayerRatio:F

    .line 54
    const v2, 0x3e6eeeef

    .line 56
    iput v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppLayerFreeformRatio:F

    .line 59
    const/4 v2, 0x1

    .line 61
    iput-boolean v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftRight:Z

    .line 62
    iput v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->BOTTOMBOARD_STROKEWIDTH:I

    .line 64
    const/high16 v3, 0x3f800000    # 1.0f

    .line 66
    iput v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFontScale:F

    .line 68
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mContext:Landroid/content/Context;

    .line 70
    new-instance v3, Landroid/graphics/Paint;

    .line 72
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 74
    iput-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 77
    new-instance v3, Landroid/graphics/Path;

    .line 79
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 81
    iput-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPath:Landroid/graphics/Path;

    .line 84
    new-instance v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 86
    invoke-direct {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;-><init>()V

    .line 88
    iput-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 91
    new-instance v4, Landroid/graphics/RectF;

    .line 93
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 95
    iput-object v4, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 98
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 100
    new-instance v4, Landroid/graphics/RectF;

    .line 102
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 104
    iput-object v4, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 107
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 109
    new-instance v4, Landroid/graphics/RectF;

    .line 111
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 113
    iput-object v4, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 116
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 118
    const/16 v4, 0x8

    .line 120
    new-array v5, v4, [F

    .line 122
    iput-object v5, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 124
    new-instance v3, Landroid/graphics/Rect;

    .line 126
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 128
    iput-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppSourceRect:Landroid/graphics/Rect;

    .line 131
    const/16 v3, 0xf

    .line 133
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->dpToPx(Landroid/content/Context;I)I

    .line 135
    move-result v3

    .line 138
    int-to-float v3, v3

    .line 139
    iput v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_XL:F

    .line 140
    const/16 v3, 0xc

    .line 142
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->dpToPx(Landroid/content/Context;I)I

    .line 144
    move-result v3

    .line 147
    int-to-float v3, v3

    .line 148
    iput v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_L:F

    .line 149
    const/4 v3, 0x5

    .line 151
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->dpToPx(Landroid/content/Context;I)I

    .line 152
    move-result v3

    .line 155
    int-to-float v3, v3

    .line 156
    iput v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_M:F

    .line 157
    const/4 v3, 0x3

    .line 159
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->dpToPx(Landroid/content/Context;I)I

    .line 160
    move-result v5

    .line 163
    int-to-float v5, v5

    .line 164
    iput v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_S:F

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->dpToPx(Landroid/content/Context;I)I

    .line 167
    move-result v0

    .line 170
    int-to-float v0, v0

    .line 171
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mShapeSize:F

    .line 172
    new-instance v0, Landroid/graphics/RectF;

    .line 174
    const/4 v5, 0x0

    .line 176
    iget v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mShapeSize:F

    .line 177
    invoke-direct {v0, v5, v5, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 179
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 182
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->dpToPx(Landroid/content/Context;I)I

    .line 184
    move-result v0

    .line 187
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 188
    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->dpToPx(Landroid/content/Context;I)I

    .line 190
    move-result v0

    .line 193
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardStrokeWidth:I

    .line 194
    invoke-virtual {p0, p1, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->dpToPx(Landroid/content/Context;I)I

    .line 196
    move-result p1

    .line 199
    int-to-float p1, p1

    .line 200
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIconMarginBottom:F

    .line 201
    new-instance p1, Landroid/graphics/PaintFlagsDrawFilter;

    .line 203
    const/4 v0, 0x0

    .line 205
    invoke-direct {p1, v0, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 206
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 209
    return-void
    .line 211
.end method

.method private createDynamicLayout(Landroid/content/res/Resources;II)Landroid/text/DynamicLayout;
    .locals 1

    const v0, 0x7f0702ef    # @dimen/drag_shadow_text_size '14.0sp'

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->createDynamicLayout(Landroid/content/res/Resources;III)Landroid/text/DynamicLayout;

    move-result-object p0

    return-object p0
.end method

.method private drawLayoutText(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mType:I

    .line 2
    if-eqz v0, :cond_8

    .line 4
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_5

    .line 7
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    const/4 v1, 0x5

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->drawText(Landroid/graphics/Canvas;)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIsSupport:Z

    .line 19
    if-eqz v0, :cond_1

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFreeformLayout:Landroid/text/DynamicLayout;

    .line 23
    if-eqz p0, :cond_9

    .line 25
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportFreeformLayout:Landroid/text/DynamicLayout;

    .line 31
    if-eqz p0, :cond_9

    .line 33
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 35
    goto :goto_0

    .line 38
    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIsSupport:Z

    .line 39
    if-eqz v0, :cond_4

    .line 41
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftRight:Z

    .line 43
    if-eqz v0, :cond_3

    .line 45
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitRightLayout:Landroid/text/DynamicLayout;

    .line 47
    if-eqz p0, :cond_9

    .line 49
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 51
    goto :goto_0

    .line 54
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitBottomLayout:Landroid/text/DynamicLayout;

    .line 55
    if-eqz p0, :cond_9

    .line 57
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 59
    goto :goto_0

    .line 62
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportSplitLayout:Landroid/text/DynamicLayout;

    .line 63
    if-eqz p0, :cond_9

    .line 65
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 67
    goto :goto_0

    .line 70
    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIsSupport:Z

    .line 71
    if-eqz v0, :cond_7

    .line 73
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftRight:Z

    .line 75
    if-eqz v0, :cond_6

    .line 77
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftLayout:Landroid/text/DynamicLayout;

    .line 79
    if-eqz p0, :cond_9

    .line 81
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 83
    goto :goto_0

    .line 86
    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitTopLayout:Landroid/text/DynamicLayout;

    .line 87
    if-eqz p0, :cond_9

    .line 89
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 91
    goto :goto_0

    .line 94
    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportSplitLayout:Landroid/text/DynamicLayout;

    .line 95
    if-eqz p0, :cond_9

    .line 97
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 99
    goto :goto_0

    .line 102
    :cond_8
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFullscreenLayout:Landroid/text/DynamicLayout;

    .line 103
    if-eqz p0, :cond_9

    .line 105
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 107
    :cond_9
    :goto_0
    return-void
.end method

.method private releaseTextLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFullscreenLayout:Landroid/text/DynamicLayout;

    .line 3
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFreeformLayout:Landroid/text/DynamicLayout;

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftLayout:Landroid/text/DynamicLayout;

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitRightLayout:Landroid/text/DynamicLayout;

    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitTopLayout:Landroid/text/DynamicLayout;

    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitBottomLayout:Landroid/text/DynamicLayout;

    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportSplitLayout:Landroid/text/DynamicLayout;

    .line 15
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportFreeformLayout:Landroid/text/DynamicLayout;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public createDynamicLayout(Landroid/content/res/Resources;III)Landroid/text/DynamicLayout;
    .locals 6

    const v5, 0x7f06011c    # @color/drag_shadow_text_color '#cc191919'

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->createDynamicLayout(Landroid/content/res/Resources;IIII)Landroid/text/DynamicLayout;

    move-result-object p0

    return-object p0
.end method

.method public createDynamicLayout(Landroid/content/res/Resources;IIII)Landroid/text/DynamicLayout;
    .locals 0

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 4
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    .line 5
    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setColor(I)V

    .line 6
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string p4, "MiSans"

    const/4 p5, 0x0

    .line 7
    invoke-static {p4, p5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p4

    const/16 p5, 0x258

    .line 8
    invoke-virtual {p4, p5}, Landroid/graphics/Typeface;->setWeight(I)V

    .line 9
    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 10
    invoke-static {p0, p2, p3}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object p0

    .line 11
    sget-object p2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p0, p2}, Landroid/text/DynamicLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;

    .line 12
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p2}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    const p2, 0x7f071098    # @dimen/shape_cover_text_size '19.0sp'

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Landroid/text/DynamicLayout$Builder;->setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;

    .line 14
    invoke-virtual {p0}, Landroid/text/DynamicLayout$Builder;->build()Landroid/text/DynamicLayout;

    move-result-object p0

    return-object p0
.end method

.method public createTextLayout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f1303ac    # @string/drag_shadow_fullscreen_open 'Full screen'

    .line 8
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 11
    invoke-direct {p0, v0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->createDynamicLayout(Landroid/content/res/Resources;II)Landroid/text/DynamicLayout;

    .line 13
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFullscreenLayout:Landroid/text/DynamicLayout;

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v0

    .line 24
    const v1, 0x7f1303a9    # @string/drag_shadow_freeform_open 'Floating window'

    .line 25
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 28
    invoke-direct {p0, v0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->createDynamicLayout(Landroid/content/res/Resources;II)Landroid/text/DynamicLayout;

    .line 30
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFreeformLayout:Landroid/text/DynamicLayout;

    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v0

    .line 41
    const v1, 0x7f1303ae    # @string/drag_shadow_split_left_open 'Split screen (Left)'

    .line 42
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 45
    invoke-direct {p0, v0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->createDynamicLayout(Landroid/content/res/Resources;II)Landroid/text/DynamicLayout;

    .line 47
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftLayout:Landroid/text/DynamicLayout;

    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v0

    .line 58
    const v1, 0x7f1303af    # @string/drag_shadow_split_right_open 'Split screen (Right)'

    .line 59
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 62
    invoke-direct {p0, v0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->createDynamicLayout(Landroid/content/res/Resources;II)Landroid/text/DynamicLayout;

    .line 64
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitRightLayout:Landroid/text/DynamicLayout;

    .line 68
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object v0

    .line 75
    const v1, 0x7f1303b0    # @string/drag_shadow_split_top_open 'Split screen (Top)'

    .line 76
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 79
    invoke-direct {p0, v0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->createDynamicLayout(Landroid/content/res/Resources;II)Landroid/text/DynamicLayout;

    .line 81
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitTopLayout:Landroid/text/DynamicLayout;

    .line 85
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object v0

    .line 92
    const v1, 0x7f1303ad    # @string/drag_shadow_split_bottom_open 'Split screen (Bottom)'

    .line 93
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 96
    invoke-direct {p0, v0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->createDynamicLayout(Landroid/content/res/Resources;II)Landroid/text/DynamicLayout;

    .line 98
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitBottomLayout:Landroid/text/DynamicLayout;

    .line 102
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object v2

    .line 109
    const v3, 0x7f1303b1    # @string/drag_shadow_split_unsupported 'Split screen isn't supported'

    .line 110
    iget v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 113
    const v5, 0x7f0702ef    # @dimen/drag_shadow_text_size '14.0sp'

    .line 115
    const v6, 0x7f06011c    # @color/drag_shadow_text_color '#cc191919'

    .line 118
    move-object v1, p0

    .line 121
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->createDynamicLayout(Landroid/content/res/Resources;IIII)Landroid/text/DynamicLayout;

    .line 122
    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportSplitLayout:Landroid/text/DynamicLayout;

    .line 126
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    move-result-object v2

    .line 133
    const v3, 0x7f1303aa    # @string/drag_shadow_freeform_unsupported 'Floating windows aren't supported'

    .line 134
    iget v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 137
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->createDynamicLayout(Landroid/content/res/Resources;IIII)Landroid/text/DynamicLayout;

    .line 139
    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportFreeformLayout:Landroid/text/DynamicLayout;

    .line 143
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFullscreenLayout:Landroid/text/DynamicLayout;

    .line 145
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    .line 147
    move-result v0

    .line 150
    int-to-float v0, v0

    .line 151
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFullscreenTextHeight:F

    .line 152
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFreeformLayout:Landroid/text/DynamicLayout;

    .line 154
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    .line 156
    move-result v0

    .line 159
    int-to-float v0, v0

    .line 160
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFreeformTextHeight:F

    .line 161
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftLayout:Landroid/text/DynamicLayout;

    .line 163
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    .line 165
    move-result v0

    .line 168
    int-to-float v0, v0

    .line 169
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftTextHeight:F

    .line 170
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitRightLayout:Landroid/text/DynamicLayout;

    .line 172
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    .line 174
    move-result v0

    .line 177
    int-to-float v0, v0

    .line 178
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitRightTextHeight:F

    .line 179
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitTopLayout:Landroid/text/DynamicLayout;

    .line 181
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    .line 183
    move-result v0

    .line 186
    int-to-float v0, v0

    .line 187
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitTopTextHeight:F

    .line 188
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitBottomLayout:Landroid/text/DynamicLayout;

    .line 190
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    .line 192
    move-result v0

    .line 195
    int-to-float v0, v0

    .line 196
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitBottomTextHeight:F

    .line 197
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportSplitLayout:Landroid/text/DynamicLayout;

    .line 199
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    .line 201
    move-result v0

    .line 204
    int-to-float v0, v0

    .line 205
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportSplitTextHeight:F

    .line 206
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportFreeformLayout:Landroid/text/DynamicLayout;

    .line 208
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    .line 210
    move-result v0

    .line 213
    int-to-float v0, v0

    .line 214
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportFreeformTextHeight:F

    .line 215
    return-void
    .line 217
.end method

.method public dpToPx(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    int-to-float p1, p2

    .line 12
    mul-float/2addr p1, p0

    .line 13
    const/high16 p0, 0x3f000000    # 0.5f

    .line 14
    add-float/2addr p1, p0

    .line 16
    float-to-int p0, p1

    .line 17
    return p0
    .line 18
.end method

.method public drawContent()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->onStartDraw()Landroid/graphics/Canvas;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const-string p0, "MiuiMultiWinShapeCover"

    .line 8
    const-string v0, "canvas is null"

    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 15
    :cond_0
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSurfaceWidth:I

    .line 16
    int-to-float v1, v1

    .line 18
    const/high16 v2, 0x40000000    # 2.0f

    .line 19
    div-float/2addr v1, v2

    .line 21
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->tempCentX:F

    .line 22
    iget v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSurfaceHeight:I

    .line 24
    int-to-float v3, v3

    .line 26
    div-float/2addr v3, v2

    .line 27
    iput v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->tempCentY:F

    .line 28
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 30
    iget v5, v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 32
    iget v6, v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mIconMarginBottom:F

    .line 34
    add-float/2addr v5, v6

    .line 36
    iget v4, v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mShapeSize:F

    .line 37
    add-float/2addr v5, v4

    .line 39
    iput v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->tempContentHeight:F

    .line 40
    div-float/2addr v4, v2

    .line 42
    sub-float/2addr v1, v4

    .line 43
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->tempShapeLeft:F

    .line 44
    div-float/2addr v5, v2

    .line 46
    sub-float/2addr v3, v5

    .line 47
    iput v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->tempShapeTop:F

    .line 48
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->textChangeHasAnimator()Z

    .line 50
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->tempCentX:F

    .line 56
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 58
    iget v4, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextMaxWidth:F

    .line 60
    div-float/2addr v4, v2

    .line 62
    sub-float/2addr v1, v4

    .line 63
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->tempTextLeft:F

    .line 64
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->tempCentY:F

    .line 66
    iget v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->tempContentHeight:F

    .line 68
    div-float/2addr v4, v2

    .line 70
    add-float/2addr v4, v1

    .line 71
    iget v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 72
    sub-float/2addr v4, v1

    .line 74
    iput v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->tempTextTop:F

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 77
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 79
    const/4 v1, 0x0

    .line 82
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 88
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->tempShapeLeft:F

    .line 91
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->tempShapeTop:F

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 98
    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 100
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 103
    iget-boolean v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mUnSupport:Z

    .line 105
    if-nez v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 109
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 111
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 116
    const v2, 0x1ab2b2b3

    .line 118
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 124
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 126
    iget v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRadius:F

    .line 128
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 130
    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 132
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 135
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 137
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 142
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 144
    iget v2, v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardStrokeWidth:F

    .line 146
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 151
    const/high16 v2, 0xd000000

    .line 153
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 158
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 160
    iget v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRadius:F

    .line 162
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 164
    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 166
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 169
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangLayerColor:I

    .line 171
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 176
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 178
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPath:Landroid/graphics/Path;

    .line 183
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 185
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPath:Landroid/graphics/Path;

    .line 188
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 190
    iget-object v3, v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 192
    iget-object v2, v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 194
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 196
    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 198
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPath:Landroid/graphics/Path;

    .line 201
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 205
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 208
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppDesRectF:Landroid/graphics/RectF;

    .line 211
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 213
    iget-object v2, v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 215
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 217
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPath:Landroid/graphics/Path;

    .line 220
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 222
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPath:Landroid/graphics/Path;

    .line 225
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppDesRectF:Landroid/graphics/RectF;

    .line 227
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 229
    iget v3, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 231
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 233
    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 235
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPath:Landroid/graphics/Path;

    .line 238
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 240
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppBitmap:Landroid/graphics/Bitmap;

    .line 243
    if-eqz v1, :cond_3

    .line 245
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 247
    move-result v1

    .line 250
    if-nez v1, :cond_3

    .line 251
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppBitmap:Landroid/graphics/Bitmap;

    .line 253
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 255
    iget-object v2, v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 257
    const/4 v3, 0x0

    .line 259
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 260
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 263
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 266
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 269
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->tempTextLeft:F

    .line 272
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->tempTextTop:F

    .line 274
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 276
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->drawLayoutText(Landroid/graphics/Canvas;)V

    .line 279
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->onEndDraw(Landroid/graphics/Canvas;)V

    .line 285
    return-void
    .line 288
.end method

.method public drawText(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public getTextHeightByType()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mType:I

    .line 2
    if-eqz v0, :cond_8

    .line 4
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_5

    .line 7
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    const/4 v1, 0x5

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIsSupport:Z

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFreeformTextHeight:F

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportFreeformTextHeight:F

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIsSupport:Z

    .line 27
    if-eqz v0, :cond_4

    .line 29
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftRight:Z

    .line 31
    if-eqz v0, :cond_3

    .line 33
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitRightTextHeight:F

    .line 35
    goto :goto_0

    .line 37
    :cond_3
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitBottomTextHeight:F

    .line 38
    goto :goto_0

    .line 40
    :cond_4
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportSplitTextHeight:F

    .line 41
    goto :goto_0

    .line 43
    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIsSupport:Z

    .line 44
    if-eqz v0, :cond_7

    .line 46
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftRight:Z

    .line 48
    if-eqz v0, :cond_6

    .line 50
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftTextHeight:F

    .line 52
    goto :goto_0

    .line 54
    :cond_6
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitTopTextHeight:F

    .line 55
    goto :goto_0

    .line 57
    :cond_7
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportSplitTextHeight:F

    .line 58
    goto :goto_0

    .line 60
    :cond_8
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFullscreenTextHeight:F

    .line 61
    :goto_0
    return p0
    .line 63
.end method

.method public getTypeAnimInfo()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTypeInfo(IZLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_8

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_5

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    const/4 v0, 0x5

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    if-eqz p2, :cond_1

    .line 14
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->setTypeFreeform(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 16
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->setTypeUnsupport(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 20
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportFreeformTextHeight:F

    .line 23
    iput p0, p3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    if-eqz p2, :cond_4

    .line 28
    iget-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftRight:Z

    .line 30
    if-eqz p1, :cond_3

    .line 32
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->setTypeSplitRight(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 34
    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->setTypeSplitBottom(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->setTypeUnsupport(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 42
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportSplitTextHeight:F

    .line 45
    iput p0, p3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 47
    goto :goto_0

    .line 49
    :cond_5
    if-eqz p2, :cond_7

    .line 50
    iget-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftRight:Z

    .line 52
    if-eqz p1, :cond_6

    .line 54
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->setTypeSplitLeft(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 56
    goto :goto_0

    .line 59
    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->setTypeSplitTop(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 60
    goto :goto_0

    .line 63
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->setTypeUnsupport(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 64
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mUnSupportSplitTextHeight:F

    .line 67
    iput p0, p3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 69
    goto :goto_0

    .line 71
    :cond_8
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->setTypeFullscreen(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 72
    :goto_0
    return-void
    .line 75
.end method

.method public init(Landroid/graphics/Bitmap;IZLandroid/view/Surface;IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPath:Landroid/graphics/Path;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 12
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mPaint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->setAppBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    iput p5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSurfaceWidth:I

    .line 26
    iput p6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSurfaceHeight:I

    .line 28
    iput-object p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSurface:Landroid/view/Surface;

    .line 30
    iput-boolean p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftRight:Z

    .line 32
    invoke-virtual {p0, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->setType(IZ)V

    .line 34
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 37
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->getTypeInfo(IZLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->createTextLayout()V

    .line 42
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->drawContent()V

    .line 45
    return-void
    .line 48
.end method

.method public onEndDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSurface:Landroid/view/Surface;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public onStartDraw()Landroid/graphics/Canvas;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSurface:Landroid/view/Surface;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    .line 6
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
    .line 12
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppBitmap:Landroid/graphics/Bitmap;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppBitmap:Landroid/graphics/Bitmap;

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 15
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppBitmap:Landroid/graphics/Bitmap;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSurface:Landroid/view/Surface;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 24
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSurface:Landroid/view/Surface;

    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->releaseTextLayout()V

    .line 29
    return-void
.end method

.method public setAppBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppBitmap:Landroid/graphics/Bitmap;

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mContext:Landroid/content/Context;

    .line 13
    const-string v1, "neutral60"

    .line 15
    const-string v2, "neutral-variant90"

    .line 17
    invoke-static {v0, p1, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getBitmapUiModeColor(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result p1

    .line 22
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangLayerColor:I

    .line 23
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppSourceRect:Landroid/graphics/Rect;

    .line 25
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppBitmap:Landroid/graphics/Bitmap;

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 29
    move-result v0

    .line 32
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppBitmap:Landroid/graphics/Bitmap;

    .line 33
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 35
    move-result p0

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 40
    :cond_1
    :goto_0
    return-void
    .line 43
.end method

.method public setType(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mType:I

    .line 2
    iput-boolean p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIsSupport:Z

    .line 4
    return-void
    .line 6
.end method

.method public setTypeFreeform(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 11
    move-result v0

    .line 14
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerFreeformWidthRatio:F

    .line 15
    mul-float/2addr v0, v1

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 18
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 20
    move-result v1

    .line 23
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerFreeformHeightRatio:F

    .line 24
    mul-float/2addr v1, v2

    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 27
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 29
    iget v4, v2, Landroid/graphics/RectF;->right:F

    .line 31
    add-float/2addr v3, v4

    .line 33
    const/high16 v4, 0x40000000    # 2.0f

    .line 34
    div-float/2addr v3, v4

    .line 36
    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 37
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 39
    add-float/2addr v5, v2

    .line 41
    div-float/2addr v5, v4

    .line 42
    iget-object v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 43
    div-float/2addr v0, v4

    .line 45
    sub-float v6, v3, v0

    .line 46
    div-float/2addr v1, v4

    .line 48
    sub-float v7, v5, v1

    .line 49
    add-float/2addr v3, v0

    .line 51
    add-float/2addr v5, v1

    .line 52
    invoke-virtual {v2, v6, v7, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 53
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 56
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_M:F

    .line 58
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 60
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_S:F

    .line 63
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 65
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 67
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 69
    move-result v0

    .line 72
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppLayerFreeformRatio:F

    .line 73
    mul-float/2addr v0, v1

    .line 75
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 76
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 78
    move-result v1

    .line 81
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppLayerFreeformRatio:F

    .line 82
    mul-float/2addr v1, v2

    .line 84
    iget-object v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 85
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 87
    iget v5, v2, Landroid/graphics/RectF;->right:F

    .line 89
    add-float/2addr v3, v5

    .line 91
    div-float/2addr v3, v4

    .line 92
    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 93
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 95
    add-float/2addr v5, v2

    .line 97
    div-float/2addr v5, v4

    .line 98
    div-float/2addr v0, v4

    .line 99
    sub-float v2, v3, v0

    .line 100
    div-float/2addr v1, v4

    .line 102
    sub-float v4, v5, v1

    .line 103
    add-float/2addr v3, v0

    .line 105
    add-float/2addr v5, v1

    .line 106
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 107
    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFreeformTextHeight:F

    .line 112
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 114
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardStrokeWidth:I

    .line 116
    int-to-float v0, v0

    .line 118
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardStrokeWidth:F

    .line 119
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_XL:F

    .line 121
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRadius:F

    .line 123
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIconMarginBottom:F

    .line 125
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mIconMarginBottom:F

    .line 127
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mShapeSize:F

    .line 129
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mShapeSize:F

    .line 131
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 133
    int-to-float p0, p0

    .line 135
    iput p0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextMaxWidth:F

    .line 136
    const/4 p0, 0x0

    .line 138
    iput-boolean p0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mUnSupport:Z

    .line 139
    return-void
    .line 141
.end method

.method public setTypeFullscreen(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 11
    move-result v0

    .line 14
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerRatio:F

    .line 15
    mul-float/2addr v0, v1

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 18
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 20
    move-result v1

    .line 23
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerRatio:F

    .line 24
    mul-float/2addr v1, v2

    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 27
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 29
    iget v4, v2, Landroid/graphics/RectF;->right:F

    .line 31
    add-float/2addr v3, v4

    .line 33
    const/high16 v4, 0x40000000    # 2.0f

    .line 34
    div-float/2addr v3, v4

    .line 36
    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 37
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 39
    add-float/2addr v5, v2

    .line 41
    div-float/2addr v5, v4

    .line 42
    iget-object v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 43
    div-float/2addr v0, v4

    .line 45
    sub-float v6, v3, v0

    .line 46
    div-float/2addr v1, v4

    .line 48
    sub-float v7, v5, v1

    .line 49
    add-float/2addr v3, v0

    .line 51
    add-float/2addr v5, v1

    .line 52
    invoke-virtual {v2, v6, v7, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 53
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 56
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_L:F

    .line 58
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 60
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_M:F

    .line 63
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 65
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 67
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 69
    move-result v0

    .line 72
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppLayerRatio:F

    .line 73
    mul-float/2addr v0, v1

    .line 75
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 76
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 78
    move-result v1

    .line 81
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppLayerRatio:F

    .line 82
    mul-float/2addr v1, v2

    .line 84
    iget-object v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 85
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 87
    iget v5, v2, Landroid/graphics/RectF;->right:F

    .line 89
    add-float/2addr v3, v5

    .line 91
    div-float/2addr v3, v4

    .line 92
    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 93
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 95
    add-float/2addr v5, v2

    .line 97
    div-float/2addr v5, v4

    .line 98
    div-float/2addr v0, v4

    .line 99
    sub-float v2, v3, v0

    .line 100
    div-float/2addr v1, v4

    .line 102
    sub-float v4, v5, v1

    .line 103
    add-float/2addr v3, v0

    .line 105
    add-float/2addr v5, v1

    .line 106
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 107
    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mFullscreenTextHeight:F

    .line 112
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 114
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardStrokeWidth:I

    .line 116
    int-to-float v0, v0

    .line 118
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardStrokeWidth:F

    .line 119
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_XL:F

    .line 121
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRadius:F

    .line 123
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIconMarginBottom:F

    .line 125
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mIconMarginBottom:F

    .line 127
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mShapeSize:F

    .line 129
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mShapeSize:F

    .line 131
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 133
    int-to-float p0, p0

    .line 135
    iput p0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextMaxWidth:F

    .line 136
    const/4 p0, 0x0

    .line 138
    iput-boolean p0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mUnSupport:Z

    .line 139
    return-void
    .line 141
.end method

.method public setTypeSplitBottom(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 11
    move-result v0

    .line 14
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerRatio:F

    .line 15
    mul-float/2addr v0, v1

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 18
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 20
    move-result v1

    .line 23
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerRatio:F

    .line 24
    mul-float/2addr v1, v2

    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 27
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 29
    iget v4, v2, Landroid/graphics/RectF;->right:F

    .line 31
    add-float/2addr v3, v4

    .line 33
    const/high16 v4, 0x40000000    # 2.0f

    .line 34
    div-float/2addr v3, v4

    .line 36
    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 37
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 39
    add-float/2addr v5, v2

    .line 41
    div-float/2addr v5, v4

    .line 42
    iget-object v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 43
    div-float/2addr v0, v4

    .line 45
    sub-float v6, v3, v0

    .line 46
    add-float/2addr v3, v0

    .line 48
    div-float/2addr v1, v4

    .line 49
    add-float/2addr v1, v5

    .line 50
    invoke-virtual {v2, v6, v5, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 51
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 54
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_S:F

    .line 56
    const/4 v2, 0x0

    .line 58
    aput v1, v0, v2

    .line 59
    const/4 v3, 0x1

    .line 61
    aput v1, v0, v3

    .line 62
    const/4 v3, 0x2

    .line 64
    aput v1, v0, v3

    .line 65
    const/4 v3, 0x3

    .line 67
    aput v1, v0, v3

    .line 68
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_L:F

    .line 70
    const/4 v3, 0x4

    .line 72
    aput v1, v0, v3

    .line 73
    const/4 v3, 0x5

    .line 75
    aput v1, v0, v3

    .line 76
    const/4 v3, 0x6

    .line 78
    aput v1, v0, v3

    .line 79
    const/4 v3, 0x7

    .line 81
    aput v1, v0, v3

    .line 82
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_M:F

    .line 84
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 86
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 88
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 90
    move-result v0

    .line 93
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppLayerRatio:F

    .line 94
    mul-float/2addr v0, v1

    .line 96
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 97
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 99
    move-result v1

    .line 102
    iget v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppLayerRatio:F

    .line 103
    mul-float/2addr v1, v3

    .line 105
    iget-object v3, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 106
    iget v5, v3, Landroid/graphics/RectF;->left:F

    .line 108
    iget v6, v3, Landroid/graphics/RectF;->right:F

    .line 110
    add-float/2addr v5, v6

    .line 112
    div-float/2addr v5, v4

    .line 113
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 114
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 116
    add-float/2addr v6, v3

    .line 118
    div-float/2addr v6, v4

    .line 119
    div-float/2addr v0, v4

    .line 120
    sub-float v3, v5, v0

    .line 121
    div-float/2addr v1, v4

    .line 123
    sub-float v4, v6, v1

    .line 124
    add-float/2addr v5, v0

    .line 126
    add-float/2addr v6, v1

    .line 127
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 128
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitBottomTextHeight:F

    .line 133
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 135
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardStrokeWidth:I

    .line 137
    int-to-float v0, v0

    .line 139
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardStrokeWidth:F

    .line 140
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_XL:F

    .line 142
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRadius:F

    .line 144
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIconMarginBottom:F

    .line 146
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mIconMarginBottom:F

    .line 148
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mShapeSize:F

    .line 150
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mShapeSize:F

    .line 152
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 154
    int-to-float p0, p0

    .line 156
    iput p0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextMaxWidth:F

    .line 157
    iput-boolean v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mUnSupport:Z

    .line 159
    return-void
    .line 161
.end method

.method public setTypeSplitLeft(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 11
    move-result v0

    .line 14
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerRatio:F

    .line 15
    mul-float/2addr v0, v1

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 18
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 20
    move-result v1

    .line 23
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerRatio:F

    .line 24
    mul-float/2addr v1, v2

    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 27
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 29
    iget v4, v2, Landroid/graphics/RectF;->right:F

    .line 31
    add-float/2addr v3, v4

    .line 33
    const/high16 v4, 0x40000000    # 2.0f

    .line 34
    div-float/2addr v3, v4

    .line 36
    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 37
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 39
    add-float/2addr v5, v2

    .line 41
    div-float/2addr v5, v4

    .line 42
    iget-object v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 43
    div-float/2addr v0, v4

    .line 45
    sub-float v0, v3, v0

    .line 46
    div-float/2addr v1, v4

    .line 48
    sub-float v6, v5, v1

    .line 49
    add-float/2addr v5, v1

    .line 51
    invoke-virtual {v2, v0, v6, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 52
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 55
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_L:F

    .line 57
    const/4 v2, 0x0

    .line 59
    aput v1, v0, v2

    .line 60
    const/4 v3, 0x1

    .line 62
    aput v1, v0, v3

    .line 63
    const/4 v3, 0x6

    .line 65
    aput v1, v0, v3

    .line 66
    const/4 v3, 0x7

    .line 68
    aput v1, v0, v3

    .line 69
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_S:F

    .line 71
    const/4 v3, 0x2

    .line 73
    aput v1, v0, v3

    .line 74
    const/4 v3, 0x3

    .line 76
    aput v1, v0, v3

    .line 77
    const/4 v3, 0x4

    .line 79
    aput v1, v0, v3

    .line 80
    const/4 v3, 0x5

    .line 82
    aput v1, v0, v3

    .line 83
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_M:F

    .line 85
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 87
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 89
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 91
    move-result v0

    .line 94
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppLayerRatio:F

    .line 95
    mul-float/2addr v0, v1

    .line 97
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 98
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 100
    move-result v1

    .line 103
    iget v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppLayerRatio:F

    .line 104
    mul-float/2addr v1, v3

    .line 106
    iget-object v3, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 107
    iget v5, v3, Landroid/graphics/RectF;->left:F

    .line 109
    iget v6, v3, Landroid/graphics/RectF;->right:F

    .line 111
    add-float/2addr v5, v6

    .line 113
    div-float/2addr v5, v4

    .line 114
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 115
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 117
    add-float/2addr v6, v3

    .line 119
    div-float/2addr v6, v4

    .line 120
    div-float/2addr v0, v4

    .line 121
    sub-float v3, v5, v0

    .line 122
    div-float/2addr v1, v4

    .line 124
    sub-float v4, v6, v1

    .line 125
    add-float/2addr v5, v0

    .line 127
    add-float/2addr v6, v1

    .line 128
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 129
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 131
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitLeftTextHeight:F

    .line 134
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 136
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardStrokeWidth:I

    .line 138
    int-to-float v0, v0

    .line 140
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardStrokeWidth:F

    .line 141
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_XL:F

    .line 143
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRadius:F

    .line 145
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIconMarginBottom:F

    .line 147
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mIconMarginBottom:F

    .line 149
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mShapeSize:F

    .line 151
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mShapeSize:F

    .line 153
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 155
    int-to-float p0, p0

    .line 157
    iput p0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextMaxWidth:F

    .line 158
    iput-boolean v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mUnSupport:Z

    .line 160
    return-void
    .line 162
.end method

.method public setTypeSplitRight(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 11
    move-result v0

    .line 14
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerRatio:F

    .line 15
    mul-float/2addr v0, v1

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 18
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 20
    move-result v1

    .line 23
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerRatio:F

    .line 24
    mul-float/2addr v1, v2

    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 27
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 29
    iget v4, v2, Landroid/graphics/RectF;->right:F

    .line 31
    add-float/2addr v3, v4

    .line 33
    const/high16 v4, 0x40000000    # 2.0f

    .line 34
    div-float/2addr v3, v4

    .line 36
    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 37
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 39
    add-float/2addr v5, v2

    .line 41
    div-float/2addr v5, v4

    .line 42
    iget-object v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 43
    div-float/2addr v1, v4

    .line 45
    sub-float v6, v5, v1

    .line 46
    div-float/2addr v0, v4

    .line 48
    add-float/2addr v0, v3

    .line 49
    add-float/2addr v5, v1

    .line 50
    invoke-virtual {v2, v3, v6, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 51
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 54
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_S:F

    .line 56
    const/4 v2, 0x0

    .line 58
    aput v1, v0, v2

    .line 59
    const/4 v3, 0x1

    .line 61
    aput v1, v0, v3

    .line 62
    const/4 v3, 0x6

    .line 64
    aput v1, v0, v3

    .line 65
    const/4 v3, 0x7

    .line 67
    aput v1, v0, v3

    .line 68
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_L:F

    .line 70
    const/4 v3, 0x2

    .line 72
    aput v1, v0, v3

    .line 73
    const/4 v3, 0x3

    .line 75
    aput v1, v0, v3

    .line 76
    const/4 v3, 0x4

    .line 78
    aput v1, v0, v3

    .line 79
    const/4 v3, 0x5

    .line 81
    aput v1, v0, v3

    .line 82
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_M:F

    .line 84
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 86
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 88
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 90
    move-result v0

    .line 93
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppLayerRatio:F

    .line 94
    mul-float/2addr v0, v1

    .line 96
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 97
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 99
    move-result v1

    .line 102
    iget v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppLayerRatio:F

    .line 103
    mul-float/2addr v1, v3

    .line 105
    iget-object v3, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 106
    iget v5, v3, Landroid/graphics/RectF;->left:F

    .line 108
    iget v6, v3, Landroid/graphics/RectF;->right:F

    .line 110
    add-float/2addr v5, v6

    .line 112
    div-float/2addr v5, v4

    .line 113
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 114
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 116
    add-float/2addr v6, v3

    .line 118
    div-float/2addr v6, v4

    .line 119
    div-float/2addr v0, v4

    .line 120
    sub-float v3, v5, v0

    .line 121
    div-float/2addr v1, v4

    .line 123
    sub-float v4, v6, v1

    .line 124
    add-float/2addr v5, v0

    .line 126
    add-float/2addr v6, v1

    .line 127
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 128
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitRightTextHeight:F

    .line 133
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 135
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardStrokeWidth:I

    .line 137
    int-to-float v0, v0

    .line 139
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardStrokeWidth:F

    .line 140
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_XL:F

    .line 142
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRadius:F

    .line 144
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIconMarginBottom:F

    .line 146
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mIconMarginBottom:F

    .line 148
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mShapeSize:F

    .line 150
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mShapeSize:F

    .line 152
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 154
    int-to-float p0, p0

    .line 156
    iput p0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextMaxWidth:F

    .line 157
    iput-boolean v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mUnSupport:Z

    .line 159
    return-void
    .line 161
.end method

.method public setTypeSplitTop(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 11
    move-result v0

    .line 14
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerRatio:F

    .line 15
    mul-float/2addr v0, v1

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 18
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 20
    move-result v1

    .line 23
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerRatio:F

    .line 24
    mul-float/2addr v1, v2

    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 27
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 29
    iget v4, v2, Landroid/graphics/RectF;->right:F

    .line 31
    add-float/2addr v3, v4

    .line 33
    const/high16 v4, 0x40000000    # 2.0f

    .line 34
    div-float/2addr v3, v4

    .line 36
    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 37
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 39
    add-float/2addr v5, v2

    .line 41
    div-float/2addr v5, v4

    .line 42
    iget-object v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 43
    div-float/2addr v0, v4

    .line 45
    sub-float v6, v3, v0

    .line 46
    div-float/2addr v1, v4

    .line 48
    sub-float v1, v5, v1

    .line 49
    add-float/2addr v3, v0

    .line 51
    invoke-virtual {v2, v6, v1, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 52
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 55
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_L:F

    .line 57
    const/4 v2, 0x0

    .line 59
    aput v1, v0, v2

    .line 60
    const/4 v3, 0x1

    .line 62
    aput v1, v0, v3

    .line 63
    const/4 v3, 0x2

    .line 65
    aput v1, v0, v3

    .line 66
    const/4 v3, 0x3

    .line 68
    aput v1, v0, v3

    .line 69
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_S:F

    .line 71
    const/4 v3, 0x4

    .line 73
    aput v1, v0, v3

    .line 74
    const/4 v3, 0x5

    .line 76
    aput v1, v0, v3

    .line 77
    const/4 v3, 0x6

    .line 79
    aput v1, v0, v3

    .line 80
    const/4 v3, 0x7

    .line 82
    aput v1, v0, v3

    .line 83
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_M:F

    .line 85
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 87
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 89
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 91
    move-result v0

    .line 94
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppLayerRatio:F

    .line 95
    mul-float/2addr v0, v1

    .line 97
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 98
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 100
    move-result v1

    .line 103
    iget v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mAppLayerRatio:F

    .line 104
    mul-float/2addr v1, v3

    .line 106
    iget-object v3, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 107
    iget v5, v3, Landroid/graphics/RectF;->left:F

    .line 109
    iget v6, v3, Landroid/graphics/RectF;->right:F

    .line 111
    add-float/2addr v5, v6

    .line 113
    div-float/2addr v5, v4

    .line 114
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 115
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 117
    add-float/2addr v6, v3

    .line 119
    div-float/2addr v6, v4

    .line 120
    div-float/2addr v0, v4

    .line 121
    sub-float v3, v5, v0

    .line 122
    div-float/2addr v1, v4

    .line 124
    sub-float v4, v6, v1

    .line 125
    add-float/2addr v5, v0

    .line 127
    add-float/2addr v6, v1

    .line 128
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 129
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 131
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mSplitTopTextHeight:F

    .line 134
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 136
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardStrokeWidth:I

    .line 138
    int-to-float v0, v0

    .line 140
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardStrokeWidth:F

    .line 141
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_XL:F

    .line 143
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRadius:F

    .line 145
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIconMarginBottom:F

    .line 147
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mIconMarginBottom:F

    .line 149
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mShapeSize:F

    .line 151
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mShapeSize:F

    .line 153
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 155
    int-to-float p0, p0

    .line 157
    iput p0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextMaxWidth:F

    .line 158
    iput-boolean v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mUnSupport:Z

    .line 160
    return-void
    .line 162
.end method

.method public setTypeUnsupport(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 4
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerRatio:F

    .line 8
    mul-float/2addr v0, v1

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 11
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 13
    move-result v1

    .line 16
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mChangeLayerRatio:F

    .line 17
    mul-float/2addr v1, v2

    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 20
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 22
    iget v4, v2, Landroid/graphics/RectF;->right:F

    .line 24
    add-float/2addr v3, v4

    .line 26
    const/high16 v4, 0x40000000    # 2.0f

    .line 27
    div-float/2addr v3, v4

    .line 29
    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 30
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 32
    add-float/2addr v5, v2

    .line 34
    div-float/2addr v5, v4

    .line 35
    iget-object v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 36
    div-float/2addr v0, v4

    .line 38
    sub-float v6, v3, v0

    .line 39
    div-float/2addr v1, v4

    .line 41
    sub-float v7, v5, v1

    .line 42
    add-float/2addr v3, v0

    .line 44
    add-float/2addr v5, v1

    .line 45
    invoke-virtual {v2, v6, v7, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 46
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 49
    iget-object v1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 53
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 56
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_L:F

    .line 58
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 60
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_L:F

    .line 63
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 65
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 67
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 69
    move-result v0

    .line 72
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 73
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 75
    move-result v1

    .line 78
    iget-object v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 79
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 81
    iget v5, v2, Landroid/graphics/RectF;->right:F

    .line 83
    add-float/2addr v3, v5

    .line 85
    div-float/2addr v3, v4

    .line 86
    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 87
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 89
    add-float/2addr v5, v2

    .line 91
    div-float/2addr v5, v4

    .line 92
    div-float/2addr v0, v4

    .line 93
    sub-float v2, v3, v0

    .line 94
    div-float/2addr v1, v4

    .line 96
    sub-float v4, v5, v1

    .line 97
    add-float/2addr v3, v0

    .line 99
    add-float/2addr v5, v1

    .line 100
    iget-object v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 101
    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 103
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mBottomBoardStrokeWidth:I

    .line 106
    int-to-float v0, v0

    .line 108
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardStrokeWidth:F

    .line 109
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mRadius_XL:F

    .line 111
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRadius:F

    .line 113
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mIconMarginBottom:F

    .line 115
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mIconMarginBottom:F

    .line 117
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mShapeSize:F

    .line 119
    iput v0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mShapeSize:F

    .line 121
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShapeCover;->mTextMaxWidth:I

    .line 123
    int-to-float p0, p0

    .line 125
    iput p0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextMaxWidth:F

    .line 126
    const/4 p0, 0x1

    .line 128
    iput-boolean p0, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mUnSupport:Z

    .line 129
    return-void
    .line 131
.end method

.method public textChangeHasAnimator()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method
