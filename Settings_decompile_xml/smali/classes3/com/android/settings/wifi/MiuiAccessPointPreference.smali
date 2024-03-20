.class public Lcom/android/settings/wifi/MiuiAccessPointPreference;
.super Lcom/android/settingslib/wifi/AccessPointPreference;
.source "MiuiAccessPointPreference.java"


# static fields
.field private static final VENDOR_SPECIFIC_INFO_IOS:[B

.field static final WIFI_6_PIE:[I

.field private static sSuperComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArrowClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mForSlaveWifi:Z

.field private mHasDetail:Z

.field private mHelper:Lmiuix/preference/ConnectPreferenceHelper;

.field private mIsFreeWifi:Z

.field private mIsInProvision:Z

.field private mShowArrow:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 76
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->VENDOR_SPECIFIC_INFO_IOS:[B

    .line 79
    sget v0, Lcom/android/settings/R$drawable;->ic_wifi_6_signal_0:I

    sget v1, Lcom/android/settings/R$drawable;->ic_wifi_6_signal_1:I

    sget v2, Lcom/android/settings/R$drawable;->ic_wifi_6_signal_2:I

    sget v3, Lcom/android/settings/R$drawable;->ic_wifi_6_signal_3:I

    sget v4, Lcom/android/settings/R$drawable;->ic_wifi_6_signal_4:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->WIFI_6_PIE:[I

    .line 497
    new-instance v0, Lcom/android/settings/wifi/MiuiAccessPointPreference$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/MiuiAccessPointPreference$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->sSuperComparator:Ljava/util/Comparator;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x17t
        -0xet
        0x6t
        0x1t
        0x1t
        0x3t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mHasDetail:Z

    .line 62
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mShowArrow:Z

    return-void
.end method

.method private isMeteredHint(Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    .line 411
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 413
    invoke-virtual {v0}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/ScanResult$InformationElement;

    if-eqz v0, :cond_0

    move v1, p0

    .line 415
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 416
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    move-result v2

    const/16 v3, 0xdd

    if-ne v2, v3, :cond_2

    .line 417
    sget-object v2, Lcom/android/settings/wifi/MiuiAccessPointPreference;->VENDOR_SPECIFIC_INFO_IOS:[B

    array-length v3, v2

    new-array v3, v3, [B

    .line 419
    :try_start_0
    array-length v4, v2

    aget-object v5, v0, v1

    invoke-virtual {v5}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v4, v5, :cond_1

    goto :goto_1

    .line 420
    :cond_1
    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v3, p0, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 421
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v2

    .line 425
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return p0
.end method

.method private startSignalConnectedAnimation()V
    .locals 4

    .line 368
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getScanResults()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiAccessPointPreference;->isMeteredHint(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 373
    instance-of p0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_3

    .line 374
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_1

    .line 377
    :cond_1
    instance-of p0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p0, :cond_3

    .line 378
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    .line 380
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v2

    .line 381
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 382
    instance-of v3, v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v3, :cond_2

    .line 383
    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private updateConnectAnimation()V
    .locals 4

    .line 333
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSlaveDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 335
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {v2}, Lmiuix/preference/ConnectPreferenceHelper;->getConnectState()I

    move-result v2

    .line 336
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_7

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v3, :cond_2

    :cond_1
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 353
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {p0, v3}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 354
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v3, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v3, :cond_4

    :cond_3
    if-eqz v1, :cond_6

    :cond_4
    if-eqz v1, :cond_5

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v3, :cond_5

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v3, :cond_5

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v3, :cond_9

    :cond_5
    if-nez v0, :cond_9

    :cond_6
    if-eqz v2, :cond_9

    .line 363
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    goto :goto_1

    .line 337
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isSlaveConnected()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x1

    if-eq v2, v0, :cond_9

    .line 339
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {v1, v0}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    .line 340
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAccessPointPreference;->startSignalConnectedAnimation()V

    :cond_9
    :goto_1
    return-void
.end method

.method private updateSignalLevel()V
    .locals 5

    .line 391
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 392
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result p0

    .line 393
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_1

    .line 394
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    .line 396
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    .line 397
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xff

    .line 398
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-lt v1, p0, :cond_1

    .line 402
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v2

    .line 403
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x3f

    .line 404
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getPrimaryWifiTitleForSlave()Ljava/lang/String;
    .locals 4

    .line 566
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    invoke-static {v3}, Lcom/android/settingslib/wifi/WifiUtils;->is24GHz(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiUtils;->is5GHz(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 569
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    .line 572
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->band_24G:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 574
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->band_5G:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isXiaomiRouter()Z
    .locals 0

    .line 476
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getScanResults()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/wifi/XiaomiRouterUtils;->isXiaomiRouter(Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 14

    .line 129
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 130
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 131
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mIsInProvision:Z

    if-eqz v1, :cond_0

    .line 132
    sget v1, Lcom/android/settings/R$drawable;->provision_list_item_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    if-nez v1, :cond_1

    .line 135
    new-instance v1, Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lmiuix/preference/ConnectPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;)V

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    sget v2, Lcom/android/settings/R$id;->l_highlight:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lmiuix/preference/ConnectPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    .line 138
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {p1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mIsInProvision:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_4

    .line 142
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {v1, v4}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/settings/R$dimen;->highlight_side_left_margin:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    .line 153
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->highlight_side_right_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 151
    invoke-virtual {p1, v1, v4, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 155
    sget v1, Lcom/android/settings/R$id;->cardview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 157
    sget p1, Lcom/android/settings/R$drawable;->list_item_background:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 143
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->highlight_side_left_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/settings/R$dimen;->highlight_top_margin:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->highlight_side_right_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 143
    invoke-virtual {p1, v1, v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 147
    sget v1, Lcom/android/settings/R$id;->cardview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAccessPointPreference;->updateConnectAnimation()V

    goto :goto_1

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 161
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAccessPointPreference;->updateConnectAnimation()V

    goto :goto_1

    .line 163
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {p1, v4}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    .line 166
    :goto_1
    sget p1, Lcom/android/settings/R$id;->preference_detail:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 167
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->network_detail:I

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 168
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mHasDetail:Z

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 169
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mHasDetail:Z

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mArrowClickListener:Landroid/view/View$OnClickListener;

    :cond_6
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mShowArrow:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_7

    move v1, v4

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isSlaveConnected()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mForSlaveWifi:Z

    if-eqz v1, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mForSlaveWifi:Z

    if-eqz v1, :cond_a

    .line 173
    :cond_9
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    const p1, 0x1020010    # @android:id/summary

    .line 176
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v1, 0x1020016    # @android:id/title

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 180
    iget-boolean v3, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mIsFreeWifi:Z

    if-eqz v3, :cond_b

    .line 181
    sget v3, Lcom/android/settings/R$drawable;->free_wifi_indicator:I

    goto :goto_3

    .line 182
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiAccessPointPreference;->isXiaomiRouter()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 183
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getScanResults()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/XiaomiRouterUtils;->getIndictorDrawableId(Ljava/util/Set;)I

    move-result v3

    .line 184
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isConnected()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isSlaveConnected()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 185
    :cond_c
    sget v3, Lcom/android/settings/R$drawable;->xiaomi_wifi_indicator_connected:I

    goto :goto_3

    :cond_d
    move v3, v4

    .line 188
    :cond_e
    :goto_3
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->wifi_title_compound_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 189
    invoke-virtual {v1, v4, v4, v3, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 191
    sget v5, Lcom/android/settings/R$id;->wifi_band:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-nez v3, :cond_f

    .line 193
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 198
    :cond_f
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getScanResults()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v4

    move v8, v7

    :cond_10
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    .line 199
    invoke-static {v9}, Lcom/android/settingslib/wifi/WifiUtils;->is24GHz(Landroid/net/wifi/ScanResult;)Z

    move-result v11

    if-eqz v11, :cond_11

    move v7, v10

    goto :goto_4

    .line 201
    :cond_11
    invoke-static {v9}, Lcom/android/settingslib/wifi/WifiUtils;->is5GHz(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_10

    move v8, v10

    goto :goto_4

    .line 205
    :cond_12
    iget-object v6, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 206
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v11, Lcom/android/settings/R$drawable;->band_wifi_5g:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 207
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v7, :cond_13

    if-eqz v8, :cond_13

    .line 209
    iget-object v11, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/settings/R$drawable;->band_wifi_24g:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v3, :cond_15

    .line 211
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v13, Lcom/android/settings/R$dimen;->wifi_title_compound_padding:I

    .line 213
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .line 212
    invoke-virtual {v1, v11}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 214
    invoke-virtual {v1, v4, v4, v12, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_5

    :cond_13
    if-eqz v8, :cond_14

    .line 217
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_14
    if-nez v8, :cond_15

    .line 219
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    :goto_5
    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x40a00000    # 5.0f

    if-eqz v7, :cond_19

    if-eqz v8, :cond_19

    if-eqz v3, :cond_1d

    .line 224
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v13, Lcom/android/settings/R$drawable;->band_wifi_24g:I

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 225
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    mul-float/2addr v6, v12

    add-float/2addr v6, v11

    float-to-int v6, v6

    add-int/2addr v9, v6

    .line 226
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v6

    if-ne v6, v10, :cond_16

    move v6, v10

    goto :goto_6

    :cond_16
    move v6, v4

    :goto_6
    if-eqz v6, :cond_17

    move v11, v9

    goto :goto_7

    :cond_17
    move v11, v4

    :goto_7
    if-eqz v6, :cond_18

    move v9, v4

    .line 227
    :cond_18
    invoke-virtual {v1, v11, v4, v9, v4}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    goto :goto_a

    :cond_19
    if-eqz v8, :cond_1d

    .line 230
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    mul-float/2addr v6, v12

    add-float/2addr v6, v11

    float-to-int v6, v6

    add-int/2addr v9, v6

    .line 231
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v6

    if-ne v6, v10, :cond_1a

    move v6, v10

    goto :goto_8

    :cond_1a
    move v6, v4

    :goto_8
    if-eqz v6, :cond_1b

    move v11, v9

    goto :goto_9

    :cond_1b
    move v11, v4

    :goto_9
    if-eqz v6, :cond_1c

    move v9, v4

    .line 232
    :cond_1c
    invoke-virtual {v1, v11, v4, v9, v4}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    .line 235
    :cond_1d
    :goto_a
    iget-boolean v6, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mIsInProvision:Z

    if-eqz v6, :cond_1e

    .line 236
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v9, Lcom/android/settings/R$dimen;->provision_list_left_padding:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    invoke-virtual {v0, v6, v9, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b

    .line 239
    :cond_1e
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v9, Lcom/android/settings/R$dimen;->miuix_preference_item_icon_margin_end:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    invoke-virtual {v0, v6, v9, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    :goto_b
    const v6, 0x1020006    # @android:id/icon

    .line 243
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 244
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v9

    if-lez v9, :cond_1f

    .line 246
    sget-object v11, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v12, v11

    if-gt v9, v12, :cond_1f

    .line 247
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v12

    sub-int/2addr v9, v10

    aget v9, v11, v9

    invoke-virtual {v12, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 250
    :cond_1f
    sget v6, Lcom/android/settings/R$id;->encryption:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 251
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_20

    move v9, v4

    goto :goto_c

    :cond_20
    move v9, v10

    :goto_c
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isSlaveConnected()Z

    move-result v9

    if-eqz v9, :cond_21

    iget-boolean v9, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mForSlaveWifi:Z

    if-eqz v9, :cond_22

    :cond_21
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_23

    iget-boolean v9, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mForSlaveWifi:Z

    if-eqz v9, :cond_23

    .line 253
    :cond_22
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    :cond_23
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isConnected()Z

    move-result v9

    if-nez v9, :cond_25

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isSlaveConnected()Z

    move-result v9

    if-eqz v9, :cond_24

    goto :goto_d

    .line 270
    :cond_24
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_wifi_encryption:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    :cond_25
    :goto_d
    if-eqz v7, :cond_26

    if-eqz v8, :cond_26

    .line 258
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$drawable;->band_wifi_24g_connected:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v3, :cond_27

    .line 260
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->wifi_title_compound_padding:I

    .line 262
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 261
    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 263
    invoke-virtual {v1, v4, v4, v8, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_e

    :cond_26
    if-eqz v8, :cond_27

    .line 266
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->band_wifi_5g_connected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :cond_27
    :goto_e
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_wifi_encryption_connected:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    :goto_f
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 274
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 275
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v0

    .line 276
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isConnected()Z

    move-result v2

    const/4 v3, 0x2

    const/16 v5, 0x11

    if-eqz v2, :cond_30

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v6, :cond_30

    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mIsInProvision:Z

    if-nez v2, :cond_30

    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mForSlaveWifi:Z

    if-nez v2, :cond_30

    .line 277
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 278
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    if-eq v2, v3, :cond_28

    .line 279
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2e

    :cond_28
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 280
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settingslib/R$string;->wifi_connected_no_internet:I

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    if-eqz v1, :cond_2a

    .line 282
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    if-eqz v0, :cond_29

    .line 283
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPointSummary()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 284
    :cond_29
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_click_login_wlan:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    :cond_2a
    if-eqz v1, :cond_2b

    const/16 v2, 0x10

    .line 285
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 286
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    :cond_2b
    if-nez v0, :cond_2d

    .line 288
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiUtils;->isInMishow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_11

    .line 289
    :cond_2c
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_click_share_wlan:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_2d
    :goto_11
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPointSummary()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_12
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    :cond_2e
    if-eqz v1, :cond_39

    .line 292
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_39

    if-eqz v0, :cond_2f

    .line 293
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPointSummary()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 294
    :cond_2f
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_click_login_wlan:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 297
    :cond_30
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isSlaveConnected()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSlaveDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v6, :cond_39

    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mIsInProvision:Z

    if-nez v2, :cond_39

    .line 298
    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mForSlaveWifi:Z

    if-nez v2, :cond_32

    if-eqz v0, :cond_31

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->dual_wifi_acceleration:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPointSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 300
    :cond_31
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->dual_wifi_acceleration:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_14
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_19

    .line 302
    :cond_32
    new-instance v2, Lcom/android/settingslib/wifi/SlaveWifiUtils;

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/settingslib/wifi/SlaveWifiUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getSlaveWifiCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 303
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 304
    invoke-virtual {v2, v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSlaveSettingsSummary(Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settingslib/R$string;->wifi_connected_no_internet:I

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    if-eqz v1, :cond_34

    .line 306
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_34

    if-eqz v0, :cond_33

    .line 307
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPointSummary()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 308
    :cond_33
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_click_login_wlan:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_34
    if-nez v0, :cond_36

    .line 310
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiUtils;->isInMishow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_16

    .line 311
    :cond_35
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_click_share_wlan:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_36
    :goto_16
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPointSummary()Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_37
    if-eqz v1, :cond_39

    .line 314
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_39

    if-eqz v0, :cond_38

    .line 315
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPointSummary()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 316
    :cond_38
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_click_login_wlan:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_18
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_39
    :goto_19
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mForSlaveWifi:Z

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isSlaveConnected()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->wifi_remembered:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_3a
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mForSlaveWifi:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 323
    invoke-virtual {v0, v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSlaveSettingsSummary(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$string;->wifi_remembered:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 324
    :cond_3b
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 325
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 326
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 327
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAccessPointPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_remembered_disabled_auto_connect:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3c
    return-void
.end method

.method protected updateIcon(IILandroid/content/Context;)V
    .locals 0

    .line 485
    sget p1, Lcom/android/settings/R$drawable;->wifi_signal:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 486
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getScanResults()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/MiuiAccessPointPreference;->isMeteredHint(Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 487
    sget p1, Lcom/android/settings/R$drawable;->wifi_metered:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 492
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 494
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAccessPointPreference;->updateSignalLevel()V

    return-void
.end method
