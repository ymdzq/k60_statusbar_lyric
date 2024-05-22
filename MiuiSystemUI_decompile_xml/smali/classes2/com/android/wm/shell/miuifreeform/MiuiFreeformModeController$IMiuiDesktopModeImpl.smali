.class Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;
.super Lcom/android/wm/shell/miuidesktopmode/IMiuiDesktopMode$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# instance fields
.field callback:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;

.field private mIsFreeformInElude:Z

.field private mIsFreeformKillingAll:Z

.field private mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

.field taskStateListener:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;

.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;


# direct methods
.method public static synthetic $r8$lambda$47a4VPtyLE8wHzFz7AbDJPnGjfs(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->lambda$freeformToElude$1()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$_shCAY29-L7pMV_0YxYCSD3cdOE(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->lambda$freeformKillAll$3()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$ow9TpheM9Aj9KPzwfKu8cAHZx-w(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->lambda$freeformEludeToShow$2()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$v_SA11WqXJ7LrbbaQLOaHBawfyg(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->lambda$invalidate$0()V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetmIsFreeformInElude(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mIsFreeformInElude:Z

    .line 2
    return p0
    .line 4
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 2
    invoke-direct {p0}, Lcom/android/wm/shell/miuidesktopmode/IMiuiDesktopMode$Stub;-><init>()V

    .line 4
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mIsFreeformInElude:Z

    .line 8
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mIsFreeformKillingAll:Z

    .line 10
    new-instance p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$1;

    .line 12
    invoke-direct {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$1;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;)V

    .line 14
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->callback:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;

    .line 17
    new-instance p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$2;

    .line 19
    invoke-direct {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$2;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;)V

    .line 21
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->taskStateListener:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;

    .line 24
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 26
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getmMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 28
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMiuiInfinityModeDragHandler()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 32
    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->callback:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;

    .line 36
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->addAnimatorStateCallback(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V

    .line 38
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 41
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getmMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 43
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMiuiInfinityModeDragHandler()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 47
    move-result-object p1

    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->taskStateListener:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;

    .line 51
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->addTaskStateCallback(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V

    .line 53
    return-void
    .line 56
.end method

.method private synthetic lambda$freeformEludeToShow$2()V
    .locals 7

    .line 1
    const-string v0, "freeformEludeToShow: start."

    .line 2
    const-string v1, "MiuiFreeformModeController"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mIsFreeformInElude:Z

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string p0, "freeformEludeToShow: not elude."

    .line 13
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mIsFreeformInElude:Z

    .line 20
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 22
    invoke-static {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 24
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 28
    move-result-object v2

    .line 31
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v3

    .line 35
    if-ge v0, v3, :cond_5

    .line 36
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v3

    .line 47
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 48
    invoke-static {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 50
    move-result-object v4

    .line 53
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 54
    move-result-object v4

    .line 57
    if-nez v4, :cond_1

    .line 58
    const-string v3, "freeformEludeToShow: miuiFreeformModeTaskInfo is null."

    .line 60
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isFreeformEludeAnimation()Z

    .line 66
    move-result v5

    .line 69
    if-nez v5, :cond_2

    .line 70
    const-string v4, "freeformEludeToShow: miuiFreeformModeTaskInfo not elude. taskId="

    .line 72
    invoke-static {v4, v3, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    goto :goto_1

    .line 77
    :cond_2
    const/high16 v5, 0x200000

    .line 78
    invoke-static {v5, v3}, Lmiui/app/MiuiFreeFormManager;->dispatchFreeFormStackModeChanged(II)V

    .line 80
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 83
    move-result v5

    .line 86
    if-eqz v5, :cond_4

    .line 87
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 89
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->isAutoLayoutMode()Z

    .line 91
    move-result v5

    .line 94
    if-eqz v5, :cond_3

    .line 95
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 97
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getDestinationAfterAutoLayout(I)Landroid/graphics/Rect;

    .line 99
    move-result-object v5

    .line 102
    if-eqz v5, :cond_3

    .line 103
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 105
    :cond_3
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 108
    invoke-static {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeGestureHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 110
    move-result-object v5

    .line 113
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreefromAnimation()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 114
    move-result-object v5

    .line 117
    const/16 v6, 0xf

    .line 118
    invoke-virtual {v5, v6, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    .line 123
    const-string v5, "freeformEludeToShow: taskId="

    .line 125
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v3

    .line 136
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 140
    goto :goto_0

    .line 142
    :cond_5
    const-string p0, "freeformEludeToShow: end."

    .line 143
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
    .line 148
.end method

.method private synthetic lambda$freeformKillAll$3()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mIsFreeformInElude:Z

    .line 2
    const-string v1, "MiuiFreeformModeController"

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const-string p0, "freeformKillAll: tasks in elude."

    .line 8
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mIsFreeformKillingAll:Z

    .line 14
    if-eqz v0, :cond_1

    .line 16
    const-string p0, "freeformKillAll running."

    .line 18
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void

    .line 23
    :cond_1
    const-string v0, "freeformKillAll start."

    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mIsFreeformKillingAll:Z

    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 32
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 38
    move-result-object v0

    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v0, :cond_7

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    goto/16 :goto_2

    .line 51
    :cond_2
    move v3, v2

    .line 53
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v4

    .line 57
    if-ge v3, v4, :cond_6

    .line 58
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v4

    .line 63
    check-cast v4, Ljava/lang/Integer;

    .line 64
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 66
    move-result v4

    .line 69
    invoke-static {v4}, Lmiui/app/MiuiFreeFormManager;->isFrontFreeFormStackInfo(I)Z

    .line 70
    move-result v5

    .line 73
    if-nez v5, :cond_3

    .line 74
    const-string v4, "freeformKillAll miuiFreeformModeTaskInfo in front, skipped."

    .line 76
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    goto :goto_1

    .line 81
    :cond_3
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 82
    invoke-static {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 84
    move-result-object v5

    .line 87
    invoke-virtual {v5, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 88
    move-result-object v5

    .line 91
    if-nez v5, :cond_4

    .line 92
    const-string v4, "freeformKillAll miuiFreeformModeTaskInfo is null, skipped."

    .line 94
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 100
    move-result v6

    .line 103
    const/16 v7, 0x16

    .line 104
    if-eqz v6, :cond_5

    .line 106
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 108
    move-result v6

    .line 111
    if-ne v6, v7, :cond_5

    .line 112
    const-string v4, "freeformKillAll miuiFreeformModeTaskInfo is in killing, skipped."

    .line 114
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    goto :goto_1

    .line 119
    :cond_5
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBaseParams()V

    .line 120
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 123
    invoke-static {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeGestureHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 125
    move-result-object v6

    .line 128
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreefromAnimation()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 129
    move-result-object v6

    .line 132
    invoke-virtual {v6, v7, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    .line 136
    const-string v6, "freeformKillAll finish taskId="

    .line 138
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v4

    .line 149
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 153
    goto :goto_0

    .line 155
    :cond_6
    iput-boolean v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mIsFreeformKillingAll:Z

    .line 156
    const-string p0, "freeformKillAll finish."

    .line 158
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void

    .line 163
    :cond_7
    :goto_2
    const-string v0, "freeformKillAll task list is empty."

    .line 164
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput-boolean v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mIsFreeformKillingAll:Z

    .line 169
    return-void
    .line 171
.end method

.method private synthetic lambda$freeformToElude$1()V
    .locals 8

    .line 1
    const-string v0, "freeformToElude: start."

    .line 2
    const-string v1, "MiuiFreeformModeController"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mIsFreeformInElude:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string p0, "freeformToElude: in elude."

    .line 13
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mIsFreeformInElude:Z

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 22
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 28
    move-result-object v0

    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result v4

    .line 37
    if-ge v3, v4, :cond_5

    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 43
    check-cast v4, Ljava/lang/Integer;

    .line 44
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v4

    .line 49
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 50
    invoke-virtual {v5, v4, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->screenshotTask(IZ)V

    .line 52
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 55
    invoke-static {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 57
    move-result-object v5

    .line 60
    invoke-virtual {v5, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 61
    move-result-object v5

    .line 64
    if-nez v5, :cond_1

    .line 65
    const-string v4, "freeformToElude: miuiFreeformModeTaskInfo is null."

    .line 67
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    goto :goto_1

    .line 72
    :cond_1
    invoke-static {v4}, Lmiui/app/MiuiFreeFormManager;->isFrontFreeFormStackInfo(I)Z

    .line 73
    move-result v6

    .line 76
    if-nez v6, :cond_2

    .line 77
    const-string v4, "freeformToElude: miuiFreeformModeTaskInfo not in front."

    .line 79
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 85
    move-result v6

    .line 88
    if-eqz v6, :cond_4

    .line 89
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInDragTaskResizeAnim()Z

    .line 91
    move-result v6

    .line 94
    if-eqz v6, :cond_3

    .line 95
    const-string v4, "freeformToElude: task is in dragging resize anim."

    .line 97
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    goto :goto_1

    .line 102
    :cond_3
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 103
    invoke-static {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeGestureHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 105
    move-result-object v6

    .line 108
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreefromAnimation()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 109
    move-result-object v6

    .line 112
    const/16 v7, 0xe

    .line 113
    invoke-virtual {v6, v7, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    .line 118
    const-string v6, "freeformToElude: taskId="

    .line 120
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v4

    .line 131
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 135
    goto :goto_0

    .line 137
    :cond_5
    const-string p0, "freeformToElude: end."

    .line 138
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
    .line 143
.end method

.method private synthetic lambda$invalidate$0()V
    .locals 6

    .line 1
    const-string v0, "invalidate."

    .line 2
    const-string v1, "MiuiFreeformModeController"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mIsFreeformInElude:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->mIsFreeformKillingAll:Z

    .line 12
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 14
    invoke-static {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 20
    move-result-object v2

    .line 23
    move v3, v0

    .line 24
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v4

    .line 28
    if-ge v3, v4, :cond_1

    .line 29
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/Integer;

    .line 35
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result v4

    .line 40
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 41
    invoke-static {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 43
    move-result-object v5

    .line 46
    invoke-virtual {v5, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 47
    move-result-object v4

    .line 50
    if-nez v4, :cond_0

    .line 51
    const-string v4, "freeformToElude: miuiFreeformModeTaskInfo is null."

    .line 53
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {v4, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setFreeformEludeAnimation(Z)V

    .line 59
    new-instance v5, Landroid/graphics/Rect;

    .line 62
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 64
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setTmpEludeBounds(Landroid/graphics/Rect;)V

    .line 67
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 70
    goto :goto_0

    .line 72
    :cond_1
    return-void
    .line 73
.end method


# virtual methods
.method public freeformEludeToShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$$ExternalSyntheticLambda0;

    .line 8
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;I)V

    .line 11
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
    .line 19
.end method

.method public freeformKillAll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$$ExternalSyntheticLambda0;

    .line 8
    const/4 v2, 0x3

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;I)V

    .line 11
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
    .line 19
.end method

.method public freeformToElude()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$$ExternalSyntheticLambda0;

    .line 8
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;I)V

    .line 11
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
    .line 19
.end method

.method public getMaxNumFreeformDesktopMode()I
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getMaxNumFreeformDesktopMode()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public invalidate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$$ExternalSyntheticLambda0;

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;I)V

    .line 11
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
    .line 19
.end method
