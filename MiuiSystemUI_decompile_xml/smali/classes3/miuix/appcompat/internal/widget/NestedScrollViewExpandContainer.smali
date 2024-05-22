.class public Lmiuix/appcompat/internal/widget/NestedScrollViewExpandContainer;
.super Landroidx/core/widget/NestedScrollView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final measureChild(Landroid/view/View;II)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 3
    iput p3, v0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mParentHeightMeasureSpec:I

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 7
    invoke-super {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;->measureChild(Landroid/view/View;II)V

    .line 10
    return-void
    .line 13
.end method

.method public final measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 3
    iput p4, v0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->mParentHeightMeasureSpec:I

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 7
    invoke-super/range {p0 .. p5}, Landroidx/core/widget/NestedScrollView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 10
    return-void
    .line 13
.end method
