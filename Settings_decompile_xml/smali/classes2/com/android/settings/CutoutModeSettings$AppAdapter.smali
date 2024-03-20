.class public Lcom/android/settings/CutoutModeSettings$AppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CutoutModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CutoutModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;,
        Lcom/android/settings/CutoutModeSettings$AppAdapter$TitleViewHolder;
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
.field private mCutoutModeEntries:[Ljava/lang/String;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/CutoutModeSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/CutoutModeSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCutoutModeEntries(Lcom/android/settings/CutoutModeSettings$AppAdapter;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter;->mCutoutModeEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/settings/CutoutModeSettings;)V
    .locals 1

    .line 169
    iput-object p1, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter;->this$0:Lcom/android/settings/CutoutModeSettings;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 170
    iget-object p1, p1, Lcom/android/settings/CutoutModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->cutout_mode_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter;->mCutoutModeEntries:[Ljava/lang/String;

    return-void
.end method

.method private onBindItemViewHolder(Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;Lcom/android/settings/CutoutModeSettings$AppItem;I)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter;->this$0:Lcom/android/settings/CutoutModeSettings;

    invoke-static {v0}, Lcom/android/settings/CutoutModeSettings;->-$$Nest$fgetmApkIconLoader(Lcom/android/settings/CutoutModeSettings;)Lcom/android/settings/ApkIconLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/settings/CutoutModeSettings$AppItem;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ApkIconLoader;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 199
    iget-object v0, p1, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings/CutoutModeSettings$AppItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p1, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter;->this$0:Lcom/android/settings/CutoutModeSettings;

    invoke-virtual {v1}, Lcom/android/settings/CutoutModeSettings;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x800015

    goto :goto_0

    :cond_0
    const v1, 0x800013

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 201
    invoke-static {p2}, Lcom/android/settings/CutoutModeSettings$AppItem;->-$$Nest$fgetmCutoutMode(Lcom/android/settings/CutoutModeSettings$AppItem;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-static {p2}, Lcom/android/settings/CutoutModeSettings$AppItem;->-$$Nest$fgetmCutoutMode(Lcom/android/settings/CutoutModeSettings$AppItem;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter;->mCutoutModeEntries:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 202
    iget-object v0, p1, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-static {p2}, Lcom/android/settings/CutoutModeSettings$AppItem;->-$$Nest$fgetmCutoutMode(Lcom/android/settings/CutoutModeSettings$AppItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 204
    :cond_1
    iget-object v0, p1, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    new-instance v1, Lcom/android/settings/CutoutModeSettings$AppAdapter$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/settings/CutoutModeSettings$AppAdapter$1;-><init>(Lcom/android/settings/CutoutModeSettings$AppAdapter;ILcom/android/settings/CutoutModeSettings$AppItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 215
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lcom/android/settings/CutoutModeSettings$AppAdapter$2;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/CutoutModeSettings$AppAdapter$2;-><init>(Lcom/android/settings/CutoutModeSettings$AppAdapter;Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private onBindTitleViewHolder(Lcom/android/settings/CutoutModeSettings$AppAdapter$TitleViewHolder;Lcom/android/settings/CutoutModeSettings$AppItem;)V
    .locals 0

    .line 229
    iget-object p0, p1, Lcom/android/settings/CutoutModeSettings$AppAdapter$TitleViewHolder;->headerTitle:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/android/settings/CutoutModeSettings$AppItem;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/android/settings/CutoutModeSettings$AppItem;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/CutoutModeSettings$AppItem;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter;->mItems:Ljava/util/List;

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

    .line 245
    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/CutoutModeSettings$AppItem;

    invoke-static {p0}, Lcom/android/settings/CutoutModeSettings$AppItem;->-$$Nest$fgetmType(Lcom/android/settings/CutoutModeSettings$AppItem;)I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CutoutModeSettings$AppItem;

    .line 188
    instance-of v1, p1, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;

    if-eqz v1, :cond_0

    .line 189
    check-cast p1, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;

    .line 190
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/CutoutModeSettings$AppAdapter;->onBindItemViewHolder(Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;Lcom/android/settings/CutoutModeSettings$AppItem;I)V

    goto :goto_0

    .line 191
    :cond_0
    instance-of p2, p1, Lcom/android/settings/CutoutModeSettings$AppAdapter$TitleViewHolder;

    if-eqz p2, :cond_1

    .line 192
    check-cast p1, Lcom/android/settings/CutoutModeSettings$AppAdapter$TitleViewHolder;

    .line 193
    invoke-direct {p0, p1, v0}, Lcom/android/settings/CutoutModeSettings$AppAdapter;->onBindTitleViewHolder(Lcom/android/settings/CutoutModeSettings$AppAdapter$TitleViewHolder;Lcom/android/settings/CutoutModeSettings$AppItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 178
    new-instance p2, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;

    iget-object v1, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter;->this$0:Lcom/android/settings/CutoutModeSettings;

    iget-object v1, v1, Lcom/android/settings/CutoutModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->cutout_mode_app_list_item:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/settings/CutoutModeSettings$AppAdapter$ItemViewHolder;-><init>(Lcom/android/settings/CutoutModeSettings$AppAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 180
    :cond_0
    new-instance p2, Lcom/android/settings/CutoutModeSettings$AppAdapter$TitleViewHolder;

    iget-object v1, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter;->this$0:Lcom/android/settings/CutoutModeSettings;

    iget-object v1, v1, Lcom/android/settings/CutoutModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->cutout_mode_app_list_header:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/settings/CutoutModeSettings$AppAdapter$TitleViewHolder;-><init>(Lcom/android/settings/CutoutModeSettings$AppAdapter;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/CutoutModeSettings$AppItem;",
            ">;)V"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/android/settings/CutoutModeSettings$AppAdapter;->mItems:Ljava/util/List;

    return-void
.end method
