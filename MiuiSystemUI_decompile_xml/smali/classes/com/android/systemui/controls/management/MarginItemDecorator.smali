.class public final Lcom/android/systemui/controls/management/MarginItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final sideMargins:I

.field public final topMargin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/controls/management/MarginItemDecorator;->topMargin:I

    .line 5
    iput p2, p0, Lcom/android/systemui/controls/management/MarginItemDecorator;->sideMargins:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 5
    move-result p4

    .line 8
    const/4 v0, -0x1

    .line 9
    if-ne p4, v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 13
    move-result-object p3

    .line 16
    if-eqz p3, :cond_1

    .line 17
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 19
    move-result p3

    .line 22
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p3

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p3, 0x0

    .line 28
    :goto_0
    const/4 v0, 0x0

    .line 29
    if-nez p3, :cond_2

    .line 30
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result v1

    .line 36
    const/4 v2, 0x1

    .line 37
    if-ne v1, v2, :cond_3

    .line 38
    iget p2, p0, Lcom/android/systemui/controls/management/MarginItemDecorator;->topMargin:I

    .line 40
    mul-int/lit8 p2, p2, 0x2

    .line 42
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 44
    iget p0, p0, Lcom/android/systemui/controls/management/MarginItemDecorator;->sideMargins:I

    .line 46
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 48
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 50
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 52
    goto :goto_2

    .line 54
    :cond_3
    :goto_1
    if-nez p3, :cond_4

    .line 55
    goto :goto_2

    .line 57
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result p0

    .line 61
    if-nez p0, :cond_5

    .line 62
    if-nez p4, :cond_5

    .line 64
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    move-result-object p0

    .line 69
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 70
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 72
    neg-int p0, p0

    .line 74
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 75
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 77
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 79
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 81
    :cond_5
    :goto_2
    return-void
    .line 83
.end method
