.class public Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;
.super Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# static fields
.field public static final KEYGUARD_SMART_HOME:Landroid/net/Uri;


# instance fields
.field public mAllFourLinearLayout:Landroid/widget/LinearLayout;

.field public final mBroadcastReceiver:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;

.field public mConsumerIrManager:Landroid/hardware/ConsumerIrManager;

.field public final mContext:Landroid/content/Context;

.field public final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field public mFontScale:F

.field public mFourOrThreeItemTopMargin:I

.field public mGoogleHomeLinearLayout:Landroid/widget/LinearLayout;

.field public mGoogleWalletLinearLayout:Landroid/widget/LinearLayout;

.field public mHasIrEmitter:Z

.field public final mIsInternational:Z

.field public mItemNums:I

.field public mKeyguardGoogleHomeName:Ljava/lang/String;

.field public mKeyguardGoogleWalletName:Ljava/lang/String;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mListener:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;

.field public mLocaleList:Ljava/lang/Object;

.field public mLockScreenMagazineLinearLayout:Landroid/widget/LinearLayout;

.field public mMiWalletLinearLayout:Landroid/widget/LinearLayout;

.field public mRemoteCenterLinearLayout:Landroid/widget/LinearLayout;

.field public mSmartHomeLinearLayout:Landroid/widget/LinearLayout;

.field public mSupportTSMClient:Z

.field public mTorchLightImageView:Landroid/widget/ImageView;

.field public mTwoOrOneItemLeftMargin:I

.field public mTwoOrOneItemRightMargin:I

.field public mTwoOrOneItemTopMargin:I


