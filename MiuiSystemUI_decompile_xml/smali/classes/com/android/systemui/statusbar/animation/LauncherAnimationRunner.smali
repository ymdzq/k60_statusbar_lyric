.class public abstract Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnimationResult:Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;

.field public final mHandler:Landroid/os/Handler;

.field public final mStartAtFrontOfQueue:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    .line 5
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$$ExternalSyntheticLambda0;

    .line 4
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;)V

    .line 6
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 9
    move-result-object p0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 14
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    return-void
    .line 20
.end method

.method public final bridge synthetic onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;->onAnimationStart$com$android$systemui$shared$system$RemoteAnimationRunnerCompat(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onAnimationStart$com$android$systemui$shared$system$RemoteAnimationRunnerCompat(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 6

    .line 1
    new-instance p1, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$$ExternalSyntheticLambda0;

    .line 2
    invoke-direct {p1, p5}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$$ExternalSyntheticLambda0;-><init>(Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 4
    const-string p3, "onAnimationStart"

    .line 7
    const-string p4, "LauncherAnimationRunner"

    .line 9
    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    const/4 p3, 0x1

    .line 14
    if-eqz p2, :cond_4

    .line 15
    array-length p5, p2

    .line 17
    const/4 v0, 0x0

    .line 18
    move v1, v0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v0, p5, :cond_2

    .line 21
    aget-object v3, p2, v0

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    const-string v5, "onAnimationStart:   mode="

    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget v5, v3, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v5, "   taskId="

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v5, v3, Landroid/view/RemoteAnimationTarget;->taskId:I

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v5, "   isTranslucent="

    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-boolean v5, v3, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 60
    invoke-static {p4, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget v3, v3, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 64
    if-nez v3, :cond_0

    .line 66
    move v1, p3

    .line 68
    :cond_0
    if-ne v3, p3, :cond_1

    .line 69
    move v2, p3

    .line 71
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    if-eqz v1, :cond_3

    .line 75
    if-nez v2, :cond_5

    .line 77
    :cond_3
    new-instance p5, Ljava/lang/StringBuilder;

    .line 79
    const-string v0, "onAnimationStart: ERROR targetCompats is not correct hasOpen="

    .line 81
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    const-string v0, ", hasClose="

    .line 89
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p5

    .line 100
    invoke-static {p4, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    goto :goto_1

    .line 104
    :cond_4
    const-string p5, "onAnimationStart: ERROR targetCompats is null"

    .line 105
    invoke-static {p4, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_5
    :goto_1
    const-class p4, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchController;

    .line 110
    invoke-static {p4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    move-result-object p4

    .line 115
    check-cast p4, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchController;

    .line 116
    iput-boolean p3, p4, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchController;->isAnimationShowing:Z

    .line 118
    iget-object p4, p4, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchController;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 120
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    const-string p5, "OverviewProxyService"

    .line 125
    :try_start_0
    iget-object v0, p4, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 127
    if-eqz v0, :cond_6

    .line 129
    const-string v0, "onFocusNotifClicked: "

    .line 131
    invoke-static {p5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p4, p4, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 136
    check-cast p4, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 138
    iget-object v0, p4, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 140
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 142
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :try_start_1
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 146
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 148
    iget-object p4, p4, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 151
    const/16 v1, 0x36

    .line 153
    const/4 v2, 0x0

    .line 155
    invoke-interface {p4, v1, v0, v2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    goto :goto_2

    .line 162
    :catchall_0
    move-exception p4

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    throw p4

    .line 167
    :cond_6
    const-string p4, "Failed to get overview proxy to notify focused notification clicked."

    .line 168
    invoke-static {p5, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    goto :goto_2

    .line 173
    :catch_0
    move-exception p4

    .line 174
    const-string v0, "Failed to call onFocusNotifClicked()"

    .line 175
    invoke-static {p5, v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :goto_2
    new-instance p4, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$$ExternalSyntheticLambda1;

    .line 180
    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$$ExternalSyntheticLambda0;[Landroid/view/RemoteAnimationTarget;)V

    .line 182
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    .line 185
    if-eqz p1, :cond_7

    .line 187
    iget-object p0, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    .line 189
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 191
    move-result-object p1

    .line 194
    invoke-virtual {p1, p4}, Landroid/os/Message;->setCallback(Ljava/lang/Runnable;)Landroid/os/Message;

    .line 195
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 198
    goto :goto_3

    .line 201
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    .line 202
    invoke-static {p0, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 204
    move-result-object p1

    .line 207
    invoke-virtual {p1, p3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 208
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    :goto_3
    return-void
    .line 214
.end method
