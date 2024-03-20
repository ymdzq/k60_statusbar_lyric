.class public Lcom/android/settings/vpn2/MiuiVpnEditFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "MiuiVpnEditFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mAddVpn:Z

.field private mAllowedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArgs:Landroid/os/Bundle;

.field private mChoice:Z

.field private mContext:Landroid/content/Context;

.field private mDnsServers:Lmiuix/androidbasewidget/widget/StateEditText;

.field private mEditing:Z

.field private mIpsecCaCert:Lcom/android/settings/vpn2/VpnSpinner;

.field private mIpsecIdentifier:Lmiuix/androidbasewidget/widget/StateEditText;

.field private mIpsecSecret:Lmiuix/androidbasewidget/widget/StateEditText;

.field private mIpsecServerCert:Lcom/android/settings/vpn2/VpnSpinner;

.field private mIpsecUserCert:Lcom/android/settings/vpn2/VpnSpinner;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mKeyboardHelper:Lcom/android/settings/utils/KeyboardHelper;

.field private mL2tpSecret:Lmiuix/androidbasewidget/widget/StateEditText;

.field private mMppe:Lcom/android/settings/vpn2/VpnCheckBox;

.field private mName:Lmiuix/androidbasewidget/widget/StateEditText;

.field private mOptions:Lcom/android/settings/vpn2/VpnCheckBox;

.field private mPassword:Lmiuix/androidbasewidget/widget/StateEditText;

.field private mProfile:Lcom/android/internal/net/VpnProfile;

.field private mRoutes:Lmiuix/androidbasewidget/widget/StateEditText;

.field private mSearchDomains:Lmiuix/androidbasewidget/widget/StateEditText;

.field private mServer:Lmiuix/androidbasewidget/widget/StateEditText;

.field private mTotalTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Lcom/android/settings/vpn2/VpnSpinner;

.field private mUsername:Lmiuix/androidbasewidget/widget/StateEditText;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/vpn2/MiuiVpnEditFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOptions(Lcom/android/settings/vpn2/MiuiVpnEditFragment;)Lcom/android/settings/vpn2/VpnCheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mOptions:Lcom/android/settings/vpn2/VpnCheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmChoice(Lcom/android/settings/vpn2/MiuiVpnEditFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mChoice:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    .line 55
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mKeyStore:Landroid/security/KeyStore;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mAddVpn:Z

    return-void
.end method

.method private addAnim(Landroid/view/View;)V
    .locals 3

    .line 250
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const v0, 0x3da3d70a    # 0.08f

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1, v1}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p0, v2, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private changeType(I)V
    .locals 10

    .line 339
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mMppe:Lcom/android/settings/vpn2/VpnCheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    sget v1, Lcom/android/settings/R$id;->l2tp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    sget v3, Lcom/android/settings/R$id;->ipsec_psk:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 344
    sget v4, Lcom/android/settings/R$id;->ipsec_user_cert:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    sget v5, Lcom/android/settings/R$id;->ipsec_identifier_bg:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    sget v6, Lcom/android/settings/R$id;->ipsec_secret_bg:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    sget v7, Lcom/android/settings/R$id;->ipsec_ca_cert:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 348
    sget v8, Lcom/android/settings/R$id;->ipsec_server_cert:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->setUsernamePasswordVisibility(I)V

    .line 351
    invoke-static {p1}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result v2

    const/4 v9, 0x0

    if-nez v2, :cond_0

    .line 353
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 354
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 371
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 372
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 376
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 377
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :pswitch_2
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 385
    :pswitch_3
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 386
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 363
    :pswitch_4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 364
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 365
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 366
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 359
    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mMppe:Lcom/android/settings/vpn2/VpnCheckBox;

    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private convertAllowedIndexToProfileType(I)I
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mAllowedTypes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mTotalTypes:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 574
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 575
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mTotalTypes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "MiuiVpnEditFragment"

    const-string v0, "Allowed or Total vpn types not initialized when converting protileType"

    .line 578
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private getSelectedVpnType()I
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mType:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnSpinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->convertAllowedIndexToProfileType(I)I

    move-result p0

    return p0
.end method