# direct methods
.method public static -$$Nest$mstartAppStoreToDownload(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    const-string p0, ""

    .line 5
    const v0, 0x7f0a04a0    # @id/keyguard_smarthome_info

    .line 7
    if-ne p1, v0, :cond_0

    .line 10
    const-string p0, "com.xiaomi.smarthome"

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const v0, 0x7f0a0497    # @id/keyguard_remote_controller_info

    .line 15
    if-ne p1, v0, :cond_1

    .line 18
    const-string p0, "com.duokan.phone.remotecontroller"

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    const v0, 0x7f0a048c    # @id/keyguard_lock_screen_magazine_info

    .line 23
    if-ne p1, v0, :cond_2

    .line 26
    sget-object p0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    .line 28
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/miui/utils/IntentUtils;->getMarketDownloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    move-result-object p0

    .line 33
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 34
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 40
    const/4 v0, 0x1

    .line 42
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_1

    .line 46
    :catch_0
    move-exception p0

    .line 47
    const-string p1, "MiuiKeyguardMoveLeftBaseView"

    .line 48
    const-string/jumbo v0, "startAppStoreToDownload"

    .line 50
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :goto_1
    return-void
    .line 56
.end method

.method public static -$$Nest$mupdateItemVisibility(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;ZLandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v1, "show:"

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " item:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    const-string v1, "MiuiKeyguardMoveLeftBaseView"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    if-eqz p2, :cond_1

    .line 33
    if-eqz p1, :cond_0

    .line 35
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mItemNums:I

    .line 41
    add-int/lit8 p1, p1, 0x1

    .line 43
    iput p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mItemNums:I

    .line 45
    goto :goto_0

    .line 47
    :cond_0
    const/16 p0, 0x8

    .line 48
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_1
    :goto_0
    return-void
    .line 53
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.xiaomi.smarthome.ext_cp"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->KEYGUARD_SMART_HOME:Landroid/net/Uri;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mConsumerIrManager:Landroid/hardware/ConsumerIrManager;

    .line 4
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    iput-boolean v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mIsInternational:Z

    .line 5
    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mItemNums:I

    .line 7
    iput-object p2, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mKeyguardGoogleWalletName:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mKeyguardGoogleHomeName:Ljava/lang/String;

    .line 9
    new-instance p2, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;-><init>(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)V

    iput-object p2, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mBroadcastReceiver:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;

    .line 10
    new-instance p2, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$2;-><init>(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)V

    iput-object p2, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 11
    new-instance p2, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;

    invoke-direct {p2, p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;-><init>(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)V

    iput-object p2, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;

    .line 12
    iput-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final initKeyguardLeftItemInfo(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 2
    move-result-object p1

    .line 5
    const v0, 0x7f0a0489    # @id/keyguard_left_list_item_img

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 15
    const p2, 0x7f0a048a    # @id/keyguard_left_list_item_name

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object p0

    .line 33
    const p2, 0x7f070497    # @dimen/keyguard_move_left_litem_textview_name_size '15.0sp'

    .line 34
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result p0

    .line 40
    const/4 p2, 0x0

    .line 41
    int-to-float p0, p0

    .line 42
    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 43
    return-void
    .line 46
.end method

.method public final initKeyguardLeftItemInfos()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->isSupportShowGoogleWallet()Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    const-string v1, "com.google.android.apps.walletnfcrel"

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 17
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 23
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 25
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v1, "Google wallet"

    .line 34
    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mKeyguardGoogleWalletName:Ljava/lang/String;

    .line 36
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mIsInternational:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const-string v3, "com.google.android.apps.chromecast.app"

    .line 40
    if-eqz v1, :cond_2

    .line 42
    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 46
    move-result v4

    .line 49
    invoke-static {v1, v3, v4}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 50
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    move v1, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v1, 0x0

    .line 58
    :goto_1
    if-eqz v1, :cond_4

    .line 59
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 61
    move-result-object v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 67
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 69
    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const-string v1, "Google home"

    .line 78
    :goto_2
    iput-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mKeyguardGoogleHomeName:Ljava/lang/String;

    .line 80
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->isSupportShowGooglePay()Z

    .line 82
    move-result v1

    .line 85
    if-eqz v1, :cond_6

    .line 86
    const-string v1, "com.google.android.apps.nbu.paisa.user"

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 90
    move-result-object v1

    .line 93
    if-eqz v1, :cond_5

    .line 94
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 96
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 98
    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    const-string v0, "Google pay"

    .line 107
    :goto_3
    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mKeyguardGoogleWalletName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    goto :goto_4

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 113
    :cond_6
    :goto_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 116
    move-result-object v0

    .line 119
    const v1, 0x7f1305e1    # @string/keyguard_left_view_lock_wallpaper 'Wallpaper Carousel'

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 126
    const v1, 0x7f0a048c    # @id/keyguard_lock_screen_magazine_info

    .line 127
    const v2, 0x7f081241    # @drawable/keyguard_left_view_magazine 'res/drawable/keyguard_left_view_magazine.xml'

    .line 130
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItemInfo(IILjava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mKeyguardGoogleWalletName:Ljava/lang/String;

    .line 136
    const v1, 0x7f0a0480    # @id/keyguard_google_wallet

    .line 138
    const v2, 0x7f08123e    # @drawable/keyguard_left_view_googlewallet 'res/drawable/keyguard_left_view_googlewallet.xml'

    .line 141
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItemInfo(IILjava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mKeyguardGoogleHomeName:Ljava/lang/String;

    .line 147
    const v1, 0x7f0a047f    # @id/keyguard_google_home

    .line 149
    const v2, 0x7f08123d    # @drawable/keyguard_left_view_googlehome 'res/drawable/keyguard_left_view_googlehome.xml'

    .line 152
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItemInfo(IILjava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 158
    move-result-object v0

    .line 161
    const v1, 0x7f1305df    # @string/keyguard_left_smarthome 'Mi Home'

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 168
    const v1, 0x7f0a04a0    # @id/keyguard_smarthome_info

    .line 169
    const v2, 0x7f081243    # @drawable/keyguard_left_view_smarthome 'res/drawable/keyguard_left_view_smarthome.xml'

    .line 172
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItemInfo(IILjava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 178
    move-result-object v0

    .line 181
    const v1, 0x7f1305de    # @string/keyguard_left_remotecentral 'Mi Remote'

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 188
    const v1, 0x7f0a0497    # @id/keyguard_remote_controller_info

    .line 189
    const v2, 0x7f081242    # @drawable/keyguard_left_view_remotecontroller 'res/drawable/keyguard_left_view_remotecontroller.xml'

    .line 192
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItemInfo(IILjava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 198
    move-result-object v0

    .line 201
    const v1, 0x7f1305dd    # @string/keyguard_left_mi_wallet 'Mi Wallet'

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 205
    move-result-object v0

    .line 208
    const v1, 0x7f0a0490    # @id/keyguard_mi_wallet_info

    .line 209
    const v2, 0x7f08123b    # @drawable/keyguard_left_view_bankcard 'res/drawable/keyguard_left_view_bankcard.xml'

    .line 212
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItemInfo(IILjava/lang/String;)V

    .line 215
    return-void
    .line 218
.end method

.method public final initLeftView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTorchLightImageView:Landroid/widget/ImageView;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 4
    check-cast v1, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->isEnabled()Z

    .line 8
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 12
    new-instance v0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;

    .line 15
    invoke-direct {v0, p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;-><init>(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)V

    .line 17
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 20
    const/4 v1, 0x0

    .line 22
    new-array v1, v1, [Ljava/lang/Void;

    .line 23
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 25
    return-void
    .line 28
.end method

.method public final isSupportShowGooglePay()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mIsInternational:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "IN"

    .line 6
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 18
    const-string v0, "com.google.android.apps.nbu.paisa.user"

    .line 20
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 22
    move-result v1

    .line 25
    invoke-static {p0, v0, v1}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 26
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
    .line 35
.end method

.method public final isSupportShowGoogleWallet()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mIsInternational:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "IN"

    .line 6
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 18
    const-string v0, "com.google.android.apps.walletnfcrel"

    .line 20
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 22
    move-result v1

    .line 25
    invoke-static {p0, v0, v1}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 26
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
    .line 35
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 15
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 18
    check-cast v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 20
    invoke-virtual {v0, p0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTorchLightImageView:Landroid/widget/ImageView;

    .line 25
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 27
    check-cast v1, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 29
    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->isEnabled()Z

    .line 31
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    .line 38
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v1, "package"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 58
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mBroadcastReceiver:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;

    .line 60
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
    .line 65
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 5
    move-result-object v0

    .line 8
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 9
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mLocaleList:Ljava/lang/Object;

    .line 11
    if-eq v1, v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItemInfos()V

    .line 15
    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mLocaleList:Ljava/lang/Object;

    .line 18
    :cond_0
    iget v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mFontScale:F

    .line 20
    cmpl-float v0, v0, p1

    .line 22
    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItemInfos()V

    .line 26
    iput p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mFontScale:F

    .line 29
    :cond_1
    return-void
    .line 31
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 15
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 18
    check-cast v0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 20
    invoke-virtual {v0, p0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 25
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mBroadcastReceiver:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$1;

    .line 27
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 29
    return-void
    .line 32
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a04a0    # @id/keyguard_smarthome_info

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mSmartHomeLinearLayout:Landroid/widget/LinearLayout;

    .line 14
    const v0, 0x7f0a0497    # @id/keyguard_remote_controller_info

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/LinearLayout;

    .line 23
    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mRemoteCenterLinearLayout:Landroid/widget/LinearLayout;

    .line 25
    const v0, 0x7f0a0490    # @id/keyguard_mi_wallet_info

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/LinearLayout;

    .line 34
    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mMiWalletLinearLayout:Landroid/widget/LinearLayout;

    .line 36
    const v0, 0x7f0a048c    # @id/keyguard_lock_screen_magazine_info

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/LinearLayout;

    .line 45
    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mLockScreenMagazineLinearLayout:Landroid/widget/LinearLayout;

    .line 47
    const v0, 0x7f0a0480    # @id/keyguard_google_wallet

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/LinearLayout;

    .line 56
    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mGoogleWalletLinearLayout:Landroid/widget/LinearLayout;

    .line 58
    const v0, 0x7f0a047f    # @id/keyguard_google_home

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/LinearLayout;

    .line 67
    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mGoogleHomeLinearLayout:Landroid/widget/LinearLayout;

    .line 69
    const v0, 0x7f0a047c    # @id/keyguard_electric_torch

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/ImageView;

    .line 78
    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTorchLightImageView:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f0a0491    # @id/keyguard_move_left

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/LinearLayout;

    .line 89
    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mAllFourLinearLayout:Landroid/widget/LinearLayout;

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mSmartHomeLinearLayout:Landroid/widget/LinearLayout;

    .line 93
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mRemoteCenterLinearLayout:Landroid/widget/LinearLayout;

    .line 100
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mMiWalletLinearLayout:Landroid/widget/LinearLayout;

    .line 107
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mLockScreenMagazineLinearLayout:Landroid/widget/LinearLayout;

    .line 114
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTorchLightImageView:Landroid/widget/ImageView;

    .line 121
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mGoogleHomeLinearLayout:Landroid/widget/LinearLayout;

    .line 128
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mGoogleWalletLinearLayout:Landroid/widget/LinearLayout;

    .line 135
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mListener:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$4;

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 142
    move-result-object v0

    .line 145
    const v1, 0x7f070492    # @dimen/keyguard_move_left_layout_top_margint_twoorone '224.0dp'

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 149
    move-result v0

    .line 152
    iput v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTwoOrOneItemTopMargin:I

    .line 153
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 155
    move-result-object v0

    .line 158
    const v1, 0x7f07048e    # @dimen/keyguard_move_left_layout_left_margint_twoorone '16.0dp'

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 162
    move-result v0

    .line 165
    iput v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTwoOrOneItemLeftMargin:I

    .line 166
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 168
    move-result-object v0

    .line 171
    const v1, 0x7f070490    # @dimen/keyguard_move_left_layout_right_margint_twoorone '17.0dp'

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 175
    move-result v0

    .line 178
    iput v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTwoOrOneItemRightMargin:I

    .line 179
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 181
    move-result-object v0

    .line 184
    const v1, 0x7f070491    # @dimen/keyguard_move_left_layout_top_margint_fourorthree '107.7dp'

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 188
    move-result v0

    .line 191
    iput v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mFourOrThreeItemTopMargin:I

    .line 192
    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initKeyguardLeftItemInfos()V

    .line 194
    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->initLeftView()V

    .line 197
    return-void
    .line 200
.end method

.method public final onFlashlightAvailabilityChanged(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onFlashlightChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTorchLightImageView:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public final onFlashlightError()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTorchLightImageView:Landroid/widget/ImageView;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    return-void
    .line 5
.end method
