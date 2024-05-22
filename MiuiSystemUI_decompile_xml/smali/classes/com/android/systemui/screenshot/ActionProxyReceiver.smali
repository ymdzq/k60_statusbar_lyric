.class public Lcom/android/systemui/screenshot/ActionProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    new-instance v1, Lcom/android/systemui/screenshot/ActionProxyReceiver$$ExternalSyntheticLambda0;

    .line 2
    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/screenshot/ActionProxyReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ActionProxyReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 7
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x1

    .line 12
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/plugins/ActivityStarter;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 13
    const-string p1, "android:smart_actions_enabled"

    .line 16
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 19
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    const-string p1, "android.intent.action.EDIT"

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    iget-object p0, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    .line 34
    const-string p1, "android:screenshot_id"

    .line 36
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->notifyScreenshotAction()V

    .line 41
    :cond_0
    return-void
.end method
