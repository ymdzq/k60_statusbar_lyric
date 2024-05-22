.class public Lcom/android/keyguard/magazine/LockScreenMagazineClockView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public isMiuiOptimizationEnabled:Z

.field public mColor:I

.field public mContentsLayout:Landroid/widget/LinearLayout;

.field public mHasTitleClick:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

.field public final mMiuiOptimizationListener:Lcom/android/keyguard/magazine/LockScreenMagazineClockView$1;

.field public mOwnerInfoTitle:Landroid/widget/TextView;

.field public mProvider:Landroid/widget/TextView;

.field public mSource:Landroid/widget/TextView;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public static $r8$lambda$vYXdDeG5qzuOsM8e4ZxjTAXZHG8(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-wide/16 v0, 0x1f4

    .line 5
    invoke-static {v0, v1}, Lcom/miui/utils/CommonExtensionsKt;->checkFastDoubleClick(J)Z

    .line 7
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    const-class p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 13
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 19
    const-string v0, "lockScreenInfo"

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->startMagazinePreviewActivity(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    .line 33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    const-string v1, "action"

    .line 38
    const-string v2, "click_entry"

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "lock_screen_magazine_action"

    .line 45
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 47
    :cond_0
    return-void
    .line 50
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$1;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)V

    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMiuiOptimizationListener:Lcom/android/keyguard/magazine/LockScreenMagazineClockView$1;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method private getLockScreenMagazineInfoTitle()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 8
    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 10
    if-eqz v0, :cond_2

    .line 12
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 14
    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 18
    iget-boolean v1, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->isTitleCustomized:Z

    .line 20
    if-eqz v1, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->entryTitle:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 33
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 39
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 53
    iget-object p0, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->entryTitle:Ljava/lang/String;

    .line 55
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 58
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    .line 60
    goto :goto_1

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 63
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 73
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 79
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 93
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->title:Ljava/lang/String;

    .line 95
    goto :goto_1

    .line 97
    :cond_3
    const/4 p0, 0x0

    .line 98
    :goto_1
    return-object p0
    .line 99
.end method

.method private getLockScreenMagazineProvider()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->provider:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->provider:Ljava/lang/String;

    .line 16
    :goto_0
    return-object p0
    .line 18
.end method

.method private getLockScreenMagazineSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->source:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->source:Ljava/lang/String;

    .line 16
    :goto_0
    return-object p0
    .line 18
.end method

.method private getOwnerInfo()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 17
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 25
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 32
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 34
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 44
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 46
    move-result v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 p0, 0x0

    .line 55
    :goto_0
    return-object p0
    .line 56
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    sget-object v0, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_OPTIMIZATION:Landroid/net/Uri;

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1, v0}, Lcom/miui/systemui/modulesettings/DeveloperSettings$Companion;->isMiuiOptimizationEnabled(ILandroid/content/Context;)Z

    .line 12
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->isMiuiOptimizationEnabled:Z

    .line 16
    const-class v0, Lcom/miui/systemui/SettingsManager;

    .line 18
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/miui/systemui/SettingsManager;

    .line 24
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMiuiOptimizationListener:Lcom/android/keyguard/magazine/LockScreenMagazineClockView$1;

    .line 26
    invoke-virtual {v0, p0}, Lcom/miui/systemui/SettingsManager;->registerMiuiOptimizationListener(Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;)V

    .line 28
    return-void
    .line 31
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    const-class v0, Lcom/miui/systemui/SettingsManager;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/miui/systemui/SettingsManager;

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMiuiOptimizationListener:Lcom/android/keyguard/magazine/LockScreenMagazineClockView$1;

    .line 13
    iget-object v0, v0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationListeners:Ljava/util/List;

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    return-void
    .line 22
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0517    # @id/lock_screen_magazine_clock_title

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 14
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 16
    if-eqz v1, :cond_0

    .line 18
    const/4 v1, 0x2

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 21
    :cond_0
    const v0, 0x7f0a0528    # @id/lock_screen_ownerinfo_title

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mOwnerInfoTitle:Landroid/widget/TextView;

    .line 33
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 35
    if-nez v0, :cond_1

    .line 37
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mHasTitleClick:Z

    .line 40
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 42
    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$$ExternalSyntheticLambda0;

    .line 44
    invoke-direct {v1, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 52
    if-nez v0, :cond_1

    .line 54
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 58
    const/16 v1, 0x1e

    .line 60
    invoke-static {v1, v0}, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->setViewTouchDelegate(ILandroid/view/View;)V

    .line 62
    :cond_1
    const v0, 0x7f0a0514    # @id/lock_screen_magazine_clock_contents_layout

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/LinearLayout;

    .line 72
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mContentsLayout:Landroid/widget/LinearLayout;

    .line 74
    const v0, 0x7f0a0515    # @id/lock_screen_magazine_clock_provider

    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/TextView;

    .line 83
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mProvider:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0a0516    # @id/lock_screen_magazine_clock_source

    .line 87
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 93
    check-cast v0, Landroid/widget/TextView;

    .line 94
    iput-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mSource:Landroid/widget/TextView;

    .line 96
    return-void
    .line 98
.end method

.method public setMiuiOptimizationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->isMiuiOptimizationEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public final updateColor(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mColor:I

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mColor:I

    .line 6
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 8
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    iget-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mHasTitleClick:Z

    .line 13
    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 17
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object p1

    .line 26
    const v1, 0x7f081246    # @drawable/keyguard_magazine_guide_right_arrow 'res/drawable/keyguard_magazine_guide_right_arrow.xml'

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object p1

    .line 33
    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    .line 34
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 36
    iget v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mColor:I

    .line 38
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 40
    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 42
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/VectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 45
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 48
    invoke-virtual {v1, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 50
    :goto_0
    iget p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mColor:I

    .line 53
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mProvider:Landroid/widget/TextView;

    .line 60
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mSource:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    :cond_1
    return-void
    .line 70
.end method

.method public final updateInfo()V
    .locals 7

    .line 1
    const-class v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 8
    iget-object v1, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 10
    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 12
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 18
    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsKeyguardSupportDisplayMagazine:Z

    .line 20
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 25
    const-class v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 27
    if-eqz v0, :cond_0

    .line 29
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 35
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 43
    if-nez v0, :cond_1

    .line 45
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 47
    if-nez v0, :cond_2

    .line 49
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 55
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 57
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 63
    if-eqz v0, :cond_2

    .line 65
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->getLockScreenMagazineInfoTitle()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 70
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->getLockScreenMagazineProvider()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 74
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->getLockScreenMagazineSource()Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    move-object v0, v1

    .line 80
    move-object v2, v0

    .line 81
    move-object v3, v2

    .line 82
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    move-result v4

    .line 86
    const/16 v5, 0x8

    .line 87
    const/4 v6, 0x0

    .line 89
    if-eqz v4, :cond_4

    .line 90
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 92
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 97
    if-nez v0, :cond_3

    .line 99
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 103
    invoke-static {v6, v0}, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->setViewTouchDelegate(ILandroid/view/View;)V

    .line 105
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mContentsLayout:Landroid/widget/LinearLayout;

    .line 108
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    return-void

    .line 113
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 119
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 124
    if-nez v0, :cond_5

    .line 126
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 130
    const/16 v4, 0x1e

    .line 132
    invoke-static {v4, v0}, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->setViewTouchDelegate(ILandroid/view/View;)V

    .line 134
    :cond_5
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 137
    if-nez v0, :cond_6

    .line 139
    goto :goto_1

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 142
    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->titleClickUri:Ljava/lang/String;

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 146
    move-result v0

    .line 149
    if-nez v0, :cond_7

    .line 150
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;

    .line 152
    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)V

    .line 154
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 157
    new-array v4, v6, [Ljava/lang/Void;

    .line 159
    invoke-virtual {v0, v1, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 161
    goto :goto_1

    .line 164
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mHasTitleClick:Z

    .line 170
    if-eqz v0, :cond_8

    .line 172
    iput-boolean v6, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mHasTitleClick:Z

    .line 174
    iget v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mColor:I

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->updateColor(I)V

    .line 178
    :cond_8
    :goto_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 181
    if-eqz v0, :cond_c

    .line 183
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 185
    move-result v0

    .line 188
    if-eqz v0, :cond_9

    .line 189
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    move-result v0

    .line 194
    if-eqz v0, :cond_9

    .line 195
    goto :goto_4

    .line 197
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mContentsLayout:Landroid/widget/LinearLayout;

    .line 198
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 203
    move-result v0

    .line 206
    if-nez v0, :cond_a

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mProvider:Landroid/widget/TextView;

    .line 209
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mProvider:Landroid/widget/TextView;

    .line 214
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    goto :goto_2

    .line 219
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mProvider:Landroid/widget/TextView;

    .line 220
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 225
    move-result v0

    .line 228
    if-nez v0, :cond_b

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mSource:Landroid/widget/TextView;

    .line 231
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mSource:Landroid/widget/TextView;

    .line 236
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    goto :goto_3

    .line 241
    :cond_b
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mSource:Landroid/widget/TextView;

    .line 242
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    :goto_3
    return-void

    .line 247
    :cond_c
    :goto_4
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mContentsLayout:Landroid/widget/LinearLayout;

    .line 248
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    return-void
    .line 253
.end method

.method public final updateOwnerInfoTitleVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mOwnerInfoTitle:Landroid/widget/TextView;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->isMiuiOptimizationEnabled:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->getOwnerInfo()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mOwnerInfoTitle:Landroid/widget/TextView;

    .line 20
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mOwnerInfoTitle:Landroid/widget/TextView;

    .line 25
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    return-void

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mOwnerInfoTitle:Landroid/widget/TextView;

    .line 32
    const/16 v0, 0x8

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    :cond_1
    return-void
    .line 39
.end method

.method public final updateTextSize()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f0705fc    # @dimen/lock_screen_magazine_clock_title_text_size '15.0dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v1

    .line 16
    const v2, 0x7f0705fa    # @dimen/lock_screen_magazine_clock_provider_source_text_size '10.91dp'

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 24
    int-to-float v0, v0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 28
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mProvider:Landroid/widget/TextView;

    .line 31
    int-to-float v1, v1

    .line 33
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mSource:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 39
    return-void
    .line 42
.end method
