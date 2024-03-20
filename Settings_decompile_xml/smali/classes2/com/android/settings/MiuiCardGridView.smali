.class public Lcom/android/settings/MiuiCardGridView;
.super Landroid/widget/RelativeLayout;
.source "MiuiCardGridView.java"


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field protected mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Lcom/android/settings/sound/coolsound/RingtoneGridView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmData(Lcom/android/settings/MiuiCardGridView;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiCardGridView;->mData:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/settings/MiuiCardGridView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 34
    iput-object p1, p0, Lcom/android/settings/MiuiCardGridView;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/android/settings/MiuiCardGridView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 24
    iput-object p2, p0, Lcom/android/settings/MiuiCardGridView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 28
    iput-object p1, p0, Lcom/android/settings/MiuiCardGridView;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/android/settings/MiuiCardGridView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/android/settings/MiuiCardGridView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->ringtone_settings_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    sget v0, Lcom/android/settings/R$id;->grid_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/coolsound/RingtoneGridView;

    iput-object v0, p0, Lcom/android/settings/MiuiCardGridView;->mGridView:Lcom/android/settings/sound/coolsound/RingtoneGridView;

    .line 41
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/android/settings/MiuiCardGridView;->mGridView:Lcom/android/settings/sound/coolsound/RingtoneGridView;

    iget-object p0, p0, Lcom/android/settings/MiuiCardGridView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isLandScape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/MiuiCardGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->card_margin_edge:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 67
    sget v0, Lcom/android/settings/R$id;->grid_view_root:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/CardInfo;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/android/settings/MiuiCardGridView;->mData:Ljava/util/List;

    .line 48
    new-instance p1, Lcom/android/settings/SettingsCardAdapter;

    iget-object v0, p0, Lcom/android/settings/MiuiCardGridView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/MiuiCardGridView;->mData:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/SettingsCardAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/settings/MiuiCardGridView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 49
    iget-object v0, p0, Lcom/android/settings/MiuiCardGridView;->mGridView:Lcom/android/settings/sound/coolsound/RingtoneGridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object p1, p0, Lcom/android/settings/MiuiCardGridView;->mGridView:Lcom/android/settings/sound/coolsound/RingtoneGridView;

    new-instance v0, Lcom/android/settings/MiuiCardGridView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiCardGridView$1;-><init>(Lcom/android/settings/MiuiCardGridView;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
