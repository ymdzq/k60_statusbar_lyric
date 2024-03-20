.class public final Lcom/android/systemui/recents/ScreenPinningRequestInjector$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recents/ScreenPinningRequestInjector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/ScreenPinningRequestInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector$4;->this$0:Lcom/android/systemui/recents/ScreenPinningRequestInjector;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector$4;->this$0:Lcom/android/systemui/recents/ScreenPinningRequestInjector;

    .line 2
    iget-object v0, p1, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 4
    iget-object p1, p1, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->mReceiver:Lcom/android/systemui/recents/ScreenPinningRequestInjector$5;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector$4;->this$0:Lcom/android/systemui/recents/ScreenPinningRequestInjector;

    .line 11
    iget-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequestInjector;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 15
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 17
    invoke-virtual {p1, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 19
    return-void
    .line 22
.end method
