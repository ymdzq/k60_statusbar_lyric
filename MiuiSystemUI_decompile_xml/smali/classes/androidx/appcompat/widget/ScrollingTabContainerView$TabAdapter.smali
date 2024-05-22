.class public final Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    .line 2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const/4 p0, 0x0

    .line 15
    return-object p0
    .line 16
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
    .line 3
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    .line 13
    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 18
    invoke-direct {p0, p2, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;-><init>(Landroidx/appcompat/widget/ScrollingTabContainerView;Landroid/content/Context;)V

    .line 19
    throw p3

    .line 22
    :cond_0
    check-cast p2, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    .line 23
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    .line 25
    throw p3
    .line 28
.end method
