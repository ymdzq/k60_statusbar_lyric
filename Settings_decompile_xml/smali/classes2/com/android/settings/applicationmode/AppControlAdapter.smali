.class public Lcom/android/settings/applicationmode/AppControlAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppControlAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;,
        Lcom/android/settings/applicationmode/AppControlAdapter$OnCheckListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppItemInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applicationmode/AppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallBack:Lcom/android/settings/applicationmode/SwitchCallBack;

.field private mContext:Landroid/content/Context;

.field private mSearchInput:Ljava/lang/String;

.field private mSupportEmbeddedAdapter:Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

.field private mSupportEmbeddedData:[Ljava/lang/String;

.field private mSupportEmbeddedIcon:[I

.field private mUnSupportEmbeddedAdapter:Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

.field private mUnSupportEmbeddedData:[Ljava/lang/String;

.field private mUnSupportEmbeddedIcon:[I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppItemInfoList(Lcom/android/settings/applicationmode/AppControlAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mAppItemInfoList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallBack(Lcom/android/settings/applicationmode/AppControlAdapter;)Lcom/android/settings/applicationmode/SwitchCallBack;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mCallBack:Lcom/android/settings/applicationmode/SwitchCallBack;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applicationmode/SwitchCallBack;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/applicationmode/SwitchCallBack;",
            "Ljava/util/List<",
            "Lcom/android/settings/applicationmode/AppItemInfo;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    sget v0, Lcom/android/settings/R$drawable;->ic_embedded_spinner:I

    sget v1, Lcom/android/settings/R$drawable;->ic_full_spinner:I

    sget v2, Lcom/android/settings/R$drawable;->ic_four_spinner:I

    sget v3, Lcom/android/settings/R$drawable;->ic_nine_spinner:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mSupportEmbeddedIcon:[I

    .line 38
    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mUnSupportEmbeddedIcon:[I

    .line 45
    iput-object p1, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mCallBack:Lcom/android/settings/applicationmode/SwitchCallBack;

    .line 47
    iput-object p3, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mAppItemInfoList:Ljava/util/List;

    .line 48
    iput-object p4, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mSupportEmbeddedData:[Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mUnSupportEmbeddedData:[Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/android/settings/applicationmode/AppControlAdapter;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 190
    new-instance v0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

    iget-object v1, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mSupportEmbeddedData:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mSupportEmbeddedIcon:[I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[I)V

    iput-object v0, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mSupportEmbeddedAdapter:Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

    .line 192
    new-instance v0, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

    iget-object v1, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mUnSupportEmbeddedData:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mUnSupportEmbeddedIcon:[I

    invoke-direct {v0, v1, v2, v4, v3}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[I)V

    iput-object v0, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mUnSupportEmbeddedAdapter:Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

    return-void
.end method

.method private setLabelTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 201
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 206
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v0

    .line 207
    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 208
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->search_input_txt_na:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 209
    invoke-virtual {p2, p3, p0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mAppItemInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

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

    .line 186
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mAppItemInfoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applicationmode/AppItemInfo;

    invoke-virtual {p0}, Lcom/android/settings/applicationmode/AppItemInfo;->getItemType()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applicationmode/AppControlAdapter;->onBindViewHolder(Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;I)V
    .locals 7

    .line 108
    new-instance v0, Lcom/android/settings/applicationmode/AppControlAdapter$OnCheckListener;

    invoke-direct {v0, p0}, Lcom/android/settings/applicationmode/AppControlAdapter$OnCheckListener;-><init>(Lcom/android/settings/applicationmode/AppControlAdapter;)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mAppItemInfoList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applicationmode/AppItemInfo;

    .line 110
    invoke-virtual {p0, p2}, Lcom/android/settings/applicationmode/AppControlAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    goto/16 :goto_2

    .line 115
    :cond_0
    iget-object v5, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/android/settings/applicationmode/AppItemInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v5, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/settings/applicationmode/AppItemInfo;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v0, p2}, Lcom/android/settings/applicationmode/AppControlAdapter$OnCheckListener;->setPosition(I)V

    .line 118
    invoke-static {}, Lcom/android/settings/applicationmode/RemoteUtils;->isMiPadDevice()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 119
    iget-object p0, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->switcher:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    iget-object p0, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->switcher:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1}, Lcom/android/settings/applicationmode/AppItemInfo;->isOpenEmbedded()Z

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    goto :goto_2

    .line 122
    :cond_1
    iget-object p2, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setImportantForAccessibility(I)V

    .line 123
    iget-object p2, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 124
    iget-object p2, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p2, v5}, Landroid/widget/Spinner;->setLongClickable(Z)V

    .line 125
    iget-object p2, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p2, v5}, Landroid/widget/Spinner;->setContextClickable(Z)V

    .line 126
    iget-object p2, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/widget/Spinner;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    if-eq v2, v0, :cond_4

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    if-eq v2, p2, :cond_3

    if-ne v2, v3, :cond_5

    .line 132
    :cond_3
    iget-object v0, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mSupportEmbeddedAdapter:Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setDoubleLineContentAdapter(Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;)V

    goto :goto_1

    .line 129
    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mUnSupportEmbeddedAdapter:Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setDoubleLineContentAdapter(Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;)V

    .line 134
    :cond_5
    :goto_1
    iget-object v0, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 135
    iget-object v0, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1}, Lcom/android/settings/applicationmode/AppItemInfo;->stateToMode()I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 136
    iget-object p2, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/settings/applicationmode/AppItemInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mSearchInput:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/settings/applicationmode/AppControlAdapter;->setLabelTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p2, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    new-instance v0, Lcom/android/settings/applicationmode/AppControlAdapter$1;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applicationmode/AppControlAdapter$1;-><init>(Lcom/android/settings/applicationmode/AppControlAdapter;Lcom/android/settings/applicationmode/AppItemInfo;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 148
    iget-object p2, p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;->spinner:Lmiuix/appcompat/widget/Spinner;

    new-instance v0, Lcom/android/settings/applicationmode/AppControlAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applicationmode/AppControlAdapter$2;-><init>(Lcom/android/settings/applicationmode/AppControlAdapter;Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;)V

    invoke-virtual {p2, v0}, Lmiuix/appcompat/widget/Spinner;->setOnSpinnerDismissListener(Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;)V

    .line 155
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/applicationmode/AppControlAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applicationmode/AppControlAdapter$3;-><init>(Lcom/android/settings/applicationmode/AppControlAdapter;Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applicationmode/AppControlAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;
    .locals 2

    .line 83
    invoke-static {}, Lcom/android/settings/applicationmode/RemoteUtils;->isMiPadDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->application_embedded_pad_item:I

    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 97
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->application_sizecompat_first_item:I

    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 94
    :cond_2
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->application_embedded_first_item:I

    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 91
    :cond_3
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->application_sizecompat_item:I

    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 88
    :cond_4
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->application_embedded_item:I

    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 103
    :goto_0
    new-instance p1, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public refreshAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applicationmode/AppItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mAppItemInfoList:Ljava/util/List;

    .line 216
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSearchInput(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/settings/applicationmode/AppControlAdapter;->mSearchInput:Ljava/lang/String;

    return-void
.end method