.method private loadCertificates(Lcom/android/settings/vpn2/VpnSpinner;Ljava/util/Collection;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/vpn2/VpnSpinner;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 508
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p3, :cond_0

    const-string p3, ""

    goto :goto_0

    .line 509
    :cond_0
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 512
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 515
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 516
    aput-object p3, v1, v2

    .line 518
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, p3, 0x1

    .line 519
    aput-object v2, v1, p3

    move p3, v3

    goto :goto_1

    .line 513
    :cond_2
    :goto_2
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v1

    .line 523
    :cond_3
    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_layout_integrated:I

    const v2, 0x1020014    # @android:id/text1

    invoke-direct {p2, p0, p3, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 525
    sget p0, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_dropdown_item:I

    invoke-virtual {p2, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 526
    invoke-virtual {p1}, Lcom/android/settings/vpn2/VpnSpinner;->getSpinner()Lmiuix/appcompat/widget/Spinner;

    move-result-object p0

    invoke-virtual {p0, p2}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 527
    invoke-virtual {p1}, Lcom/android/settings/vpn2/VpnSpinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/vpn2/VpnSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 528
    :goto_3
    array-length p0, v1

    if-ge v0, p0, :cond_5

    .line 529
    aget-object p0, v1, v0

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 530
    invoke-virtual {p1, v0}, Lcom/android/settings/vpn2/VpnSpinner;->setSelection(I)V

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method private requiresUsernamePassword(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setTypesByFeature(Landroid/widget/Spinner;)V
    .locals 4

    .line 468
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->vpn_types:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 469
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mTotalTypes:Ljava/util/List;

    .line 470
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mAllowedTypes:Ljava/util/List;

    .line 474
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.ipsec_tunnels"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MiuiVpnEditFragment"

    const-string v2, "FEATURE_IPSEC_TUNNELS missing from system"

    .line 476
    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mAddVpn:Z

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    const/4 v2, 0x6

    iput v2, v1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {v1}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 489
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mAllowedTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 491
    invoke-static {v0}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mAllowedTypes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mAllowedTypes:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 499
    :cond_4
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_layout_integrated:I

    const v3, 0x1020014    # @android:id/text1

    invoke-direct {v1, p0, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 501
    sget p0, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_dropdown_item:I

    invoke-virtual {v1, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 502
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setUsernamePasswordVisibility(I)V
    .locals 2

    .line 537
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->login:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 538
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->requiresUsernamePassword(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 537
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private validate(Z)Z
    .locals 3

    .line 393
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getSelectedVpnType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 394
    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->requiresUsernamePassword(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 395
    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mUsername:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mPassword:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 397
    :cond_1
    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mName:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mServer:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mDnsServers:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 398
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->validateAddresses(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mRoutes:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 399
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->validateAddresses(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 403
    :cond_2
    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget p1, p1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecIdentifier:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    packed-switch v0, :pswitch_data_0

    return v2

    .line 421
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecUserCert:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSpinner;->getSelectedItemPosition()I

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    .line 416
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecSecret:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    :pswitch_2
    return v1

    :cond_6
    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 9

    const/4 p0, 0x0

    :try_start_0
    const-string v0, " "

    .line 428
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    move v1, p0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_4

    aget-object v3, p1, v1

    .line 429
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x2

    const/16 v5, 0x20

    if-eqz p2, :cond_1

    const-string v6, "/"

    .line 435
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 436
    aget-object v6, v3, p0

    .line 437
    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v8, v6

    move v6, v3

    move-object v3, v8

    goto :goto_1

    :cond_1
    move v6, v5

    .line 439
    :goto_1
    invoke-static {v3}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v7, 0x3

    .line 440
    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v7

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    aget-byte v4, v3, p0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    .line 442
    array-length v3, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    if-ltz v6, :cond_3

    if-gt v6, v5, :cond_3

    if-ge v6, v5, :cond_2

    shl-int/2addr v2, v6

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return p0

    :cond_4
    return v2

    :catch_0
    return p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 566
    iget-boolean p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mEditing:Z

    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->validate(Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/BaseEditFragment;->onEditStateChange(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public doInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mContext:Landroid/content/Context;

    .line 89
    :cond_0
    sget p0, Lcom/android/settings/R$layout;->vpn_edit_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 2

    .line 262
    new-instance v0, Lcom/android/internal/net/VpnProfile;

    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mName:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 264
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getSelectedVpnType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 265
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mServer:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mUsername:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mPassword:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 273
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {v1}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mSearchDomains:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mDnsServers:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mRoutes:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    goto :goto_0

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecIdentifier:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 284
    :goto_0
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 299
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mL2tpSecret:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 303
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecUserCert:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnSpinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecUserCert:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 309
    :cond_1
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecCaCert:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnSpinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecCaCert:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecServerCert:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnSpinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecServerCert:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_1

    .line 290
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mL2tpSecret:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 294
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecIdentifier:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 295
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecSecret:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_1

    .line 286
    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mMppe:Lcom/android/settings/vpn2/VpnCheckBox;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnCheckBox;->isChecked()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 318
    iput-boolean p0, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "profile_add"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    sget v0, Lcom/android/settings/R$string;->vpn_create:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->vpn_edit:I

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "show_options_flag"

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mChoice:Z

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v0, "profile_add"

    const/4 v1, 0x1

    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mAddVpn:Z

    .line 106
    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v0, "profile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v2, "profile_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 112
    array-length v2, p1

    if-nez v2, :cond_2

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {v0, p1}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    goto :goto_1

    .line 113
    :cond_3
    :goto_0
    new-instance p1, Lcom/android/internal/net/VpnProfile;

    invoke-direct {p1, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 117
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mEditing:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 585
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onDestroyView()V

    .line 586
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mKeyboardHelper:Lcom/android/settings/utils/KeyboardHelper;

    if-eqz p0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/android/settings/utils/KeyboardHelper;->destroy()V

    :cond_0
    return-void
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

    .line 461
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mType:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {p2}, Lcom/android/settings/vpn2/VpnSpinner;->getSpinner()Lmiuix/appcompat/widget/Spinner;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 462
    invoke-direct {p0, p3}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->convertAllowedIndexToProfileType(I)I

    move-result p1

    .line 463
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->changeType(I)V

    .line 465
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mEditing:Z

    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->validate(Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/BaseEditFragment;->onEditStateChange(Z)V

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
    .locals 1

    .line 255
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 256
    iget-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mEditing:Z

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->validate(Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/BaseEditFragment;->onEditStateChange(Z)V

    return-void
.end method

.method public onSave(Z)V
    .locals 4

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 331
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 332
    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v2

    const-string/jumbo v3, "profile"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v2, "profile_key"

    .line 333
    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "profile_delete"

    .line 334
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    invoke-virtual {p0, v1}, Lcom/android/settings/BaseEditFragment;->onSave(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "show_options_flag"

    .line 95
    iget-boolean p0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mChoice:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 123
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v0, "profile_key"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void

    .line 130
    :cond_0
    sget p2, Lcom/android/settings/R$id;->name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/androidbasewidget/widget/StateEditText;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mName:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 131
    sget p2, Lcom/android/settings/R$id;->server:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/androidbasewidget/widget/StateEditText;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mServer:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 132
    sget p2, Lcom/android/settings/R$id;->username:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/androidbasewidget/widget/StateEditText;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mUsername:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 133
    sget p2, Lcom/android/settings/R$id;->password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/androidbasewidget/widget/StateEditText;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mPassword:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 134
    sget p2, Lcom/android/settings/R$id;->search_domains:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/androidbasewidget/widget/StateEditText;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mSearchDomains:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 135
    sget p2, Lcom/android/settings/R$id;->dns_servers:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/androidbasewidget/widget/StateEditText;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mDnsServers:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 136
    sget p2, Lcom/android/settings/R$id;->routes:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/androidbasewidget/widget/StateEditText;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mRoutes:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mContext:Landroid/content/Context;

    .line 138
    sget p2, Lcom/android/settings/R$id;->show_options:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/vpn2/VpnCheckBox;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mOptions:Lcom/android/settings/vpn2/VpnCheckBox;

    .line 139
    sget p2, Lcom/android/settings/R$id;->mppe:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/vpn2/VpnCheckBox;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mMppe:Lcom/android/settings/vpn2/VpnCheckBox;

    .line 140
    sget p2, Lcom/android/settings/R$id;->type:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/vpn2/VpnSpinner;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mType:Lcom/android/settings/vpn2/VpnSpinner;

    .line 141
    sget p2, Lcom/android/settings/R$id;->l2tp_secret:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/androidbasewidget/widget/StateEditText;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mL2tpSecret:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 142
    sget p2, Lcom/android/settings/R$id;->ipsec_identifier:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/androidbasewidget/widget/StateEditText;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecIdentifier:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 143
    sget p2, Lcom/android/settings/R$id;->ipsec_secret:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/androidbasewidget/widget/StateEditText;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecSecret:Lmiuix/androidbasewidget/widget/StateEditText;

    .line 144
    sget p2, Lcom/android/settings/R$id;->ipsec_user_cert:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/vpn2/VpnSpinner;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecUserCert:Lcom/android/settings/vpn2/VpnSpinner;

    .line 145
    sget p2, Lcom/android/settings/R$id;->ipsec_ca_cert:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/vpn2/VpnSpinner;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecCaCert:Lcom/android/settings/vpn2/VpnSpinner;

    .line 146
    sget p2, Lcom/android/settings/R$id;->ipsec_server_cert:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/vpn2/VpnSpinner;

    iput-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecServerCert:Lcom/android/settings/vpn2/VpnSpinner;

    .line 149
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mServer:Lmiuix/androidbasewidget/widget/StateEditText;

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->proxy_hostname_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 150
    new-instance p2, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;-><init>(Ljava/lang/Integer;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecUserCert:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {p2}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getKeyCertAliases()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->loadCertificates(Lcom/android/settings/vpn2/VpnSpinner;Ljava/util/Collection;ILjava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecCaCert:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {p2}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getCaCertAliases()Ljava/util/Collection;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->vpn_no_ca_cert:I

    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->loadCertificates(Lcom/android/settings/vpn2/VpnSpinner;Ljava/util/Collection;ILjava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecServerCert:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {p2}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getKeyCertAliases()Ljava/util/Collection;

    move-result-object p2

    sget v1, Lcom/android/settings/R$string;->vpn_no_server_cert:I

    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->loadCertificates(Lcom/android/settings/vpn2/VpnSpinner;Ljava/util/Collection;ILjava/lang/String;)V

    .line 158
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mName:Lmiuix/androidbasewidget/widget/StateEditText;

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mType:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {p2}, Lcom/android/settings/vpn2/VpnSpinner;->getSpinner()Lmiuix/appcompat/widget/Spinner;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->setTypesByFeature(Landroid/widget/Spinner;)V

    .line 160
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mAllowedTypes:Ljava/util/List;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mTotalTypes:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mType:Lcom/android/settings/vpn2/VpnSpinner;

    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/android/settings/vpn2/VpnSpinner;->setSelection(I)V

    goto :goto_0

    :cond_1
    const-string p2, "MiuiVpnEditFragment"

    const-string v0, "Allowed or Total vpn types not initialized when setting initial selection"

    .line 163
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mServer:Lmiuix/androidbasewidget/widget/StateEditText;

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mUsername:Lmiuix/androidbasewidget/widget/StateEditText;

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mPassword:Lmiuix/androidbasewidget/widget/StateEditText;

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mSearchDomains:Lmiuix/androidbasewidget/widget/StateEditText;

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mDnsServers:Lmiuix/androidbasewidget/widget/StateEditText;

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mRoutes:Lmiuix/androidbasewidget/widget/StateEditText;

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mMppe:Lcom/android/settings/vpn2/VpnCheckBox;

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v0, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {p2, v0}, Lcom/android/settings/vpn2/VpnCheckBox;->setChecked(Z)V

    .line 172
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mL2tpSecret:Lmiuix/androidbasewidget/widget/StateEditText;

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecIdentifier:Lmiuix/androidbasewidget/widget/StateEditText;

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecSecret:Lmiuix/androidbasewidget/widget/StateEditText;

    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mType:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {p2}, Lcom/android/settings/vpn2/VpnSpinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/vpn2/VpnSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecUserCert:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {p2}, Lcom/android/settings/vpn2/VpnSpinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/vpn2/VpnSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecCaCert:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {p2}, Lcom/android/settings/vpn2/VpnSpinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/vpn2/VpnSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecServerCert:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {p2}, Lcom/android/settings/vpn2/VpnSpinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/vpn2/VpnSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 181
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mName:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mType:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {p2}, Lcom/android/settings/vpn2/VpnSpinner;->getSpinner()Lmiuix/appcompat/widget/Spinner;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 183
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mServer:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 184
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mUsername:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mPassword:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mDnsServers:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mRoutes:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecIdentifier:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecSecret:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecUserCert:Lcom/android/settings/vpn2/VpnSpinner;

    invoke-virtual {p2}, Lcom/android/settings/vpn2/VpnSpinner;->getSpinner()Lmiuix/appcompat/widget/Spinner;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 p2, 0x1

    .line 193
    invoke-direct {p0, p2}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->validate(Z)Z

    move-result v0

    .line 194
    iget-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mEditing:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v0, p2

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mEditing:Z

    if-eqz v0, :cond_6

    .line 197
    sget v0, Lcom/android/settings/R$id;->editor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    sget v0, Lcom/android/settings/R$id;->options:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mChoice:Z

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->changeType(I)V

    .line 202
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mOptions:Lcom/android/settings/vpn2/VpnCheckBox;

    new-instance v2, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;-><init>(Lcom/android/settings/vpn2/MiuiVpnEditFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnCheckBox;->setCheckListener(Lcom/android/settings/vpn2/VpnCheckBox$CheckListener;)V

    .line 210
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 211
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 212
    :cond_5
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mOptions:Lcom/android/settings/vpn2/VpnCheckBox;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnCheckBox;->performClick()Z

    .line 213
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mOptions:Lcom/android/settings/vpn2/VpnCheckBox;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnCheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mChoice:Z

    .line 218
    :cond_6
    sget v0, Lcom/android/settings/R$id;->button_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 219
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->addAnim(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mArgs:Landroid/os/Bundle;

    const-string/jumbo v1, "profile_add"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_7

    .line 222
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 223
    new-instance p2, Lcom/android/settings/vpn2/MiuiVpnEditFragment$2;

    invoke-direct {p2, p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment$2;-><init>(Lcom/android/settings/vpn2/MiuiVpnEditFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/KeyboardHelper;->assistActivity(Landroid/app/Activity;)Lcom/android/settings/utils/KeyboardHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mKeyboardHelper:Lcom/android/settings/utils/KeyboardHelper;

    return-void
.end method
