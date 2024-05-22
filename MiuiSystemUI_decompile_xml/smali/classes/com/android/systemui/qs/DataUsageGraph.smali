.class public Lcom/android/systemui/qs/DataUsageGraph;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mLimitLevel:J

.field public final mMarkerWidth:I

.field public mMaxLevel:J

.field public final mOverlimitColor:I

.field public final mTmpPaint:Landroid/graphics/Paint;

.field public final mTmpRect:Landroid/graphics/RectF;

.field public final mTrackColor:I

.field public final mUsageColor:I

.field public mUsageLevel:J

.field public final mWarningColor:I

.field public mWarningLevel:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/graphics/RectF;

    .line 5
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpRect:Landroid/graphics/RectF;

    .line 10
    new-instance p2, Landroid/graphics/Paint;

    .line 12
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p2

    .line 22
    const v0, 0x7f0600dc    # @color/data_usage_graph_track 'res/color/data_usage_graph_track.xml'

    .line 23
    invoke-static {v0, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 26
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTrackColor:I

    .line 30
    const v0, 0x7f0600dd    # @color/data_usage_graph_warning 'res/color/data_usage_graph_warning.xml'

    .line 32
    invoke-static {v0, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 35
    move-result v0

    .line 38
    iput v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningColor:I

    .line 39
    const v0, 0x1010435    # @android:attr/colorAccent

    .line 41
    const/4 v1, 0x0

    .line 44
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 45
    move-result v0

    .line 48
    iput v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageColor:I

    .line 49
    const v0, 0x1010543    # @android:attr/colorError

    .line 51
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 54
    move-result p1

    .line 57
    iput p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mOverlimitColor:I

    .line 58
    const p1, 0x7f070271    # @dimen/data_usage_graph_marker_width '4.0dp'

    .line 60
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    move-result p1

    .line 66
    iput p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    .line 67
    return-void
    .line 69
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpRect:Landroid/graphics/RectF;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpPaint:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    move-result v2

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    move-result v3

    .line 16
    iget-wide v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    .line 17
    const-wide/16 v6, 0x0

    .line 19
    cmp-long v6, v4, v6

    .line 21
    if-lez v6, :cond_0

    .line 23
    iget-wide v6, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    .line 25
    cmp-long v6, v6, v4

    .line 27
    if-lez v6, :cond_0

    .line 29
    const/4 v6, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v6, 0x0

    .line 33
    :goto_0
    int-to-float v7, v2

    .line 34
    iget-wide v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    .line 35
    long-to-float v8, v8

    .line 37
    iget-wide v9, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    .line 38
    long-to-float v11, v9

    .line 40
    div-float/2addr v8, v11

    .line 41
    mul-float/2addr v8, v7

    .line 42
    const/4 v11, 0x0

    .line 43
    if-eqz v6, :cond_1

    .line 44
    long-to-float v4, v4

    .line 46
    long-to-float v5, v9

    .line 47
    div-float/2addr v4, v5

    .line 48
    mul-float/2addr v4, v7

    .line 49
    iget v5, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    .line 50
    div-int/lit8 v6, v5, 0x2

    .line 52
    int-to-float v6, v6

    .line 54
    sub-float/2addr v4, v6

    .line 55
    int-to-float v5, v5

    .line 56
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 57
    move-result v4

    .line 60
    iget v5, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    .line 61
    mul-int/lit8 v5, v5, 0x2

    .line 63
    sub-int v5, v2, v5

    .line 65
    int-to-float v5, v5

    .line 67
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 68
    move-result v8

    .line 71
    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    .line 72
    int-to-float v4, v4

    .line 74
    add-float/2addr v4, v8

    .line 75
    int-to-float v5, v3

    .line 76
    invoke-virtual {v0, v4, v11, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 77
    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mOverlimitColor:I

    .line 80
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 85
    goto :goto_1

    .line 88
    :cond_1
    int-to-float v4, v3

    .line 89
    invoke-virtual {v0, v11, v11, v7, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTrackColor:I

    .line 93
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 98
    :goto_1
    int-to-float v3, v3

    .line 101
    invoke-virtual {v0, v11, v11, v8, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 102
    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageColor:I

    .line 105
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 110
    iget-wide v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    .line 113
    long-to-float v4, v4

    .line 115
    iget-wide v5, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    .line 116
    long-to-float v5, v5

    .line 118
    div-float/2addr v4, v5

    .line 119
    mul-float/2addr v4, v7

    .line 120
    iget v5, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    .line 121
    div-int/lit8 v5, v5, 0x2

    .line 123
    int-to-float v5, v5

    .line 125
    sub-float/2addr v4, v5

    .line 126
    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    .line 127
    move-result v4

    .line 130
    iget v5, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    .line 131
    sub-int/2addr v2, v5

    .line 133
    int-to-float v2, v2

    .line 134
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    .line 135
    move-result v2

    .line 138
    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    .line 139
    int-to-float v4, v4

    .line 141
    add-float/2addr v4, v2

    .line 142
    invoke-virtual {v0, v2, v11, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 143
    iget p0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningColor:I

    .line 146
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 151
    return-void
    .line 154
.end method

.method public setLevels(JJJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 4
    move-result-wide p1

    .line 7
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    .line 8
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(JJ)J

    .line 10
    move-result-wide p1

    .line 13
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    .line 14
    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->max(JJ)J

    .line 16
    move-result-wide p1

    .line 19
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    .line 20
    iget-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    .line 22
    iget-wide p3, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    .line 24
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    .line 26
    move-result-wide p1

    .line 29
    iget-wide p3, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    .line 30
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    .line 32
    move-result-wide p1

    .line 35
    const-wide/16 p3, 0x1

    .line 36
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    .line 38
    move-result-wide p1

    .line 41
    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 44
    return-void
    .line 47
.end method
