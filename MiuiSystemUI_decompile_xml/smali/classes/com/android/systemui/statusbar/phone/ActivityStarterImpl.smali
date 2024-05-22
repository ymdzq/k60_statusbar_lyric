.class public final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter;


# instance fields
.field public final activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field public final activityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

.field public final activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

.field public final assistManagerLazy:Ldagger/Lazy;

.field public final biometricUnlockControllerLazy:Ldagger/Lazy;

.field public final centralSurfacesOptLazy:Ldagger/Lazy;

.field public final context:Landroid/content/Context;

.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final dozeServiceHostLazy:Ldagger/Lazy;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardViewMediatorLazy:Ldagger/Lazy;

.field public final lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final shadeControllerLazy:Ldagger/Lazy;

.field public final statusBarKeyguardViewManagerLazy:Ldagger/Lazy;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/animation/ActivityLaunchAnimator;Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->centralSurfacesOptLazy:Ldagger/Lazy;

    .line 7
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->assistManagerLazy:Ldagger/Lazy;

    .line 10
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->dozeServiceHostLazy:Ldagger/Lazy;

    .line 13
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->biometricUnlockControllerLazy:Ldagger/Lazy;

    .line 16
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->keyguardViewMediatorLazy:Ldagger/Lazy;

    .line 19
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->shadeControllerLazy:Ldagger/Lazy;

    .line 22
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->statusBarKeyguardViewManagerLazy:Ldagger/Lazy;

    .line 25
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 28
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->context:Landroid/content/Context;

    .line 31
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 34
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 37
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 40
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 43
    move-object/from16 v1, p14

    .line 45
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 47
    move-object/from16 v1, p15

    .line 49
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 51
    move-object/from16 v1, p16

    .line 53
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 55
    move-object/from16 v1, p17

    .line 57
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 59
    move-object/from16 v1, p18

    .line 61
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 63
    move-object/from16 v1, p19

    .line 65
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 67
    new-instance v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    .line 69
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;)V

    .line 71
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    .line 74
    return-void
    .line 76
.end method

.method public static final access$getCentralSurfaces(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;)Lcom/android/systemui/statusbar/phone/CentralSurfaces;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->centralSurfacesOptLazy:Ldagger/Lazy;

    .line 2
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/Optional;

    .line 8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 15
    return-object p0
    .line 17
.end method


# virtual methods
.method public final dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    return-void
.end method

.method public final dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    return-void
.end method

.method public final executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    const/4 v6, 0x0

    const/16 v7, 0x60

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->executeRunnableDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZI)V

    return-void
.end method

.method public final executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZLjava/lang/String;)V
    .locals 7

    .line 2
    new-instance v6, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$executeRunnableDismissingKeyguard$onDismissAction$1;

    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    move-object v0, v6

    move-object v1, p1

    move v3, p3

    move v4, p5

    move v5, p6

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$executeRunnableDismissingKeyguard$onDismissAction$1;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;ZZZ)V

    .line 5
    invoke-virtual {p0, v6, p2, p4, p7}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    return-void
.end method

.method public final postOnUiThread(ILjava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 2
    int-to-long v0, p1

    .line 4
    invoke-interface {p0, p2, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 5
    return-void
    .line 8
.end method

.method public final postQSRunnableDismissingKeyguard(ZLjava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;ZLjava/lang/Runnable;)V

    .line 4
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->postOnUiThread(ILjava/lang/Runnable;)V

    .line 8
    return-void
    .line 11
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/os/Parcelable;I)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->postOnUiThread(ILjava/lang/Runnable;)V

    return-void
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/os/Parcelable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;I)V

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->postOnUiThread(ILjava/lang/Runnable;)V

    return-void
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 2

    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/os/Parcelable;I)V

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->postOnUiThread(ILjava/lang/Runnable;)V

    return-void
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 2

    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/os/Parcelable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;I)V

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->postOnUiThread(ILjava/lang/Runnable;)V

    return-void
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ljava/lang/String;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$5;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$5;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/content/Intent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->postOnUiThread(ILjava/lang/Runnable;)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1fa

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/os/UserHandle;Ljava/lang/String;I)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLandroid/os/UserHandle;)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLandroid/os/UserHandle;)V
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLandroid/os/UserHandle;)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 11

    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ea

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/os/UserHandle;Ljava/lang/String;I)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZZ)V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f8

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/os/UserHandle;Ljava/lang/String;I)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZZI)V
    .locals 11

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1d8

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/os/UserHandle;Ljava/lang/String;I)V

    return-void
.end method

.method public final startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f8

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/os/UserHandle;Ljava/lang/String;I)V

    return-void
.end method

.method public final startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/os/UserHandle;)V
    .locals 11

    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    const/4 v9, 0x0

    const/16 v10, 0x100

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/os/UserHandle;Ljava/lang/String;I)V

    return-void
.end method

.method public final startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;I)V

    return-void
.end method

.method public final startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;I)V

    return-void
.end method

.method public final startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;I)V

    return-void
.end method

.method public final startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;I)V

    return-void
.end method
