.class public abstract Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopModeControllerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideDesktopModeController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/desktopmode/DesktopModeController;
    .locals 11

    .line 1
    new-instance v10, Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 2
    move-object v0, v10

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object/from16 v6, p5

    .line 10
    move-object/from16 v7, p6

    .line 12
    move-object/from16 v8, p7

    .line 14
    move-object/from16 v9, p8

    .line 16
    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/desktopmode/DesktopModeController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 18
    return-object v10
    .line 21
.end method
