.class public final Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getBackgroundColor(Landroid/app/TaskInfo;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 7
    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    .line 9
    iget v2, p1, Landroid/app/TaskInfo;->taskId:I

    .line 11
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 13
    move-result v1

    .line 16
    if-ltz v1, :cond_0

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    .line 21
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 23
    move-result p0

    .line 26
    monitor-exit v0

    .line 27
    return p0

    .line 28
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    .line 32
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    const-string v0, "ShellStartingWindow"

    .line 39
    iget-object v1, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 41
    const/4 v2, 0x0

    .line 43
    if-nez v1, :cond_1

    .line 44
    goto/16 :goto_2

    .line 46
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 48
    iget v4, p1, Landroid/app/TaskInfo;->userId:I

    .line 50
    :try_start_1
    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 54
    move-result-object v6

    .line 57
    const/4 v7, 0x4

    .line 58
    invoke-virtual {v5, v3, v7, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 59
    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 63
    move-result-object v6

    .line 66
    invoke-interface {v6, v3, v4}, Landroid/content/pm/IPackageManager;->getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v4

    .line 76
    const/4 v6, 0x0

    .line 77
    invoke-virtual {v4, v3, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    move-result v3

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move v3, v2

    .line 83
    :goto_0
    if-eqz v3, :cond_3

    .line 84
    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    .line 87
    move-result v3

    .line 90
    if-eqz v3, :cond_4

    .line 91
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    .line 93
    move-result v3

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    const v3, 0x10302e3    # @android:style/Theme.DeviceDefault.DayNight

    .line 98
    :goto_1
    invoke-virtual {v5}, Landroid/content/Context;->getThemeResId()I

    .line 101
    move-result v1

    .line 104
    if-eq v3, v1, :cond_5

    .line 105
    invoke-virtual {v5, v3}, Landroid/content/Context;->setTheme(I)V

    .line 107
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    new-instance p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 115
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;-><init>()V

    .line 117
    invoke-static {v5, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getWindowAttrs(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)V

    .line 120
    invoke-static {v5, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->peekWindowBGColor(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    .line 123
    move-result v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    goto :goto_2

    .line 127
    :catch_0
    move-exception p0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    const-string v3, "failed get starting window background color at taskId: "

    .line 131
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 144
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    goto :goto_2

    .line 148
    :catch_1
    move-exception p0

    .line 149
    const-string v1, "Failed creating package context with package name "

    .line 150
    const-string v4, " for user "

    .line 152
    invoke-static {v1, v3, v4}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    move-result-object v1

    .line 157
    iget p1, p1, Landroid/app/TaskInfo;->userId:I

    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 166
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :goto_2
    if-eqz v2, :cond_6

    .line 170
    goto :goto_3

    .line 172
    :cond_6
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    .line 173
    move-result v2

    .line 176
    :goto_3
    return v2

    .line 177
    :catchall_0
    move-exception p0

    .line 178
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    throw p0
    .line 180
.end method
