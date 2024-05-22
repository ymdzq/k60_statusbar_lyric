.class public final Lcom/android/wm/shell/pip/tv/TvPipController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onActivityPinned(Ljava/lang/String;III)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/wm/shell/pip/tv/TvPipController;->getPinnedTaskInfo()Landroid/app/TaskInfo;

    .line 2
    move-result-object p2

    .line 5
    sget-boolean p3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 6
    const/4 p4, 0x0

    .line 8
    if-eqz p3, :cond_0

    .line 9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object p3

    .line 14
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 15
    const-string v1, "TvPipController"

    .line 17
    filled-new-array {v1, p3}, [Ljava/lang/Object;

    .line 19
    move-result-object p3

    .line 22
    const v1, -0x4907a289

    .line 23
    const-string v2, "%s: onActivityPinned(), task=%s"

    .line 26
    invoke-static {v0, v1, p4, v2, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :cond_0
    if-eqz p2, :cond_8

    .line 31
    iget-object p3, p2, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 33
    if-nez p3, :cond_1

    .line 35
    goto/16 :goto_4

    .line 37
    :cond_1
    iget p3, p2, Landroid/app/TaskInfo;->taskId:I

    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 41
    iput p3, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPinnedTaskId:I

    .line 43
    iget-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    .line 45
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 50
    iget-object v1, p3, Lcom/android/wm/shell/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 52
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, v2, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    .line 55
    move-result-object v0

    .line 58
    invoke-virtual {p3, v0}, Lcom/android/wm/shell/pip/PipMediaController;->resolveActiveMediaController(Ljava/util/List;)V

    .line 59
    iget-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mActionBroadcastReceiver:Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;

    .line 62
    iget-boolean v0, p3, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->mRegistered:Z

    .line 64
    const/4 v1, 0x1

    .line 66
    if-eqz v0, :cond_2

    .line 67
    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p3, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 70
    iget-object v3, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mContext:Landroid/content/Context;

    .line 72
    iget-object v5, p3, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 74
    const-string v6, "com.android.systemui.permission.SELF"

    .line 76
    iget-object v7, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mMainHandler:Landroid/os/Handler;

    .line 78
    const/4 v8, 0x4

    .line 80
    move-object v4, p3

    .line 81
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 82
    iput-boolean v1, p3, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->mRegistered:Z

    .line 85
    :goto_0
    iget-object p2, p2, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 87
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 92
    iget-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipNotificationController:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    .line 93
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 98
    const-string v3, "TvPipNotificationController"

    .line 100
    if-eqz v0, :cond_3

    .line 102
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 107
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 108
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 113
    const v5, 0x58031688

    .line 114
    const-string v6, "%s: show %s"

    .line 117
    invoke-static {v4, v5, p4, v6, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_3
    iget-object v0, p3, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 122
    if-nez v0, :cond_4

    .line 124
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 126
    if-eqz p2, :cond_7

    .line 128
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 130
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 132
    move-result-object p3

    .line 135
    const v0, -0x4f0b20e5

    .line 136
    const-string v1, "%s: Missing TvPipActionsProvider"

    .line 139
    invoke-static {p2, v0, p4, v1, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 141
    goto :goto_3

    .line 144
    :cond_4
    iput-boolean v1, p3, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mIsNotificationShown:Z

    .line 145
    iput-object p2, p3, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPackageName:Ljava/lang/String;

    .line 147
    iget-object p2, p3, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mContext:Landroid/content/Context;

    .line 149
    if-nez p2, :cond_5

    .line 151
    goto :goto_1

    .line 153
    :cond_5
    invoke-static {p2}, Lcom/android/wm/shell/pip/PipUtils;->getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;

    .line 154
    move-result-object p4

    .line 157
    iget-object p4, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 158
    check-cast p4, Landroid/content/ComponentName;

    .line 160
    if-nez p4, :cond_6

    .line 162
    goto :goto_1

    .line 164
    :cond_6
    :try_start_0
    iget-object v0, p3, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 165
    invoke-virtual {v0, p4}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 167
    move-result-object p4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 171
    move-result-object v0

    .line 174
    const v3, 0x1050005    # @android:dimen/notification_large_icon_width

    .line 175
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 178
    move-result v0

    .line 181
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 182
    move-result-object p2

    .line 185
    const v3, 0x1050006    # @android:dimen/notification_large_icon_height

    .line 186
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 189
    move-result p2

    .line 192
    invoke-static {p4, v0, p2, v1}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/Bitmap;

    .line 193
    move-result-object p2

    .line 196
    goto :goto_2

    .line 197
    :catch_0
    :goto_1
    move-object p2, v2

    .line 198
    :goto_2
    iput-object p2, p3, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mActivityIcon:Landroid/graphics/Bitmap;

    .line 199
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->updateNotificationContent()V

    .line 201
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsController:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    .line 204
    iput-object v2, p2, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mCurrentPlacementBounds:Landroid/graphics/Rect;

    .line 206
    iput-object v2, p2, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPipTargetBounds:Landroid/graphics/Rect;

    .line 208
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->cancelScheduledPlacement()V

    .line 210
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mAppOpsListener:Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 213
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 215
    const/16 p3, 0x43

    .line 217
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsChangedListener:Lcom/android/wm/shell/pip/PipAppOpsListener$1;

    .line 219
    invoke-virtual {p2, p3, p1, p0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 221
    :cond_8
    :goto_4
    return-void
    .line 224
.end method

.method public final onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 2
    move-result p1

    .line 5
    const/4 p2, 0x2

    .line 6
    if-ne p1, p2, :cond_1

    .line 7
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 9
    if-eqz p1, :cond_0

    .line 11
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 13
    const-string p2, "TvPipController"

    .line 15
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 20
    const p3, 0x4f99c2d

    .line 21
    const/4 p4, 0x0

    .line 24
    const-string v0, "%s: onPinnedActivityRestartAttempt()"

    .line 25
    invoke-static {p1, p3, p4, v0, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 30
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->movePipToFullscreen()V

    .line 32
    :cond_1
    return-void
    .line 35
.end method

.method public final onActivityUnpinned()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mAppOpsListener:Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsChangedListener:Lcom/android/wm/shell/pip/PipAppOpsListener$1;

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAppOpsListener;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 10
    return-void
    .line 13
.end method

.method public final onTaskStackChanged()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 7
    const/4 v1, 0x0

    .line 9
    const-string v2, "TvPipController"

    .line 10
    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 14
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 19
    const v4, 0x58723139

    .line 20
    const-string v5, "%s: onTaskStackChanged()"

    .line 23
    invoke-static {v0, v4, v1, v5, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 28
    if-eqz v0, :cond_1

    .line 30
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v0, v1

    .line 34
    :goto_0
    if-eqz v0, :cond_3

    .line 35
    invoke-static {}, Lcom/android/wm/shell/pip/tv/TvPipController;->getPinnedTaskInfo()Landroid/app/TaskInfo;

    .line 37
    move-result-object v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 43
    if-eqz v0, :cond_2

    .line 45
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 47
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 52
    const v3, 0x7c827f8d

    .line 53
    const-string v4, "%s: Pinned task is gone."

    .line 56
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->onPipDisappeared()V

    .line 61
    :cond_3
    return-void
    .line 64
.end method
