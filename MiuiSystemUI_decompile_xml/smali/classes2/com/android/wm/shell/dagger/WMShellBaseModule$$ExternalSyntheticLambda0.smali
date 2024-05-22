.class public final synthetic Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/back/BackAnimationController;

    .line 8
    iget-object p0, p1, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    .line 10
    return-object p0

    .line 12
    :pswitch_1
    check-cast p1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 13
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->asSplitScreen()Lcom/android/wm/shell/sosc/SoScSplitScreen;

    .line 15
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_2
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 20
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeImpl:Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

    .line 22
    return-object p0

    .line 24
    :pswitch_3
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 25
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopMode:Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

    .line 27
    return-object p0

    .line 29
    :pswitch_4
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 30
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->asMiuiBubbleNotification()Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleNotification;

    .line 32
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_5
    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 37
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->asBubbles()Lcom/android/wm/shell/bubbles/Bubbles;

    .line 39
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_6
    check-cast p1, Ldagger/Lazy;

    .line 44
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 49
    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 50
    return-object p0

    .line 52
    :pswitch_7
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 53
    iget-object p0, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    .line 55
    return-object p0

    .line 57
    :pswitch_8
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 58
    iget-object p0, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mImpl:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    .line 60
    return-object p0

    .line 62
    :pswitch_9
    check-cast p1, Ldagger/Lazy;

    .line 63
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 65
    move-result-object p0

    .line 68
    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 69
    return-object p0

    .line 71
    :pswitch_a
    check-cast p1, Ldagger/Lazy;

    .line 72
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 74
    move-result-object p0

    .line 77
    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 78
    return-object p0

    .line 80
    :goto_0
    check-cast p1, Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 81
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->asOneHanded()Lcom/android/wm/shell/onehanded/OneHanded;

    .line 83
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 88
.end method
