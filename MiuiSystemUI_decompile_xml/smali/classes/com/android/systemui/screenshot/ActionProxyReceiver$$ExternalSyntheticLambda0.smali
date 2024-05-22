.class public final synthetic Lcom/android/systemui/screenshot/ActionProxyReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/ActionProxyReceiver;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ActionProxyReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/ActionProxyReceiver;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/ActionProxyReceiver;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 4
    iget-object v3, p0, Lcom/android/systemui/screenshot/ActionProxyReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 6
    const-string p0, "ActionProxyReceiver"

    .line 8
    iget-object v2, v0, Lcom/android/systemui/screenshot/ActionProxyReceiver;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 10
    const-string/jumbo v4, "screenshot"

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 18
    move-result-object v2

    .line 21
    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    const-string v4, "ActivityManagerWrapper"

    .line 27
    const-string v5, "Failed to close system windows"

    .line 29
    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :goto_0
    const-string v2, "android:screenshot_action_intent"

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 36
    move-result-object v2

    .line 39
    check-cast v2, Landroid/app/PendingIntent;

    .line 40
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 42
    move-result-object v4

    .line 45
    const-string v5, "android:screenshot_disallow_enter_pip"

    .line 46
    const/4 v10, 0x0

    .line 48
    invoke-virtual {v1, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 49
    move-result v5

    .line 52
    invoke-virtual {v4, v5}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 53
    const/4 v5, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v9, 0x0

    .line 60
    :try_start_1
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 61
    move-result-object v11

    .line 64
    move v4, v5

    .line 65
    move-object v5, v6

    .line 66
    move-object v6, v7

    .line 67
    move-object v7, v8

    .line 68
    move-object v8, v9

    .line 69
    move-object v9, v11

    .line 70
    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 71
    const-string v2, "android:screenshot_override_transition"

    .line 74
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 76
    move-result v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    new-instance v1, Landroid/view/RemoteAnimationAdapter;

    .line 82
    sget-object v3, Lcom/android/systemui/screenshot/ScreenshotController;->SCREENSHOT_REMOTE_RUNNER:Lcom/android/systemui/screenshot/ScreenshotController$1;

    .line 84
    const-wide/16 v4, 0x0

    .line 86
    const-wide/16 v6, 0x0

    .line 88
    move-object v2, v1

    .line 90
    invoke-direct/range {v2 .. v7}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_2

    .line 91
    :try_start_2
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 94
    move-result-object v2

    .line 97
    iget-object v0, v0, Lcom/android/systemui/screenshot/ActionProxyReceiver;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    invoke-interface {v2, v1, v10}, Landroid/view/IWindowManager;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 103
    goto :goto_1

    .line 106
    :catch_1
    move-exception v0

    .line 107
    :try_start_3
    const-string v1, "Error overriding screenshot app transition"

    .line 108
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_2

    .line 110
    goto :goto_1

    .line 113
    :catch_2
    move-exception v0

    .line 114
    const-string v1, "Pending intent canceled"

    .line 115
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    :cond_0
    :goto_1
    return-void
    .line 120
.end method
