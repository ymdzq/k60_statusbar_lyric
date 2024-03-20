.class public Lcom/android/settings/ai/AiSettingsSubAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AiSettingsSubAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mButtonType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/ai/AiSettingsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmButtonType(Lcom/android/settings/ai/AiSettingsSubAdapter;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ai/AiSettingsSubAdapter;->mButtonType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/ai/AiSettingsSubAdapter;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ai/AiSettingsSubAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmData(Lcom/android/settings/ai/AiSettingsSubAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ai/AiSettingsSubAdapter;->mData:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/ai/AiSettingsItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/settings/ai/AiSettingsSubAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/android/settings/ai/AiSettingsSubAdapter;->mData:Ljava/util/List;

    .line 28
    iput-object p3, p0, Lcom/android/settings/ai/AiSettingsSubAdapter;->mButtonType:Ljava/lang/String;

    return-void
.end method

.method private handleSelect(Lcom/android/settings/ai/AiSettingsItem;Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;)V
    .locals 2

    .line 55
    iget-object v0, p2, Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;->selected:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/settings/ai/AiSettingsItem;->selected:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/ai/AiSettingsSubAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/ai/AiSettingsSubAdapter$1;-><init>(Lcom/android/settings/ai/AiSettingsSubAdapter;Lcom/android/settings/ai/AiSettingsItem;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/ai/AiSettingsSubAdapter;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/ai/AiSettingsSubAdapter;->mData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/ai/AiSettingsItem;

    iget p0, p0, Lcom/android/settings/ai/AiSettingsItem;->type:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ai/AiSettingsSubAdapter;->onBindViewHolder(Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;I)V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/android/settings/ai/AiSettingsSubAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/ai/AiSettingsItem;

    .line 47
    iget-object v0, p0, Lcom/android/settings/ai/AiSettingsSubAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->ai_key_item_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p1, Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;->tv:Landroid/widget/TextView;

    iget v2, p2, Lcom/android/settings/ai/AiSettingsItem;->mIndex:I

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p1, Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;->itembg:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/settings/ai/AiSettingsSubAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x8

    iget v3, p2, Lcom/android/settings/ai/AiSettingsItem;->type:I

    if-ne v2, v3, :cond_0

    .line 50
    sget v2, Lcom/android/settings/R$drawable;->ai_settings_sub_none_item_bg:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/settings/R$drawable;->ai_settings_sub_item_bg:I

    .line 49
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-direct {p0, p2, p1}, Lcom/android/settings/ai/AiSettingsSubAdapter;->handleSelect(Lcom/android/settings/ai/AiSettingsItem;Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ai/AiSettingsSubAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/android/settings/ai/AiSettingsSubAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->ai_settings_sub_op_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    new-instance p2, Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;-><init>(Lcom/android/settings/ai/AiSettingsSubAdapter;Landroid/view/View;)V

    return-object p2
.end method
