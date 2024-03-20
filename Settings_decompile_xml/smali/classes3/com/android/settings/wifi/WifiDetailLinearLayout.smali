.class public Lcom/android/settings/wifi/WifiDetailLinearLayout;
.super Landroid/widget/LinearLayout;
.source "WifiDetailLinearLayout.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/WifiDetailInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mWifiDetailList:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mWifiDetailList:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mWifiDetailList:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createWifiDetailGridView()V
    .locals 7

    .line 56
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 57
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDetailLinearLayout;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 62
    :cond_0
    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    add-int/2addr v1, v0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 65
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDetailLinearLayout;->getChildLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_1

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v5

    .line 68
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiDetailLinearLayout;->getBaseView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getBaseView(I)Landroid/view/View;
    .locals 6

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->wifi_detail_description_item:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    invoke-direct {v1, v5, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x1e

    .line 92
    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDetailLinearLayout;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    return-object v0

    .line 98
    :cond_0
    sget v1, Lcom/android/settings/R$id;->wifi_detail_description_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 99
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mWifiDetailList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/WifiDetailInfoBean;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDetailInfoBean;->getIconNameId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x1020014    # @android:id/text1

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 103
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mWifiDetailList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/WifiDetailInfoBean;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiDetailInfoBean;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x1020015    # @android:id/text2

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mWifiDetailList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/WifiDetailInfoBean;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDetailInfoBean;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    new-instance p1, Lcom/android/settings/wifi/WifiDetailLinearLayout$1;

    invoke-direct {p1, p0, v1}, Lcom/android/settings/wifi/WifiDetailLinearLayout$1;-><init>(Lcom/android/settings/wifi/WifiDetailLinearLayout;Landroid/widget/TextView;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method private getChildLayout()Landroid/widget/LinearLayout;
    .locals 3

    .line 75
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p0, 0x40000000    # 2.0f

    .line 81
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    return-object v0
.end method

.method private getCount()I
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mWifiDetailList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public initWifiDetailGrid(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/wifi/WifiDetailInfoBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mWifiDetailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 49
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDetailLinearLayout;->mWifiDetailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailInfoBean;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDetailLinearLayout;->createWifiDetailGridView()V

    :cond_2
    :goto_1
    return-void
.end method
