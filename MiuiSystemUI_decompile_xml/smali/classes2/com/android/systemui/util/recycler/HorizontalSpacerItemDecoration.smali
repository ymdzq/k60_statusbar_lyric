.class public final Lcom/android/systemui/util/recycler/HorizontalSpacerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/util/recycler/HorizontalSpacerItemDecoration;->offset:I

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 5
    move-result p2

    .line 8
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 9
    move-result-object p3

    .line 12
    const/4 p4, 0x0

    .line 13
    if-eqz p3, :cond_0

    .line 14
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 16
    move-result p3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p3, p4

    .line 21
    :goto_0
    iget p0, p0, Lcom/android/systemui/util/recycler/HorizontalSpacerItemDecoration;->offset:I

    .line 22
    if-nez p2, :cond_1

    .line 24
    mul-int/lit8 v0, p0, 0x2

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    move v0, p0

    .line 29
    :goto_1
    add-int/lit8 p3, p3, -0x1

    .line 30
    if-ne p2, p3, :cond_2

    .line 32
    mul-int/lit8 p0, p0, 0x2

    .line 34
    :cond_2
    invoke-virtual {p1, v0, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    return-void
    .line 39
.end method
