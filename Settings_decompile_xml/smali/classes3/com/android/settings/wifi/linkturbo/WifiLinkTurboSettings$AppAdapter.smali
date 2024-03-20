.class public Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WifiLinkTurboSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final TAG_APP_ITEM:I

.field mApkIconLoader:Lcom/android/settings/wifi/linkturbo/ApkIconLoader;

.field mClickListener:Landroid/view/View$OnClickListener;

.field mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;Landroid/content/Context;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->this$0:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 200
    sget p1, Lcom/android/settings/R$layout;->link_turbo_app_list:I

    iput p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->TAG_APP_ITEM:I

    .line 256
    new-instance p1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$2;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$2;-><init>(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;)V

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 203
    iput-object p2, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->mContext:Landroid/content/Context;

    .line 204
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 205
    new-instance p1, Lcom/android/settings/wifi/linkturbo/ApkIconLoader;

    invoke-direct {p1, p2}, Lcom/android/settings/wifi/linkturbo/ApkIconLoader;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->mApkIconLoader:Lcom/android/settings/wifi/linkturbo/ApkIconLoader;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->mItems:Ljava/util/List;

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

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 196
    check-cast p1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->onBindViewHolder(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;I)V
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;

    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->mApkIconLoader:Lcom/android/settings/wifi/linkturbo/ApkIconLoader;

    iget-object v1, p1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/linkturbo/ApkIconLoader;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 236
    iget-object v0, p1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;->dayDataTraffic:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->this$0:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    sget v3, Lcom/android/settings/R$string;->link_turbo_usage_state_today:I

    .line 238
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;->mMobileDataTrafficOfThisDay:J

    .line 239
    invoke-static {v3, v4}, Lcom/android/settings/wifi/linkturbo/FormatBytesUtil;->formatBytes(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;->monthDataTraffic:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->this$0:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;

    sget v4, Lcom/android/settings/R$string;->link_turbo_usage_state_month:I

    .line 241
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;->mMobileDataTrafficOfThisMonth:J

    .line 242
    invoke-static {v2, v3}, Lcom/android/settings/wifi/linkturbo/FormatBytesUtil;->formatBytes(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;->button:Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 245
    iget-object v0, p1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;->button:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-boolean v1, p2, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;->mIsChecked:Z

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 246
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->TAG_APP_ITEM:I

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 247
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object p2, p1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;->button:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance v0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$1;-><init>(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;
    .locals 2

    .line 227
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->link_turbo_app_mobileusage_list_item:I

    const/4 v1, 0x0

    .line 228
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 229
    new-instance p2, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter$ViewHolder;-><init>(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;",
            ">;)V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;->mItems:Ljava/util/List;

    .line 212
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
