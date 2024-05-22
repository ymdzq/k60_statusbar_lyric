.class Lcom/google/android/material/appbar/ViewOffsetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public tempTopBottomOffset:I

.field public viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    return-void
.end method


# virtual methods
.method public final getTopAndBottomOffset()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget p0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public getTopBottomOffsetForScrollingSibling()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(ILandroid/view/View;)V

    .line 2
    return-void
    .line 5
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 5
    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 9
    invoke-direct {p1, p2}, Lcom/google/android/material/appbar/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 11
    iput-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 16
    iget-object p2, p1, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 20
    move-result p3

    .line 23
    iput p3, p1, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 26
    move-result p2

    .line 29
    iput p2, p1, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutLeft:I

    .line 30
    iget-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/material/appbar/ViewOffsetHelper;->applyOffsets()V

    .line 34
    iget p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 37
    if-eqz p1, :cond_1

    .line 39
    iget-object p2, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 41
    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 43
    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 47
    :cond_1
    const/4 p0, 0x1

    .line 49
    return p0
    .line 50
.end method
