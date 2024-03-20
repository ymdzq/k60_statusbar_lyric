.class public Lcom/android/settings/device/CommonIconListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CommonIconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/device/CommonIconListAdapter$ListHolder;,
        Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/device/CommonIconListAdapter$ListHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "layout_inflater"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/device/CommonIconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    iput-object p2, p0, Lcom/android/settings/device/CommonIconListAdapter;->mInfoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/device/CommonIconListAdapter;->mInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/android/settings/device/CommonIconListAdapter$ListHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/device/CommonIconListAdapter;->onBindViewHolder(Lcom/android/settings/device/CommonIconListAdapter$ListHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/device/CommonIconListAdapter$ListHolder;I)V
    .locals 1

    .line 41
    iget-object p0, p0, Lcom/android/settings/device/CommonIconListAdapter;->mInfoList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;

    .line 42
    iget-object p2, p1, Lcom/android/settings/device/CommonIconListAdapter$ListHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p2, p1, Lcom/android/settings/device/CommonIconListAdapter$ListHolder;->icon:Landroid/widget/ImageView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;->mIconResId:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/device/CommonIconListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/device/CommonIconListAdapter$ListHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/device/CommonIconListAdapter$ListHolder;
    .locals 3

    .line 36
    new-instance p2, Lcom/android/settings/device/CommonIconListAdapter$ListHolder;

    iget-object v0, p0, Lcom/android/settings/device/CommonIconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settings/R$layout;->common_icon_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/settings/device/CommonIconListAdapter$ListHolder;-><init>(Lcom/android/settings/device/CommonIconListAdapter;Landroid/view/View;)V

    return-object p2
.end method
