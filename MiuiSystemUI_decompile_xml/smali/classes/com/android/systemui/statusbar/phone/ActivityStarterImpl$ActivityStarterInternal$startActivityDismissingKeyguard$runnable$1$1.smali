.class final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $disallowEnterPictureInPictureWhileLaunching:Z

.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic $result:[I

.field final synthetic $userHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;ZLandroid/content/Intent;[ILandroid/os/UserHandle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->$disallowEnterPictureInPictureWhileLaunching:Z

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->$intent:Landroid/content/Intent;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->$result:[I

    .line 8
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->$userHandle:Landroid/os/UserHandle;

    .line 10
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 4
    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    .line 6
    new-instance v2, Landroid/app/ActivityOptions;

    .line 8
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 10
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->access$getCentralSurfaces(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;)Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 12
    move-result-object v3

    .line 15
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 19
    iget v3, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    .line 21
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getActivityOptions(ILandroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    .line 23
    move-result-object v0

    .line 26
    invoke-direct {v2, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setDismissKeyguard()V

    .line 30
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->$disallowEnterPictureInPictureWhileLaunching:Z

    .line 33
    invoke-virtual {v2, v0}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 35
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->$intent:Landroid/content/Intent;

    .line 38
    const/4 v3, 0x0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    .line 49
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v0, v3

    .line 56
    :goto_0
    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x3

    .line 59
    invoke-virtual {v2, v0}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 60
    :cond_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->$intent:Landroid/content/Intent;

    .line 63
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 68
    const-string v4, "android.settings.panel.action.VOLUME"

    .line 69
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    const/4 v0, 0x1

    .line 77
    invoke-virtual {v2, v0}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    .line 78
    :cond_2
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->$result:[I

    .line 81
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 83
    move-result-object v4

    .line 86
    const/4 v5, 0x0

    .line 87
    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 88
    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->context:Landroid/content/Context;

    .line 90
    invoke-virtual {v6}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    .line 92
    move-result-object v6

    .line 95
    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 96
    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->context:Landroid/content/Context;

    .line 98
    invoke-virtual {v7}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 100
    move-result-object v7

    .line 103
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->$intent:Landroid/content/Intent;

    .line 104
    iget-object v9, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 106
    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->context:Landroid/content/Context;

    .line 108
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 110
    move-result-object v9

    .line 113
    invoke-virtual {v8, v9}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 114
    move-result-object v9

    .line 117
    const/4 v10, 0x0

    .line 118
    const/4 v11, 0x0

    .line 119
    const/4 v12, 0x0

    .line 120
    const/high16 v13, 0x10000000

    .line 121
    const/4 v14, 0x0

    .line 123
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 124
    move-result-object v15

    .line 127
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->$userHandle:Landroid/os/UserHandle;

    .line 128
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 130
    move-result v16

    .line 133
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 134
    move-result v2

    .line 137
    aput v2, v0, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string v2, "ActivityStarterImpl"

    .line 142
    const-string v4, "Unable to start activity"

    .line 144
    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startActivityDismissingKeyguard$runnable$1$1;->$result:[I

    .line 149
    aget v0, v0, v3

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v0

    .line 156
    return-object v0
    .line 157
.end method
