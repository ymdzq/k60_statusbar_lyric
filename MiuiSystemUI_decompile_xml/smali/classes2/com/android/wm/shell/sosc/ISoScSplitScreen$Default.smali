.class public Lcom/android/wm/shell/sosc/ISoScSplitScreen$Default;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/sosc/ISoScSplitScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public exitSplitScreen(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public exitSplitScreenOnHide(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public getSoScSplitInfo()Landroid/os/Bundle;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public onGestureEnd(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onGestureStart(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public registerSoScSplitScreenListener(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public removeFromSideStage(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public removeTaskFromSplit(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setSplitRatio(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public snapSplitToNextRatio(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startIntents(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startIntentsWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startSplitWithIntentsForMiui(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startTask(IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public unregisterSoScSplitScreenListener(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateDividerFixedState(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
