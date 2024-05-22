.class public final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;


# instance fields
.field public final synthetic $intent:Landroid/app/PendingIntent;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1$1;->$intent:Landroid/app/PendingIntent;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final startPendingIntent(Landroid/view/RemoteAnimationAdapter;)I
    .locals 9

    .line 1
    new-instance v0, Landroid/app/ActivityOptions;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 4
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->access$getCentralSurfaces(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;)Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 6
    move-result-object v1

    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 13
    iget v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 15
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getActivityOptions(ILandroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    .line 17
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 21
    const/4 p1, 0x1

    .line 24
    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setEligibleForLegacyPermissionPrompt(Z)V

    .line 25
    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 28
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1$1;->$intent:Landroid/app/PendingIntent;

    .line 31
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 39
    move-result-object v8

    .line 42
    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 43
    move-result p0

    .line 46
    return p0
    .line 47
.end method
