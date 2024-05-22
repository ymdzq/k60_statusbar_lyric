.class public final Landroidx/appcompat/widget/ScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

.field public final synthetic val$tabView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ScrollingTabContainerView;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$1;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    .line 2
    iput-object p2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$1;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    .line 8
    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    .line 10
    move-result v1

    .line 13
    iget-object v2, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v2

    .line 19
    sub-int/2addr v1, v2

    .line 20
    div-int/lit8 v1, v1, 0x2

    .line 21
    sub-int/2addr v0, v1

    .line 23
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$1;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    .line 24
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 27
    iget-object p0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$1;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    .line 30
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabSelector:Landroidx/appcompat/widget/ScrollingTabContainerView$1;

    .line 33
    return-void
    .line 35
.end method
