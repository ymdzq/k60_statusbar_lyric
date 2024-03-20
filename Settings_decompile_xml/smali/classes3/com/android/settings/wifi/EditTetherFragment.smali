.class public Lcom/android/settings/wifi/EditTetherFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "EditTetherFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private is5GHzSapForbiddenRegion:Z

.field private mBandIndex:I

.field private mHiddenSsidIndex:I

.field private mIdentifyIndex:I

.field private mIsIdentifyChanged:Z

.field private mIsShowPasswordChecked:Z

.field private mPassword:Landroid/widget/EditText;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityTypeIndex:I

.field private mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mSpinnerLayoutBgColor:I

.field private mSsid:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/android/settings/wifi/EditTetherFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/EditTetherFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIdentifyIndex(Lcom/android/settings/wifi/EditTetherFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mIdentifyIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSsid(Lcom/android/settings/wifi/EditTetherFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSsid:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBandIndex(Lcom/android/settings/wifi/EditTetherFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mBandIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHiddenSsidIndex(Lcom/android/settings/wifi/EditTetherFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mHiddenSsidIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIdentifyIndex(Lcom/android/settings/wifi/EditTetherFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mIdentifyIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsIdentifyChanged(Lcom/android/settings/wifi/EditTetherFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mIsIdentifyChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSecurityTypeIndex:I

    .line 76
    iput v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mBandIndex:I

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mHiddenSsidIndex:I

    .line 82
    iput-boolean v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->is5GHzSapForbiddenRegion:Z

    .line 84
    const-class v0, Lcom/android/settings/wifi/EditTetherFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/SoftApConfiguration;)I
    .locals 3

    .line 341
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 343
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    .line 344
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method private is5GHzSapForbiddenRegion(Ljava/lang/String;)Z
    .locals 8

    .line 460
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 463
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 464
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "country_codes_hid_sap_5GHz_band"

    const-string v6, "array"

    const-string v7, "android.miui"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 463
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    iget-object v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get limit usage of sap 5GHz band config."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :goto_0
    array-length v3, v2

    move v4, v1

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v3, :cond_2

    aget-object v6, v2, v4

    .line 471
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 472
    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/android/settings/wifi/EditTetherFragment;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Country code matching: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 477
    :cond_2
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p1

    .line 478
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/MiuiUtils;->isSapSupportedBand(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 479
    sget-boolean p0, Lcom/android/settings/RegionUtils;->IS_JP_SB:Z

    if-nez p0, :cond_3

    sget-boolean p0, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-nez p0, :cond_3

    sget-boolean p0, Lcom/android/settings/RegionUtils;->IS_JP_HARDWARE:Z

    if-nez p0, :cond_3

    sget-boolean p0, Lcom/android/settings/RegionUtils;->IS_JP:Z

    if-eqz p0, :cond_4

    :cond_3
    move v1, v5

    :cond_4
    return v1
.end method

.method private isSAPSameBandASWifi()Z
    .locals 4

    .line 322
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 323
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "config_sap_same_band_as_wifi"

    const-string v2, "bool"

    const-string v3, "android.miui"

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 322
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSoftApSsidchanged()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 453
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "wifi_ap_ssid_changed"

    const/4 v1, 0x1

    .line 454
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 455
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private isWifiConnected()Z
    .locals 1

    .line 314
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 315
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 316
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showSecurityFields()V
    .locals 2

    .line 421
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSecurityTypeIndex:I

    if-nez v0, :cond_1

    .line 425
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->fields:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object p0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    return-void

    .line 429
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->fields:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 431
    iget-object p0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private updatePasswordState()V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 436
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    .line 437
    iget-boolean v2, p0, Lcom/android/settings/wifi/EditTetherFragment;->mIsShowPasswordChecked:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x90

    goto :goto_0

    :cond_0
    const/16 v2, 0x80

    :goto_0
    or-int/lit8 v2, v2, 0x1

    .line 436
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    if-ltz v0, :cond_1

    .line 441
    iget-object p0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method private validate()V
    .locals 6

    .line 401
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 405
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->tether_password_illegal_character:I

    invoke-static {v0, v3, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->TAG:Ljava/lang/String;

    const-string v3, "passphrase not ASCII encodable"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 410
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSsid:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    iget v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSecurityTypeIndex:I

    const/16 v4, 0x8

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    .line 411
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lt v3, v4, :cond_4

    :cond_2
    iget v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSecurityTypeIndex:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    .line 412
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lt v3, v4, :cond_4

    :cond_3
    if-nez v0, :cond_5

    .line 414
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/settings/BaseEditFragment;->onEditStateChange(Z)V

    goto :goto_1

    .line 416
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/settings/BaseEditFragment;->onEditStateChange(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 495
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->validate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public buildNewSoftApConfig()Landroid/net/wifi/SoftApConfiguration;
    .locals 5

    .line 352
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 354
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 355
    iget v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mBandIndex:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 356
    iget v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mHiddenSsidIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 358
    iget v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSecurityTypeIndex:I

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return-object v4

    .line 369
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 371
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0

    .line 364
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 366
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0

    .line 360
    :cond_3
    invoke-virtual {v0, v4, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 361
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 379
    sget v0, Lcom/android/settings/R$string;->wifi_tether_configure_ap_text:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 486
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->show_password_img:I

    if-ne p1, v0, :cond_0

    .line 487
    iget-boolean p1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mIsShowPasswordChecked:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mIsShowPasswordChecked:Z

    .line 489
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->updatePasswordState()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->bg_spinner_parent:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSpinnerLayoutBgColor:I

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 89
    sget p0, Lcom/android/settings/R$layout;->wifi_ap_dialog:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 510
    iput p3, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSecurityTypeIndex:I

    .line 511
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->showSecurityFields()V

    .line 512
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->validate()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 306
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 307
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->isSAPSameBandASWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->is5GHzSapForbiddenRegion:Z

    if-nez v0, :cond_0

    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 291
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 292
    iget-boolean v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->is5GHzSapForbiddenRegion:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/android/settings/R$id;->channel_fields:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->isSAPSameBandASWifi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/android/settings/R$id;->channel_fields:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 296
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 295
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 301
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->validate()V

    return-void
.end method

.method public onSave()V
    .locals 3

    const-string v0, "hotspot_config_change"

    const/4 v1, 0x0

    .line 385
    invoke-static {v0, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 387
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->isSoftApSsidchanged()V

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/wifi/EditTetherFragment;->buildNewSoftApConfig()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "config"

    .line 392
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 394
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mIsIdentifyChanged:Z

    if-eqz v0, :cond_1

    .line 395
    iget v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mIdentifyIndex:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/EditTetherFragment;->setHotSpotVendorSpecific(I)V

    .line 397
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/BaseEditFragment;->onSave(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    .line 102
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 103
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/MiuiUtils;->isWpa3SoftApSupport(Landroid/content/Context;)Z

    move-result p2

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v0, :cond_0

    .line 106
    invoke-static {v0}, Lcom/android/settings/wifi/EditTetherFragment;->getSecurityTypeIndex(Landroid/net/wifi/SoftApConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSecurityTypeIndex:I

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 109
    iget v2, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSecurityTypeIndex:I

    if-ne v2, v0, :cond_1

    .line 110
    iget-object v2, p0, Lcom/android/settings/wifi/EditTetherFragment;->TAG:Ljava/lang/String;

    const-string v3, "ERROR: WPA3 in config, but chip not support"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSecurityTypeIndex:I

    .line 114
    :cond_1
    sget v2, Lcom/android/settings/R$id;->security:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/widget/Spinner;

    .line 115
    sget v3, Lcom/android/settings/R$id;->type:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    sget v3, Lcom/android/settings/R$id;->l_security:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    sget v3, Lcom/android/settings/R$id;->ssid:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSsid:Landroid/widget/TextView;

    .line 118
    sget v3, Lcom/android/settings/R$id;->password:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    .line 119
    iget-object v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    const v4, 0x1020014    # @android:id/text1

    if-eqz v3, :cond_4

    .line 120
    iget-object v5, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->mBandIndex:I

    .line 122
    iget-object v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSsid:Landroid/widget/TextView;

    move-object v5, v3

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSelection(I)V

    if-eqz p2, :cond_2

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/settings/R$array;->wifi_ap_security_with_sae:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/settings/R$array;->wifi_ap_security:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 126
    :goto_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_layout_integrated:I

    invoke-direct {v3, v5, v6, v4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 129
    sget p2, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_dropdown_item:I

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 131
    invoke-virtual {v2, v3}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 132
    iget p2, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSecurityTypeIndex:I

    invoke-virtual {v2, p2}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 133
    iget p2, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSecurityTypeIndex:I

    if-eq p2, v1, :cond_3

    if-ne p2, v0, :cond_4

    .line 134
    :cond_3
    iget-object p2, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_4
    iget-object p2, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSsid:Landroid/widget/TextView;

    new-instance v0, Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher;

    new-instance v3, Lcom/android/settings/wifi/EditTetherFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/EditTetherFragment$1;-><init>(Lcom/android/settings/wifi/EditTetherFragment;)V

    const/16 v5, 0x20

    invoke-direct {v0, v5, v3}, Lcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher;-><init>(ILcom/android/settings/MiuiDeviceNameEditFragment$LengthTextWatcher$Inputcallback;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    iget-object p2, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    iget-object p2, p0, Lcom/android/settings/wifi/EditTetherFragment;->mPassword:Landroid/widget/EditText;

    new-instance v0, Lcom/android/settings/wifi/EditTetherFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/EditTetherFragment$2;-><init>(Lcom/android/settings/wifi/EditTetherFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 166
    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 167
    invoke-virtual {v2}, Lmiuix/appcompat/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v2, p2}, Lmiuix/appcompat/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p2

    check-cast p2, Landroid/widget/ArrayAdapter;

    .line 169
    sget v0, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_dropdown_item:I

    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->showSecurityFields()V

    .line 171
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->validate()V

    .line 173
    sget p2, Lcom/android/settings/R$id;->enalbe_identify_iPhone:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/widget/Spinner;

    const-string/jumbo v3, "vendor"

    .line 174
    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "mediatek"

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$System;->getHotSpotVendorSpecific(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "DD0A0017F206010103010000"

    if-eqz v3, :cond_5

    .line 177
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->mIdentifyIndex:I

    goto :goto_1

    .line 179
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/provider/MiuiSettings$System;->setHotSpotVendorSpecific(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    iput v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mIdentifyIndex:I

    .line 183
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/settings/R$array;->ap_identify:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 184
    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_layout_integrated:I

    invoke-direct {v5, v6, v7, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 187
    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 189
    invoke-virtual {p2, v5}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 191
    iget v3, p0, Lcom/android/settings/wifi/EditTetherFragment;->mIdentifyIndex:I

    invoke-virtual {p2, v3}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 192
    new-instance v3, Lcom/android/settings/wifi/EditTetherFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/EditTetherFragment$3;-><init>(Lcom/android/settings/wifi/EditTetherFragment;)V

    invoke-virtual {p2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_2

    .line 205
    :cond_6
    sget v3, Lcom/android/settings/R$id;->identy:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 206
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/16 v5, 0x8

    .line 207
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    :goto_2
    sget v3, Lcom/android/settings/R$id;->choose_channel:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/widget/Spinner;

    .line 211
    iget-object v5, p0, Lcom/android/settings/wifi/EditTetherFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/EditTetherFragment;->is5GHzSapForbiddenRegion(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/wifi/EditTetherFragment;->is5GHzSapForbiddenRegion:Z

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->wifi_ap_choose:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "2.4"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 214
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "5"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 216
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 218
    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v7

    .line 219
    iget-object v8, p0, Lcom/android/settings/wifi/EditTetherFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v5, :cond_a

    .line 220
    :cond_7
    iget-object v7, p0, Lcom/android/settings/wifi/EditTetherFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/wifi/EditTetherFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result v9

    const-string v10, ""

    if-nez v9, :cond_8

    const-string v9, "Device do not support 5GHz "

    goto :goto_3

    :cond_8
    move-object v9, v10

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_9

    const-string v10, " NO country code"

    .line 221
    :cond_9
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " forbid 5GHz"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    .line 224
    iput v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mBandIndex:I

    .line 227
    :cond_a
    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    sget v8, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_layout_integrated:I

    invoke-direct {v5, v6, v8, v4, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 230
    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 232
    invoke-virtual {v3, v5}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 234
    iget v5, p0, Lcom/android/settings/wifi/EditTetherFragment;->mBandIndex:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v1, v5, -0x1

    :goto_4
    invoke-virtual {v3, v1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 235
    new-instance v1, Lcom/android/settings/wifi/EditTetherFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/EditTetherFragment$4;-><init>(Lcom/android/settings/wifi/EditTetherFragment;)V

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 246
    iget-object v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/EditTetherFragment;->mHiddenSsidIndex:I

    .line 247
    sget v1, Lcom/android/settings/R$id;->wifi_ap_hidden_ssid:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/widget/Spinner;

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$array;->wifi_ap_hidden_ssid_config:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 249
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7, v8, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 252
    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 254
    invoke-virtual {v1, v6}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 255
    iget v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mHiddenSsidIndex:I

    invoke-virtual {v1, v0}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 256
    new-instance v0, Lcom/android/settings/wifi/EditTetherFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/EditTetherFragment$5;-><init>(Lcom/android/settings/wifi/EditTetherFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 267
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v0

    iget v4, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSpinnerLayoutBgColor:I

    invoke-virtual {v0, v2, v4}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 268
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSpinnerLayoutBgColor:I

    invoke-virtual {v0, p2, v2}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 269
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSpinnerLayoutBgColor:I

    invoke-virtual {p2, v3, v0}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 270
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/wifi/EditTetherFragment;->mSpinnerLayoutBgColor:I

    invoke-virtual {p2, v1, v0}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 272
    new-instance p2, Lcom/android/settings/wifi/EditTetherFragment$6;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/wifi/EditTetherFragment$6;-><init>(Lcom/android/settings/wifi/EditTetherFragment;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/settings/wifi/EditTetherFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 332
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 333
    invoke-direct {p0}, Lcom/android/settings/wifi/EditTetherFragment;->updatePasswordState()V

    return-void
.end method

.method public setHotSpotVendorSpecific(I)V
    .locals 1

    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "DD0A0017F206010103010000"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p0, p1}, Landroid/provider/MiuiSettings$System;->setHotSpotVendorSpecific(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
