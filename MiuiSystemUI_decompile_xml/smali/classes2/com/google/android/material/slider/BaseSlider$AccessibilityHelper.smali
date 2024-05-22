.class public final Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final slider:Lcom/google/android/material/slider/BaseSlider;

.field public final virtualViewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 10
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final getVirtualViewAt(FF)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 5
    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 9
    move-result v2

    .line 12
    if-ge v0, v2, :cond_1

    .line 13
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 15
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/slider/BaseSlider;->updateBoundsForVirtualViewId(ILandroid/graphics/Rect;)V

    .line 17
    float-to-int v1, p1

    .line 20
    float-to-int v3, p2

    .line 21
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    return v0

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, -0x1

    .line 32
    return p0
    .line 33
.end method

.method public final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 5
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    move-result v1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 18
    move-object v2, p1

    .line 19
    check-cast v2, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public final onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    return v2

    .line 11
    :cond_0
    const/16 v1, 0x1000

    .line 12
    const/4 v3, 0x1

    .line 14
    const/16 v4, 0x2000

    .line 15
    if-eq p2, v1, :cond_4

    .line 17
    if-eq p2, v4, :cond_4

    .line 19
    const v1, 0x102003d    # @android:id/accessibilityActionSetProgress

    .line 21
    if-eq p2, v1, :cond_1

    .line 24
    return v2

    .line 26
    :cond_1
    if-eqz p3, :cond_3

    .line 27
    const-string p2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 29
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 31
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 38
    move-result p2

    .line 41
    sget p3, Lcom/google/android/material/slider/BaseSlider;->$r8$clinit:I

    .line 42
    invoke-virtual {v0, p2, p1}, Lcom/google/android/material/slider/BaseSlider;->snapThumbToValue(FI)Z

    .line 44
    move-result p2

    .line 47
    if-eqz p2, :cond_3

    .line 48
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 53
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 56
    return v3

    .line 59
    :cond_3
    :goto_0
    return v2

    .line 60
    :cond_4
    sget p3, Lcom/google/android/material/slider/BaseSlider;->$r8$clinit:I

    .line 61
    iget p3, v0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 63
    const/4 v1, 0x0

    .line 65
    cmpl-float v1, p3, v1

    .line 66
    if-nez v1, :cond_5

    .line 68
    const/high16 p3, 0x3f800000    # 1.0f

    .line 70
    :cond_5
    iget v1, v0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 72
    iget v5, v0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 74
    sub-float/2addr v1, v5

    .line 76
    div-float/2addr v1, p3

    .line 77
    const/16 v5, 0x14

    .line 78
    int-to-float v5, v5

    .line 80
    cmpg-float v6, v1, v5

    .line 81
    if-gtz v6, :cond_6

    .line 83
    goto :goto_1

    .line 85
    :cond_6
    div-float/2addr v1, v5

    .line 86
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 87
    move-result v1

    .line 90
    int-to-float v1, v1

    .line 91
    mul-float/2addr p3, v1

    .line 92
    :goto_1
    if-ne p2, v4, :cond_7

    .line 93
    neg-float p3, p3

    .line 95
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    .line 96
    move-result p2

    .line 99
    if-eqz p2, :cond_8

    .line 100
    neg-float p3, p3

    .line 102
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 103
    move-result-object p2

    .line 106
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object p2

    .line 110
    check-cast p2, Ljava/lang/Float;

    .line 111
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 113
    move-result p2

    .line 116
    add-float/2addr p2, p3

    .line 117
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    .line 118
    move-result p3

    .line 121
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    .line 122
    move-result v1

    .line 125
    cmpg-float v4, p2, p3

    .line 126
    if-gez v4, :cond_9

    .line 128
    move p2, p3

    .line 130
    goto :goto_2

    .line 131
    :cond_9
    cmpl-float p3, p2, v1

    .line 132
    if-lez p3, :cond_a

    .line 134
    move p2, v1

    .line 136
    :cond_a
    :goto_2
    invoke-virtual {v0, p2, p1}, Lcom/google/android/material/slider/BaseSlider;->snapThumbToValue(FI)Z

    .line 137
    move-result p2

    .line 140
    if-eqz p2, :cond_b

    .line 141
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 143
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 146
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 149
    return v3

    .line 152
    :cond_b
    return v2
    .line 153
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SET_PROGRESS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 12
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/Float;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 19
    move-result v2

    .line 22
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    .line 23
    move-result v3

    .line 26
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    .line 27
    move-result v4

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 31
    move-result v5

    .line 34
    if-eqz v5, :cond_1

    .line 35
    cmpl-float v5, v2, v3

    .line 37
    if-lez v5, :cond_0

    .line 39
    const/16 v5, 0x2000

    .line 41
    invoke-virtual {p2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 43
    :cond_0
    cmpg-float v5, v2, v4

    .line 46
    if-gez v5, :cond_1

    .line 48
    const/16 v5, 0x1000

    .line 50
    invoke-virtual {p2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 52
    :cond_1
    const/4 v5, 0x1

    .line 55
    invoke-static {v5, v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 56
    move-result-object v3

    .line 59
    iget-object v4, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 60
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 62
    const-class v3, Landroid/widget/SeekBar;

    .line 65
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 70
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 79
    move-result-object v4

    .line 82
    if-eqz v4, :cond_2

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 85
    move-result-object v4

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 89
    const-string v4, ","

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 97
    move-result v1

    .line 100
    if-le v1, v5, :cond_6

    .line 101
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    .line 103
    move-result-object v1

    .line 106
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 107
    move-result v1

    .line 110
    add-int/lit8 v1, v1, -0x1

    .line 111
    if-ne p1, v1, :cond_3

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 115
    move-result-object v1

    .line 118
    const v4, 0x7f1306d9    # @string/material_slider_range_end 'Range end,'

    .line 119
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    if-nez p1, :cond_4

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 129
    move-result-object v1

    .line 132
    const v4, 0x7f1306da    # @string/material_slider_range_start 'Range start,'

    .line 133
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 139
    goto :goto_0

    .line 140
    :cond_4
    const-string v1, ""

    .line 141
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    float-to-int v1, v2

    .line 146
    int-to-float v1, v1

    .line 147
    cmpl-float v1, v1, v2

    .line 148
    if-nez v1, :cond_5

    .line 150
    const-string v1, "%.0f"

    .line 152
    goto :goto_1

    .line 154
    :cond_5
    const-string v1, "%.2f"

    .line 155
    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 157
    move-result-object v2

    .line 160
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 161
    move-result-object v2

    .line 164
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    move-result-object v1

    .line 168
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 175
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 179
    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/slider/BaseSlider;->updateBoundsForVirtualViewId(ILandroid/graphics/Rect;)V

    .line 181
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 184
    return-void
    .line 187
.end method
