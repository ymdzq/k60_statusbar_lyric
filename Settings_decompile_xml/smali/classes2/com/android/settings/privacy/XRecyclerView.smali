.class public Lcom/android/settings/privacy/XRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "XRecyclerView.java"


# instance fields
.field private mAdapter:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/android/settings/privacy/XRecyclerView;->wrapHeaderAdapter()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/android/settings/privacy/XRecyclerView;->wrapHeaderAdapter()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/android/settings/privacy/XRecyclerView;->wrapHeaderAdapter()V

    return-void
.end method

.method private wrapHeaderAdapter()V
    .locals 2

    .line 40
    new-instance v0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/android/settings/privacy/XRecyclerView;->mAdapter:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    .line 41
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/privacy/XRecyclerView;->mAdapter:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/privacy/XRecyclerView;->mAdapter:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/privacy/XRecyclerView;->mAdapter:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public getFootersCount()I
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/privacy/XRecyclerView;->mAdapter:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getFootersCount()I

    move-result p0

    return p0
.end method

.method public getHeadersCount()I
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/privacy/XRecyclerView;->mAdapter:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getHeadersCount()I

    move-result p0

    return p0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/privacy/XRecyclerView;->mAdapter:Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
