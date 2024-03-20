.class public final synthetic Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 10
    iget p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;->f$1:I

    .line 12
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 14
    iget-object v3, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 16
    iget-object v4, v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 23
    check-cast v4, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    .line 24
    instance-of v5, v4, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;

    .line 26
    if-eqz v5, :cond_0

    .line 28
    check-cast v4, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    move-object v4, v1

    .line 33
    :goto_0
    if-eqz v4, :cond_1

    .line 34
    invoke-virtual {v4}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->hasImeSurface()Z

    .line 36
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    iget-object v4, v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mTmpRemovalInfo:Landroid/window/StartingWindowRemovalInfo;

    .line 42
    iput p0, v4, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    .line 44
    invoke-virtual {v3, v4, v2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(Landroid/window/StartingWindowRemovalInfo;Z)V

    .line 46
    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 49
    iget-object v3, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 56
    check-cast v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    .line 57
    instance-of v4, v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;

    .line 59
    if-eqz v4, :cond_2

    .line 61
    move-object v1, v3

    .line 63
    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;

    .line 64
    :cond_2
    if-eqz v1, :cond_3

    .line 66
    invoke-virtual {v1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->hasImeSurface()Z

    .line 68
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mTmpRemovalInfo:Landroid/window/StartingWindowRemovalInfo;

    .line 74
    iput p0, v1, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(Landroid/window/StartingWindowRemovalInfo;Z)V

    .line 78
    :cond_3
    return-void

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 82
    iget p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;->f$1:I

    .line 84
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 86
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    .line 88
    invoke-virtual {v0, p0, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->onAppSplashScreenViewRemoved(IZ)V

    .line 90
    return-void

    .line 93
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 94
    iget p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda2;->f$1:I

    .line 96
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 98
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    .line 100
    iget-object v3, v0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    .line 102
    iget-object v3, v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    .line 104
    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v3

    .line 109
    check-cast v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    .line 110
    instance-of v4, v3, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    .line 112
    if-eqz v4, :cond_4

    .line 114
    check-cast v3, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    .line 116
    goto :goto_2

    .line 118
    :cond_4
    move-object v3, v1

    .line 119
    :goto_2
    if-eqz v3, :cond_5

    .line 120
    iget-object v3, v3, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSplashView:Landroid/window/SplashScreenView;

    .line 122
    goto :goto_3

    .line 124
    :cond_5
    move-object v3, v1

    .line 125
    :goto_3
    if-eqz v3, :cond_6

    .line 126
    invoke-virtual {v3}, Landroid/window/SplashScreenView;->isCopyable()Z

    .line 128
    move-result v4

    .line 131
    if-eqz v4, :cond_6

    .line 132
    new-instance v4, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 134
    invoke-direct {v4, v3}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;-><init>(Landroid/window/SplashScreenView;)V

    .line 136
    new-instance v5, Landroid/os/RemoteCallback;

    .line 139
    new-instance v6, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda3;

    .line 141
    invoke-direct {v6, v0, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;I)V

    .line 143
    invoke-direct {v5, v6}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 146
    invoke-virtual {v4, v5}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->setClientCallback(Landroid/os/RemoteCallback;)V

    .line 149
    invoke-virtual {v3}, Landroid/window/SplashScreenView;->onCopied()V

    .line 152
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mAnimatedSplashScreenSurfaceHosts:Landroid/util/SparseArray;

    .line 155
    invoke-virtual {v3}, Landroid/window/SplashScreenView;->getSurfaceHost()Landroid/view/SurfaceControlViewHost;

    .line 157
    move-result-object v3

    .line 160
    invoke-virtual {v0, p0, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 161
    goto :goto_4

    .line 164
    :cond_6
    move-object v4, v1

    .line 165
    :goto_4
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 166
    if-eqz v0, :cond_8

    .line 168
    int-to-long v5, p0

    .line 170
    if-eqz v4, :cond_7

    .line 171
    goto :goto_5

    .line 173
    :cond_7
    const/4 v2, 0x0

    .line 174
    :goto_5
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 175
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    move-result-object v3

    .line 180
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    move-result-object v2

    .line 184
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 185
    move-result-object v2

    .line 188
    const v3, -0x5e6a209a

    .line 189
    const/16 v5, 0xd

    .line 192
    invoke-static {v0, v3, v5, v1, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_8
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 197
    move-result-object v0

    .line 200
    invoke-virtual {v0, p0, v4}, Landroid/app/ActivityTaskManager;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    .line 201
    return-void

    .line 204
    nop

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 206
.end method
