.class public final Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field public final synthetic this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 5
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 8
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-interface {p0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
