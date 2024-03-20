.class public Lcom/android/settings/ScrollSpeedLinearLayoutManger;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "ScrollSpeedLinearLayoutManger.java"


# instance fields
.field mContxt:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p1, p0, Lcom/android/settings/ScrollSpeedLinearLayoutManger;->mContxt:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 21
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 22
    new-instance p2, Lcom/android/settings/ScrollSpeedLinearLayoutManger$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/settings/ScrollSpeedLinearLayoutManger$1;-><init>(Lcom/android/settings/ScrollSpeedLinearLayoutManger;Landroid/content/Context;)V

    .line 29
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 30
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
