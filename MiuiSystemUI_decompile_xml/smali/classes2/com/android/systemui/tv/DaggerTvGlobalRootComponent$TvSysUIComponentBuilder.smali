.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/tv/TvSysUIComponent$Builder;


# instance fields
.field public setBackAnimation:Ljava/util/Optional;

.field public setBubbles:Ljava/util/Optional;

.field public setDesktopMode:Ljava/util/Optional;

.field public setDisplayAreaHelper:Ljava/util/Optional;

.field public setKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

.field public setMiuiBubbleNotification:Ljava/util/Optional;

.field public setMiuiMultiWinCallbacks:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;

.field public setOneHanded:Ljava/util/Optional;

.field public setPip:Ljava/util/Optional;

.field public setRecentTasks:Ljava/util/Optional;

.field public setShell:Lcom/android/wm/shell/sysui/ShellInterface;

.field public setSoScSplitScreen:Ljava/util/Optional;

.field public setSplitScreen:Ljava/util/Optional;

.field public setSplitScreenController:Ljava/util/Optional;

.field public setStartingSurface:Ljava/util/Optional;

.field public setTaskViewFactory:Ljava/util/Optional;

.field public setTransientObserver:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

.field public setTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

.field public setWindowDecorRectDispatcher:Ljava/util/Optional;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/android/systemui/dagger/SysUIComponent;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->build()Lcom/android/systemui/tv/TvSysUIComponent;

    move-result-object p0

    return-object p0
.end method

.method public final build()Lcom/android/systemui/tv/TvSysUIComponent;
    .locals 31

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setShell:Lcom/android/wm/shell/sysui/ShellInterface;

    const-class v2, Lcom/android/wm/shell/sysui/ShellInterface;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setPip:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 5
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 7
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    const-class v2, Lcom/android/wm/shell/transition/ShellTransitions;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    const-class v2, Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 10
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setStartingSurface:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 11
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setDisplayAreaHelper:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setRecentTasks:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setSplitScreenController:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setBackAnimation:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 15
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setDesktopMode:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 16
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setSoScSplitScreen:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 17
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setWindowDecorRectDispatcher:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setTransientObserver:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

    const-class v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 19
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setMiuiMultiWinCallbacks:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;

    const-class v2, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 20
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setMiuiBubbleNotification:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v2, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 21
    new-instance v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    new-instance v5, Lcom/android/systemui/util/leak/LeakModule;

    invoke-direct {v5}, Lcom/android/systemui/util/leak/LeakModule;-><init>()V

    new-instance v6, Lcom/android/systemui/dagger/NightDisplayListenerModule;

    invoke-direct {v6}, Lcom/android/systemui/dagger/NightDisplayListenerModule;-><init>()V

    new-instance v7, Lcom/android/systemui/dagger/SharedLibraryModule;

    invoke-direct {v7}, Lcom/android/systemui/dagger/SharedLibraryModule;-><init>()V

    new-instance v8, Lcom/android/systemui/keyguard/dagger/KeyguardModule;

    invoke-direct {v8}, Lcom/android/systemui/keyguard/dagger/KeyguardModule;-><init>()V

    new-instance v9, Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;

    invoke-direct {v9}, Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;-><init>()V

    new-instance v10, Lcom/android/systemui/unfold/SysUIUnfoldModule;

    invoke-direct {v10}, Lcom/android/systemui/unfold/SysUIUnfoldModule;-><init>()V

    new-instance v11, Lcom/android/systemui/statusbar/dagger/MiuiStatusBarModule;

    invoke-direct {v11}, Lcom/android/systemui/statusbar/dagger/MiuiStatusBarModule;-><init>()V

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setShell:Lcom/android/wm/shell/sysui/ShellInterface;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setPip:Ljava/util/Optional;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setStartingSurface:Ljava/util/Optional;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setDisplayAreaHelper:Ljava/util/Optional;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setRecentTasks:Ljava/util/Optional;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setSplitScreenController:Ljava/util/Optional;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setBackAnimation:Ljava/util/Optional;

    move-object/from16 v24, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setDesktopMode:Ljava/util/Optional;

    move-object/from16 v25, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setSoScSplitScreen:Ljava/util/Optional;

    move-object/from16 v26, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setWindowDecorRectDispatcher:Ljava/util/Optional;

    move-object/from16 v27, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setTransientObserver:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

    move-object/from16 v28, v2

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setMiuiMultiWinCallbacks:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setMiuiBubbleNotification:Ljava/util/Optional;

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v29, v2

    move-object/from16 v30, v0

    invoke-direct/range {v3 .. v30}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/util/leak/LeakModule;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/dagger/SharedLibraryModule;Lcom/android/systemui/keyguard/dagger/KeyguardModule;Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;Lcom/android/systemui/unfold/SysUIUnfoldModule;Lcom/android/systemui/statusbar/dagger/MiuiStatusBarModule;Lcom/android/wm/shell/sysui/ShellInterface;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/ShellTransitions;Lcom/android/wm/shell/keyguard/KeyguardTransitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;Ljava/util/Optional;)V

    return-object v1
