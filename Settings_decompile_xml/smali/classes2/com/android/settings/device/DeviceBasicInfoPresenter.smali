.class public Lcom/android/settings/device/DeviceBasicInfoPresenter;
.super Ljava/lang/Object;
.source "DeviceBasicInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;
    }
.end annotation


# static fields
.field public static final ICON_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_MAP_MIUI15:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DEVICES_INFO_ITEMS_COUNT:I

.field public isUseMiui15CardStyle:Z

.field private mAdapter:Lcom/android/settings/device/DeviceInfoAdapter;

.field private mBasicInfoCards:[Lcom/android/settings/device/DeviceCardInfo;

.field private mCards:[Lcom/android/settings/device/DeviceCardInfo;

.field private mContext:Landroid/content/Context;

.field private mDisplayCards:[Lcom/android/settings/device/DeviceCardInfo;

.field private mIsCardsInitCompleted:Ljava/lang/Boolean;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/device/DeviceBasicInfoPresenter;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayCards(Lcom/android/settings/device/DeviceBasicInfoPresenter;)[Lcom/android/settings/device/DeviceCardInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mDisplayCards:[Lcom/android/settings/device/DeviceCardInfo;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/android/settings/device/DeviceBasicInfoPresenter$1;

    invoke-direct {v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter$1;-><init>()V

    sput-object v0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->INDEX_MAP:Ljava/util/Map;

    .line 64
    new-instance v0, Lcom/android/settings/device/DeviceBasicInfoPresenter$2;

    invoke-direct {v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter$2;-><init>()V

    sput-object v0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->INDEX_MAP_MIUI15:Ljava/util/Map;

    .line 75
    new-instance v0, Lcom/android/settings/device/DeviceBasicInfoPresenter$3;

    invoke-direct {v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter$3;-><init>()V

    sput-object v0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->ICON_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 32
    iput v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->DEVICES_INFO_ITEMS_COUNT:I

    .line 46
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mIsCardsInitCompleted:Ljava/lang/Boolean;

    .line 92
    iput-object p1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    .line 93
    iput-boolean p2, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isUseMiui15CardStyle:Z

    if-eqz p2, :cond_0

    const/16 v0, 0x8

    .line 94
    :cond_0
    iput v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->DEVICES_INFO_ITEMS_COUNT:I

    .line 95
    new-array p1, v0, [Lcom/android/settings/device/DeviceCardInfo;

    iput-object p1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    .line 96
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->hasMarketName()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    new-array p1, p1, [Lcom/android/settings/device/DeviceCardInfo;

    .line 97
    iput-object p1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mBasicInfoCards:[Lcom/android/settings/device/DeviceCardInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/settings/device/DeviceCardInfo;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 32
    iput v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->DEVICES_INFO_ITEMS_COUNT:I

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isUseMiui15CardStyle:Z

    .line 101
    iput-object p1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    .line 103
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mIsCardsInitCompleted:Ljava/lang/Boolean;

    return-void
.end method

.method private buildGridView(Landroid/view/View;)V
    .locals 5

    .line 155
    invoke-direct {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->getLineNum()I

    move-result v0

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->disclaimer:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :cond_0
    sget v1, Lcom/android/settings/R$id;->description_grid:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    new-instance v1, Lcom/android/settings/device/DeviceInfoAdapter;

    iget-object v3, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/settings/device/DeviceInfoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mAdapter:Lcom/android/settings/device/DeviceInfoAdapter;

    .line 162
    iget-boolean v3, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isUseMiui15CardStyle:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/settings/device/DeviceInfoAdapter;->setType(I)V

    .line 165
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->hasMarketName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 168
    :cond_2
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 170
    :goto_1
    iget-object v3, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mIsCardsInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mBasicInfoCards:[Lcom/android/settings/device/DeviceCardInfo;

    :goto_2
    iput-object v3, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mDisplayCards:[Lcom/android/settings/device/DeviceCardInfo;

    .line 171
    new-instance v3, Lcom/android/settings/device/DeviceBasicInfoPresenter$4;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter$4;-><init>(Lcom/android/settings/device/DeviceBasicInfoPresenter;I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mAdapter:Lcom/android/settings/device/DeviceInfoAdapter;

    iget-object v3, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mDisplayCards:[Lcom/android/settings/device/DeviceCardInfo;

    invoke-virtual {v0, v3}, Lcom/android/settings/device/DeviceInfoAdapter;->setDataList([Lcom/android/settings/device/DeviceCardInfo;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mAdapter:Lcom/android/settings/device/DeviceInfoAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 184
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    if-nez v0, :cond_5

    .line 185
    :cond_4
    new-instance v0, Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;

    invoke-direct {v0, p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;-><init>(Lcom/android/settings/device/DeviceBasicInfoPresenter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 187
    :cond_5
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private createDeviceModelCard(Landroid/view/View$OnClickListener;)Lcom/android/settings/device/DeviceCardInfo;
    .locals 2

    .line 344
    new-instance v0, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {v0}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 345
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->model_number:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getWrapModelNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    .line 347
    sget-object p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->ICON_MAP:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/device/DeviceCardInfo;->setIconResId(I)V

    .line 348
    invoke-virtual {v0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private createMemoryCard(Landroid/view/View$OnClickListener;)Lcom/android/settings/device/DeviceCardInfo;
    .locals 3

    .line 353
    new-instance v0, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {v0}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 354
    iget-object v1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->device_memory:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->setMemoryValueAndIndex(Lcom/android/settings/device/DeviceCardInfo;)V

    .line 356
    sget-object p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->ICON_MAP:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/device/DeviceCardInfo;->setIconResId(I)V

    .line 357
    invoke-virtual {v0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private createVersionCard(Landroid/view/View$OnClickListener;)Lcom/android/settings/device/DeviceCardInfo;
    .locals 1

    .line 362
    new-instance p1, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {p1}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 363
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->device_miui_version:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getOsVersionCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x7

    .line 365
    invoke-virtual {p1, p0}, Lcom/android/settings/device/DeviceCardInfo;->setIndex(I)V

    return-object p1
.end method

.method private getLineNum()I
    .locals 2

    .line 148
    iget-boolean v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isUseMiui15CardStyle:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 149
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 151
    :cond_1
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isLandScape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x3

    :cond_2
    return v1
.end method

.method private initBasicInfo(Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mBasicInfoCards:[Lcom/android/settings/device/DeviceCardInfo;

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->hasMarketName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mBasicInfoCards:[Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->createMemoryCard(Landroid/view/View$OnClickListener;)Lcom/android/settings/device/DeviceCardInfo;

    move-result-object p0

    aput-object p0, v0, v1

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mBasicInfoCards:[Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->createDeviceModelCard(Landroid/view/View$OnClickListener;)Lcom/android/settings/device/DeviceCardInfo;

    move-result-object v2

    aput-object v2, v0, v1

    .line 377
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mBasicInfoCards:[Lcom/android/settings/device/DeviceCardInfo;

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->createMemoryCard(Landroid/view/View$OnClickListener;)Lcom/android/settings/device/DeviceCardInfo;

    move-result-object p0

    aput-object p0, v0, v1

    :goto_0
    return-void
.end method

.method private initData(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 8

    .line 258
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-static {p1}, Lcom/android/settings/device/ParseMiShopDataUtils;->getBasicItemsArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 262
    invoke-direct {p0, p2}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->createDeviceModelCard(Landroid/view/View$OnClickListener;)Lcom/android/settings/device/DeviceCardInfo;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 265
    iget-boolean v1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isUseMiui15CardStyle:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {v0, v4}, Lcom/android/settings/device/DeviceCardInfo;->setType(I)V

    const/4 v1, 0x6

    .line 267
    invoke-virtual {v0, v1}, Lcom/android/settings/device/DeviceCardInfo;->setIndex(I)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    iget v1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->DEVICES_INFO_ITEMS_COUNT:I

    sub-int/2addr v1, v3

    invoke-direct {p0, p2}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->createVersionCard(Landroid/view/View$OnClickListener;)Lcom/android/settings/device/DeviceCardInfo;

    move-result-object v5

    aput-object v5, v0, v1

    :cond_1
    if-eqz p1, :cond_b

    .line 271
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 272
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 273
    invoke-static {p1, v2}, Lcom/android/settings/device/JSONUtils;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 274
    invoke-static {v0}, Lcom/android/settings/device/ParseMiShopDataUtils;->getItemIndex(Lorg/json/JSONObject;)I

    move-result v1

    if-ltz v1, :cond_9

    .line 275
    iget v5, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->DEVICES_INFO_ITEMS_COUNT:I

    if-ge v1, v5, :cond_9

    .line 276
    invoke-static {v0}, Lcom/android/settings/device/ParseMiShopDataUtils;->getItemTitle(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 277
    new-instance v6, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {v6}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 278
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 279
    invoke-virtual {v6, v5}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    .line 281
    :cond_2
    invoke-static {v0}, Lcom/android/settings/device/ParseMiShopDataUtils;->getItemSummary(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 283
    invoke-virtual {v6, v0}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    .line 285
    :cond_3
    sget-object v5, Lcom/android/settings/device/DeviceBasicInfoPresenter;->ICON_MAP:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/android/settings/device/DeviceCardInfo;->setIconResId(I)V

    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_6

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    goto :goto_1

    .line 293
    :cond_4
    invoke-virtual {v6}, Lcom/android/settings/device/DeviceCardInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "DeviceBasicInfoPresenter"

    const-string v5, "initData: MemoryTitle is empty"

    .line 294
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/android/settings/R$string;->device_memory:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    .line 297
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->setMemoryValueAndIndex(Lcom/android/settings/device/DeviceCardInfo;)V

    .line 298
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->hasMarketName()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 299
    invoke-virtual {v6, v4}, Lcom/android/settings/device/DeviceCardInfo;->setType(I)V

    goto :goto_1

    .line 303
    :cond_6
    invoke-virtual {v6, v4}, Lcom/android/settings/device/DeviceCardInfo;->setType(I)V

    .line 304
    iget-object v5, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/android/settings/R$string;->device_camera:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    .line 305
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "\\n"

    const-string v7, ""

    .line 306
    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v5, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/android/settings/R$string;->camera_rear:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 288
    :cond_7
    invoke-static {v0}, Lcom/android/settings/device/ParseMiShopDataUtils;->setCpuInfo(Ljava/lang/String;)V

    const-string v0, "cpu_item"

    .line 289
    invoke-virtual {v6, v0}, Lcom/android/settings/device/DeviceCardInfo;->setKey(Ljava/lang/String;)V

    .line 311
    :cond_8
    :goto_1
    invoke-virtual {v6, v1}, Lcom/android/settings/device/DeviceCardInfo;->setIndex(I)V

    .line 312
    invoke-virtual {v6, p2}, Lcom/android/settings/device/DeviceCardInfo;->setListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    invoke-virtual {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->getIndexMap()Ljava/util/Map;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object v6, v0, v1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 316
    :cond_a
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mIsCardsInitCompleted:Ljava/lang/Boolean;

    .line 319
    :cond_b
    iget-boolean p1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isUseMiui15CardStyle:Z

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 320
    iget-object p1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    invoke-virtual {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->getIndexMap()Ljava/util/Map;

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    .line 321
    iget-object p2, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    invoke-virtual {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->getIndexMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p2, p2, v0

    const-string v0, " "

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 324
    invoke-virtual {p1}, Lcom/android/settings/device/DeviceCardInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 325
    invoke-virtual {p1}, Lcom/android/settings/device/DeviceCardInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_c
    move-object v2, v1

    :goto_2
    if-eqz p2, :cond_d

    .line 327
    invoke-virtual {p2}, Lcom/android/settings/device/DeviceCardInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 328
    invoke-virtual {p2}, Lcom/android/settings/device/DeviceCardInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_d
    if-eqz v1, :cond_e

    .line 331
    array-length v0, v1

    if-le v0, v4, :cond_e

    if-eqz v2, :cond_e

    array-length v0, v2

    if-le v0, v4, :cond_e

    .line 332
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->inner_screen_and_resolution_title:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/device/DeviceCardInfo;->setTitle2(Ljava/lang/String;)V

    .line 333
    aget-object v0, v1, v4

    invoke-virtual {p1, v0}, Lcom/android/settings/device/DeviceCardInfo;->setFirstValue(Ljava/lang/String;)V

    .line 334
    aget-object v0, v2, v4

    invoke-virtual {p1, v0}, Lcom/android/settings/device/DeviceCardInfo;->setSecondValue(Ljava/lang/String;)V

    .line 336
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->outer_screen_and_resolution_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settings/device/DeviceCardInfo;->setTitle2(Ljava/lang/String;)V

    .line 337
    array-length p0, v1

    sub-int/2addr p0, v4

    aget-object p0, v1, p0

    invoke-virtual {p2, p0}, Lcom/android/settings/device/DeviceCardInfo;->setFirstValue(Ljava/lang/String;)V

    .line 338
    array-length p0, v2

    sub-int/2addr p0, v4

    aget-object p0, v2, p0

    invoke-virtual {p2, p0}, Lcom/android/settings/device/DeviceCardInfo;->setSecondValue(Ljava/lang/String;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public addBasicInfoCard(Lcom/android/settings/device/DeviceCardInfo;)V
    .locals 2

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mBasicInfoCards:[Lcom/android/settings/device/DeviceCardInfo;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 383
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/settings/device/DeviceCardInfo;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/settings/device/DeviceCardInfo;

    iput-object p1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mBasicInfoCards:[Lcom/android/settings/device/DeviceCardInfo;

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isCardsInitComplete()Z

    move-result p1

    if-nez p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mBasicInfoCards:[Lcom/android/settings/device/DeviceCardInfo;

    iput-object p1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mDisplayCards:[Lcom/android/settings/device/DeviceCardInfo;

    .line 387
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mAdapter:Lcom/android/settings/device/DeviceInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/device/DeviceInfoAdapter;->setDataList([Lcom/android/settings/device/DeviceCardInfo;)V

    .line 389
    :cond_0
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mAdapter:Lcom/android/settings/device/DeviceInfoAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public covertToMiui14CardsStyle()V
    .locals 4

    .line 432
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 435
    :cond_0
    iget v1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->DEVICES_INFO_ITEMS_COUNT:I

    new-array v1, v1, [Lcom/android/settings/device/DeviceCardInfo;

    const/4 v2, 0x0

    .line 436
    aget-object v0, v0, v2

    aput-object v0, v1, v2

    .line 437
    invoke-virtual {v0, v2}, Lcom/android/settings/device/DeviceCardInfo;->setType(I)V

    .line 438
    :goto_0
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 439
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/settings/device/DeviceCardInfo;->getIndex()I

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->getIndexMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    aget-object v3, v3, v2

    aput-object v3, v1, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    :cond_2
    iput-object v1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    :cond_3
    :goto_1
    return-void
.end method

.method public getCardByIndex(I)Lcom/android/settings/device/DeviceCardInfo;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    invoke-virtual {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->getIndexMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getCards()[Lcom/android/settings/device/DeviceCardInfo;
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    return-object p0
.end method

.method public getIndexMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 107
    iget-boolean p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isUseMiui15CardStyle:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->INDEX_MAP_MIUI15:Ljava/util/Map;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->INDEX_MAP:Ljava/util/Map;

    :goto_0
    return-object p0
.end method

.method public getRamInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 422
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ja"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "G"

    .line 425
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 426
    invoke-virtual {p2, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "\\s"

    .line 428
    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public isCardsInitComplete()Z
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mIsCardsInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setMemoryValueAndIndex(Lcom/android/settings/device/DeviceCardInfo;)V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getTotaolRam()Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/special/ExternalRamController;->isChecked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->getRamInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "+"

    .line 413
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/special/ExternalRamController;->getBdSizeInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x5

    .line 414
    invoke-virtual {p1, p0}, Lcom/android/settings/device/DeviceCardInfo;->setIndex(I)V

    .line 415
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showBasicInfoGridView(Landroid/view/View;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mIsCardsInitCompleted:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->buildGridView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showBasicInfoGridView(Landroid/view/View;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 120
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->showGridView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showGridView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mIsCardsInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/android/settings/device/ParseMiShopDataUtils;->showBasicItems(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-direct {p0, p2, p5}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->initData(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_1
    iget-object p2, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mIsCardsInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/16 v0, 0x8

    if-nez p2, :cond_2

    if-nez p4, :cond_2

    const-string p0, "DeviceBasicInfoPresenter"

    const-string p2, "card init not complete"

    .line 131
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 134
    :cond_2
    iget-object p2, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mIsCardsInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    .line 135
    invoke-direct {p0, p5}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->initBasicInfo(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->updateCameraInfo(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, v0, :cond_4

    const/4 p2, 0x0

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->buildGridView(Landroid/view/View;)V

    goto :goto_0

    .line 142
    :cond_4
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mAdapter:Lcom/android/settings/device/DeviceInfoAdapter;

    if-eqz p0, :cond_5

    .line 143
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    :goto_0
    return-void
.end method

.method public updateCameraInfo(Ljava/lang/String;)V
    .locals 9

    .line 230
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mIsCardsInitCompleted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/android/settings/device/ParseMiShopDataUtils;->getDataSuccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 236
    :cond_1
    invoke-static {p1}, Lcom/android/settings/device/ParseMiShopDataUtils;->getAllParamData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 237
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/device/ParseMiShopDataUtils;->showBasicItems(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 240
    :cond_2
    invoke-static {p1}, Lcom/android/settings/device/ParseMiShopDataUtils;->getFrontCameraPixel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lcom/android/settings/device/ParseMiShopDataUtils;->isCameraPixelEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 244
    :cond_3
    invoke-static {p1}, Lcom/android/settings/device/ParseMiShopDataUtils;->getRearCameraPixel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 245
    iget-object v1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/settings/R$string;->camera_front:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/settings/R$string;->camera_rear:I

    .line 247
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    iget-object v7, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    invoke-virtual {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->getIndexMap()Ljava/util/Map;

    move-result-object p0

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v7, p0

    if-eqz p0, :cond_4

    .line 251
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setFirstValue(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setSecondValue(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, v2}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public updateCardByIndex(ILcom/android/settings/device/DeviceCardInfo;)V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mCards:[Lcom/android/settings/device/DeviceCardInfo;

    invoke-virtual {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->getIndexMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p2, v0, p1

    .line 406
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mAdapter:Lcom/android/settings/device/DeviceInfoAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
