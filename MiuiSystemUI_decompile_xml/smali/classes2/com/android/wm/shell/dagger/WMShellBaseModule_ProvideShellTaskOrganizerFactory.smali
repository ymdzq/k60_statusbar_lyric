.class public abstract Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideShellTaskOrganizer(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/ShellTaskOrganizer;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f05004b    # @bool/config_registerShellTaskOrganizerOnInit 'true'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/android/wm/shell/sysui/ShellInit;

    .line 15
    invoke-direct {v0}, Lcom/android/wm/shell/sysui/ShellInit;-><init>()V

    .line 17
    move-object v2, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, p1

    .line 22
    :goto_0
    new-instance v0, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 23
    const/4 v4, 0x0

    .line 25
    move-object v1, v0

    .line 26
    move-object v3, p2

    .line 27
    move-object v5, p3

    .line 28
    move-object v6, p4

    .line 29
    move-object v7, p5

    .line 30
    move-object/from16 v8, p6

    .line 31
    move-object/from16 v9, p7

    .line 33
    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/ShellTaskOrganizer;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Landroid/window/ITaskOrganizerController;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 35
    return-object v0
    .line 38
.end method