.end method

.method public final setBackAnimation(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setBackAnimation:Ljava/util/Optional;

    return-object p0
.end method

.method public final setBackAnimation(Ljava/util/Optional;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setBackAnimation:Ljava/util/Optional;

    return-object p0
.end method

.method public final setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    return-object p0
.end method

.method public final setBubbles(Ljava/util/Optional;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    return-object p0
.end method

.method public final setDesktopMode(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setDesktopMode:Ljava/util/Optional;

    return-object p0
.end method

.method public final setDesktopMode(Ljava/util/Optional;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setDesktopMode:Ljava/util/Optional;

    return-object p0
.end method

.method public final setDisplayAreaHelper(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setDisplayAreaHelper:Ljava/util/Optional;

    return-object p0
.end method

.method public final setDisplayAreaHelper(Ljava/util/Optional;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setDisplayAreaHelper:Ljava/util/Optional;

    return-object p0
.end method

.method public final setKeyguardTransitions(Lcom/android/wm/shell/keyguard/KeyguardTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    return-object p0
.end method

.method public final setKeyguardTransitions(Lcom/android/wm/shell/keyguard/KeyguardTransitions;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setKeyguardTransitions:Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    return-object p0
.end method

.method public final setMiuiBubbleNotification(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setMiuiBubbleNotification:Ljava/util/Optional;

    return-object p0
.end method

.method public final setMiuiBubbleNotification(Ljava/util/Optional;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setMiuiBubbleNotification:Ljava/util/Optional;

    return-object p0
.end method

.method public final setMiuiMultiWinCallbacks(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setMiuiMultiWinCallbacks:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;

    return-object p0
.end method

.method public final setMiuiMultiWinCallbacks(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setMiuiMultiWinCallbacks:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;

    return-object p0
.end method

.method public final setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    return-object p0
.end method

.method public final setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    return-object p0
.end method

.method public final setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setPip:Ljava/util/Optional;

    return-object p0
.end method

.method public final setPip(Ljava/util/Optional;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setPip:Ljava/util/Optional;

    return-object p0
.end method

.method public final setRecentTasks(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setRecentTasks:Ljava/util/Optional;

    return-object p0
.end method

.method public final setRecentTasks(Ljava/util/Optional;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setRecentTasks:Ljava/util/Optional;

    return-object p0
.end method

.method public final setShell(Lcom/android/wm/shell/sysui/ShellInterface;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setShell:Lcom/android/wm/shell/sysui/ShellInterface;

    return-object p0
.end method

.method public final setShell(Lcom/android/wm/shell/sysui/ShellInterface;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setShell:Lcom/android/wm/shell/sysui/ShellInterface;

    return-object p0
.end method

.method public final setSoScSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setSoScSplitScreen:Ljava/util/Optional;

    return-object p0
.end method

.method public final setSoScSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setSoScSplitScreen:Ljava/util/Optional;

    return-object p0
.end method

.method public final setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    return-object p0
.end method

.method public final setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    return-object p0
.end method

.method public final setSplitScreenController(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setSplitScreenController:Ljava/util/Optional;

    return-object p0
.end method

.method public final setSplitScreenController(Ljava/util/Optional;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setSplitScreenController:Ljava/util/Optional;

    return-object p0
.end method

.method public final setStartingSurface(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setStartingSurface:Ljava/util/Optional;

    return-object p0
.end method

.method public final setStartingSurface(Ljava/util/Optional;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setStartingSurface:Ljava/util/Optional;

    return-object p0
.end method

.method public final setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    return-object p0
.end method

.method public final setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    return-object p0
.end method

.method public final setTransientObserver(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setTransientObserver:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

    return-object p0
.end method

.method public final setTransientObserver(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setTransientObserver:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

    return-object p0
.end method

.method public final setTransitions(Lcom/android/wm/shell/transition/ShellTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    return-object p0
.end method

.method public final setTransitions(Lcom/android/wm/shell/transition/ShellTransitions;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    return-object p0
.end method

.method public final setWindowDecorRectDispatcher(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setWindowDecorRectDispatcher:Ljava/util/Optional;

    return-object p0
.end method

.method public final setWindowDecorRectDispatcher(Ljava/util/Optional;)Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;->setWindowDecorRectDispatcher:Ljava/util/Optional;

    return-object p0
.end method
