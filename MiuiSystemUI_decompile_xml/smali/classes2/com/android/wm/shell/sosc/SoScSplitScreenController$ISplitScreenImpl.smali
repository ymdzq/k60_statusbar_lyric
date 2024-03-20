.class Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;
.super Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# instance fields
.field private mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

.field private final mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

.field private final mSplitScreenListener:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;


# direct methods
.method public static synthetic $r8$lambda$-rFGb3aJLqgEB_5gEOIwRPsOo90([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$onStartingSplitLegacy$20([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$1vTuLslkOkOecrqMQ671pw0O8eY(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$startShortcutAndTaskWithLegacyTransition$10(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$2A-eLWtdQx6QruBv0GUjL9ovYfI(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$startIntentAndTaskWithLegacyTransition$9(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$2_Q1coTCgry3KqYSo5aYHe1oc6I(FLcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$setSplitRatio$23(FLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$7d4JuLajqsmAvYc1xEd9yaR7dXA(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$startTasks$11(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$7rfP-jGmC-yUW65c9f1qyj4A4PY(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p11}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$startIntentsWithLegacyTransition$14(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$8ps42QooOoiA-rm8e0S14hjkkZs(Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$new$0(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$BYFgh7bNQHMEdr_U6P_VfXVdE_I(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$removeFromSideStage$6(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$CH9-qpd6kNbZ0VkpkWSJaVIiUNw(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$onGestureEnd$26(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$D8qyM-VzJpo4Xkymr_Po7orddKE(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$startIntent$17(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$DERwyYA3A_So337G7VLYa8swHDs(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$exitSplitScreen$4(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$E1GhiqDeyHROsGvQSN0bRTXneFs(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$onGestureStart$25(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$M3pb5QGetXmmrydN3MEvJLVOqj4(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$startSplitWithIntentsForMiui$28(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$NnhVQGOP64536zc8ohMznkkX1gQ(Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$unregisterSoScSplitScreenListener$3(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$T8x239Qw169pi81sG2AfUyhWQlM(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$startTasksWithLegacyTransition$8(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$UoyDtCO9jpcQ75RapIncCgNfhUQ(Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$registerSoScSplitScreenListener$2(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$W2l_o4rrfa49MCsUh82U9_ST0QQ(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p11}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$startIntents$15(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$WCZx4WZGy93HIIHX1MzTVBHr3a4(Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$new$1(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$X1CLTNVLG1DfQXGMmjfeW9tHhtQ([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$onGoingToRecentsLegacy$19([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$YEXjk8Z6aAFvNrNgpgXBGNAmT9I(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$removeTaskFromSplit$21(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$gPYBda4hZLxVsHuJTz0sKFulVgA([Landroid/os/Bundle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$getSoScSplitInfo$24([Landroid/os/Bundle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$hvmuhhz63f7uVrsgIotWhI9kAM4(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$snapSplitToNextRatio$22(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$jipb_NiRJCerSpF83hJ9a0rY9e4(IILandroid/os/Bundle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$startTask$7(IILandroid/os/Bundle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$o6HPS5Y_HFBON5d33rgxMbjWfIU(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$startShortcut$16(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$s0NBUQspygR3yCHPdl11amk4qSc(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$startShortcutAndTask$13(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$sQDFpI0DTmRj6ACQEbyoAgVFJTk(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$startIntentAndTask$12(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$uaFQQss8IJWAOxt_tTjrxCBtNdo(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$updateDividerFixedState$27(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$uiCOiBDn3K_2tpV-AKsadp_4Jvk(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$exitSplitScreenOnHide$5(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$yVUBBvCipHyX_YmGV7tSVvRoqyc(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->lambda$startIntent$18(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 2
    return-object p0
    .line 4
.end method

.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$1;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;)V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mSplitScreenListener:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 12
    new-instance v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 14
    new-instance v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;

    .line 16
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, v2, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 19
    new-instance v2, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;

    .line 22
    const/4 v3, 0x1

    .line 24
    invoke-direct {v2, v3, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 25
    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 31
    return-void
    .line 33
.end method

.method private static synthetic lambda$exitSplitScreen$4(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->exitSplitScreen(II)V

    .line 3
    return-void
    .line 6
.end method

.method private static synthetic lambda$exitSplitScreenOnHide$5(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->exitSplitScreenOnHide(Z)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$getSoScSplitInfo$24([Landroid/os/Bundle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScSplitInfo()Landroid/os/Bundle;

    .line 3
    move-result-object p1

    .line 6
    aput-object p1, p0, v0

    .line 7
    return-void
    .line 9
.end method

.method private synthetic lambda$new$0(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mSplitScreenListener:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->registerSplitScreenListener(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$new$1(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mSplitScreenListener:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->unregisterSplitScreenListener(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V

    .line 4
    return-void
    .line 7
.end method

.method private static synthetic lambda$onGestureEnd$26(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onGestureEnd(I)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$onGestureStart$25(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onGestureStart(I)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$onGoingToRecentsLegacy$19([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    .line 3
    move-result-object p1

    .line 6
    aput-object p1, p0, v0

    .line 7
    return-void
    .line 9
.end method

.method private static synthetic lambda$onStartingSplitLegacy$20([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    .line 3
    move-result-object p1

    .line 6
    aput-object p1, p0, v0

    .line 7
    return-void
    .line 9
.end method

.method private synthetic lambda$registerSoScSplitScreenListener$2(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->register(Landroid/os/IInterface;)V

    .line 4
    return-void
    .line 7
.end method

.method private static synthetic lambda$removeFromSideStage$6(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->removeFromSideStage(I)Z

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$removeTaskFromSplit$21(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->removeTaskFromSplit(I)Z

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$setSplitRatio$23(FLcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->setSplitRatio(F)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$snapSplitToNextRatio$22(ILcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->snapSplitToNextRatio(I)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$startIntent$17(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 6

    .line 1
    move-object v0, p5

    .line 2
    move-object v1, p0

    .line 3
    move v2, p1

    .line 4
    move-object v3, p2

    .line 5
    move v4, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startMultipleTaskForHome(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V

    .line 8
    return-void
    .line 11
.end method

.method private static synthetic lambda$startIntent$18(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 7

    .line 1
    sget-object v6, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 2
    move-object v0, p5

    .line 4
    move-object v1, p0

    .line 5
    move v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;)V

    .line 10
    return-void
    .line 13
.end method

.method private static synthetic lambda$startIntentAndTask$12(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 10

    .line 1
    sget-object v9, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 2
    move-object/from16 v0, p8

    .line 4
    move-object v1, p0

    .line 6
    move v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move v6, p5

    .line 11
    move/from16 v7, p6

    .line 12
    move-object/from16 v8, p7

    .line 14
    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->-$$Nest$mstartIntentAndTask(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 16
    return-void
    .line 19
.end method

.method private static synthetic lambda$startIntentAndTaskWithLegacyTransition$9(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 10

    .line 1
    sget-object v9, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 2
    move-object/from16 v0, p8

    .line 4
    move-object v1, p0

    .line 6
    move v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move v6, p5

    .line 11
    move/from16 v7, p6

    .line 12
    move-object/from16 v8, p7

    .line 14
    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->-$$Nest$mstartIntentAndTaskWithLegacyTransition(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 16
    return-void
    .line 19
.end method

.method private static synthetic lambda$startIntents$15(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 13

    .line 1
    sget-object v12, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 2
    move-object/from16 v0, p11

    .line 4
    move-object v1, p0

    .line 6
    move v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object/from16 v4, p3

    .line 9
    move-object/from16 v5, p4

    .line 11
    move/from16 v6, p5

    .line 13
    move-object/from16 v7, p6

    .line 15
    move-object/from16 v8, p7

    .line 17
    move/from16 v9, p8

    .line 19
    move/from16 v10, p9

    .line 21
    move-object/from16 v11, p10

    .line 23
    invoke-static/range {v0 .. v12}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->-$$Nest$mstartIntents(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 25
    return-void
    .line 28
.end method

.method private static synthetic lambda$startIntentsWithLegacyTransition$14(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 13

    .line 1
    sget-object v12, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 2
    move-object/from16 v0, p11

    .line 4
    move-object v1, p0

    .line 6
    move v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object/from16 v4, p3

    .line 9
    move-object/from16 v5, p4

    .line 11
    move/from16 v6, p5

    .line 13
    move-object/from16 v7, p6

    .line 15
    move-object/from16 v8, p7

    .line 17
    move/from16 v9, p8

    .line 19
    move/from16 v10, p9

    .line 21
    move-object/from16 v11, p10

    .line 23
    invoke-static/range {v0 .. v12}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->-$$Nest$mstartIntentsWithLegacyTransition(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 25
    return-void
    .line 28
.end method

.method private static synthetic lambda$startShortcut$16(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 7

    .line 1
    sget-object v6, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 2
    move-object v0, p5

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;)V

    .line 10
    return-void
    .line 13
.end method

.method private static synthetic lambda$startShortcutAndTask$13(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 9

    .line 1
    sget-object v8, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 2
    move-object/from16 v0, p7

    .line 4
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move v5, p4

    .line 10
    move v6, p5

    .line 11
    move-object v7, p6

    .line 12
    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 13
    return-void
    .line 16
.end method

.method private static synthetic lambda$startShortcutAndTaskWithLegacyTransition$10(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 9

    .line 1
    sget-object v8, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 2
    move-object/from16 v0, p7

    .line 4
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move v5, p4

    .line 10
    move v6, p5

    .line 11
    move-object v7, p6

    .line 12
    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 13
    return-void
    .line 16
.end method

.method private static synthetic lambda$startSplitWithIntentsForMiui$28(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startSplitWithIntentsForMiui(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$startTask$7(IILandroid/os/Bundle;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTask(IILandroid/os/Bundle;)V

    .line 2
    return-void
    .line 5
.end method

.method private static synthetic lambda$startTasks$11(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 9

    .line 1
    move-object/from16 v0, p7

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 4
    sget-object v8, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 6
    move v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move v5, p4

    .line 12
    move v6, p5

    .line 13
    move-object v7, p6

    .line 14
    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    .line 15
    return-void
    .line 18
.end method

.method private static synthetic lambda$startTasksWithLegacyTransition$8(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 9

    .line 1
    move-object/from16 v0, p7

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 4
    sget-object v8, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 6
    move v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move v5, p4

    .line 12
    move v6, p5

    .line 13
    move-object v7, p6

    .line 14
    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 15
    return-void
    .line 18
.end method

.method private synthetic lambda$unregisterSoScSplitScreenListener$3(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    .line 4
    return-void
    .line 7
.end method

.method private static synthetic lambda$updateDividerFixedState$27(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->updateDividerFixedState(Z)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public exitSplitScreen(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;

    .line 4
    const/4 v1, 0x3

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    const/4 p1, 0x0

    .line 10
    const-string v1, "exitSplitScreen"

    .line 11
    invoke-static {p0, v1, v0, p1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 13
    return-void
    .line 16
.end method

.method public exitSplitScreenOnHide(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;-><init>(IZ)V

    .line 7
    const-string p1, "exitSplitScreenOnHide"

    .line 10
    invoke-static {p0, p1, v0, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 12
    return-void
    .line 15
.end method

.method public getSoScSplitInfo()Landroid/os/Bundle;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {v0}, [Landroid/os/Bundle;

    .line 3
    move-result-object v0

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 7
    new-instance v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;

    .line 9
    const/4 v2, 0x3

    .line 11
    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 12
    const/4 v2, 0x1

    .line 15
    const-string v3, "getSoScSplitInfo"

    .line 16
    invoke-static {p0, v3, v1, v2}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 18
    const/4 p0, 0x0

    .line 21
    aget-object p0, v0, p0

    .line 22
    return-object p0
    .line 24
.end method

.method public invalidate()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    .line 7
    return-void
    .line 10
.end method

.method public onGestureEnd(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;

    .line 4
    const/4 v1, 0x4

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    const/4 p1, 0x0

    .line 10
    const-string v1, "onGestureEnd"

    .line 11
    invoke-static {p0, v1, v0, p1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 13
    return-void
    .line 16
.end method

.method public onGestureStart(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;

    .line 4
    const/4 v1, 0x2

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    const/4 p1, 0x0

    .line 10
    const-string v1, "onGestureStart"

    .line 11
    invoke-static {p0, v1, v0, p1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 13
    return-void
    .line 16
.end method

.method public onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {v0}, [[Landroid/view/RemoteAnimationTarget;

    .line 3
    move-result-object v0

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 7
    new-instance v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;

    .line 9
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2, v0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    const-string p1, "onGoingToRecentsLegacy"

    .line 15
    invoke-static {p0, p1, v1, v2}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 17
    const/4 p0, 0x0

    .line 20
    aget-object p0, v0, p0

    .line 21
    return-object p0
    .line 23
.end method

.method public onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {v0}, [[Landroid/view/RemoteAnimationTarget;

    .line 3
    move-result-object v0

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 7
    new-instance v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;

    .line 9
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2, v0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    const/4 p1, 0x1

    .line 15
    const-string v3, "onStartingSplitLegacy"

    .line 16
    invoke-static {p0, v3, v1, p1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 18
    aget-object p0, v0, v2

    .line 21
    return-object p0
    .line 23
.end method

.method public registerSoScSplitScreenListener(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    new-instance v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;

    .line 4
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2, p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    const/4 p0, 0x0

    .line 10
    const-string p1, "registerSplitScreenListener"

    .line 11
    invoke-static {v0, p1, v1, p0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 13
    return-void
    .line 16
.end method

.method public removeFromSideStage(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;

    .line 4
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    const/4 p1, 0x0

    .line 10
    const-string v1, "removeFromSideStage"

    .line 11
    invoke-static {p0, v1, v0, p1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 13
    return-void
    .line 16
.end method

.method public removeTaskFromSplit(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    const-string p1, "removeTaskFromSplit"

    .line 10
    invoke-static {p0, p1, v0, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 12
    return-void
    .line 15
.end method

.method public setSplitRatio(F)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6;

    .line 4
    invoke-direct {v0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6;-><init>(F)V

    .line 6
    const/4 p1, 0x0

    .line 9
    const-string/jumbo v1, "snapSplitToNextRatio"

    .line 10
    invoke-static {p0, v1, v0, p1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 13
    return-void
    .line 16
.end method

.method public snapSplitToNextRatio(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;

    .line 4
    const/4 v1, 0x5

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;-><init>(II)V

    .line 7
    const/4 p1, 0x0

    .line 10
    const-string/jumbo v1, "snapSplitToNextRatio"

    .line 11
    invoke-static {p0, v1, v0, p1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 14
    return-void
    .line 17
.end method

.method public startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string/jumbo v2, "startIntent"

    .line 11
    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 16
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;

    .line 18
    const/4 v9, 0x0

    .line 20
    move-object v3, v0

    .line 21
    move-object v4, p1

    .line 22
    move v5, p2

    .line 23
    move-object v6, p3

    .line 24
    move v7, p4

    .line 25
    move-object v8, p5

    .line 26
    invoke-direct/range {v3 .. v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;-><init>(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;I)V

    .line 27
    invoke-static {p0, v2, v0, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 30
    return-void

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 34
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;

    .line 36
    const/4 v9, 0x1

    .line 38
    move-object v3, v0

    .line 39
    move-object v4, p1

    .line 40
    move v5, p2

    .line 41
    move-object v6, p3

    .line 42
    move v7, p4

    .line 43
    move-object v8, p5

    .line 44
    invoke-direct/range {v3 .. v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;-><init>(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;I)V

    .line 45
    invoke-static {p0, v2, v0, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 48
    return-void
    .line 51
.end method

.method public startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 3
    new-instance v11, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;

    .line 5
    const/4 v10, 0x1

    .line 7
    move-object v1, v11

    .line 8
    move-object v2, p1

    .line 9
    move v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move/from16 v5, p4

    .line 12
    move-object/from16 v6, p5

    .line 14
    move/from16 v7, p6

    .line 16
    move/from16 v8, p7

    .line 18
    move-object/from16 v9, p8

    .line 20
    invoke-direct/range {v1 .. v10}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;-><init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;I)V

    .line 22
    const/4 v1, 0x0

    .line 25
    const-string/jumbo v2, "startIntentAndTask"

    .line 26
    invoke-static {v0, v2, v11, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 29
    return-void
    .line 32
.end method

.method public startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 3
    new-instance v11, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;

    .line 5
    const/4 v10, 0x0

    .line 7
    move-object v1, v11

    .line 8
    move-object v2, p1

    .line 9
    move v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move/from16 v5, p4

    .line 12
    move-object/from16 v6, p5

    .line 14
    move/from16 v7, p6

    .line 16
    move/from16 v8, p7

    .line 18
    move-object/from16 v9, p8

    .line 20
    invoke-direct/range {v1 .. v10}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;-><init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;I)V

    .line 22
    const/4 v1, 0x0

    .line 25
    const-string/jumbo v2, "startIntentAndTaskWithLegacyTransition"

    .line 26
    invoke-static {v0, v2, v11, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 29
    return-void
    .line 32
.end method

.method public startIntents(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 3
    new-instance v14, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;

    .line 5
    const/4 v13, 0x1

    .line 7
    move-object v1, v14

    .line 8
    move-object/from16 v2, p1

    .line 9
    move/from16 v3, p2

    .line 11
    move-object/from16 v4, p3

    .line 13
    move-object/from16 v5, p4

    .line 15
    move-object/from16 v6, p5

    .line 17
    move/from16 v7, p6

    .line 19
    move-object/from16 v8, p7

    .line 21
    move-object/from16 v9, p8

    .line 23
    move/from16 v10, p9

    .line 25
    move/from16 v11, p10

    .line 27
    move-object/from16 v12, p11

    .line 29
    invoke-direct/range {v1 .. v13}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;-><init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/os/Parcelable;I)V

    .line 31
    const/4 v1, 0x0

    .line 34
    const-string/jumbo v2, "startIntents"

    .line 35
    invoke-static {v0, v2, v14, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 38
    return-void
    .line 41
.end method

.method public startIntentsWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 3
    new-instance v14, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;

    .line 5
    const/4 v13, 0x0

    .line 7
    move-object v1, v14

    .line 8
    move-object/from16 v2, p1

    .line 9
    move/from16 v3, p2

    .line 11
    move-object/from16 v4, p3

    .line 13
    move-object/from16 v5, p4

    .line 15
    move-object/from16 v6, p5

    .line 17
    move/from16 v7, p6

    .line 19
    move-object/from16 v8, p7

    .line 21
    move-object/from16 v9, p8

    .line 23
    move/from16 v10, p9

    .line 25
    move/from16 v11, p10

    .line 27
    move-object/from16 v12, p11

    .line 29
    invoke-direct/range {v1 .. v13}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;-><init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/os/Parcelable;I)V

    .line 31
    const/4 v1, 0x0

    .line 34
    const-string/jumbo v2, "startIntentsWithLegacyTransition"

    .line 35
    invoke-static {v0, v2, v14, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 38
    return-void
    .line 41
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    new-instance v6, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;

    .line 4
    move-object v0, v6

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object v5, p5

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 12
    const/4 p1, 0x0

    .line 15
    const-string/jumbo p2, "startShortcut"

    .line 16
    invoke-static {p0, p2, v6, p1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 19
    return-void
    .line 22
.end method

.method public startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 3
    new-instance v10, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;

    .line 5
    const/4 v9, 0x0

    .line 7
    move-object v1, v10

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move v4, p3

    .line 11
    move-object v5, p4

    .line 12
    move/from16 v6, p5

    .line 13
    move/from16 v7, p6

    .line 15
    move-object/from16 v8, p7

    .line 17
    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;I)V

    .line 19
    const/4 v1, 0x0

    .line 22
    const-string/jumbo v2, "startShortcutAndTask"

    .line 23
    invoke-static {v0, v2, v10, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 26
    return-void
    .line 29
.end method

.method public startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 3
    new-instance v10, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;

    .line 5
    const/4 v9, 0x1

    .line 7
    move-object v1, v10

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move v4, p3

    .line 11
    move-object v5, p4

    .line 12
    move/from16 v6, p5

    .line 13
    move/from16 v7, p6

    .line 15
    move-object/from16 v8, p7

    .line 17
    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;I)V

    .line 19
    const/4 v1, 0x0

    .line 22
    const-string/jumbo v2, "startShortcutAndTaskWithLegacyTransition"

    .line 23
    invoke-static {v0, v2, v10, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 26
    return-void
    .line 29
.end method

.method public startSplitWithIntentsForMiui(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;

    .line 4
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;)V

    .line 6
    const/4 p1, 0x0

    .line 9
    const-string/jumbo p2, "startSplitWithIntentsForMiui"

    .line 10
    invoke-static {p0, p2, v0, p1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 13
    return-void
    .line 16
.end method

.method public startTask(IILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda12;

    .line 4
    invoke-direct {v0, p1, p2, p3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda12;-><init>(IILandroid/os/Bundle;)V

    .line 6
    const/4 p1, 0x0

    .line 9
    const-string/jumbo p2, "startTask"

    .line 10
    invoke-static {p0, p2, v0, p1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 13
    return-void
    .line 16
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 3
    new-instance v10, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda10;

    .line 5
    const/4 v9, 0x1

    .line 7
    move-object v1, v10

    .line 8
    move v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move v4, p3

    .line 11
    move-object v5, p4

    .line 12
    move/from16 v6, p5

    .line 13
    move/from16 v7, p6

    .line 15
    move-object/from16 v8, p7

    .line 17
    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda10;-><init>(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;I)V

    .line 19
    const/4 v1, 0x0

    .line 22
    const-string/jumbo v2, "startTasks"

    .line 23
    invoke-static {v0, v2, v10, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 26
    return-void
    .line 29
.end method

.method public startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 3
    new-instance v10, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda10;

    .line 5
    const/4 v9, 0x0

    .line 7
    move-object v1, v10

    .line 8
    move v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move v4, p3

    .line 11
    move-object v5, p4

    .line 12
    move/from16 v6, p5

    .line 13
    move/from16 v7, p6

    .line 15
    move-object/from16 v8, p7

    .line 17
    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda10;-><init>(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;I)V

    .line 19
    const/4 v1, 0x0

    .line 22
    const-string/jumbo v2, "startTasks"

    .line 23
    invoke-static {v0, v2, v10, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 26
    return-void
    .line 29
.end method

.method public unregisterSoScSplitScreenListener(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;

    .line 4
    const/4 v1, 0x2

    .line 6
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 7
    const/4 p0, 0x0

    .line 10
    const-string/jumbo v1, "unregisterSplitScreenListener"

    .line 11
    invoke-static {p1, v1, v0, p0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 14
    return-void
    .line 17
.end method

.method public updateDividerFixedState(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;

    .line 4
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;-><init>(IZ)V

    .line 7
    const/4 p1, 0x0

    .line 10
    const-string/jumbo v1, "updateDividerFixedState"

    .line 11
    invoke-static {p0, v1, v0, p1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 14
    return-void
    .line 17
.end method
