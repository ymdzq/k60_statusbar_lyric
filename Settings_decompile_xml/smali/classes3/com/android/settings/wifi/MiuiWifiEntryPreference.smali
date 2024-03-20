.class public Lcom/android/settings/wifi/MiuiWifiEntryPreference;
.super Lcom/android/settings/wifi/WifiEntryPreference;
.source "MiuiWifiEntryPreference.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;
    }
.end annotation


# static fields
.field static final BATTERY_LEVEL_CONNECTED:[I

.field private static final VENDOR_SPECIFIC_INFO_IOS:[B

.field static final WIFI_6_PIE:[I

.field private static sSuperComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/wifi/MiuiWifiEntryPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArrowClickListener:Landroid/view/View$OnClickListener;

.field private mBatteryLevel:I

.field private mConnectedTimeStamp:J

.field private mContext:Landroid/content/Context;

.field private mHasDetail:Z

.field private mHelper:Lmiuix/preference/ConnectPreferenceHelper;

.field private mIsConnected:Z

.field private mIsFreeWifi:Z

.field private mIsInProvision:Z

.field private mIsMeteredHint:Z

.field private mIsNetworkVerified:Z

.field private mRssiForCompare:I

.field private mShowArrow:Z

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRssiForCompare(Lcom/android/settings/wifi/MiuiWifiEntryPreference;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mRssiForCompare:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x7

    new-array v1, v0, [B

    .line 100
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->VENDOR_SPECIFIC_INFO_IOS:[B

    .line 105
    sget v1, Lcom/android/settings/R$drawable;->ic_wifi_6_signal_0:I

    sget v2, Lcom/android/settings/R$drawable;->ic_wifi_6_signal_1:I

    sget v3, Lcom/android/settings/R$drawable;->ic_wifi_6_signal_2:I

    sget v4, Lcom/android/settings/R$drawable;->ic_wifi_6_signal_3:I

    sget v5, Lcom/android/settings/R$drawable;->ic_wifi_6_signal_4:I

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    sput-object v1, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->WIFI_6_PIE:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 114
    sget v3, Lcom/android/settings/R$drawable;->ap_battery_10_connected:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/android/settings/R$drawable;->ap_battery_20_connected:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/android/settings/R$drawable;->ap_battery_30_connected:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/android/settings/R$drawable;->ap_battery_40_connected:I

    aput v3, v1, v2

    const/4 v2, 0x4

    sget v3, Lcom/android/settings/R$drawable;->ap_battery_50_connected:I

    aput v3, v1, v2

    const/4 v2, 0x5

    sget v3, Lcom/android/settings/R$drawable;->ap_battery_60_connected:I

    aput v3, v1, v2

    const/4 v2, 0x6

    sget v3, Lcom/android/settings/R$drawable;->ap_battery_70_connected:I

    aput v3, v1, v2

    sget v2, Lcom/android/settings/R$drawable;->ap_battery_80_connected:I

    aput v2, v1, v0

    const/16 v0, 0x8

    sget v2, Lcom/android/settings/R$drawable;->ap_battery_90_connected:I

    aput v2, v1, v0

    const/16 v0, 0x9

    sget v2, Lcom/android/settings/R$drawable;->ap_battery_100_connected:I

    aput v2, v1, v0

    sput-object v1, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->BATTERY_LEVEL_CONNECTED:[I

    .line 661
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->sSuperComparator:Ljava/util/Comparator;

    return-void

    nop

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

.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    const/4 p2, 0x1

    .line 79
    iput-boolean p2, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mHasDetail:Z

    .line 80
    iput-boolean p2, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mShowArrow:Z

    const/4 p2, 0x0

    .line 86
    iput-boolean p2, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsConnected:Z

    .line 87
    iput-boolean p2, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsNetworkVerified:Z

    const-wide/16 v0, -0x1

    .line 88
    iput-wide v0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mConnectedTimeStamp:J

    const/4 p2, -0x1

    .line 90
    iput p2, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mBatteryLevel:I

    .line 131
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private deviceIsProvisioned(Landroid/content/Context;)Z
    .locals 1

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "device_provisioned"

    const/4 v0, 0x0

    .line 160
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getBatteryLevel()I
    .locals 1

    .line 619
    iget p0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mBatteryLevel:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    .line 620
    div-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    :cond_1
    :goto_0
    return p0
.end method

.method public static getSuperComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/settings/wifi/MiuiWifiEntryPreference;",
            ">;"
        }
    .end annotation

    .line 696
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->sSuperComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private getWifiEntrySummary()Ljava/lang/String;
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 135
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->deviceIsProvisioned(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsInProvision:Z

    if-eqz p1, :cond_0

    .line 138
    sget p1, Lcom/android/settings/R$layout;->provision_accesspoint_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_1

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 141
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isNetworkRequest()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    sget p1, Lcom/android/settings/R$layout;->accesspoint_preference_default:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_1

    .line 143
    :cond_2
    :goto_0
    sget p1, Lcom/android/settings/R$layout;->accesspoint_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 150
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->updateRssi()V

    return-void
.end method

.method private isPad()Z
    .locals 1

    .line 629
    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p0, :cond_1

    const-string p0, "MiuiQuickHotspotTest"

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isPasswordCanShare()Z
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 422
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 423
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifitrackerlib_wifi_connected_cannot_provide_internet:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSmallScreenForFoldDevice(Landroid/content/Context;)Z
    .locals 0

    .line 578
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isScreenLayoutLarge(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWifiConnected()Z
    .locals 0

    .line 413
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsConnected:Z

    return p0
.end method

.method private startSignalConnectedAnimation()V
    .locals 4

    .line 451
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getScanResults()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->isMeteredHint(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 456
    instance-of p0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_5

    .line 457
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 458
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 459
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 460
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 462
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_1

    .line 465
    :cond_2
    instance-of p0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p0, :cond_5

    .line 466
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_5

    .line 468
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v2

    .line 469
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 470
    instance-of v3, v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v3, :cond_4

    .line 471
    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 472
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 473
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 474
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 476
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method private updateBatteryLevelInternal(I)V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iput p1, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mBatteryLevel:I

    .line 600
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->encryption:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 601
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->BATTERY_LEVEL_CONNECTED:[I

    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->getBatteryLevel()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mView:Landroid/view/View;

    const v0, 0x1020010    # @android:id/summary

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 605
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->ap_connected_battery_level:I

    iget v2, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mBatteryLevel:I

    .line 606
    invoke-static {v2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 605
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 607
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$array;->wifi_status:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x5

    aget-object p0, p0, v1

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateConnectAnimation()V
    .locals 4

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 431
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {v1}, Lmiuix/preference/ConnectPreferenceHelper;->getConnectState()I

    move-result v1

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateConnectAnimation* state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", animationHelperState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hashCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiWifiEntryPreference"

    .line 432
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    .line 437
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {v1, v0}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    .line 438
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->startSignalConnectedAnimation()V

    goto :goto_1

    .line 440
    :cond_1
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v2, :cond_2

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v2, :cond_2

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v2, :cond_2

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v2, :cond_2

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    .line 446
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {p0, v0}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateSignalLevel()V
    .locals 5

    .line 484
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    return-void

    .line 488
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_2

    .line 489
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 491
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    .line 492
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xff

    .line 493
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lt v1, p0, :cond_2

    .line 496
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v2

    .line 497
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x3f

    .line 498
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    .line 692
    sget p0, Lcom/android/settings/R$layout;->preference_widget_wifi_signal:I

    return p0
.end method

.method protected isMeteredHint(Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 505
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 507
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/ScanResult$InformationElement;

    if-eqz v1, :cond_0

    move v2, v0

    .line 509
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 510
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    move-result v3

    const/16 v4, 0xdd

    if-ne v3, v4, :cond_2

    .line 511
    sget-object v3, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->VENDOR_SPECIFIC_INFO_IOS:[B

    array-length v4, v3

    new-array v4, v4, [B

    .line 513
    :try_start_0
    array-length v5, v3

    aget-object v6, v1, v2

    invoke-virtual {v6}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v5, v6, :cond_1

    goto :goto_1

    .line 514
    :cond_1
    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v4, v0, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 515
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 516
    iput-boolean v3, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsMeteredHint:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v3

    .line 520
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    :cond_3
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsMeteredHint:Z

    return v0
.end method

.method public isXiaomiRouter()Z
    .locals 0

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getScanResults()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/wifi/XiaomiRouterUtils;->isXiaomiRouter(Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 164
    invoke-super/range {p0 .. p1}, Lcom/android/settings/wifi/WifiEntryPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 166
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 167
    iput-object v2, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mView:Landroid/view/View;

    .line 168
    iget-object v3, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 169
    new-instance v3, Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lmiuix/preference/ConnectPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;)V

    iput-object v3, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    .line 170
    invoke-virtual {v3, v4}, Lmiuix/preference/ConnectPreferenceHelper;->initConnectState(I)V

    .line 172
    :cond_0
    iget-object v3, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    sget v5, Lcom/android/settings/R$id;->l_highlight:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lmiuix/preference/ConnectPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    .line 173
    iget-object v1, v0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 174
    iget-boolean v3, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsInProvision:Z

    const/4 v6, 0x0

    if-nez v3, :cond_3

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->isWifiConnected()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->isNetworkRequest()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v3, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {v3, v4}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    goto :goto_2

    .line 177
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->updateConnectAnimation()V

    goto :goto_2

    .line 183
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 186
    :cond_4
    iget-object v3, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {v3, v4}, Lmiuix/preference/ConnectPreferenceHelper;->setConnectState(I)V

    goto :goto_2

    .line 184
    :cond_5
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->updateConnectAnimation()V

    .line 189
    :goto_2
    iget-object v3, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "MiuiSettingsPanelActivity"

    .line 189
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 191
    iget-object v3, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mView:Landroid/view/View;

    .line 192
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 193
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 194
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 195
    iget-object v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    :cond_6
    sget v3, Lcom/android/settings/R$id;->preference_detail:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 198
    iget-object v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/android/settings/R$string;->network_detail:I

    iget-object v8, v0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v8}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    iget-boolean v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mHasDetail:Z

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 200
    iget-boolean v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mHasDetail:Z

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mArrowClickListener:Landroid/view/View$OnClickListener;

    goto :goto_3

    :cond_7
    move-object v5, v6

    :goto_3
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-boolean v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mShowArrow:Z

    const/16 v7, 0x8

    if-eqz v5, :cond_8

    move v5, v4

    goto :goto_4

    :cond_8
    move v5, v7

    :goto_4
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x1020016    # @android:id/title

    .line 203
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 206
    iget-boolean v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsFreeWifi:Z

    if-eqz v5, :cond_9

    .line 207
    sget v5, Lcom/android/settings/R$drawable;->free_wifi_indicator:I

    goto :goto_5

    .line 208
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->isXiaomiRouter()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getScanResults()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/XiaomiRouterUtils;->getIndictorDrawableId(Ljava/util/Set;)I

    move-result v5

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->isWifiConnected()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 211
    sget v5, Lcom/android/settings/R$drawable;->xiaomi_wifi_indicator_connected:I

    goto :goto_5

    :cond_a
    move v5, v4

    .line 214
    :cond_b
    :goto_5
    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$dimen;->wifi_title_compound_padding:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 215
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    move v8, v9

    goto :goto_6

    :cond_c
    move v8, v4

    :goto_6
    if-nez v8, :cond_d

    .line 217
    invoke-virtual {v3, v4, v4, v5, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_7

    .line 219
    :cond_d
    invoke-virtual {v3, v5, v4, v4, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 222
    :goto_7
    sget v10, Lcom/android/settings/R$id;->wifi_band:I

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    if-nez v5, :cond_e

    .line 224
    invoke-virtual {v10, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 229
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/wifitrackerlib/WifiEntry;->getScanResults()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v4

    move v13, v12

    :cond_f
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    if-eqz v12, :cond_10

    if-eqz v13, :cond_10

    goto :goto_9

    .line 231
    :cond_10
    invoke-static {v14}, Lcom/android/settingslib/wifi/WifiUtils;->is24GHz(Landroid/net/wifi/ScanResult;)Z

    move-result v15

    if-eqz v15, :cond_11

    move v12, v9

    goto :goto_8

    .line 233
    :cond_11
    invoke-static {v14}, Lcom/android/settingslib/wifi/WifiUtils;->is5GHz(Landroid/net/wifi/ScanResult;)Z

    move-result v14

    if-eqz v14, :cond_f

    move v13, v9

    goto :goto_8

    :cond_12
    :goto_9
    if-eqz v1, :cond_14

    .line 238
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v11

    if-eqz v11, :cond_13

    move v12, v9

    goto :goto_a

    .line 240
    :cond_13
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v1

    if-eqz v1, :cond_14

    move v13, v9

    .line 244
    :cond_14
    :goto_a
    iget-object v1, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 245
    iget-object v11, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v14, Lcom/android/settings/R$drawable;->band_wifi_5g:I

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 246
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v12, :cond_16

    if-eqz v13, :cond_16

    .line 248
    iget-object v14, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/android/settings/R$drawable;->band_wifi_24g:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v5, :cond_18

    .line 250
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v6, Lcom/android/settings/R$dimen;->wifi_title_compound_padding:I

    .line 252
    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 251
    invoke-virtual {v3, v6}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    if-nez v8, :cond_15

    .line 254
    invoke-virtual {v3, v4, v4, v15, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_b

    .line 256
    :cond_15
    invoke-virtual {v3, v15, v4, v4, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_b

    :cond_16
    if-eqz v13, :cond_17

    .line 260
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    :cond_17
    if-nez v13, :cond_18

    .line 262
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_18
    :goto_b
    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v14, 0x3f000000    # 0.5f

    if-eqz v12, :cond_1d

    if-eqz v13, :cond_1d

    if-eqz v5, :cond_21

    .line 267
    iget-object v11, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v15, Lcom/android/settings/R$drawable;->band_wifi_24g:I

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 268
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 269
    iget-object v15, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->isSmallScreenForFoldDevice(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_19

    goto :goto_c

    :cond_19
    const/high16 v6, 0x40000000    # 2.0f

    :goto_c
    mul-float/2addr v1, v6

    add-float/2addr v1, v14

    float-to-int v1, v1

    add-int/2addr v11, v1

    .line 271
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v9, :cond_1a

    move v1, v9

    goto :goto_d

    :cond_1a
    move v1, v4

    :goto_d
    if-eqz v1, :cond_1b

    move v6, v11

    goto :goto_e

    :cond_1b
    move v6, v4

    :goto_e
    if-eqz v1, :cond_1c

    move v11, v4

    .line 272
    :cond_1c
    invoke-virtual {v3, v6, v4, v11, v4}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    goto :goto_11

    :cond_1d
    if-eqz v13, :cond_21

    .line 275
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    mul-float/2addr v1, v6

    add-float/2addr v1, v14

    float-to-int v1, v1

    add-int/2addr v11, v1

    .line 276
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v9, :cond_1e

    move v1, v9

    goto :goto_f

    :cond_1e
    move v1, v4

    :goto_f
    if-eqz v1, :cond_1f

    move v6, v11

    goto :goto_10

    :cond_1f
    move v6, v4

    :goto_10
    if-eqz v1, :cond_20

    move v11, v4

    .line 277
    :cond_20
    invoke-virtual {v3, v6, v4, v11, v4}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    .line 280
    :cond_21
    :goto_11
    iget-boolean v1, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsInProvision:Z

    if-eqz v1, :cond_22

    .line 281
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/settings/R$dimen;->provision_list_left_padding:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 282
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    invoke-virtual {v2, v1, v6, v11, v14}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_12

    .line 284
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/settings/R$dimen;->miuix_preference_item_icon_margin_end:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 285
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    invoke-virtual {v2, v1, v6, v11, v14}, Landroid/view/View;->setPadding(IIII)V

    :goto_12
    const v1, 0x1020006    # @android:id/icon

    .line 288
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v6

    if-lez v6, :cond_23

    .line 290
    sget-object v11, Lcom/android/settings/wifi/WifiEntryPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v14, v11

    if-gt v6, v14, :cond_23

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v14

    sub-int/2addr v6, v9

    aget v6, v11, v6

    invoke-virtual {v14, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 294
    :cond_23
    sget v1, Lcom/android/settings/R$id;->encryption:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 295
    iget-object v6, v0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v6

    const/4 v11, 0x4

    if-eqz v6, :cond_25

    iget-object v6, v0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 296
    invoke-virtual {v6}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v6

    if-ne v6, v11, :cond_24

    goto :goto_13

    :cond_24
    move v6, v4

    goto :goto_14

    :cond_25
    :goto_13
    move v6, v9

    :goto_14
    if-eqz v6, :cond_26

    goto :goto_15

    :cond_26
    move v11, v4

    .line 297
    :goto_15
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v6, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {v6}, Lmiuix/preference/ConnectPreferenceHelper;->getConnectState()I

    move-result v6

    .line 300
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->isWifiConnected()Z

    move-result v11

    const/4 v14, 0x2

    if-eqz v11, :cond_2a

    if-eq v6, v14, :cond_2a

    if-eqz v12, :cond_28

    if-eqz v13, :cond_28

    .line 302
    iget-object v6, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v11, Lcom/android/settings/R$drawable;->band_wifi_24g_connected:I

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v5, :cond_29

    .line 304
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->wifi_title_compound_padding:I

    .line 306
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 305
    invoke-virtual {v3, v5}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    if-nez v8, :cond_27

    .line 308
    invoke-virtual {v3, v4, v4, v11, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_16

    .line 310
    :cond_27
    invoke-virtual {v3, v11, v4, v4, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_16

    :cond_28
    if-eqz v13, :cond_29

    .line 314
    iget-object v3, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$drawable;->band_wifi_5g_connected:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    :cond_29
    :goto_16
    iget-object v3, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$drawable;->ic_wifi_encryption_connected:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 318
    :cond_2a
    iget-object v3, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$drawable;->ic_wifi_encryption:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    :goto_17
    iget-object v1, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const v3, 0x1020010    # @android:id/summary

    .line 322
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->getWifiEntrySummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v4

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v14, :cond_36

    iget-boolean v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsInProvision:Z

    if-nez v5, :cond_36

    .line 326
    iget-object v5, v0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->isPrimaryNetwork()Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v5, v0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v5

    goto :goto_18

    .line 327
    :cond_2b
    iget-object v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/SlaveWifiUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getSlaveWifiCurrentNetwork()Landroid/net/Network;

    move-result-object v5

    .line 328
    :goto_18
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 329
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->isPasswordCanShare()Z

    move-result v8

    const/16 v10, 0x11

    if-eqz v8, :cond_34

    if-eqz v5, :cond_2d

    .line 330
    invoke-virtual {v5, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_2d

    if-eqz v4, :cond_2c

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->getWifiEntrySummary()Ljava/lang/String;

    move-result-object v5

    goto :goto_19

    .line 332
    :cond_2c
    iget-object v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_click_login_wlan:I

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 331
    :goto_19
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1e

    :cond_2d
    if-eqz v5, :cond_2f

    const/16 v8, 0x18

    .line 333
    invoke-virtual {v5, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_2f

    if-eqz v4, :cond_2e

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->getWifiEntrySummary()Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    .line 335
    :cond_2e
    iget-object v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/android/settings/R$array;->wifitrackerlib_wifi_status:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v8

    aget-object v5, v5, v8

    .line 334
    :goto_1a
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1e

    :cond_2f
    if-eqz v5, :cond_31

    .line 336
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-nez v5, :cond_31

    .line 337
    iget-object v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifitrackerlib_wifi_no_internet:I

    .line 338
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->getWifiEntrySummary()Ljava/lang/String;

    move-result-object v8

    if-nez v4, :cond_30

    .line 340
    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 341
    iget-object v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifitrackerlib_wifi_connected_cannot_provide_internet:I

    .line 342
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 341
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 344
    :cond_30
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e

    :cond_31
    if-nez v4, :cond_33

    .line 347
    iget-object v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/wifi/WifiUtils;->isInMishow(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->isNetworkRequest()Z

    move-result v5

    if-eqz v5, :cond_32

    goto :goto_1b

    .line 348
    :cond_32
    iget-object v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_click_share_wlan:I

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1c

    :cond_33
    :goto_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->getWifiEntrySummary()Ljava/lang/String;

    move-result-object v5

    .line 347
    :goto_1c
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e

    :cond_34
    if-eqz v5, :cond_36

    .line 351
    invoke-virtual {v5, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_36

    if-eqz v4, :cond_35

    .line 352
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->getWifiEntrySummary()Ljava/lang/String;

    move-result-object v5

    goto :goto_1d

    .line 353
    :cond_35
    iget-object v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_click_login_wlan:I

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 352
    :goto_1d
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_36
    :goto_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->getWifiEntrySummary()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->wifi_remembered:I

    .line 360
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 361
    iget-object v4, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-eqz v5, :cond_38

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 364
    iget-object v4, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_remembered_disabled_auto_connect:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    :cond_37
    if-nez v4, :cond_38

    .line 368
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->not_allowed_by_ent:I

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 369
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    :cond_38
    :goto_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-boolean v4, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsInProvision:Z

    if-eqz v4, :cond_3c

    .line 374
    iget-object v4, v0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 375
    iget-boolean v4, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsNetworkVerified:Z

    if-eqz v4, :cond_39

    .line 376
    iget-object v1, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wireless_connected:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    :cond_39
    if-eqz v1, :cond_3a

    .line 378
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 379
    iput-boolean v9, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsNetworkVerified:Z

    .line 380
    iget-object v1, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wireless_connected:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 381
    :cond_3a
    iget-wide v4, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mConnectedTimeStamp:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mConnectedTimeStamp:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1b58

    cmp-long v1, v4, v6

    if-lez v1, :cond_3b

    .line 382
    iget-object v1, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_connected_no_internet:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 384
    :cond_3b
    iget-object v1, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_validation:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_3c
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isNetworkRequest()Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    .line 391
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 396
    :cond_3d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->isPad()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget v1, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mBatteryLevel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiEntryPreference;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 397
    iget v1, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mBatteryLevel:I

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->updateBatteryLevelInternal(I)V

    .line 398
    iget-object v0, v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mHelper:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-virtual {v0, v9}, Lmiuix/preference/ConnectPreferenceHelper;->initConnectState(I)V

    :cond_3e
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setArrowClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mArrowClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setWifiConnected(Z)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsNetworkVerified:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 406
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsConnected:Z

    if-eq p1, v0, :cond_1

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mConnectedTimeStamp:J

    .line 409
    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mIsConnected:Z

    return-void
.end method

.method shouldEnabled()Z
    .locals 1

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canDisconnect()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public update(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 533
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->refresh()V

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->shouldEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method

.method public updateBatteryLevel(I)V
    .locals 1

    .line 613
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mBatteryLevel:I

    if-ne v0, p1, :cond_0

    return-void

    .line 614
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->updateBatteryLevelInternal(I)V

    return-void
.end method

.method protected updateIcon(ZII)V
    .locals 0

    .line 638
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->wifi_signal:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getScanResults()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->isMeteredHint(Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 641
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->wifi_metered:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 642
    :cond_0
    iget p2, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiStandard:I

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1

    .line 643
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->wifi6_signal:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 p3, 0x8

    if-ne p2, p3, :cond_3

    .line 646
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DualWifiSettingsActivity"

    .line 645
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 650
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->wifi6_signal:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 652
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->wifi7_signal:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 656
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 658
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->updateSignalLevel()V

    return-void
.end method

.method public updateRssi()V
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getTargetScanResults()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0

    :cond_0
    const/16 v0, -0x7f

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->mRssiForCompare:I

    return-void
.end method
