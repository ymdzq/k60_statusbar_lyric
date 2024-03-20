.class Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;


# direct methods
.method public static synthetic $r8$lambda$SC8MCZuhdmH2qupgLrWQmhCJRkE(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZIILcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$1;->lambda$onPreSoScStateChanged$1(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZIILcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$fPlL92f7RfbEEqIFE4m6jZz54fc(ZLcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$1;->lambda$setSplitScreenResizing$2(ZLcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$vkfi-wGLPbHSQAgcwon7Ex9Seqk(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZIILcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$1;->lambda$onSoScStateChanged$0(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZIILcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$1;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method

.method private static synthetic lambda$onPreSoScStateChanged$1(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZIILcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    .locals 9

    .line 1
    move-object/from16 v0, p8

    .line 2
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    move v6, p5

    .line 9
    move v7, p6

    .line 10
    move/from16 v8, p7

    .line 11
    invoke-interface/range {v0 .. v8}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;->onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V

    .line 13
    return-void
    .line 16
.end method

.method private static synthetic lambda$onSoScStateChanged$0(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZIILcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    .locals 10

    .line 1
    move-object/from16 v0, p9

    .line 2
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object v6, p5

    .line 9
    move/from16 v7, p6

    .line 10
    move/from16 v8, p7

    .line 12
    move/from16 v9, p8

    .line 14
    invoke-interface/range {v0 .. v9}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;->onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V

    .line 16
    return-void
    .line 19
.end method

.method private static synthetic lambda$setSplitScreenResizing$2(ZLcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;->setSplitScreenResizing(Z)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$1;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;

    .line 3
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->-$$Nest$fgetmListener(Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 5
    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    .line 9
    const-string v1, "SingleInstanceRemoteListener"

    .line 11
    if-nez v0, :cond_0

    .line 13
    const-string v0, "Failed remote call on null listener"

    .line 15
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    move-object v10, v0

    .line 21
    check-cast v10, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;

    .line 22
    move-object v2, p1

    .line 24
    move-object v3, p2

    .line 25
    move-object v4, p3

    .line 26
    move v5, p4

    .line 27
    move/from16 v6, p5

    .line 28
    move/from16 v7, p6

    .line 30
    move/from16 v8, p7

    .line 32
    move/from16 v9, p8

    .line 34
    invoke-static/range {v2 .. v10}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$1;->$r8$lambda$SC8MCZuhdmH2qupgLrWQmhCJRkE(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZIILcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string v2, "Failed remote call"

    .line 41
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :goto_0
    return-void
    .line 46
.end method

.method public onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$1;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;

    .line 3
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->-$$Nest$fgetmListener(Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 5
    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    .line 9
    const-string v1, "SingleInstanceRemoteListener"

    .line 11
    if-nez v0, :cond_0

    .line 13
    const-string v0, "Failed remote call on null listener"

    .line 15
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    move-object v11, v0

    .line 21
    check-cast v11, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;

    .line 22
    move-object v2, p1

    .line 24
    move-object v3, p2

    .line 25
    move-object v4, p3

    .line 26
    move/from16 v5, p4

    .line 27
    move-object/from16 v6, p5

    .line 29
    move-object/from16 v7, p6

    .line 31
    move/from16 v8, p7

    .line 33
    move/from16 v9, p8

    .line 35
    move/from16 v10, p9

    .line 37
    invoke-static/range {v2 .. v11}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$1;->$r8$lambda$vkfi-wGLPbHSQAgcwon7Ex9Seqk(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZIILcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v2, "Failed remote call"

    .line 44
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :goto_0
    return-void
    .line 49
.end method

.method public setSplitScreenResizing(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$1;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;

    .line 2
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->-$$Nest$fgetmListener(Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 4
    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    .line 8
    const-string v0, "SingleInstanceRemoteListener"

    .line 10
    if-nez p0, :cond_0

    .line 12
    const-string p0, "Failed remote call on null listener"

    .line 14
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    check-cast p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;

    .line 20
    invoke-static {p1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$1;->$r8$lambda$fPlL92f7RfbEEqIFE4m6jZz54fc(ZLcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const-string p1, "Failed remote call"

    .line 27
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :goto_0
    return-void
.end method
