.class public Lcom/android/systemui/keyguard/KeyguardService;
.super Landroid/app/Service;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBinder:Lcom/android/systemui/keyguard/KeyguardService$2;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final mMiuiMultiWinCallbacks:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;

.field public final mScreenOnCoordinator:Lcom/android/keyguard/mediator/ScreenOnCoordinator;

.field public final mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;


# direct methods
.method public static -$$Nest$smwrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Lcom/android/wm/shell/util/CounterRotator;)[Landroid/view/RemoteAnimationTarget;
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    move/from16 v7, p1

    .line 4
    move-object/from16 v8, p2

    .line 6
    move-object/from16 v9, p4

    .line 8
    new-instance v10, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 12
    const/4 v0, 0x0

    .line 15
    move v11, v0

    .line 16
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 17
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 24
    if-ge v11, v0, :cond_9

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 27
    move-result-object v0

    .line 30
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 35
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 37
    move-result v0

    .line 40
    and-int/lit8 v0, v0, 0x2

    .line 41
    const/4 v1, 0x1

    .line 43
    if-eqz v0, :cond_0

    .line 44
    move v12, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    move v12, v0

    .line 49
    :goto_1
    if-eq v7, v12, :cond_1

    .line 50
    goto :goto_3

    .line 52
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 53
    move-result-object v0

    .line 56
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 60
    move-object v13, v0

    .line 61
    check-cast v13, Landroid/window/TransitionInfo$Change;

    .line 62
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 64
    move-result-object v0

    .line 67
    const/4 v14, -0x1

    .line 68
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 71
    move-result-object v0

    .line 74
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 75
    goto :goto_2

    .line 77
    :cond_2
    move v0, v14

    .line 78
    :goto_2
    if-eq v0, v14, :cond_3

    .line 79
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 81
    move-result-object v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 87
    move-result-object v2

    .line 90
    invoke-virtual {v6, v2}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 91
    move-result-object v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 97
    move-result-object v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    goto :goto_3

    .line 103
    :cond_3
    if-gez v0, :cond_4

    .line 104
    if-nez v7, :cond_4

    .line 106
    :goto_3
    move-object/from16 v1, p3

    .line 108
    goto/16 :goto_6

    .line 110
    :cond_4
    invoke-static {v6, v11}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 112
    move-result v2

    .line 115
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 116
    move-result v0

    .line 119
    and-int/2addr v0, v1

    .line 120
    if-eqz v0, :cond_5

    .line 121
    move v3, v1

    .line 123
    goto :goto_4

    .line 124
    :cond_5
    const/4 v0, 0x0

    .line 125
    move v3, v0

    .line 126
    :goto_4
    move-object v0, v13

    .line 127
    move v1, v2

    .line 128
    move v2, v3

    .line 129
    move-object/from16 v3, p0

    .line 130
    move-object/from16 v4, p2

    .line 132
    move-object/from16 v5, p3

    .line 134
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;IZLandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    .line 136
    move-result-object v15

    .line 139
    if-eqz v12, :cond_8

    .line 140
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 142
    move-result v0

    .line 145
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 146
    move-result v1

    .line 149
    invoke-static {v0, v1}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 150
    move-result v3

    .line 153
    if-eqz v3, :cond_8

    .line 154
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 156
    move-result-object v0

    .line 159
    if-eqz v0, :cond_8

    .line 160
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 162
    move-result v0

    .line 165
    const/4 v1, 0x4

    .line 166
    if-ne v0, v1, :cond_8

    .line 167
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 169
    move-result-object v0

    .line 172
    invoke-virtual {v6, v0}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 173
    move-result-object v0

    .line 176
    if-eqz v0, :cond_6

    .line 177
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 179
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 183
    move-result v1

    .line 186
    int-to-float v4, v1

    .line 187
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 188
    move-result-object v1

    .line 191
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 192
    move-result v1

    .line 195
    int-to-float v5, v1

    .line 196
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 197
    move-result-object v2

    .line 200
    move-object/from16 v0, p4

    .line 201
    move-object/from16 v1, p2

    .line 203
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/util/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    .line 205
    :cond_6
    iget-object v0, v9, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 208
    if-eqz v0, :cond_8

    .line 210
    invoke-virtual {v8, v0, v14}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 212
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 215
    move-result-object v0

    .line 218
    move-object/from16 v1, p3

    .line 219
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    move-result-object v0

    .line 224
    check-cast v0, Landroid/view/SurfaceControl;

    .line 225
    iget-object v2, v9, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 227
    if-nez v2, :cond_7

    .line 229
    goto :goto_5

    .line 231
    :cond_7
    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 232
    goto :goto_5

    .line 235
    :cond_8
    move-object/from16 v1, p3

    .line 236
    :goto_5
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 241
    goto/16 :goto_0

    .line 243
    :cond_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 245
    move-result v0

    .line 248
    new-array v0, v0, [Landroid/view/RemoteAnimationTarget;

    .line 249
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 251
    move-result-object v0

    .line 254
    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    .line 255
    return-object v0
    .line 257
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;Lcom/android/keyguard/mediator/ScreenOnCoordinator;Lcom/android/wm/shell/transition/ShellTransitions;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService$2;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$2;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/systemui/keyguard/KeyguardService$2;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 14
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardService;->mScreenOnCoordinator:Lcom/android/keyguard/mediator/ScreenOnCoordinator;

    .line 16
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardService;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    .line 18
    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardService;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 20
    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardService;->mMiuiMultiWinCallbacks:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final checkPermission()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 14
    const-string v0, "android.permission.CONTROL_KEYGUARD"

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 17
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    return-void

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    const-string v0, "Caller needs permission \'android.permission.CONTROL_KEYGUARD\' to call "

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 41
    const-string v0, "KeyguardService"

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance p0, Ljava/lang/SecurityException;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "Access denied to process: "

    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 56
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ", must have permission android.permission.CONTROL_KEYGUARD"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 71
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0
    .line 75
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/systemui/keyguard/KeyguardService$2;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onCreate()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    .line 8
    invoke-virtual {v1}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    .line 10
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardService;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    .line 13
    if-eqz v1, :cond_0

    .line 15
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 17
    if-nez v1, :cond_1

    .line 19
    :cond_0
    new-instance v1, Landroid/view/RemoteAnimationDefinition;

    .line 21
    invoke-direct {v1}, Landroid/view/RemoteAnimationDefinition;-><init>()V

    .line 23
    new-instance v8, Landroid/view/RemoteAnimationAdapter;

    .line 26
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    .line 33
    iget-object v4, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    .line 35
    invoke-direct {v3, v2, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    .line 37
    const-wide/16 v4, 0x0

    .line 40
    const-wide/16 v11, 0x0

    .line 42
    const-wide/16 v6, 0x0

    .line 44
    move-object v2, v8

    .line 46
    invoke-direct/range {v2 .. v7}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 47
    const/16 v2, 0x14

    .line 50
    invoke-virtual {v1, v2, v8}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    .line 52
    const/16 v2, 0x15

    .line 55
    invoke-virtual {v1, v2, v8}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    .line 57
    new-instance v2, Landroid/view/RemoteAnimationAdapter;

    .line 60
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 62
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    new-instance v14, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    .line 67
    iget-object v4, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;

    .line 69
    invoke-direct {v14, v3, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    .line 71
    const-wide/16 v15, 0x0

    .line 74
    const-wide/16 v17, 0x0

    .line 76
    move-object v13, v2

    .line 78
    invoke-direct/range {v13 .. v18}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 79
    const/16 v3, 0x16

    .line 82
    invoke-virtual {v1, v3, v2}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    .line 84
    new-instance v2, Landroid/view/RemoteAnimationAdapter;

    .line 87
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    .line 94
    iget-object v4, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeByDreamAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    .line 96
    invoke-direct {v5, v3, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    .line 98
    const-wide/16 v13, 0x0

    .line 101
    const-wide/16 v6, 0x0

    .line 103
    const-wide/16 v8, 0x0

    .line 105
    move-object v4, v2

    .line 107
    invoke-direct/range {v4 .. v9}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 108
    const/16 v3, 0x21

    .line 111
    invoke-virtual {v1, v3, v2}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    .line 113
    new-instance v2, Landroid/view/RemoteAnimationAdapter;

    .line 116
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 118
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    new-instance v10, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    .line 123
    iget-object v4, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnoccludeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    .line 125
    invoke-direct {v10, v3, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V

    .line 127
    move-object v9, v2

    .line 130
    invoke-direct/range {v9 .. v14}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 131
    const/16 v3, 0x17

    .line 134
    invoke-virtual {v1, v3, v2}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    .line 136
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 139
    move-result-object v2

    .line 142
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardService;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    const/4 v0, 0x0

    .line 148
    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityTaskManager;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

    .line 149
    :cond_1
    return-void
    .line 152
.end method
