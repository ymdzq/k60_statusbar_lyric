.class public Lcom/android/settings/autouimode/AutoUIModeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AutoUIModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;,
        Lcom/android/settings/autouimode/AutoUIModeAdapter$OnCheckListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/android/settings/autouimode/SwitchCallBack;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/autouimode/AutoUIInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchInput:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallBack(Lcom/android/settings/autouimode/AutoUIModeAdapter;)Lcom/android/settings/autouimode/SwitchCallBack;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter;->mCallBack:Lcom/android/settings/autouimode/SwitchCallBack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmData(Lcom/android/settings/autouimode/AutoUIModeAdapter;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter;->mData:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/autouimode/SwitchCallBack;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/autouimode/SwitchCallBack;",
            "Ljava/util/List<",
            "Lcom/android/settings/autouimode/AutoUIInfo;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter;->mCallBack:Lcom/android/settings/autouimode/SwitchCallBack;

    .line 34
    iput-object p3, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/autouimode/AutoUIModeAdapter;->onBindViewHolder(Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;I)V
    .locals 4

    .line 77
    new-instance v0, Lcom/android/settings/autouimode/AutoUIModeAdapter$OnCheckListener;

    invoke-direct {v0, p0}, Lcom/android/settings/autouimode/AutoUIModeAdapter$OnCheckListener;-><init>(Lcom/android/settings/autouimode/AutoUIModeAdapter;)V

    .line 78
    iget-object v1, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/autouimode/AutoUIInfo;

    .line 79
    iget-object v2, p1, Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/android/settings/autouimode/AutoUIInfo;->getmAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v2, p1, Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/settings/autouimode/AutoUIInfo;->getmAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v0, p2}, Lcom/android/settings/autouimode/AutoUIModeAdapter$OnCheckListener;->setPosition(I)V

    .line 82
    iget-object p2, p1, Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;->switcher:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    iget-object p2, p1, Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;->switcher:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1}, Lcom/android/settings/autouimode/AutoUIInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 85
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/autouimode/AutoUIModeAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/autouimode/AutoUIModeAdapter$1;-><init>(Lcom/android/settings/autouimode/AutoUIModeAdapter;Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/autouimode/AutoUIModeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;
    .locals 1

    .line 71
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->autoui_mode_list:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 72
    new-instance p1, Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/autouimode/AutoUIModeAdapter$AutoUIModeHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public refreshAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/autouimode/AutoUIInfo;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter;->mData:Ljava/util/List;

    .line 47
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSearchInput(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter;->mSearchInput:Ljava/lang/String;

    return-void
.end method
