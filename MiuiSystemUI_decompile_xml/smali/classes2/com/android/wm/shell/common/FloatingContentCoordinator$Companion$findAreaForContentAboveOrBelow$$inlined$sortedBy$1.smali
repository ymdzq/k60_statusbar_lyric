.class public final Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $findAbove$inlined:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1;->$findAbove$inlined:Z

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Landroid/graphics/Rect;

    .line 2
    iget-boolean v0, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1;->$findAbove$inlined:Z

    .line 4
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 6
    if-eqz v0, :cond_0

    .line 8
    neg-int p1, p1

    .line 10
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p1

    .line 14
    check-cast p2, Landroid/graphics/Rect;

    .line 15
    iget-boolean p0, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentAboveOrBelow$$inlined$sortedBy$1;->$findAbove$inlined:Z

    .line 17
    if-eqz p0, :cond_1

    .line 19
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 21
    neg-int p0, p0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->top:I

    .line 25
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p0

    .line 30
    invoke-static {p1, p0}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 31
    move-result p0

    .line 34
    return p0
    .line 35
.end method
