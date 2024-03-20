.class public final Lcom/android/systemui/recents/ScreenPinningRequestInjector;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mContext:Landroid/content/Context;

.field public mDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mNavBarMode:I

.field public final mReceiver:Lcom/android/systemui/recents/ScreenPinningRequestInjector$5;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequestInjector$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/recents/ScreenPinningRequestInjector$1;-><init>(Lcom/android/systemui/recents/ScreenPinningRequestInjector;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 10
    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequestInjector$5;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/recents/ScreenPinningRequestInjector$5;-><init>(Lcom/android/systemui/recents/ScreenPinningRequestInjector;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->mReceiver:Lcom/android/systemui/recents/ScreenPinningRequestInjector$5;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p2, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    .line 21
    move-result p1

    .line 24
    iput p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->mNavBarMode:I

    .line 25
    iput-object p3, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 27
    iput-object p4, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 29
    return-void
    .line 31
.end method


# virtual methods
.method public final clearPrompt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 6
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 10
    :cond_0
    return-void
    .line 12
.end method

.method public final onNavigationModeChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->mNavBarMode:I

    .line 2
    return-void
    .line 4
.end method
