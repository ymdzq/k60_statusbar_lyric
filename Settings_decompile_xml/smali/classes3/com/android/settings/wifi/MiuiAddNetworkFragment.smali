.class public Lcom/android/settings/wifi/MiuiAddNetworkFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "MiuiAddNetworkFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static final UNDESIRED_CERTIFICATES:[Ljava/lang/String;


# instance fields
.field private mAccessPointSecurity:I

.field private mContext:Landroid/content/Context;

.field private mDoNotProvideEapUserCertString:Ljava/lang/String;

.field private mDoNotValidateEapServerString:Ljava/lang/String;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mEapDomainView:Landroid/widget/TextView;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mEapUserCertSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mHiddenGbkSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mHiddenGbkSpinnerParent:Landroid/widget/LinearLayout;

.field private mHiddenSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mInstallCertsString:Ljava/lang/String;

.field private mIpFieldsSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mIpFieldsSpinnerParent:Landroid/widget/LinearLayout;

.field private mIsTrustOnFirstUseSupported:Z

.field private mLPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mMaxSsidLength:I

.field private mMultipleCertSetString:Ljava/lang/String;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;

.field private mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

.field private mPhase2Spinner:Lmiuix/appcompat/widget/Spinner;

.field private mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;

.field private mPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mProxySettingsSpinnerParent:Landroid/widget/LinearLayout;

.field private mSecuritySpinner:Lmiuix/appcompat/widget/Spinner;

.field private mSimCardSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mSimDisplayNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSsidView:Landroid/widget/TextView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTextViewChangedHandler:Landroid/os/Handler;

.field private mTrustOnFirstUseString:Ljava/lang/String;

.field private mUnspecifiedCertString:Ljava/lang/String;

