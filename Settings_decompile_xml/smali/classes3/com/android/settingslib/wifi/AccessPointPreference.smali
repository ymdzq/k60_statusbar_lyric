.class public Lcom/android/settingslib/wifi/AccessPointPreference;
.super Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;,
        Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;
    }
.end annotation


# static fields
.field private static final FRICTION_ATTRS:[I

.field private static final STATE_METERED:[I

.field private static final STATE_SECURED:[I

.field public static final WIFI_CONNECTION_STRENGTH:[I


# instance fields
.field protected mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private final mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mDefaultIconResId:I

.field private mForSavedNetworks:Z

.field private mForSlaveWifi:Z

.field private final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private final mIconInjector:Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

.field private mIsConnected:Z

.field private mIsSlaveConnected:Z

.field private mLevel:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mShowDivider:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mWifiSpeed:I

.field private mWifiStandard:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    sget v0, Lcom/android/settingslib/R$attr;->state_encrypted:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 59
    sget v0, Lcom/android/settingslib/R$attr;->state_metered:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    .line 63
    sget v0, Lcom/android/settingslib/R$attr;->wifi_friction:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->FRICTION_ATTRS:[I

    .line 69
    sget v0, Lcom/android/settingslib/R$string;->accessibility_no_wifi:I

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_one_bar:I

    sget v2, Lcom/android/settingslib/R$string;->accessibility_wifi_two_bars:I

    sget v3, Lcom/android/settingslib/R$string;->accessibility_wifi_three_bars:I

    sget v4, Lcom/android/settingslib/R$string;->accessibility_wifi_signal_full:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 84
    iput-boolean p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 86
    iput-boolean p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSlaveWifi:Z

    .line 95
    iput p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    .line 427
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 135
    iput p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    .line 136
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 137
    new-instance p2, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    invoke-direct {p2, p1}, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mIconInjector:Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V
    .locals 9

    .line 149
    invoke-static {p2}, Lcom/android/settingslib/wifi/AccessPointPreference;->getFrictionStateListDrawable(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    const/4 v7, -0x1

    new-instance v8, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    invoke-direct {v8, p2}, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 148
    invoke-direct/range {v0 .. v8}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZLandroid/graphics/drawable/StateListDrawable;ILcom/android/settingslib/wifi/AccessPointPreference$IconInjector;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZLandroid/graphics/drawable/StateListDrawable;ILcom/android/settingslib/wifi/AccessPointPreference$IconInjector;)V
    .locals 1

    .line 163
    invoke-direct {p0, p2}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSlaveWifi:Z

    .line 95
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    .line 427
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 164
    sget v0, Lcom/android/settingslib/R$layout;->preference_access_point:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getWidgetLayoutResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 166
    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 167
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 168
    iput-boolean p5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 169
    invoke-virtual {p1, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    .line 170
    iput p7, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    .line 171
    iput p4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    .line 172
    iput-object p6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 173
    iput-object p8, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mIconInjector:Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    .line 174
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settingslib/R$dimen;->wifi_preference_badge_padding:I

    .line 175
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    return-void
.end method

.method private bindFrictionImage(Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 254
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 258
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isMetered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 263
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 264
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static buildContentDescription(Landroid/content/Context;Landroidx/preference/Preference;Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/CharSequence;
    .locals 4

    .line 401
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 402
    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ","

    if-nez v1, :cond_0

    .line 404
    filled-new-array {v0, v2, p1}, [Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 406
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result p1

    if-ltz p1, :cond_1

    .line 407
    sget-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v3, v1

    if-ge p1, v3, :cond_1

    .line 408
    aget p1, v1, p1

    .line 409
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, v2, p1}, [Ljava/lang/CharSequence;

    move-result-object p1

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object v2, p1, v0

    .line 412
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p2

    if-nez p2, :cond_2

    .line 413
    sget p2, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_none:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 414
    :cond_2
    sget p2, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_secured:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p2, 0x2

    aput-object p0, p1, p2

    .line 411
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static getFrictionStateListDrawable(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    const/4 v0, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->FRICTION_ATTRS:[I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    :cond_0
    return-object v0
.end method

.method private postNotifyChanged()V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 423
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private safeSetDefaultIcon()V
    .locals 1

    .line 268
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method static setTitle(Lcom/android/settingslib/wifi/AccessPointPreference;Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    .line 393
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object p0
.end method

.method public getAccessPointSummary()Ljava/lang/String;
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v0, :cond_0

    .line 365
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSavedNetworkSummary()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 366
    :cond_0
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSlaveWifi:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isSlaveConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 369
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 367
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSlaveSettingsSummary(Z)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getPrimaryWifiTitleForSlave()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method protected getWidgetLayoutResourceId()I
    .locals 0

    .line 179
    sget p0, Lcom/android/settingslib/R$layout;->access_point_friction_widget:I

    return p0
.end method

.method public isConnected()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mIsConnected:Z

    return p0
.end method

.method public isSlaveConnected()Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mIsSlaveConnected:Z

    return p0
.end method

.method protected notifyChanged()V
    .locals 2

    .line 383
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->postNotifyChanged()V

    goto :goto_0

    .line 387
    :cond_0
    invoke-super {p0}, Lmiuix/preference/RadioButtonPreference;->notifyChanged()V

    :goto_0
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 190
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    const v0, 0x1020016    # @android:id/title

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 213
    sget v0, Lcom/android/settingslib/R$id;->friction_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 214
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->bindFrictionImage(Landroid/widget/ImageView;)V

    return-void
.end method

.method public onLevelChanged()V
    .locals 0

    .line 418
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->postNotifyChanged()V

    return-void
.end method

.method public refresh()V
    .locals 6

    .line 291
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 294
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-eq v4, v2, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-eq v0, v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 296
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v4, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 298
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setConnected(Z)V

    .line 301
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSlaveInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 303
    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-eq v5, v2, :cond_3

    .line 304
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    .line 306
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference;->setSlaveConnected(Z)V

    if-eqz v0, :cond_4

    .line 311
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSlaveWifi:Z

    if-eqz v0, :cond_4

    .line 312
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getPrimaryWifiTitleForSlave()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 314
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setTitle(Lcom/android/settingslib/wifi/AccessPointPreference;Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 316
    :goto_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 318
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v2

    .line 319
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiStandard()I

    move-result v4

    .line 321
    iget v5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    if-ne v1, v5, :cond_5

    iget v5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    if-ne v2, v5, :cond_5

    iget v5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiStandard:I

    if-eq v4, v5, :cond_6

    .line 324
    :cond_5
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    .line 325
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    .line 326
    iput v4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiStandard:I

    .line 327
    invoke-virtual {p0, v1, v4, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->updateIcon(IILandroid/content/Context;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->notifyChanged()V

    .line 331
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->updateBadge(Landroid/content/Context;)V

    .line 348
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v0, :cond_7

    .line 349
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSavedNetworkSummary()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 350
    :cond_7
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSlaveWifi:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isSlaveConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    .line 353
    :cond_8
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 351
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSlaveSettingsSummary(Z)Ljava/lang/String;

    move-result-object v0

    .line 356
    :goto_4
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0, p0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference;->buildContentDescription(Landroid/content/Context;Landroidx/preference/Preference;Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setConnected(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mIsConnected:Z

    return-void
.end method

.method public setShowDivider(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mShowDivider:Z

    .line 228
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->notifyChanged()V

    return-void
.end method

.method public setSlaveConnected(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mIsSlaveConnected:Z

    return-void
.end method

.method protected updateBadge(Landroid/content/Context;)V
    .locals 1

    .line 276
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v0, p1}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->-$$Nest$mgetUserBadge(Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method protected updateIcon(IILandroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->safeSetDefaultIcon()V

    return-void

    .line 236
    :cond_0
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    invoke-static {p3, v0}, Lcom/android/settingslib/TronUtils;->logWifiSettingsSpeed(Landroid/content/Context;I)V

    .line 238
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mIconInjector:Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;->getIcon(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 239
    iget-boolean p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    const p2, 0x1010429    # @android:attr/colorControlNormal

    .line 240
    invoke-static {p3, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 241
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->safeSetDefaultIcon()V

    :goto_0
    return-void
.end method
