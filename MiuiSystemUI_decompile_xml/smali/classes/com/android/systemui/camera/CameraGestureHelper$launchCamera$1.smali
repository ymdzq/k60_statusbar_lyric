.class public final Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/systemui/camera/CameraGestureHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/camera/CameraGestureHelper;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->$intent:Landroid/content/Intent;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 7
    const/4 v1, 0x3

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    .line 14
    iget-object v2, v1, Lcom/android/systemui/camera/CameraGestureHelper;->activityTaskManager:Landroid/app/IActivityTaskManager;

    .line 16
    const/4 v3, 0x0

    .line 18
    iget-object v1, v1, Lcom/android/systemui/camera/CameraGestureHelper;->context:Landroid/content/Context;

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 24
    iget-object v1, p0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    .line 25
    iget-object v1, v1, Lcom/android/systemui/camera/CameraGestureHelper;->context:Landroid/content/Context;

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 32
    iget-object v6, p0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->$intent:Landroid/content/Intent;

    .line 33
    iget-object v1, p0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    .line 35
    iget-object v1, v1, Lcom/android/systemui/camera/CameraGestureHelper;->contentResolver:Landroid/content/ContentResolver;

    .line 37
    invoke-virtual {v6, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 39
    move-result-object v7

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/high16 v11, 0x10000000

    .line 46
    const/4 v12, 0x0

    .line 48
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 49
    move-result-object v13

    .line 52
    iget-object p0, p0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    .line 53
    iget-object p0, p0, Lcom/android/systemui/camera/CameraGestureHelper;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 55
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 59
    move-result v14

    .line 62
    invoke-interface/range {v2 .. v14}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    const-string v0, "CameraGestureHelper"

    .line 68
    const-string v1, "Unable to start camera activity"

    .line 70
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :goto_0
    return-void
    .line 75
.end method
