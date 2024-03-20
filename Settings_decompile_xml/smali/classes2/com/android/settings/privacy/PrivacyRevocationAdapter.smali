.class public Lcom/android/settings/privacy/PrivacyRevocationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PrivacyRevocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;,
        Lcom/android/settings/privacy/PrivacyRevocationAdapter$ClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/android/settings/privacy/PrivacyRevocationAdapter$ClickListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/android/settings/privacy/PrivacyRevocationAdapter;)Lcom/android/settings/privacy/PrivacyRevocationAdapter$ClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->listener:Lcom/android/settings/privacy/PrivacyRevocationAdapter$ClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/privacy/PrivacyRevocationAdapter;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->dataList:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->dataList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 0
    int-to-long p0, p1

    return-wide p0
.end method

.method public getPrivacyItemByPackageName(Ljava/lang/String;)Lcom/android/settings/privacy/PrivacyItem;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->dataList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/privacy/PrivacyItem;

    .line 120
    iget-object v2, v0, Lcom/android/settings/privacy/PrivacyItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->onBindViewHolder(Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;I)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->dataList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/privacy/PrivacyItem;

    .line 54
    iget-object v0, p1, Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings/privacy/PrivacyItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p2, Lcom/android/settings/privacy/PrivacyItem;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p1, Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p1, Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;->iconImageView:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->card_icon_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    :goto_0
    iget-object v0, p1, Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    iget-object v0, p1, Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-boolean v1, p2, Lcom/android/settings/privacy/PrivacyItem;->enable:Z

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 62
    iget-object v0, p1, Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance v1, Lcom/android/settings/privacy/PrivacyRevocationAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/privacy/PrivacyRevocationAdapter$1;-><init>(Lcom/android/settings/privacy/PrivacyRevocationAdapter;Lcom/android/settings/privacy/PrivacyItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/privacy/PrivacyRevocationAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/privacy/PrivacyRevocationAdapter$2;-><init>(Lcom/android/settings/privacy/PrivacyRevocationAdapter;Lcom/android/settings/privacy/PrivacyItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;
    .locals 2

    .line 45
    new-instance p2, Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;

    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/settings/R$layout;->privacy_revocation_settings_item:I

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/settings/privacy/PrivacyRevocationAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setListener(Lcom/android/settings/privacy/PrivacyRevocationAdapter$ClickListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->listener:Lcom/android/settings/privacy/PrivacyRevocationAdapter$ClickListener;

    return-void
.end method

.method public setPrivacyItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationAdapter;->dataList:Ljava/util/List;

    return-void
.end method
