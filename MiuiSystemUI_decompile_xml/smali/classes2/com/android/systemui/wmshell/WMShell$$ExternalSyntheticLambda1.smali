.class public final synthetic Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wmshell/WMShell;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/WMShell;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wmshell/WMShell;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wmshell/WMShell;

    .line 8
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopMode;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$16;

    .line 15
    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$16;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiMainExecutor:Ljava/util/concurrent/Executor;

    .line 20
    invoke-interface {p1, v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopMode;->addVisibleTasksListener(Lcom/android/systemui/wmshell/WMShell$16;Ljava/util/concurrent/Executor;)V

    .line 22
    return-void

    .line 25
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wmshell/WMShell;

    .line 26
    check-cast p1, Lcom/android/wm/shell/onehanded/OneHanded;

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/WMShell;->initOneHanded(Lcom/android/wm/shell/onehanded/OneHanded;)V

    .line 30
    return-void

    .line 33
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wmshell/WMShell;

    .line 34
    check-cast p1, Lcom/android/wm/shell/sosc/SoScSplitScreen;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$7;

    .line 41
    const/4 v1, 0x1

    .line 43
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/wmshell/WMShell$7;-><init>(Ljava/lang/Object;I)V

    .line 44
    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShell;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 47
    iget-object v2, v2, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$8;

    .line 54
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/wmshell/WMShell$8;-><init>(Ljava/lang/Object;I)V

    .line 56
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 61
    return-void

    .line 64
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wmshell/WMShell;

    .line 65
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreen;

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/WMShell;->initSplitScreen(Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    .line 69
    return-void

    .line 72
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wmshell/WMShell;

    .line 73
    check-cast p1, Lcom/android/wm/shell/pip/Pip;

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/WMShell;->initPip(Lcom/android/wm/shell/pip/Pip;)V

    .line 77
    return-void

    .line 80
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wmshell/WMShell;

    .line 81
    check-cast p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectDispatcher;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$5;

    .line 88
    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$5;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    .line 90
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiMainExecutor:Ljava/util/concurrent/Executor;

    .line 93
    invoke-interface {p1, v0, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectDispatcher;->registerWindowDecorRectListener(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectDispatcher$WindowDecorRectListener;Ljava/util/concurrent/Executor;)V

    .line 95
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 100
.end method
