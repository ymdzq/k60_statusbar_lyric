.class public abstract Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideBubbleController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/UserManager;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/common/DisplayController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/IWindowManager;)Lcom/android/wm/shell/bubbles/BubbleController;
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v2, p1

    .line 4
    move-object/from16 v3, p2

    .line 6
    move-object/from16 v4, p3

    .line 8
    move-object/from16 v5, p4

    .line 10
    move-object/from16 v6, p5

    .line 12
    move-object/from16 v8, p6

    .line 14
    move-object/from16 v9, p7

    .line 16
    move-object/from16 v10, p8

    .line 18
    move-object/from16 v11, p9

    .line 20
    move-object/from16 v12, p10

    .line 22
    move-object/from16 v14, p11

    .line 24
    move-object/from16 v13, p12

    .line 26
    move-object/from16 v15, p13

    .line 28
    move-object/from16 v16, p14

    .line 30
    move-object/from16 v17, p15

    .line 32
    move-object/from16 v18, p16

    .line 34
    move-object/from16 v19, p17

    .line 36
    move-object/from16 v20, p18

    .line 38
    move-object/from16 v21, p19

    .line 40
    move-object/from16 v22, p20

    .line 42
    move-object/from16 v23, p21

    .line 44
    move-object/from16 v24, p22

    .line 46
    move-object/from16 v25, p23

    .line 48
    new-instance v26, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 50
    move-object/from16 v0, v26

    .line 52
    new-instance v7, Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 54
    move-object/from16 p1, v7

    .line 56
    move-object/from16 p2, v0

    .line 58
    move-object/from16 v27, v1

    .line 60
    move-object/from16 v28, v3

    .line 62
    move-object/from16 v0, p0

    .line 64
    move-object/from16 v3, p1

    .line 66
    move-object/from16 v1, p10

    .line 68
    move-object/from16 p1, v2

    .line 70
    move-object/from16 v2, p18

    .line 72
    invoke-direct {v3, v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 74
    move-object/from16 v2, p1

    .line 77
    move-object/from16 v0, p2

    .line 79
    move-object/from16 v1, v27

    .line 81
    move-object/from16 v3, v28

    .line 83
    invoke-direct/range {v0 .. v25}, Lcom/android/wm/shell/bubbles/BubbleController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/bubbles/BubbleDataRepository;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/UserManager;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/common/DisplayController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/IWindowManager;)V

    .line 85
    return-object v26
    .line 88
.end method
