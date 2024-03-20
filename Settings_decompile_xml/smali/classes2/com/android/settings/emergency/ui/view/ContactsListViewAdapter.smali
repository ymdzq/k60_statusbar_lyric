.class public Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContactsListViewAdapter.java"

# interfaces
.implements Lcom/android/settings/emergency/ui/view/ItemTouchHelperAdapter;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;",
        ">;",
        "Lcom/android/settings/emergency/ui/view/ItemTouchHelperAdapter;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEditMode:Z

.field private mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmItemTouchHelper(Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mCacheList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addDataItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getDataList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 98
    iget-object p0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method public getEditMode()Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mEditMode:Z

    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->onBindViewHolder(Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 87
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/android/settings/emergency/ui/view/ContactsItemView;

    .line 88
    iget-boolean p0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mEditMode:Z

    invoke-virtual {p1, p0}, Lcom/android/settings/emergency/ui/view/ContactsItemView;->setEditMode(Z)V

    .line 89
    invoke-virtual {p1, p2}, Lcom/android/settings/emergency/ui/view/ContactsItemView;->bindData(Landroid/util/Pair;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 168
    sget v0, Lcom/android/settings/R$id;->delete_btn:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 170
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->updateEmergencyContacts()V

    .line 174
    iget-object p1, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 175
    iget-object p0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;

    invoke-virtual {p0}, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->showAddContactsDialog()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;
    .locals 2

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->emergency_contacts_item_view:I

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/emergency/ui/view/ContactsItemView;

    .line 69
    new-instance p2, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;-><init>(Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;Landroid/view/View;)V

    .line 70
    invoke-virtual {p1, p0}, Lcom/android/settings/emergency/ui/view/ContactsItemView;->setOnDeleteBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$1;-><init>(Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter$MyViewHolder;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/emergency/ui/view/ContactsItemView;->setOnDragBtnClickListener(Landroid/view/View$OnTouchListener;)V

    return-object p2
.end method

.method public onItemClear(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 162
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 163
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onItemMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 134
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 135
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 136
    iget-object v1, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    invoke-static {v1, v0, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 140
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->updateEmergencyContacts()V

    .line 145
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->onItemClear(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onItemSelect(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 155
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x3f8ccccd    # 1.1f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 156
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setEditMode(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 111
    iget-object p2, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mCacheList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 112
    iget-object p2, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mCacheList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 115
    iget-object p2, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 116
    iget-object p2, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mCacheList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mEditMode:Z

    .line 120
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemTouchHelper(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method public updateEmergencyContacts()V
    .locals 5

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    iget-object v2, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 184
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mContext:Landroid/content/Context;

    const-string v3, ";"

    invoke-static {v0, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/emergency/util/Config;->setSosEmergencyContacts(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/emergency/util/Config;->setSosEmergencyContactNames(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
