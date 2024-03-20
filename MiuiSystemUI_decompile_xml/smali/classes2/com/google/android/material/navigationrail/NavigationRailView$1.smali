.class public final Lcom/google/android/material/navigationrail/NavigationRailView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/navigationrail/NavigationRailView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigationrail/NavigationRailView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/google/android/material/navigationrail/NavigationRailView$1;->this$0:Lcom/google/android/material/navigationrail/NavigationRailView;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingTopSystemWindowInsets:Ljava/lang/Boolean;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 13
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 15
    move-result v0

    .line 18
    :goto_0
    const/4 v1, 0x7

    .line 19
    if-eqz v0, :cond_1

    .line 20
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    .line 22
    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 24
    move-result-object v2

    .line 27
    iget v2, v2, Landroidx/core/graphics/Insets;->top:I

    .line 28
    add-int/2addr v0, v2

    .line 30
    iput v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->paddingBottomSystemWindowInsets:Ljava/lang/Boolean;

    .line 33
    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    move-result p0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 42
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 44
    move-result p0

    .line 47
    :goto_1
    if-eqz p0, :cond_3

    .line 48
    iget p0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 50
    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 52
    move-result-object v0

    .line 55
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 56
    add-int/2addr p0, v0

    .line 58
    iput p0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 59
    :cond_3
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 61
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 63
    move-result p0

    .line 66
    const/4 v0, 0x1

    .line 67
    if-ne p0, v0, :cond_4

    .line 68
    goto :goto_2

    .line 70
    :cond_4
    const/4 v0, 0x0

    .line 71
    :goto_2
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 72
    move-result p0

    .line 75
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 76
    move-result v1

    .line 79
    iget v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 80
    if-eqz v0, :cond_5

    .line 82
    move p0, v1

    .line 84
    :cond_5
    add-int/2addr v2, p0

    .line 85
    iput v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 86
    iget p0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    .line 88
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 90
    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 92
    invoke-static {p1, v2, p0, v0, p3}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 94
    return-object p2
    .line 97
.end method
