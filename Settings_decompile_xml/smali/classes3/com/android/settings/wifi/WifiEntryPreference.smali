.class public Lcom/android/settings/wifi/WifiEntryPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "WifiEntryPreference.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiEntryPreference$OnButtonClickListener;,
        Lcom/android/settings/wifi/WifiEntryPreference$UserBadgeCache;
    }
.end annotation


# static fields
.field private static final FRICTION_ATTRS:[I

.field private static final STATE_SECURED:[I

.field public static final WIFI_CONNECTION_STRENGTH:[I


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private final mIconInjector:Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;

.field private mIsConnected:Z

.field private mIsMeteredHint:Z

.field private mLevel:I

.field private mOnButtonClickListener:Lcom/android/settings/wifi/WifiEntryPreference$OnButtonClickListener;

.field private mShowX:Z

.field protected mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field protected mWifiStandard:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 75
    sget v0, Lcom/android/settingslib/R$attr;->state_encrypted:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiEntryPreference;->STATE_SECURED:[I

    .line 79
    sget v0, Lcom/android/settingslib/R$attr;->wifi_friction:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiEntryPreference;->FRICTION_ATTRS:[I

    .line 86
    sget v0, Lcom/android/settingslib/R$string;->accessibility_no_wifi:I

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_one_bar:I

    sget v2, Lcom/android/settingslib/R$string;->accessibility_wifi_two_bars:I

    sget v3, Lcom/android/settingslib/R$string;->accessibility_wifi_three_bars:I

    sget v4, Lcom/android/settingslib/R$string;->accessibility_wifi_signal_full:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiEntryPreference;->WIFI_CONNECTION_STRENGTH:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1

    .line 121
    new-instance v0, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;

    invoke-direct {v0, p1}, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/WifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;)V
    .locals 1

    .line 127
    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mLevel:I

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mIsMeteredHint:Z

    .line 129
    sget v0, Lcom/android/settingslib/R$layout;->preference_access_point:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 130
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getFrictionStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 131
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 132
    invoke-virtual {p2, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    .line 133
    iput-object p3, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mIconInjector:Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo p3, "wifi"

    .line 136
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 137
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->refresh()V

    return-void
.end method

.method private bindFrictionImage(Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 360
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/android/settings/wifi/WifiEntryPreference;->STATE_SECURED:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 363
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 426
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getEasyTetherConnectedBssid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 462
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "easy_tether_bssid_record_connected"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEasyTetherConnectedDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 454
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "easy_tether_device_name_record_connected"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEasyTetherConnectedSsid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 458
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "easy_tether_ssid_record_connected"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEasyTetherConnectingDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "easy_tether_device_name_record_connecting"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEasyTetherConnectingSsid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 470
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "easy_tether_ssid_record_connecting"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFrictionStateListDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    const/4 v0, 0x0

    .line 341
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget-object v1, Lcom/android/settings/wifi/WifiEntryPreference;->FRICTION_ATTRS:[I

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

    .line 346
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    :cond_0
    return-object v0
.end method

.method private isPad()Z
    .locals 0

    .line 474
    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    return p0
.end method


# virtual methods
.method buildContentDescription()Ljava/lang/CharSequence;
    .locals 6

    .line 371
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 373
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 374
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 375
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ","

    if-nez v3, :cond_0

    .line 376
    filled-new-array {v1, v4, v2}, [Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v2

    if-ltz v2, :cond_1

    .line 379
    sget-object v3, Lcom/android/settings/wifi/WifiEntryPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 380
    aget v2, v3, v2

    .line 381
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v4, v2}, [Ljava/lang/CharSequence;

    move-result-object v1

    .line 380
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v4, v2, v1

    .line 384
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p0

    if-nez p0, :cond_2

    .line 385
    sget p0, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_none:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 386
    :cond_2
    sget p0, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_secured:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v0, 0x2

    aput-object p0, v2, v0

    .line 383
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected getIconColorAttr()I
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->hasInternetAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 314
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const p0, 0x1010435    # @android:attr/colorAccent

    goto :goto_1

    :cond_1
    const p0, 0x1010429    # @android:attr/colorControlNormal

    :goto_1
    return p0
.end method

.method protected getSecondTargetResId()I
    .locals 0

    .line 399
    sget p0, Lcom/android/settingslib/R$layout;->access_point_friction_widget:I

    return p0
.end method

.method public getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method public isConnected()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mIsConnected:Z

    return p0
.end method

.method protected isMeteredHint(Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 148
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 149
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1020010    # @android:id/summary

    .line 150
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    iget v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 160
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    sget v0, Lcom/android/settingslib/R$id;->icon_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 168
    sget v1, Lcom/android/settingslib/R$id;->friction_icon:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 170
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getHelpUriString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 171
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    if-nez v1, :cond_2

    .line 172
    sget v1, Lcom/android/settingslib/R$drawable;->ic_help:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEntryPreference;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 174
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1010429    # @android:attr/colorControlNormal

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 173
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 177
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settingslib/R$string;->help_label:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 178
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_3

    .line 182
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 188
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEntryPreference;->bindFrictionImage(Landroid/widget/ImageView;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settingslib/R$id;->icon_button:I

    if-ne p1, v0, :cond_0

    .line 405
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mOnButtonClickListener:Lcom/android/settings/wifi/WifiEntryPreference$OnButtonClickListener;

    if-eqz p1, :cond_0

    .line 406
    invoke-interface {p1, p0}, Lcom/android/settings/wifi/WifiEntryPreference$OnButtonClickListener;->onButtonClick(Lcom/android/settings/wifi/WifiEntryPreference;)V

    :cond_0
    return-void
.end method

.method public onUpdated()V
    .locals 0

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 6

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 220
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiEntryPreference;->setConnected(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->isPad()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 224
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiEntryPreference;->getEasyTetherConnectingSsid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "WifiEntryPreference"

    if-eqz v1, :cond_3

    .line 225
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiEntryPreference;->getEasyTetherConnectingDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refresh easyTetherConnectingDeviceName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_6

    move-object v0, v1

    goto :goto_2

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiEntryPreference;->getEasyTetherConnectedSsid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 234
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiEntryPreference;->getEasyTetherConnectedDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    if-eqz v1, :cond_4

    .line 237
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiEntryPreference;->getEasyTetherConnectedBssid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 238
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh easyTetherConnectedDeviceName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    :cond_4
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wifiinfo is null, refresh easyTetherConnectedDeviceName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    move-object v0, v4

    .line 251
    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " refresh setTitle "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    .line 257
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiStandard()I

    move-result v1

    .line 258
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    move-result v3

    .line 260
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->getScanResults()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiEntryPreference;->isMeteredHint(Ljava/util/Set;)Z

    move-result v4

    .line 261
    iget v5, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mLevel:I

    if-ne v0, v5, :cond_8

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mShowX:Z

    if-ne v3, v5, :cond_8

    iget v5, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiStandard:I

    if-ne v1, v5, :cond_8

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mIsMeteredHint:Z

    if-eq v5, v4, :cond_9

    .line 263
    :cond_8
    iput v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mLevel:I

    .line 264
    iput v1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiStandard:I

    .line 265
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mShowX:Z

    .line 266
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mIsMeteredHint:Z

    .line 267
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/settings/wifi/WifiEntryPreference;->updateIcon(ZII)V

    .line 268
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 271
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->buildContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setConnected(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mIsConnected:Z

    return-void
.end method

.method public setOnButtonClickListener(Lcom/android/settings/wifi/WifiEntryPreference$OnButtonClickListener;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mOnButtonClickListener:Lcom/android/settings/wifi/WifiEntryPreference$OnButtonClickListener;

    .line 394
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method protected updateIcon(ZII)V
    .locals 1

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    .line 322
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 326
    :cond_0
    iget-object p3, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mIconInjector:Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;

    invoke-virtual {p3, p1, p2}, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;->getIcon(ZI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 330
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getIconColorAttr()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 331
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
