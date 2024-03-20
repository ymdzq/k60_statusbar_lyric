.class public Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PrivacyThumbnailBlurSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;,
        Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$TitleViewHolder;
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
            "Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;->this$0:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 181
    new-instance p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$1;-><init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;)V

    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;->mItems:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;

    invoke-static {p0}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->-$$Nest$fgetmType(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;)I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;

    .line 168
    invoke-static {p2}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->-$$Nest$fgetmType(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;)I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    check-cast p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;

    .line 170
    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;->this$0:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;

    invoke-static {p0}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->-$$Nest$fgetmApkIconLoader(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;)Lcom/android/settings/ApkIconLoader;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ApkIconLoader;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 171
    iget-object p0, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p0, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;->toggle:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {p2}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->-$$Nest$fgetmPrivacyThumbnailBlurEnable(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 173
    iget-object p0, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;->toggle:Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 174
    iget-object p0, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;->root:Landroid/view/View;

    sget p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->TAG_APP_ITEM:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {p2}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->-$$Nest$fgetmType(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 176
    check-cast p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$TitleViewHolder;

    .line 177
    iget-object p0, p1, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$TitleViewHolder;->headerTitle:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 154
    iget-object p2, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;->this$0:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->privacy_thumbnail_blur_list_item:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 155
    new-instance p2, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$ItemViewHolder;-><init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 158
    iget-object p2, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;->this$0:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->privacy_thumbnail_blur_list_header:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 159
    new-instance p2, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$TitleViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter$TitleViewHolder;-><init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;Landroid/view/View;)V

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
            "Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppAdapter;->mItems:Ljava/util/List;

    return-void
.end method
