.class public Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AutoDisableScreenButtonsAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderView:Landroid/view/View;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHeaderView(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->mHeaderView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFlagByIndex(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->getFlagByIndex(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 397
    new-instance p1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$1;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;)V

    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private getFlagByIndex(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 435
    sget-object p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mListFlags:[I

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method private getIndexByFlag(I)I
    .locals 2

    const/4 p0, 0x0

    .line 427
    :goto_0
    sget-object v0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mListFlags:[I

    array-length v1, v0

    if-ge p0, v1, :cond_1

    .line 428
    aget v0, v0, p0

    if-ne v0, p1, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 328
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->mHeaderView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 329
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 331
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 0
    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 344
    :cond_0
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->mItems:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;

    invoke-static {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->-$$Nest$fgetmType(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)I

    move-result p0

    return p0

    .line 347
    :cond_1
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;

    invoke-static {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->-$$Nest$fgetmType(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 300
    check-cast p1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->onBindViewHolder(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;I)V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;

    .line 380
    invoke-static {p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->-$$Nest$fgetmType(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)I

    move-result v0

    if-nez v0, :cond_3

    .line 381
    invoke-static {p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->-$$Nest$fgetmDes(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->-$$Nest$fgetmDes(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmApkIconLoader(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/settings/ApkIconLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ApkIconLoader;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 389
    iget-object v0, p1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->-$$Nest$fgetmLabel(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->TAG_APP_ITEM:I

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 391
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 392
    :cond_3
    invoke-static {p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->-$$Nest$fgetmType(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .line 393
    iget-object p0, p1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;->headerTitle:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->-$$Nest$fgetmLabel(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 300
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 359
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->auto_disable_screenbuttons_app_list_item:I

    .line 360
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 362
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->auto_disable_screenbuttons_app_list_header:I

    .line 363
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 364
    :cond_1
    iget-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->mHeaderView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 367
    :goto_0
    new-instance p2, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$ViewHolder;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->mHeaderView:Landroid/view/View;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;",
            ">;)V"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method protected showDialog(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)V
    .locals 4

    .line 407
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmContext(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 408
    invoke-virtual {v0, v1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->auto_disable_screenbuttons_cancel:I

    .line 409
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    iget-object v1, v1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->mListChoices:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->-$$Nest$fgetmFlag(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->getIndexByFlag(I)I

    move-result v2

    new-instance v3, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter$2;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)V

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 422
    iget-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fputmDialog(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Landroid/app/Dialog;)V

    .line 423
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmDialog(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
