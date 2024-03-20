.class public final Lcom/android/systemui/recents/ScreenPinningRequest;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mCentralSurfacesOptionalLazy:Ldagger/Lazy;

.field public mNavBarMode:I

.field public final mScreenPinningRequestInjector:Lcom/android/systemui/recents/ScreenPinningRequestInjector;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequest$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/recents/ScreenPinningRequest$1;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 10
    iput-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 12
    const-string p2, "accessibility"

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p2

    .line 19
    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 22
    const-string/jumbo p2, "window"

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 30
    check-cast p2, Landroid/view/WindowManager;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    .line 33
    invoke-virtual {p3, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    .line 35
    move-result p2

    .line 38
    iput p2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mNavBarMode:I

    .line 39
    iput-object p4, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 41
    iput-object p5, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 43
    new-instance p2, Lcom/android/systemui/recents/ScreenPinningRequestInjector;

    .line 45
    invoke-direct {p2, p1, p3, p4, p5}, Lcom/android/systemui/recents/ScreenPinningRequestInjector;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;)V

    .line 47
    iput-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mScreenPinningRequestInjector:Lcom/android/systemui/recents/ScreenPinningRequestInjector;

    .line 50
    return-void
    .line 52
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    move-result p0

    .line 5
    const p1, 0x7f0a07fd    # @id/screen_pinning_ok_button

    .line 6
    if-eq p0, p1, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 12
    move-result-object p0

    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    :goto_0
    return-void
    .line 20
.end method

.method public final onNavigationModeChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mNavBarMode:I

    .line 2
    return-void
    .line 4
.end method
