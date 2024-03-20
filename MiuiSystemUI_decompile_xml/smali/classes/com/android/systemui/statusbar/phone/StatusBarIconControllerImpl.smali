.class public final Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.implements Lcom/android/systemui/demomode/DemoMode;


# static fields
.field protected static final EXTERNAL_SLOT_SUFFIX:Ljava/lang/String; = "__external"


# instance fields
.field public final mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$1;

.field public final mContext:Landroid/content/Context;

.field public final mIconGroups:Ljava/util/HashMap;

.field public final mIconHideList:Landroid/util/ArraySet;

.field public final mMinimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

.field public final mStatusBarIconList:Lcom/android/systemui/statusbar/phone/StatusBarIconList;

.field public final mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/MinimalismModeController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/StatusBarIconList;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/HashMap;

    .line 10
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconHideList:Landroid/util/ArraySet;

    .line 17
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$1;

    .line 19
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;)V

    .line 21
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$1;

    .line 24
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/StatusBarIconList;

    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    .line 28
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    .line 30
    const/4 p8, 0x0

    .line 32
    invoke-static {p1, p8}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconHideList(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 37
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mMinimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 40
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda3;

    .line 42
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;)V

    .line 44
    invoke-virtual {p5, p1}, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->addListener(Lcom/android/systemui/statusbar/policy/MinimalismModeController$MinimalismModeListener;)V

    .line 47
    check-cast p4, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 50
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 55
    const-string p1, "icon_blacklist"

    .line 58
    filled-new-array {p1}, [Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 63
    invoke-virtual {p6, p0, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3, p0}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    .line 67
    invoke-virtual {p7, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 70
    return-void
    .line 73
.end method

.method public static createExternalSlotName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "__external"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method


# virtual methods
.method public final addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 9
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v2

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 26
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 27
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 29
    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 31
    if-ne v3, v4, :cond_0

    .line 33
    const-string v3, "StatusBarIconController"

    .line 35
    const-string v4, "Adding new IconManager for the same ViewGroup. This could cause unexpected results."

    .line 37
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    goto :goto_0

    .line 42
    :cond_1
    iput-object p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 43
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/StatusBarIconList;

    .line 48
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mViewOnlySlots:Ljava/util/List;

    .line 50
    const/4 v3, 0x0

    .line 52
    move v4, v3

    .line 53
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 54
    move-result v5

    .line 57
    if-ge v4, v5, :cond_5

    .line 58
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 63
    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 64
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getHolderListInViewOrder()Ljava/util/List;

    .line 66
    move-result-object v6

    .line 69
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconHideList:Landroid/util/ArraySet;

    .line 70
    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    .line 72
    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 74
    move-result v7

    .line 77
    if-nez v7, :cond_3

    .line 78
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 80
    move-result v7

    .line 83
    if-eqz v7, :cond_2

    .line 84
    goto :goto_2

    .line 86
    :cond_2
    move v7, v3

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 89
    :goto_3
    check-cast v6, Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object v6

    .line 95
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result v8

    .line 99
    if-eqz v8, :cond_4

    .line 100
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v8

    .line 105
    check-cast v8, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 106
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    iget v9, v8, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    .line 111
    invoke-virtual {v1, v9, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getViewIndex(ILjava/lang/String;)I

    .line 113
    move-result v9

    .line 116
    invoke-virtual {p1, v9, v5, v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 117
    goto :goto_4

    .line 120
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 121
    goto :goto_1

    .line 123
    :cond_5
    return-void
    .line 124
.end method

.method public final demoCommands()Ljava/util/List;
    .locals 1

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    const-string/jumbo v0, "status"

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    return-object p0
    .line 13
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p2, "StatusBarIconController state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/HashMap;

    .line 7
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 9
    move-result-object p2

    .line 12
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p2

    .line 16
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/StatusBarIconList;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    const-string p2, "StatusBarIconList state:"

    .line 38
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 45
    move-result p2

    .line 48
    const-string v0, "  icon slots: "

    .line 49
    invoke-static {v0, p2, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 51
    const/4 v0, 0x0

    .line 54
    :goto_1
    if-ge v0, p2, :cond_1

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v1

    .line 60
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 64
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 65
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->toString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 70
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 74
    const-string v2, "    %2d:%s\n"

    .line 75
    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 80
    goto :goto_1

    .line 82
    :cond_1
    return-void
    .line 83
.end method

.method public final handleSet(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 2

    .line 1
    iget v0, p2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/StatusBarIconList;

    .line 4
    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getViewIndex(ILjava/lang/String;)I

    .line 6
    move-result p1

    .line 9
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda5;

    .line 10
    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda5;-><init>(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/HashMap;

    .line 15
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 17
    return-void
    .line 20
.end method

.method public final onDemoModeFinished()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public final onDemoModeStarted()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/HashMap;

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda4;

    .line 4
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda4;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 9
    return-void
    .line 12
.end method

.method public final onMaxBoundsChanged(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->onDensityOrFontScaleChanged()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final onMiuiThemeChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/HashMap;

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda0;

    .line 4
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 9
    return-void
    .line 12
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final refreshIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v2

    .line 9
    if-ge v1, v2, :cond_4

    .line 10
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v2

    .line 17
    instance-of v3, v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 18
    if-eqz v3, :cond_3

    .line 20
    check-cast v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 22
    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mMinimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 28
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->isMininalismModeOn()Z

    .line 30
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    sget-object v4, Lcom/android/systemui/statusbar/phone/MiuiIconManagerUtils;->MINI_RIGHT_BLOCK_LIST:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 38
    move-result v3

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move v3, v0

    .line 43
    :goto_1
    if-nez v3, :cond_2

    .line 44
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconHideList:Landroid/util/ArraySet;

    .line 46
    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 52
    move-result v3

    .line 55
    if-nez v3, :cond_2

    .line 56
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mBlockList:Ljava/util/ArrayList;

    .line 58
    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 64
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    goto :goto_2

    .line 70
    :cond_1
    move v3, v0

    .line 71
    goto :goto_3

    .line 72
    :cond_2
    :goto_2
    const/4 v3, 0x1

    .line 73
    :goto_3
    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setBlocked(Z)V

    .line 74
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 77
    goto :goto_0

    .line 79
    :cond_4
    return-void
    .line 80
.end method

.method public final removeAllIconsForSlot(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;->wifiSlot:Ljava/lang/String;

    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;->mobileSlot:Ljava/lang/String;

    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/StatusBarIconList;

    .line 14
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->hasIconsInSlot()Z

    .line 20
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getHolderListInViewOrder()Ljava/util/List;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v2

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v3

    .line 40
    if-eqz v3, :cond_3

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 46
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 47
    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    .line 49
    invoke-virtual {v0, v4, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getViewIndex(ILjava/lang/String;)I

    .line 51
    move-result v4

    .line 54
    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    .line 55
    if-nez v3, :cond_1

    .line 57
    const/4 v3, 0x0

    .line 59
    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 60
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getIndexForTag(I)I

    .line 63
    move-result v3

    .line 66
    const/4 v5, -0x1

    .line 67
    if-eq v3, v5, :cond_2

    .line 68
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 72
    :cond_2
    :goto_1
    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;

    .line 75
    const/4 v5, 0x1

    .line 77
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;-><init>(II)V

    .line 78
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/HashMap;

    .line 81
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 83
    goto :goto_0

    .line 86
    :cond_3
    return-void
    .line 87
.end method

.method public final removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->destroy()V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/HashMap;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    return-void
    .line 10
.end method

.method public final setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/StatusBarIconList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getIconHolder(ILjava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v1, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 5
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 6
    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 9
    invoke-static {v1, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p3

    iput-object p3, v2, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 10
    iget-object p3, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 11
    iput-object p1, p3, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    :goto_0
    return-void
.end method

.method public final setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 5

    .line 13
    iget v0, p2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    .line 14
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/StatusBarIconList;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getIconHolder(ILjava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->findOrInsertSlot(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget v3, p2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    if-nez v3, :cond_1

    .line 18
    iput-object p2, v2, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    goto :goto_1

    .line 19
    :cond_1
    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getIndexForTag(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    goto :goto_1

    .line 23
    :cond_3
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v0, :cond_4

    .line 24
    iget v0, p2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    .line 25
    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getViewIndex(ILjava/lang/String;)I

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconHideList:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 27
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_2

    .line 28
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    :goto_2
    return-void
.end method

.method public final setIconAccessibilityLiveRegion(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/StatusBarIconList;

    .line 2
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->hasIconsInSlot()Z

    .line 8
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getHolderListInViewOrder()Ljava/util/List;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 35
    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    .line 37
    invoke-virtual {v0, v2, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getViewIndex(ILjava/lang/String;)I

    .line 39
    move-result v2

    .line 42
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/HashMap;

    .line 43
    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda6;

    .line 45
    invoke-direct {v4, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda6;-><init>(II)V

    .line 47
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 50
    goto :goto_0

    .line 53
    :cond_1
    return-void
    .line 54
.end method

.method public final setIconVisibility(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/StatusBarIconList;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getIconHolder(ILjava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 5
    move-result-object v0

    .line 8
    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    .line 11
    move-result v1

    .line 14
    if-ne v1, p2, :cond_0

    .line 15
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    .line 18
    move-result v1

    .line 21
    if-ne v1, p2, :cond_1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 25
    if-eqz v1, :cond_5

    .line 27
    const/4 v2, 0x1

    .line 29
    if-eq v1, v2, :cond_4

    .line 30
    const/4 v2, 0x2

    .line 32
    if-eq v1, v2, :cond_3

    .line 33
    const/4 v2, 0x5

    .line 35
    if-eq v1, v2, :cond_2

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    .line 39
    iput-boolean p2, v1, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->visible:Z

    .line 41
    goto :goto_0

    .line 43
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 44
    iput-boolean p2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 46
    goto :goto_0

    .line 48
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 49
    iput-boolean p2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 51
    goto :goto_0

    .line 53
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 54
    iput-boolean p2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 56
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 58
    :cond_6
    :goto_1
    return-void
    .line 61
.end method

.method public final setMobileIcons(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/StatusBarIconList;

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 9
    move-result-object v0

    .line 12
    invoke-static {p2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 13
    check-cast p2, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p2

    .line 21
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 32
    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    .line 34
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getHolderForTag(I)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 36
    move-result-object v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 42
    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 44
    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 47
    const/4 v3, 0x2

    .line 49
    iput v3, v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 50
    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    .line 52
    iput v1, v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    .line 54
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 56
    goto :goto_0

    .line 59
    :cond_0
    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 60
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    return-void
    .line 66
.end method

.method public final setNetworkSpeedIcon(Lcom/android/systemui/statusbar/policy/NetworkSpeedState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/StatusBarIconList;

    .line 2
    const-string v1, "network_speed"

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 6
    move-result-object v0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getHolderForTag(I)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 11
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 17
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 19
    iput-object p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    .line 22
    const/4 p1, 0x5

    .line 24
    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    iput-object p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    .line 31
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    .line 33
    :goto_0
    return-void
    .line 36
.end method
