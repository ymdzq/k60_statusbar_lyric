.class public final Lcom/android/systemui/screenshot/appclips/AppClipsService$1;
.super Lcom/android/internal/statusbar/IAppClipsService$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/appclips/AppClipsService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/appclips/AppClipsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService$1;->this$0:Lcom/android/systemui/screenshot/appclips/AppClipsService;

    .line 2
    invoke-direct {p0}, Lcom/android/internal/statusbar/IAppClipsService$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final canLaunchCaptureContentActivityForNote(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService$1;->this$0:Lcom/android/systemui/screenshot/appclips/AppClipsService;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mUserManager:Landroid/os/UserManager;

    .line 4
    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService$1;->this$0:Lcom/android/systemui/screenshot/appclips/AppClipsService;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mProxyConnectorToMainProfile:Lcom/android/internal/infra/ServiceConnector;

    .line 15
    if-nez p0, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/systemui/screenshot/appclips/AppClipsService$$ExternalSyntheticLambda1;

    .line 20
    invoke-direct {v0, p1}, Lcom/android/systemui/screenshot/appclips/AppClipsService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 22
    invoke-interface {p0, v0}, Lcom/android/internal/infra/ServiceConnector;->postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 32
    check-cast p0, Ljava/lang/Boolean;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    move-result v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    const-string v0, "Exception from service\n"

    .line 43
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    const-string p1, "AppClipsService"

    .line 55
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return v1

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService$1;->this$0:Lcom/android/systemui/screenshot/appclips/AppClipsService;

    .line 61
    iget-boolean v2, v0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mAreTaskAndTimeIndependentPrerequisitesMet:Z

    .line 63
    if-nez v2, :cond_2

    .line 65
    return v1

    .line 67
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mOptionalBubbles:Ljava/util/Optional;

    .line 68
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 73
    check-cast v0, Lcom/android/wm/shell/bubbles/Bubbles;

    .line 74
    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 76
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    .line 78
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mAppBubbleTaskIds:Ljava/util/HashMap;

    .line 80
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 82
    move-result-object v0

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object p1

    .line 89
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 90
    move-result p1

    .line 93
    if-nez p1, :cond_3

    .line 94
    return v1

    .line 96
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService$1;->this$0:Lcom/android/systemui/screenshot/appclips/AppClipsService;

    .line 97
    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 99
    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;)Z

    .line 102
    move-result p0

    .line 105
    xor-int/lit8 p0, p0, 0x1

    .line 106
    return p0
    .line 108
.end method
