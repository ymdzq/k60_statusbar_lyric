.class public Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;
.super Landroid/view/ViewGroup;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mBattery:Landroid/view/View;

.field public mStatusIcon:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer$LayoutParams;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer$LayoutParams;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    new-instance p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0120    # @id/battery

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    .line 12
    const v0, 0x7f0a08dd    # @id/statusIcons

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Landroid/view/View;

    .line 21
    return-void
    .line 23
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 2
    move-result p1

    .line 5
    sub-int/2addr p5, p3

    .line 6
    sub-int/2addr p4, p2

    .line 7
    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    .line 8
    const/16 p3, 0x8

    .line 10
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_5

    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result p2

    .line 18
    if-eq p2, p3, :cond_5

    .line 19
    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 23
    move-result p2

    .line 26
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    move-result v1

    .line 32
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    .line 33
    if-eqz p1, :cond_0

    .line 35
    move v3, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sub-int v3, p4, p2

    .line 39
    :goto_0
    if-le v1, p5, :cond_1

    .line 41
    move v4, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    sub-int v4, p5, v1

    .line 45
    div-int/lit8 v4, v4, 0x2

    .line 47
    :goto_1
    if-eqz p1, :cond_2

    .line 49
    move v5, p2

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move v5, p4

    .line 53
    :goto_2
    if-le v1, p5, :cond_3

    .line 54
    move v1, p5

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    add-int/2addr v1, p5

    .line 58
    div-int/lit8 v1, v1, 0x2

    .line 59
    :goto_3
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 61
    if-eqz p1, :cond_4

    .line 64
    add-int/2addr p2, v0

    .line 66
    goto :goto_4

    .line 67
    :cond_4
    sub-int/2addr p4, p2

    .line 68
    :cond_5
    move p2, v0

    .line 69
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Landroid/view/View;

    .line 70
    if-eqz p1, :cond_9

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 74
    move-result p1

    .line 77
    if-eq p1, p3, :cond_9

    .line 78
    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 82
    move-result p1

    .line 85
    if-nez p1, :cond_6

    .line 86
    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Landroid/view/View;

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 90
    move-result p1

    .line 93
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Landroid/view/View;

    .line 94
    if-le p1, p5, :cond_7

    .line 96
    goto :goto_5

    .line 98
    :cond_7
    sub-int p3, p5, p1

    .line 99
    div-int/lit8 v0, p3, 0x2

    .line 101
    :goto_5
    if-le p1, p5, :cond_8

    .line 103
    goto :goto_6

    .line 105
    :cond_8
    add-int/2addr p5, p1

    .line 106
    div-int/lit8 p5, p5, 0x2

    .line 107
    :goto_6
    invoke-virtual {p0, p2, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 109
    :cond_9
    return-void
    .line 112
.end method

.method public final onMeasure(II)V
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 3
    move-result v7

    .line 6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    move-result v8

    .line 10
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 11
    move-result v9

    .line 14
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 15
    move-result v10

    .line 18
    const/4 v11, 0x0

    .line 19
    iget-object v0, v6, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    .line 20
    const/16 v12, 0x8

    .line 22
    const/4 v13, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 27
    move-result v0

    .line 30
    if-eq v0, v12, :cond_0

    .line 31
    iget-object v1, v6, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    .line 33
    const/4 v3, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    move-object v0, p0

    .line 37
    move/from16 v2, p1

    .line 38
    move/from16 v4, p2

    .line 40
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 42
    iget-object v0, v6, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    move-result v0

    .line 50
    add-int/2addr v0, v13

    .line 51
    iget-object v1, v6, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 54
    move-result v1

    .line 57
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    .line 58
    move-result v13

    .line 61
    move v14, v13

    .line 62
    move v13, v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move v14, v13

    .line 65
    :goto_0
    iget-object v0, v6, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Landroid/view/View;

    .line 66
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 70
    move-result v0

    .line 73
    if-eq v0, v12, :cond_1

    .line 74
    iget-object v1, v6, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Landroid/view/View;

    .line 76
    move-object v0, p0

    .line 78
    move/from16 v2, p1

    .line 79
    move v3, v13

    .line 81
    move/from16 v4, p2

    .line 82
    move v5, v11

    .line 84
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 85
    iget-object v0, v6, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Landroid/view/View;

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 90
    move-result v0

    .line 93
    add-int/2addr v13, v0

    .line 94
    iget-object v0, v6, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Landroid/view/View;

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 97
    move-result v0

    .line 100
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    .line 101
    move-result v14

    .line 104
    :cond_1
    const/high16 v0, -0x80000000

    .line 105
    const/high16 v1, 0x40000000    # 2.0f

    .line 107
    if-ne v7, v1, :cond_2

    .line 109
    goto :goto_1

    .line 111
    :cond_2
    if-ne v7, v0, :cond_3

    .line 112
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    .line 114
    move-result v9

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    move v9, v13

    .line 119
    :goto_1
    if-ne v8, v1, :cond_4

    .line 120
    goto :goto_2

    .line 122
    :cond_4
    if-ne v8, v0, :cond_5

    .line 123
    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    .line 125
    move-result v10

    .line 128
    goto :goto_2

    .line 129
    :cond_5
    move v10, v14

    .line 130
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    .line 131
    move-result v0

    .line 134
    add-int/2addr v0, v9

    .line 135
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 136
    move-result v1

    .line 139
    add-int/2addr v1, v0

    .line 140
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 141
    move-result v0

    .line 144
    add-int/2addr v0, v10

    .line 145
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 146
    move-result v2

    .line 149
    add-int/2addr v2, v0

    .line 150
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 151
    return-void
    .line 154
.end method
