.class public final Lcom/android/keyguard/injector/KeyguardPanelViewInjector$setDrawableFromOtherApk$1;
.super Landroid/os/AsyncTask;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$setDrawableFromOtherApk$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$setDrawableFromOtherApk$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 4
    iget-object v0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 6
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    move-object v0, v1

    .line 11
    :cond_0
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 12
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 14
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 16
    move-result p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$setDrawableFromOtherApk$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 26
    iget-object v0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 28
    sget-object v2, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    .line 30
    iget-object v3, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 32
    if-nez v3, :cond_1

    .line 34
    move-object v3, v1

    .line 36
    :cond_1
    iget-object v3, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreTransToLeftScreenDrawableResName:Ljava/lang/String;

    .line 37
    invoke-static {v0, v2, v3}, Lcom/miui/utils/PackageUtils;->getDrawableFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v0

    .line 42
    iput-object v0, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLeftViewBackgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$setDrawableFromOtherApk$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 45
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 49
    if-nez p0, :cond_2

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    move-object v1, p0

    .line 54
    :goto_0
    iget-object p0, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreLeftScreenDrawableResName:Ljava/lang/String;

    .line 55
    invoke-static {p1, v2, p0}, Lcom/miui/utils/PackageUtils;->getDrawableFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 57
    move-result-object v1

    .line 60
    :cond_3
    return-object v1
    .line 61
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$setDrawableFromOtherApk$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 4
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mNegative1PageController:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 6
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    move-object v0, v1

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0, p1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$setDrawableFromOtherApk$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 19
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLeftViewBackgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    if-eqz p1, :cond_4

    .line 23
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mNegative1PageController:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 25
    if-nez p0, :cond_2

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    move-object v1, p0

    .line 30
    :goto_0
    iget-object p0, v1, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mLeftTransferBgView:Landroid/widget/ImageView;

    .line 31
    if-nez p0, :cond_3

    .line 33
    goto :goto_2

    .line 35
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    goto :goto_2

    .line 39
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mNegative1PageController:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 40
    if-nez p1, :cond_5

    .line 42
    move-object p1, v1

    .line 44
    :cond_5
    iget-object p1, p1, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mLeftTransferBgView:Landroid/widget/ImageView;

    .line 45
    if-eqz p1, :cond_7

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 49
    if-nez p0, :cond_6

    .line 51
    goto :goto_1

    .line 53
    :cond_6
    move-object v1, p0

    .line 54
    :goto_1
    iget p0, v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mWallpaperBlurColor:I

    .line 55
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 57
    :cond_7
    :goto_2
    return-void
    .line 60
.end method
