.class public Lcom/android/settings/device/MiuiMemoryCard;
.super Landroid/widget/FrameLayout;
.source "MiuiMemoryCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/device/MiuiMemoryCard$MemoryInfoCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/device/MemoryInfoHelper$Callback;

.field private mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mView:Landroid/view/View;

.field private totalText:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgettotalText(Lcom/android/settings/device/MiuiMemoryCard;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/MiuiMemoryCard;->totalText:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMemoryCard;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMemoryCard;->initView()V

    return-void
.end method

.method private initView()V
    .locals 6

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiuiLiteVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/util/DeviceLevel;->getMiuiLiteVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiMemoryCard"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->my_device_info_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/MiuiMemoryCard;->mView:Landroid/view/View;

    .line 50
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->storage_settings:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/device/MiuiMemoryCard;->totalText:Landroid/widget/TextView;

    .line 54
    new-instance v0, Lcom/android/settings/device/MiuiMemoryCard$MemoryInfoCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/device/MiuiMemoryCard$MemoryInfoCallback;-><init>(Lcom/android/settings/device/MiuiMemoryCard;)V

    iput-object v0, p0, Lcom/android/settings/device/MiuiMemoryCard;->mCallback:Lcom/android/settings/device/MemoryInfoHelper$Callback;

    .line 55
    invoke-static {v0}, Lcom/android/settings/device/MemoryInfoHelper;->getAvailableMemorySize(Lcom/android/settings/device/MemoryInfoHelper$Callback;)V

    .line 57
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/device/MiuiGuaranteeCard;->isVisible(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide v3, 0x9fa52400L

    invoke-static {v0, v3, v4}, Lcom/android/settings/utils/SettingsFeatures;->isNeedHideShopEntrance(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 59
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$dimen;->my_device_card_background_radius:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 60
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v3

    const/4 v4, 0x3

    .line 61
    invoke-interface {v3, v4}, Lmiuix/animation/ITouchStyle;->setTintMode(I)Lmiuix/animation/ITouchStyle;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 62
    invoke-interface {v3, v4, v5}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    int-to-float v5, v0

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v2, :cond_2

    int-to-float v0, v0

    goto :goto_2

    :cond_2
    move v0, v4

    .line 63
    :goto_2
    invoke-interface {v3, v4, v4, v5, v0}, Lmiuix/animation/ITouchStyle;->setTouchRadius(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    .line 64
    invoke-interface {v0, p0, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    if-eqz v2, :cond_3

    .line 67
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getCallBack()Lcom/android/settings/device/MemoryInfoHelper$Callback;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/device/MiuiMemoryCard;->mCallback:Lcom/android/settings/device/MemoryInfoHelper$Callback;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 77
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.miui.cleanmaster.action.STORAGE_MANAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "key_channel"

    const-string/jumbo v1, "miui_settings"

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object p0, p0, Lcom/android/settings/device/MiuiMemoryCard;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo p0, "setting_About_phone_storage"

    .line 80
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    return-void
.end method

.method public setFragment(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/device/MiuiMemoryCard;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method
