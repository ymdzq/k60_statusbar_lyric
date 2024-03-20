.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 2

    .line 1
    const-string v0, "KeyguardViewMediator"

    .line 2
    const-string v1, "Occlude animation cancelled by WM."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 11
    const/16 v0, 0x40

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 15
    return-void
    .line 18
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 6

    .line 1
    const-class p1, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 8
    iget-object p3, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 10
    sget-object p4, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->START:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 12
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 14
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-ne p3, p4, :cond_5

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    .line 20
    const-string p4, "onAnimationStart app = "

    .line 22
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object p4

    .line 30
    invoke-static {p3, p4, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    array-length p3, p2

    .line 34
    move p4, v2

    .line 35
    :goto_0
    if-ge p4, p3, :cond_5

    .line 36
    aget-object v3, p2, p4

    .line 38
    if-eqz v3, :cond_0

    .line 40
    iget-object v4, v3, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    if-eqz v4, :cond_0

    .line 44
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 46
    if-eqz v4, :cond_0

    .line 48
    const-string v5, "com.miui.keyguard.editor.EditorActivity"

    .line 50
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 55
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v4

    .line 59
    if-eqz v4, :cond_0

    .line 60
    move v4, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    move v4, v2

    .line 64
    :goto_1
    if-eqz v4, :cond_4

    .line 65
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardEditorHelper;->releaseEnterSurfaceControl()V

    .line 67
    iget-object p2, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 70
    iput-object p2, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 72
    iput-object p5, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 74
    sget-boolean p2, Lcom/android/keyguard/KeyguardEditorHelper;->DEBUG:Z

    .line 76
    if-eqz p2, :cond_2

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    const-string p3, "leash = "

    .line 82
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object p3, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 87
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string p3, ", mEditLeash.isValid = "

    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object p3, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 97
    if-nez p3, :cond_1

    .line 99
    const-string p3, "null empty"

    .line 101
    goto :goto_2

    .line 103
    :cond_1
    invoke-virtual {p3}, Landroid/view/SurfaceControl;->isValid()Z

    .line 104
    move-result p3

    .line 107
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 108
    move-result-object p3

    .line 111
    :goto_2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    const-string p3, ",mEditorReadyWaitingLeach = "

    .line 115
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-boolean p3, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorReadyWaitingLeach:Z

    .line 120
    invoke-static {p2, p3, v0}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 122
    :cond_2
    iget-object p2, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 125
    if-eqz p2, :cond_3

    .line 127
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 129
    move-result p2

    .line 132
    if-eqz p2, :cond_3

    .line 133
    :try_start_0
    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    .line 135
    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 137
    :try_start_1
    iget-object p3, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 140
    invoke-virtual {p2, p3, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 142
    move-result-object p3

    .line 145
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 149
    goto :goto_4

    .line 152
    :catchall_0
    move-exception p3

    .line 153
    :try_start_3
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    goto :goto_3

    .line 157
    :catchall_1
    move-exception p2

    .line 158
    :try_start_4
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 159
    :goto_3
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 162
    :catchall_2
    move-exception p2

    .line 163
    const-string p3, "apply transaction visible fail"

    .line 164
    invoke-static {v0, p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :cond_3
    :goto_4
    iget-boolean p2, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorReadyWaitingLeach:Z

    .line 169
    if-eqz p2, :cond_6

    .line 171
    iput-boolean v2, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorReadyWaitingLeach:Z

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    .line 175
    const-string p3, "Startup time mEditorReadyWaitingLeach : "

    .line 177
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 182
    move-result-wide p3

    .line 185
    iget-wide v3, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorReadyStartWaitingTime:J

    .line 186
    sub-long/2addr p3, v3

    .line 188
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object p2

    .line 195
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p2, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 199
    iget-object p3, p1, Lcom/android/keyguard/KeyguardEditorHelper;->editorReady:Lcom/android/keyguard/KeyguardEditorHelper$9;

    .line 201
    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardEditorHelper;->handlerEditorReady()V

    .line 206
    goto :goto_5

    .line 209
    :cond_4
    add-int/lit8 p4, p4, 0x1

    .line 210
    goto/16 :goto_0

    .line 212
    :cond_5
    :try_start_5
    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 214
    goto :goto_5

    .line 217
    :catch_0
    move-exception p1

    .line 218
    const-string p2, "finish animation fail"

    .line 219
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 224
    iget-object p2, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 226
    const/4 p3, 0x0

    .line 228
    const/16 p4, 0x40

    .line 229
    invoke-virtual {p1, p4, p3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->createInteractionJankMonitorConf(ILjava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 231
    move-result-object p1

    .line 234
    const-string p3, "OCCLUDE"

    .line 235
    invoke-virtual {p1, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 237
    move-result-object p1

    .line 240
    invoke-virtual {p2, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    .line 241
    const-string p1, "KeyguardViewMediator"

    .line 244
    const-string p2, "OccludeAnimator#onAnimationStart. Set occluded = true."

    .line 246
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 251
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    .line 253
    return-void
    .line 256
.end method
