.class public Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HeaderViewRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$ViewHolder;,
        Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private final mFooterViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeaderViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mHeaderViewInfos:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mFooterViewInfos:Ljava/util/List;

    .line 23
    new-instance v0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$1;-><init>(Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;)V

    iput-object v0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 56
    iput-object p1, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    return-void
.end method

.method private addFooterView(Landroid/view/View;I)V
    .locals 2

    .line 224
    new-instance v0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;-><init>(Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo-IA;)V

    .line 225
    iput-object p1, v0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;->view:Landroid/view/View;

    .line 226
    iput p2, v0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;->itemViewType:I

    .line 227
    iget-object p1, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private addHeaderView(Landroid/view/View;I)V
    .locals 2

    .line 189
    new-instance v0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;-><init>(Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo-IA;)V

    .line 190
    iput-object p1, v0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;->view:Landroid/view/View;

    .line 191
    iput p2, v0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;->itemViewType:I

    .line 192
    iget-object p1, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private findViewForInfos(I)Landroid/view/View;
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;

    .line 283
    iget v2, v1, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;->itemViewType:I

    if-ne v2, p1, :cond_0

    .line 284
    iget-object p0, v1, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;->view:Landroid/view/View;

    return-object p0

    .line 288
    :cond_1
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;

    .line 289
    iget v1, v0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;->itemViewType:I

    if-ne v1, p1, :cond_2

    .line 290
    iget-object p0, v0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;->view:Landroid/view/View;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private generateUniqueViewType()I
    .locals 6

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getItemCount()I

    move-result v0

    .line 257
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    .line 262
    invoke-virtual {p0, v4}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getItemViewType(I)I

    move-result v5

    if-ne v1, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_1
    if-nez v2, :cond_0

    return v1
.end method

.method private handleLayoutIfStaggeredGridLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 320
    invoke-virtual {p0, p2}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->isFooter(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 321
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 p1, 0x1

    .line 323
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_1
    return-void
.end method

.method private isStaggeredGridLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 312
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 313
    instance-of p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1

    .line 219
    invoke-direct {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->generateUniqueViewType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->addFooterView(Landroid/view/View;I)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->generateUniqueViewType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->addHeaderView(Landroid/view/View;I)V

    return-void
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public getFootersCount()I
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getHeadersCount()I
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;

    iget p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;->itemViewType:I

    return p0

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->isFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mFooterViewInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;

    iget p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$FixedViewInfo;->itemViewType:I

    return p0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getHeadersCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 110
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public isFooter(I)Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getFootersCount()I

    move-result p0

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHeader(I)Z
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getHeadersCount()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_0

    .line 348
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 79
    invoke-virtual {p0, p2}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->isFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->getHeadersCount()I

    move-result v0

    sub-int/2addr p2, v0

    .line 86
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 66
    invoke-direct {p0, p2}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->findViewForInfos(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    new-instance p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$ViewHolder;

    invoke-direct {p0, v0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_0

    .line 355
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 338
    instance-of v0, p1, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 339
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0

    .line 341
    :cond_0
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 299
    instance-of v0, p1, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 300
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 306
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->isStaggeredGridLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->handleLayoutIfStaggeredGridLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 329
    instance-of v0, p1, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 330
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 332
    :cond_0
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :goto_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 361
    instance-of v0, p1, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 362
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 364
    :cond_0
    iget-object p0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 119
    instance-of v0, p1, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;

    if-nez v0, :cond_1

    .line 123
    iput-object p1, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/privacy/HeaderViewRecyclerAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 121
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot wrap a HeaderViewRecyclerAdapter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
