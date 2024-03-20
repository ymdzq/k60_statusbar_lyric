.class public Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MaxAspectRatioSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MaxAspectRatioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;,
        Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$TitleViewHolder;
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
.field mClickListener:Landroid/view/View$OnClickListener;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/MaxAspectRatioSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/MaxAspectRatioSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/MaxAspectRatioSettings;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;->this$0:Lcom/android/settings/MaxAspectRatioSettings;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 238
    new-instance p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$1;-><init>(Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;)V

    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;->mItems:Ljava/util/List;

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

.method public getItemViewType(I)I
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;

    invoke-static {p0}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->-$$Nest$fgetmType(Lcom/android/settings/MaxAspectRatioSettings$AppItem;)I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/MaxAspectRatioSettings$AppItem;

    .line 221
    invoke-static {p2}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->-$$Nest$fgetmType(Lcom/android/settings/MaxAspectRatioSettings$AppItem;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 222
    check-cast p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;

    .line 223
    iget-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;->this$0:Lcom/android/settings/MaxAspectRatioSettings;

    invoke-static {v0}, Lcom/android/settings/MaxAspectRatioSettings;->-$$Nest$fgetmApkIconLoader(Lcom/android/settings/MaxAspectRatioSettings;)Lcom/android/settings/ApkIconLoader;

    move-result-object v0

    iget-object v2, p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/ApkIconLoader;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 224
    iget-object v0, p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;->toggle:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {p2}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->-$$Nest$fgetmRestrict(Lcom/android/settings/MaxAspectRatioSettings$AppItem;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 226
    iget-object v0, p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;->toggle:Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 227
    iget-object v0, p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;->root:Landroid/view/View;

    sget v1, Lcom/android/settings/MaxAspectRatioSettings;->TAG_APP_ITEM:I

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 228
    iget-object v0, p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;->root:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;->root:Landroid/view/View;

    invoke-virtual {p2}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mutable()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 230
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mutable()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 231
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;->toggle:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mutable()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {p2}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->-$$Nest$fgetmType(Lcom/android/settings/MaxAspectRatioSettings$AppItem;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 233
    check-cast p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$TitleViewHolder;

    .line 234
    iget-object p0, p1, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$TitleViewHolder;->headerTitle:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 207
    iget-object p2, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;->this$0:Lcom/android/settings/MaxAspectRatioSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->max_aspect_app_list_item:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 208
    new-instance p2, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$ItemViewHolder;-><init>(Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 211
    iget-object p2, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;->this$0:Lcom/android/settings/MaxAspectRatioSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->max_aspect_app_list_header:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 212
    new-instance p2, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$TitleViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$TitleViewHolder;-><init>(Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/MaxAspectRatioSettings$AppItem;",
            ">;)V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;->mItems:Ljava/util/List;

    return-void
.end method
