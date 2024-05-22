.class public final Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final clampViewPositionHorizontal(Landroid/view/View;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final clampViewPositionVertical(Landroid/view/View;I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 4
    move-result p1

    .line 7
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 15
    :goto_0
    invoke-static {p2, p1, p0}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 17
    move-result p0

    .line 20
    return p0
    .line 21
.end method

.method public final getViewVerticalDragRange()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 8
    return p0

    .line 10
    :cond_0
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 11
    return p0
    .line 13
.end method

.method public final onViewDragStateChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 5
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z

    .line 7
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final onViewPositionChanged(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final onViewReleased(Landroid/view/View;FF)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p3, v0

    .line 3
    const/4 v2, 0x1

    .line 5
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 6
    if-gez v1, :cond_1

    .line 8
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 10
    if-eqz p2, :cond_0

    .line 12
    goto/16 :goto_2

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 16
    move-result p2

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 23
    if-le p2, p3, :cond_c

    .line 25
    goto/16 :goto_3

    .line 27
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    .line 29
    if-eqz v1, :cond_7

    .line 31
    invoke-virtual {p0, p3, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHide(FLandroid/view/View;)Z

    .line 33
    move-result v1

    .line 36
    if-eqz v1, :cond_7

    .line 37
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 39
    move-result p2

    .line 42
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 43
    move-result v0

    .line 46
    cmpg-float p2, p2, v0

    .line 47
    if-gez p2, :cond_2

    .line 49
    const/high16 p2, 0x43fa0000    # 500.0f

    .line 51
    cmpl-float p2, p3, p2

    .line 53
    if-gtz p2, :cond_4

    .line 55
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 57
    move-result p2

    .line 60
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    .line 61
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 63
    move-result v0

    .line 66
    add-int/2addr v0, p3

    .line 67
    div-int/lit8 v0, v0, 0x2

    .line 68
    if-le p2, v0, :cond_3

    .line 70
    move p2, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/4 p2, 0x0

    .line 74
    :goto_0
    if-eqz p2, :cond_5

    .line 75
    :cond_4
    const/4 p2, 0x5

    .line 77
    goto/16 :goto_5

    .line 78
    :cond_5
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 80
    if-eqz p2, :cond_6

    .line 82
    goto/16 :goto_2

    .line 84
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 86
    move-result p2

    .line 89
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 90
    move-result p3

    .line 93
    sub-int/2addr p2, p3

    .line 94
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 95
    move-result p2

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 99
    move-result p3

    .line 102
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 103
    sub-int/2addr p3, v0

    .line 105
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 106
    move-result p3

    .line 109
    if-ge p2, p3, :cond_e

    .line 110
    goto :goto_2

    .line 112
    :cond_7
    cmpl-float v0, p3, v0

    .line 113
    if-eqz v0, :cond_a

    .line 115
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 117
    move-result p2

    .line 120
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 121
    move-result p3

    .line 124
    cmpl-float p2, p2, p3

    .line 125
    if-lez p2, :cond_8

    .line 127
    goto :goto_1

    .line 129
    :cond_8
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 130
    if-eqz p2, :cond_9

    .line 132
    goto :goto_4

    .line 134
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 135
    move-result p2

    .line 138
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 139
    sub-int p3, p2, p3

    .line 141
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 143
    move-result p3

    .line 146
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 147
    sub-int/2addr p2, v0

    .line 149
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 150
    move-result p2

    .line 153
    if-ge p3, p2, :cond_f

    .line 154
    goto :goto_3

    .line 156
    :cond_a
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 157
    move-result p2

    .line 160
    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z

    .line 161
    if-eqz p3, :cond_b

    .line 163
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    .line 165
    sub-int p3, p2, p3

    .line 167
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 169
    move-result p3

    .line 172
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 173
    sub-int/2addr p2, v0

    .line 175
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 176
    move-result p2

    .line 179
    if-ge p3, p2, :cond_f

    .line 180
    goto :goto_2

    .line 182
    :cond_b
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    .line 183
    if-ge p2, p3, :cond_d

    .line 185
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 187
    sub-int p3, p2, p3

    .line 189
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 191
    move-result p3

    .line 194
    if-ge p2, p3, :cond_e

    .line 195
    :cond_c
    :goto_2
    const/4 p2, 0x3

    .line 197
    goto :goto_5

    .line 198
    :cond_d
    sub-int p3, p2, p3

    .line 199
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 201
    move-result p3

    .line 204
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    .line 205
    sub-int/2addr p2, v0

    .line 207
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 208
    move-result p2

    .line 211
    if-ge p3, p2, :cond_f

    .line 212
    :cond_e
    :goto_3
    const/4 p2, 0x6

    .line 214
    goto :goto_5

    .line 215
    :cond_f
    :goto_4
    const/4 p2, 0x4

    .line 216
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    invoke-virtual {p0, p2, p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettling(ILandroid/view/View;Z)V

    .line 220
    return-void
    .line 223
.end method

.method public final tryCaptureView(ILandroid/view/View;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 4
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    return v1

    .line 10
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 11
    if-eqz v3, :cond_1

    .line 13
    return v1

    .line 15
    :cond_1
    const/4 v3, 0x3

    .line 16
    if-ne v0, v3, :cond_3

    .line 17
    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    .line 19
    if-ne v0, p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 23
    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 30
    check-cast p1, Landroid/view/View;

    .line 31
    goto :goto_0

    .line 33
    :cond_2
    const/4 p1, 0x0

    .line 34
    :goto_0
    if-eqz p1, :cond_3

    .line 35
    const/4 v0, -0x1

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    .line 38
    move-result p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    return v1

    .line 44
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 48
    if-eqz p0, :cond_4

    .line 50
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 52
    move-result-object p0

    .line 55
    if-ne p0, p2, :cond_4

    .line 56
    move v1, v2

    .line 58
    :cond_4
    return v1
    .line 59
.end method
