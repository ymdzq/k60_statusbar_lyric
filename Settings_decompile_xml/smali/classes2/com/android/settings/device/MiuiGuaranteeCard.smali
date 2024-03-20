.class public Lcom/android/settings/device/MiuiGuaranteeCard;
.super Landroid/widget/FrameLayout;
.source "MiuiGuaranteeCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mMiCareExpiryTime:Ljava/lang/String;

.field private mMiCareLink:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/android/settings/device/MiuiGuaranteeCard;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/android/settings/device/MiuiGuaranteeCard;->initView()V

    return-void
.end method

.method private initView()V
    .locals 6

    .line 51
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/device/MiuiGuaranteeCard;->isVisible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "micare_expiry_time"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiCareUtils;->getMiCareInfoWithPrefKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/MiuiGuaranteeCard;->mMiCareExpiryTime:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "micare_link"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiCareUtils;->getMiCareInfoWithPrefKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/MiuiGuaranteeCard;->mMiCareLink:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->my_device_info_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->my_device_guarantee:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u81f3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/device/MiuiGuaranteeCard;->mMiCareExpiryTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide v1, 0x9fa52400L

    invoke-static {v0, v1, v2}, Lcom/android/settings/utils/SettingsFeatures;->isNeedHideShopEntrance(Landroid/content/Context;J)Z

    move-result v0

    .line 65
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->my_device_card_background_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 66
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v2

    const/4 v3, 0x3

    .line 67
    invoke-interface {v2, v3}, Lmiuix/animation/ITouchStyle;->setTintMode(I)Lmiuix/animation/ITouchStyle;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    new-array v5, v4, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 68
    invoke-interface {v2, v3, v5}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    int-to-float v5, v1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-eqz v0, :cond_2

    int-to-float v1, v1

    goto :goto_1

    :cond_2
    move v1, v3

    .line 69
    :goto_1
    invoke-interface {v2, v3, v3, v5, v1}, Lmiuix/animation/ITouchStyle;->setTouchRadius(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v2, v4, [Lmiuix/animation/base/AnimConfig;

    .line 70
    invoke-interface {v1, p0, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v4, v4, v4, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public static isVisible(Landroid/content/Context;)Z
    .locals 3

    .line 37
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->isLocalCnAndChinese()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "micare_expiry_time"

    .line 41
    invoke-static {p0, v0}, Lcom/android/settings/device/MiCareUtils;->getMiCareInfoWithPrefKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "micare_link"

    .line 42
    invoke-static {p0, v2}, Lcom/android/settings/device/MiCareUtils;->getMiCareInfoWithPrefKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/android/settings/device/MiuiGuaranteeCard;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/device/MiuiGuaranteeCard;->mMiCareLink:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/android/settings/device/MiuiGuaranteeCard;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/device/MiuiGuaranteeCard;->mMiCareLink:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/settings/device/MiCareUtils;->startActivityWithUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    const-class p0, Lcom/android/settings/device/MiuiMyDeviceSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "\u4fdd\u4fee\u671f"

    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFragment(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/device/MiuiGuaranteeCard;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method
