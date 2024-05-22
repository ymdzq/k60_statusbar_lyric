.class public final Lcom/android/keyguard/magazine/LockScreenMagazineController$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/magazine/LockScreenMagazinePreView$OnPreViewClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreButtonClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string/jumbo p1, "titleLockScreen"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    move-result p1

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 9
    const/4 v0, 0x1

    .line 11
    if-nez p1, :cond_0

    .line 12
    const-string p1, "contentLockScreen"

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 25
    const/4 v1, 0x0

    .line 27
    if-nez p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 30
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardCommonSettingObserver;->isSupportLockScreenTextClick:Z

    .line 32
    if-eqz p1, :cond_1

    .line 34
    move p1, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move p1, v1

    .line 38
    :goto_0
    if-nez p1, :cond_2

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->startSwitchAnimator(Z)V

    .line 41
    return-void

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 47
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    .line 54
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    const-string v2, "action"

    .line 59
    const-string v3, "click"

    .line 61
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v2, "lock_screen_magazine_action"

    .line 66
    invoke-virtual {p1, v2, v1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 68
    iget-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsLockScreenMagazinePkgExist:Z

    .line 71
    const-string v1, "miui_keyguard"

    .line 73
    if-eqz p1, :cond_3

    .line 75
    const-wide/16 v2, 0x1f4

    .line 77
    invoke-static {v2, v3}, Lcom/miui/utils/CommonExtensionsKt;->checkFastDoubleClick(J)Z

    .line 79
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    const-string p1, "preview button goto lock screen wall paper"

    .line 85
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->startMagazinePreviewActivity(Ljava/lang/String;)V

    .line 90
    goto :goto_1

    .line 93
    :cond_3
    const-wide/16 p0, 0x12c

    .line 94
    invoke-static {p0, p1}, Lcom/miui/utils/CommonExtensionsKt;->checkFastDoubleClick(J)Z

    .line 96
    move-result p0

    .line 99
    if-nez p0, :cond_4

    .line 100
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 102
    move-result-object p0

    .line 105
    const-string p1, "keyguard_download_lockscreen_magazine"

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;)V

    .line 108
    :try_start_0
    sget-object p0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    .line 111
    invoke-static {p0}, Lcom/miui/utils/IntentUtils;->getMarketDownloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    move-result-object p0

    .line 116
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 117
    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    move-result-object p1

    .line 122
    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 123
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_1

    .line 128
    :catch_0
    move-exception p0

    .line 129
    const-string/jumbo p1, "start to download lockscreen wallpaper"

    .line 130
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    :cond_4
    :goto_1
    return-void
    .line 136
.end method