.field private mUseSystemCertsString:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$OR3_04iLtHKKPRn5srL_rVVisSQ(Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->lambda$loadCertificates$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eHClf9HBB33J6UaDaywXxNUQ_to(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->lambda$adaptSoftInput$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableSubmitIfAppropriate(Lcom/android/settings/wifi/MiuiAddNetworkFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->enableSubmitIfAppropriate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MacRandSecret"

    const-string v1, "MacRandSapSecret"

    .line 169
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mMaxSsidLength:I

    return-void
.end method

.method private adaptSoftInput(Landroid/app/Activity;)V
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    :cond_0
    if-eqz p0, :cond_1

    .line 324
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/MiuiAddNetworkFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiuiAddNetworkFragment"

    const-string p1, "Resize decorView layout error!"

    .line 344
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private checkSsidLength()V
    .locals 3

    .line 573
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    .line 576
    iget v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mMaxSsidLength:I

    if-le v1, v2, :cond_1

    .line 578
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iget v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mMaxSsidLength:I

    if-gt v1, v2, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/Spannable;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    return-void
.end method

.method private enableSubmitIfAppropriate()V
    .locals 7

    .line 664
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSsidView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_7

    .line 667
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    .line 670
    iget v5, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mAccessPointSecurity:I

    const/4 v6, 0x5

    if-ne v5, v1, :cond_4

    .line 671
    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    move v0, v3

    goto :goto_2

    .line 675
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    if-eq v1, v5, :cond_2

    const/16 v5, 0x1a

    if-ne v1, v5, :cond_3

    :cond_2
    const-string v5, "[0-9A-Fa-f]*"

    .line 678
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    if-eq v1, v6, :cond_4

    const/16 v4, 0xd

    if-eq v1, v4, :cond_4

    goto :goto_1

    .line 689
    :cond_4
    :goto_2
    iget v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mAccessPointSecurity:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    if-ne v1, v6, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    .line 691
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lt v1, v2, :cond_8

    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_7

    goto :goto_3

    :cond_7
    move v3, v0

    .line 695
    :cond_8
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/settings/BaseEditFragment;->onEditStateChange(Z)V

    return-void
.end method

.method private getAndroidKeystoreAliasLoader()Lcom/android/settings/utils/AndroidKeystoreAliasLoader;
    .locals 1

    .line 1020
    new-instance p0, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;-><init>(Ljava/lang/Integer;)V

    return-object p0
.end method

.method private getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 12

    .line 375
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 376
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 377
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mHiddenSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 378
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 380
    iget v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-eqz v1, :cond_1e

    const/16 v5, 0x22

    if-eq v1, v3, :cond_1b

    const/4 v6, 0x2

    if-eq v1, v6, :cond_18

    const/4 v7, 0x0

    const/4 v8, 0x5

    if-eq v1, v4, :cond_2

    if-eq v1, v8, :cond_18

    return-object v7

    .line 422
    :cond_2
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 423
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 424
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 425
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapMethodSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 426
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2Spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    .line 427
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    const-string v9, "MiuiAddNetworkFragment"

    const/4 v10, 0x6

    const/4 v11, 0x4

    if-eqz v1, :cond_4

    if-eq v1, v11, :cond_3

    if-eq v1, v8, :cond_3

    if-eq v1, v10, :cond_3

    .line 477
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 463
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 464
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSimCardSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 465
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 467
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v5

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 468
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_a

    if-eq v5, v3, :cond_9

    if-eq v5, v6, :cond_8

    if-eq v5, v4, :cond_7

    if-eq v5, v11, :cond_6

    if-eq v5, v8, :cond_5

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown phase2 method"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 450
    :cond_5
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 447
    :cond_6
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 444
    :cond_7
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 441
    :cond_8
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 438
    :cond_9
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 435
    :cond_a
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 481
    :cond_b
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapCaCertSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 482
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 483
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 484
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 485
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 486
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_3

    .line 488
    :cond_c
    iget-boolean v5, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mIsTrustOnFirstUseSupported:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mTrustOnFirstUseString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 489
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->enableTrustOnFirstUse(Z)V

    goto :goto_3

    .line 490
    :cond_d
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 491
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v3, "/system/etc/security/cacerts"

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_3

    .line 492
    :cond_e
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_3

    .line 494
    :cond_f
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 501
    :cond_10
    :goto_3
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 502
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ca_cert ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 504
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") and ca_path ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 506
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") should not both be non-null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_11
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapUserCertSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 511
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, ""

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    move-object v2, v5

    .line 517
    :cond_13
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    if-eq v1, v11, :cond_16

    if-eq v1, v8, :cond_16

    if-ne v1, v10, :cond_14

    goto :goto_4

    :cond_14
    if-ne v1, v4, :cond_15

    .line 522
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 523
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_5

    .line 525
    :cond_15
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 526
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapAnonymousView:Landroid/widget/TextView;

    .line 527
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 526
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_5

    .line 519
    :cond_16
    :goto_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 520
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 530
    :goto_5
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 533
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_1f

    .line 534
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 538
    :cond_17
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_18
    if-ne v1, v6, :cond_19

    .line 405
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_6

    .line 407
    :cond_19
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 408
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    .line 411
    :goto_6
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 412
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[0-9A-Fa-f]{64}"

    .line 413
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 414
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_7

    .line 416
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_7

    .line 386
    :cond_1b
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 387
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 388
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 389
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 390
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 391
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xa

    if-eq v1, v6, :cond_1c

    const/16 v6, 0x1a

    if-eq v1, v6, :cond_1c

    const/16 v6, 0x20

    if-ne v1, v6, :cond_1d

    :cond_1c
    const-string v1, "[0-9A-Fa-f]*"

    .line 394
    invoke-virtual {v3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 395
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v1, v2

    goto :goto_7

    .line 397
    :cond_1d
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_7

    .line 382
    :cond_1e
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 545
    :cond_1f
    :goto_7
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mLPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    if-eqz v1, :cond_20

    iget v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_20

    .line 548
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    .line 547
    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->translatePrefValueToMacRandomizedValue(I)I

    move-result p0

    .line 549
    iput p0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    goto :goto_8

    .line 550
    :cond_20
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    if-eqz p0, :cond_21

    .line 553
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    .line 552
    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->translatePrefValueToMacRandomizedValue(I)I

    move-result p0

    .line 554
    iput p0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    :cond_21
    :goto_8
    return-object v0
.end method

.method private getSIMInfo()V
    .locals 5

    .line 784
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 785
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 787
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 789
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 791
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sim_editor_title:I

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 793
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private init()V
    .locals 7

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mAccessPointSecurity:I

    .line 203
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ssid:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSsidView:Landroid/widget/TextView;

    .line 204
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$integer;->wifi_max_ssid_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mMaxSsidLength:I

    if-lez v1, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->type:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 210
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 211
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    .line 213
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->password:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    .line 214
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 216
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 219
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_unspecified:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mUnspecifiedCertString:Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_multiple_cert_added:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mMultipleCertSetString:Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_use_system_certs:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mUseSystemCertsString:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_trust_on_first_use:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mTrustOnFirstUseString:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_do_not_provide_eap_user_cert:I

    .line 224
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_do_not_validate_eap_server:I

    .line 226
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_install_credentials:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mInstallCertsString:Ljava/lang/String;

    .line 229
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->security:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSecuritySpinner:Lmiuix/appcompat/widget/Spinner;

    .line 231
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 232
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isTrustOnFirstUseSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mIsTrustOnFirstUseSupported:Z

    .line 234
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->add_wifi_security_with_sae:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->add_wifi_security:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 236
    :goto_0
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSecuritySpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/settings/MiuiUtils;->setSpinnerAdapter(Landroid/content/Context;[Ljava/lang/String;Lmiuix/appcompat/widget/Spinner;)V

    .line 237
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSecuritySpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSecuritySpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSecuritySpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sim_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSimCardSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 242
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->phase2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2Spinner:Lmiuix/appcompat/widget/Spinner;

    .line 245
    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ca_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapCaCertSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 248
    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->user_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapUserCertSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 250
    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->identity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapIdentityView:Landroid/widget/TextView;

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->anonymous:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapAnonymousView:Landroid/widget/TextView;

    .line 253
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_layout_integrated:I

    .line 255
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->wifi_peap_phase2_entries:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v4, 0x1020014    # @android:id/text1

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    .line 256
    sget v1, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_dropdown_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 258
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    .line 260
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$array;->wifi_ttls_phase2_entries:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v2, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;

    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->privacy_settings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_privacy_settings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mLPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->wifi_privacy_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mLPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/settings/MiuiUtils;->setSpinnerAdapter(Landroid/content/Context;[Ljava/lang/String;Lmiuix/appcompat/widget/Spinner;)V

    .line 267
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/settings/MiuiUtils;->setSpinnerAdapter(Landroid/content/Context;[Ljava/lang/String;Lmiuix/appcompat/widget/Spinner;)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_settings_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mProxySettingsSpinnerParent:Landroid/widget/LinearLayout;

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_settings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->hidden_settings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mHiddenSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->wifi_hidden_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mHiddenSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/settings/MiuiUtils;->setSpinnerAdapter(Landroid/content/Context;[Ljava/lang/String;Lmiuix/appcompat/widget/Spinner;)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mHiddenSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->hidden_gbk_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mHiddenGbkSpinnerParent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ip_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mIpFieldsSpinnerParent:Landroid/widget/LinearLayout;

    .line 289
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ip_settings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mIpFieldsSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 291
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiUtils;->getDefaultWifiPrivacy(Landroid/content/Context;)I

    move-result v0

    .line 293
    invoke-static {v0}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->translateMacRandomizedValueToPrefValue(I)I

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 295
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mLPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 300
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->enableSubmitIfAppropriate()V

    .line 302
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->bg_spinner_parent:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    .line 303
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    .line 304
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->method:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 305
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSecuritySpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 306
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSimCardSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 307
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2Spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 308
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapCaCertSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 309
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapUserCertSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 310
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 311
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mLPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 312
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 313
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mIpFieldsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 314
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mHiddenSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 315
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mHiddenGbkSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    return-void
.end method

.method private static synthetic lambda$adaptSoftInput$0(Landroid/view/View;)V
    .locals 8

    .line 326
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 327
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 329
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int v0, v1, v2

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current screen height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Current covered height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiAddNetworkFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-double v2, v0

    int-to-double v4, v1

    const-wide v6, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 335
    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$loadCertificates$1(Ljava/lang/String;)Z
    .locals 5

    .line 820
    sget-object v0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 821
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private loadCertificates(Lmiuix/appcompat/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/appcompat/widget/Spinner;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 803
    invoke-virtual {p1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 806
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 808
    iget-object p4, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p5, :cond_2

    .line 811
    iget-object p4, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    iget-boolean p4, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mIsTrustOnFirstUseSupported:Z

    if-eqz p4, :cond_1

    .line 813
    iget-object p4, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mTrustOnFirstUseString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    :cond_1
    iget-object p4, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mInstallCertsString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p2, :cond_3

    .line 817
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p4

    if-eqz p4, :cond_3

    .line 818
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/android/settings/wifi/MiuiAddNetworkFragment$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lcom/android/settings/wifi/MiuiAddNetworkFragment$$ExternalSyntheticLambda0;-><init>()V

    .line 819
    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 826
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 818
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 829
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 830
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    :cond_4
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p2, p0, p3, p1}, Lcom/android/settings/MiuiUtils;->setSpinnerAdapter(Landroid/content/Context;[Ljava/lang/String;Lmiuix/appcompat/widget/Spinner;)V

    return-void
.end method

.method private mapPositionToSecurityType(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, "MiuiAddNetworkFragment"

    const-string v0, "Position out of range, unsupport security type."

    .line 656
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 657
    iput p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mAccessPointSecurity:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 653
    iput p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mAccessPointSecurity:I

    goto :goto_0

    .line 650
    :cond_1
    iput p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mAccessPointSecurity:I

    :goto_0
    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 945
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .line 929
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_ca_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapCaCertSpinner:Lmiuix/appcompat/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setSelection(Lmiuix/appcompat/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private setDomainInvisible()V
    .locals 2

    .line 934
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_domain:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 935
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapDomainView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 978
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2Spinner:Lmiuix/appcompat/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setPasswordEapInvisible()V
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_password_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPasswordEapVisible()V
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_password_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPasswordInVisible()V
    .locals 2

    .line 959
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->password_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPasswordVisible()V
    .locals 2

    .line 964
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->password_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_phase2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2Spinner:Lmiuix/appcompat/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setSelection(Lmiuix/appcompat/widget/Spinner;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 984
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p0

    check-cast p0, Landroid/widget/ArrayAdapter;

    .line 985
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 986
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 987
    invoke-virtual {p1, v0}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setSimCardInvisible()V
    .locals 1

    .line 973
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_sim_card:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_user_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapUserCertSpinner:Lmiuix/appcompat/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setSelection(Lmiuix/appcompat/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 5

    .line 837
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_method:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 838
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_domain:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_ca_cert:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 845
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setPasswordInVisible()V

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 892
    :pswitch_0
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 893
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSimCardSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 892
    invoke-virtual {p1, v0, v3, v4}, Lcom/android/settings/MiuiUtils;->setSpinnerAdapter(Landroid/content/Context;[Ljava/lang/String;Lmiuix/appcompat/widget/Spinner;)V

    .line 894
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_sim_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 895
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setPhase2Invisible()V

    .line 896
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setAnonymousIdentInvisible()V

    .line 897
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setCaCertInvisible()V

    .line 898
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setDomainInvisible()V

    .line 899
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setUserCertInvisible()V

    .line 900
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setIdentityInvisible()V

    .line 901
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setPasswordEapInvisible()V

    goto/16 :goto_0

    .line 849
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setPhase2Invisible()V

    .line 850
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setCaCertInvisible()V

    .line 851
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setDomainInvisible()V

    .line 852
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setAnonymousIdentInvisible()V

    .line 853
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setUserCertInvisible()V

    .line 854
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setSimCardInvisible()V

    .line 855
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setPasswordEapVisible()V

    goto :goto_0

    .line 879
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;

    if-eq p1, v0, :cond_0

    .line 880
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 881
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2Spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 883
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_phase2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 884
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 885
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setUserCertInvisible()V

    .line 886
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setSimCardInvisible()V

    .line 887
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setPasswordEapVisible()V

    goto :goto_0

    .line 858
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_user_cert:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 859
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setPhase2Invisible()V

    .line 860
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setAnonymousIdentInvisible()V

    .line 861
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setPasswordEapInvisible()V

    .line 862
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setSimCardInvisible()V

    goto :goto_0

    .line 866
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    if-eq p1, v0, :cond_1

    .line 867
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 868
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2Spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 870
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_phase2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 871
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 872
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->showPeapFields()V

    .line 873
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setUserCertInvisible()V

    .line 874
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setSimCardInvisible()V

    .line 875
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setPasswordEapVisible()V

    .line 909
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    .line 910
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapCaCertSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 911
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mUnspecifiedCertString:Ljava/lang/String;

    .line 912
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mIsTrustOnFirstUseSupported:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mTrustOnFirstUseString:Ljava/lang/String;

    .line 913
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 917
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setDomainInvisible()V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showLPrivacySettingsFields(Z)V
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isConnectedMacRandomizationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_privacy_settings_fields:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showPeapFields()V
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2Spinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1002
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 998
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapIdentityView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private showPrivacySettingsFields(Z)V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isConnectedMacRandomizationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->privacy_settings_fields:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showSecurityFields()V
    .locals 14

    .line 711
    iget v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mAccessPointSecurity:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->security_fields:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 713
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->showPrivacySettingsFields(Z)V

    .line 714
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->showLPrivacySettingsFields(Z)V

    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->security_fields:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 719
    iget v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    .line 720
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->password:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    .line 721
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setPasswordVisible()V

    .line 722
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->eap:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 723
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->showPrivacySettingsFields(Z)V

    .line 724
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->showLPrivacySettingsFields(Z)V

    return-void

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->eap:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 729
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->showPrivacySettingsFields(Z)V

    .line 730
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->showLPrivacySettingsFields(Z)V

    .line 731
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    .line 732
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 734
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapMethodSpinner:Lmiuix/appcompat/widget/Spinner;

    if-nez v0, :cond_4

    .line 735
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->getSIMInfo()V

    .line 736
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->method:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapMethodSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 737
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 738
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->wifi_eap_method:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapMethodSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/settings/MiuiUtils;->setSpinnerAdapter(Landroid/content/Context;[Ljava/lang/String;Lmiuix/appcompat/widget/Spinner;)V

    .line 741
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110139    # @android:bool/config_earcFeatureDisabled_allowed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->eap_method_without_sim_auth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapMethodSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/settings/MiuiUtils;->setSpinnerAdapter(Landroid/content/Context;[Ljava/lang/String;Lmiuix/appcompat/widget/Spinner;)V

    .line 748
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapMethodSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->phase2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2Spinner:Lmiuix/appcompat/widget/Spinner;

    .line 750
    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ca_cert:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapCaCertSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 752
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 753
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->domain:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapDomainView:Landroid/widget/TextView;

    .line 754
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 755
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->user_cert:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapUserCertSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 756
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 757
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->sim_card:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSimCardSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 758
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->identity:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapIdentityView:Landroid/widget/TextView;

    .line 759
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->anonymous:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapAnonymousView:Landroid/widget/TextView;

    .line 760
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSimCardSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 762
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->getAndroidKeystoreAliasLoader()Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    move-result-object v0

    .line 763
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapCaCertSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 765
    invoke-virtual {v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getCaCertAliases()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    .line 763
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->loadCertificates(Lmiuix/appcompat/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V

    .line 769
    iget-object v9, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapUserCertSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 771
    invoke-virtual {v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getKeyCertAliases()Ljava/util/Collection;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p0

    .line 769
    invoke-direct/range {v8 .. v13}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->loadCertificates(Lmiuix/appcompat/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V

    .line 775
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPhase2Spinner:Lmiuix/appcompat/widget/Spinner;

    .line 776
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapMethodSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->showEapFieldsByMethod(I)V

    goto :goto_0

    .line 778
    :cond_4
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->showEapFieldsByMethod(I)V

    :goto_0
    return-void
.end method

.method private startActivityForInstallCerts()V
    .locals 4

    .line 632
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 633
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 634
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.certinstaller"

    const-string v3, "com.android.certinstaller.CertInstallerMain"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "certificate_install_usage"

    const-string/jumbo v2, "wifi"

    .line 635
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 562
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/wifi/MiuiAddNetworkFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment$1;-><init>(Lcom/android/settings/wifi/MiuiAddNetworkFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    iget p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mMaxSsidLength:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSsidView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->checkSsidLength()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 359
    sget v0, Lcom/android/settings/R$string;->manually_add_network:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 191
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 192
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->init()V

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->adaptSoftInput(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1025
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1026
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/SettingsActivity;

    if-eqz p1, :cond_0

    .line 1027
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->setNeedAdapterSplitActionbar(Z)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1008
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->show_password:I

    if-ne p1, v0, :cond_1

    .line 1009
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    .line 1010
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/16 p2, 0x90

    goto :goto_0

    :cond_0
    const/16 p2, 0x80

    :goto_0
    or-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setInputType(I)V

    if-ltz p1, :cond_1

    .line 1014
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mPasswordView:Landroid/widget/TextView;

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 177
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 178
    sget p0, Lcom/android/settings/R$layout;->wifi_add_network_layout:I

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

    .line 603
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mSecuritySpinner:Lmiuix/appcompat/widget/Spinner;

    if-ne p1, p2, :cond_0

    .line 604
    invoke-direct {p0, p3}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mapPositionToSecurityType(I)V

    .line 605
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->showSecurityFields()V

    goto :goto_0

    .line 606
    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapMethodSpinner:Lmiuix/appcompat/widget/Spinner;

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEapCaCertSpinner:Lmiuix/appcompat/widget/Spinner;

    if-ne p1, p2, :cond_3

    .line 607
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 608
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mInstallCertsString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 609
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->startActivityForInstallCerts()V

    .line 611
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->showSecurityFields()V

    .line 625
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->enableSubmitIfAppropriate()V

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

.method public onResume()V
    .locals 0

    .line 352
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 353
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public onSave()V
    .locals 3

    .line 364
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "config"

    .line 368
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 370
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/BaseEditFragment;->onSave(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 184
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 185
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mView:Landroid/view/View;

    const-string/jumbo p0, "wifi_add_network"

    const/4 p1, 0x0

    .line 186
    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
