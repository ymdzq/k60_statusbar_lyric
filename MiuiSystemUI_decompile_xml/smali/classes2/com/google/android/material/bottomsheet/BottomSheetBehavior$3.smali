.class public final Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field public final synthetic val$shouldHandleGestureInsets:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 11

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 3
    move-result-object v0

    .line 6
    const/16 v1, 0x20

    .line 7
    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 9
    move-result-object v1

    .line 12
    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    .line 13
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 15
    iput v2, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    .line 17
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 19
    move-result v2

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    move-result v4

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 27
    move-result v5

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 31
    move-result v6

    .line 34
    iget-boolean v7, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    .line 35
    if-eqz v7, :cond_0

    .line 37
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 39
    move-result v4

    .line 42
    iput v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    .line 43
    iget v8, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 45
    add-int/2addr v4, v8

    .line 47
    :cond_0
    iget-boolean v8, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    .line 48
    iget v9, v0, Landroidx/core/graphics/Insets;->left:I

    .line 50
    if-eqz v8, :cond_2

    .line 52
    if-eqz v2, :cond_1

    .line 54
    iget v5, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 56
    goto :goto_0

    .line 58
    :cond_1
    iget v5, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 59
    :goto_0
    add-int/2addr v5, v9

    .line 61
    :cond_2
    iget-boolean v8, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    .line 62
    iget v10, v0, Landroidx/core/graphics/Insets;->right:I

    .line 64
    if-eqz v8, :cond_4

    .line 66
    if-eqz v2, :cond_3

    .line 68
    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 70
    goto :goto_1

    .line 72
    :cond_3
    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 73
    :goto_1
    add-int v6, p3, v10

    .line 75
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    move-result-object p3

    .line 80
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 81
    iget-boolean v2, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    .line 83
    const/4 v8, 0x1

    .line 85
    if-eqz v2, :cond_5

    .line 86
    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 88
    if-eq v2, v9, :cond_5

    .line 90
    iput v9, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 92
    move v2, v8

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    const/4 v2, 0x0

    .line 96
    :goto_2
    iget-boolean v9, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    .line 97
    if-eqz v9, :cond_6

    .line 99
    iget v9, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 101
    if-eq v9, v10, :cond_6

    .line 103
    iput v10, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 105
    move v2, v8

    .line 107
    :cond_6
    iget-boolean v9, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    .line 108
    if-eqz v9, :cond_7

    .line 110
    iget v9, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 112
    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    .line 114
    if-eq v9, v0, :cond_7

    .line 116
    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 118
    goto :goto_3

    .line 120
    :cond_7
    move v8, v2

    .line 121
    :goto_3
    if-eqz v8, :cond_8

    .line 122
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 127
    move-result p3

    .line 130
    invoke-virtual {p1, v5, p3, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 131
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    .line 134
    if-eqz p0, :cond_9

    .line 136
    iget p1, v1, Landroidx/core/graphics/Insets;->bottom:I

    .line 138
    iput p1, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    .line 140
    :cond_9
    if-nez v7, :cond_a

    .line 142
    if-eqz p0, :cond_b

    .line 144
    :cond_a
    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight()V

    .line 146
    :cond_b
    return-object p2
.end method
