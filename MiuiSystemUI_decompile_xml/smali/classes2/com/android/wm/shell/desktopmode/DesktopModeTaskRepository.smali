.class public final Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final activeTasksListeners:Landroid/util/ArraySet;

.field public final desktopCorners:Landroid/util/SparseArray;

.field public desktopGestureExclusionExecutor:Ljava/util/concurrent/Executor;

.field public desktopGestureExclusionListener:Ljava/util/function/Consumer;

.field public final displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

.field public final freeformTasksInZOrder:Ljava/util/List;

.field public final visibleTasksListeners:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->freeformTasksInZOrder:Ljava/util/List;

    .line 10
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->activeTasksListeners:Landroid/util/ArraySet;

    .line 17
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->visibleTasksListeners:Landroid/util/ArrayMap;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopCorners:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    .line 33
    invoke-direct {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    .line 38
    return-void
    .line 40
.end method

.method public static final access$calculateDesktopExclusionRegion(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)Landroid/graphics/Region;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Landroid/graphics/Region;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopCorners:Landroid/util/SparseArray;

    .line 10
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 14
    move-result v3

    .line 17
    if-ge v2, v3, :cond_0

    .line 18
    const/4 v3, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move v3, v1

    .line 22
    :goto_1
    if-eqz v3, :cond_1

    .line 23
    add-int/lit8 v3, v2, 0x1

    .line 25
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Landroid/graphics/Region;

    .line 31
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 33
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 35
    move v2, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v0
    .line 40
.end method


# virtual methods
.method public final addActiveTask(II)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->activeTasksListeners:Landroid/util/ArraySet;

    .line 9
    if-ge v2, v1, :cond_1

    .line 11
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 13
    move-result v4

    .line 16
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    move-result-object v5

    .line 20
    check-cast v5, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    .line 21
    if-eq v4, p1, :cond_0

    .line 23
    iget-object v4, v5, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->activeTasks:Landroid/util/ArraySet;

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v5

    .line 30
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 31
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v3

    .line 40
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 50
    check-cast v4, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;

    .line 51
    check-cast v4, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 53
    invoke-virtual {v4}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    .line 55
    goto :goto_1

    .line 58
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 62
    move-result p0

    .line 65
    if-nez p0, :cond_2

    .line 66
    new-instance p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    .line 68
    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;-><init>()V

    .line 70
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    :cond_2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 79
    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v0

    .line 85
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->activeTasks:Landroid/util/ArraySet;

    .line 86
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 88
    move-result p0

    .line 91
    if-eqz p0, :cond_4

    .line 92
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object p2

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object p1

    .line 103
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 104
    move-result-object p1

    .line 107
    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 108
    move-result p2

    .line 111
    if-eqz p2, :cond_3

    .line 112
    invoke-interface {v0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 114
    move-result-object p2

    .line 117
    const/4 v0, 0x2

    .line 118
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 119
    move-result-object p1

    .line 122
    array-length v0, p1

    .line 123
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 124
    move-result-object p1

    .line 127
    const-string v0, "DesktopTaskRepo: add active task=%d displayId=%d"

    .line 128
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 133
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_3
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 137
    move-result-object p1

    .line 140
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    move-result p2

    .line 144
    if-eqz p2, :cond_4

    .line 145
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    move-result-object p2

    .line 150
    check-cast p2, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;

    .line 151
    check-cast p2, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 153
    invoke-virtual {p2}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    .line 155
    goto :goto_2

    .line 158
    :cond_4
    return p0
    .line 159
.end method

.method public final addOrMoveFreeformTaskToTop(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v1

    .line 7
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 12
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    invoke-interface {v0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    array-length v2, v1

    .line 27
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    const-string v2, "DesktopTaskRepo: add or move task to top taskId=%d"

    .line 32
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->freeformTasksInZOrder:Ljava/util/List;

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v0

    .line 46
    check-cast p0, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 49
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p1

    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 67
    return-void
    .line 70
.end method

.method public final addVisibleTasksListener(Lcom/android/systemui/wmshell/WMShell$16;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->visibleTasksListeners:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    .line 9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 11
    move-result v3

    .line 14
    if-ge v1, v3, :cond_0

    .line 15
    const/4 v3, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    move v3, v0

    .line 19
    :goto_1
    if-eqz v3, :cond_1

    .line 20
    add-int/lit8 v3, v1, 0x1

    .line 22
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 24
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 32
    move-result v1

    .line 35
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getVisibleTaskCount(I)I

    .line 36
    move-result v2

    .line 39
    new-instance v4, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;

    .line 40
    invoke-direct {v4, p1, v1, v2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$addVisibleTasksListener$1$1;-><init>(Lcom/android/systemui/wmshell/WMShell$16;II)V

    .line 42
    invoke-interface {p2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    move v1, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void
    .line 50
.end method

.method public final getActiveTasks(I)Landroid/util/ArraySet;
    .locals 1

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    .line 4
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->activeTasks:Landroid/util/ArraySet;

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 18
    return-object v0
    .line 21
.end method

.method public final getVisibleTaskCount(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->visibleTasks:Landroid/util/ArraySet;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 16
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
    .line 22
.end method

.method public final isVisibleTask(I)Z
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/util/SparseArrayKt$valueIterator$1;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    .line 4
    invoke-direct {v0, p0}, Landroidx/core/util/SparseArrayKt$valueIterator$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;)V

    .line 6
    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 9
    move-result-object p0

    .line 12
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    .line 27
    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->visibleTasks:Landroid/util/ArraySet;

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    const/4 p0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    :goto_0
    return p0
    .line 44
.end method

.method public final notifyVisibleTaskListeners(IZ)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->visibleTasksListeners:Landroid/util/ArrayMap;

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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
    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/systemui/wmshell/WMShell$16;

    .line 28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 34
    new-instance v2, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$notifyVisibleTaskListeners$1$1;

    .line 36
    invoke-direct {v2, v1, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$notifyVisibleTaskListeners$1$1;-><init>(Lcom/android/systemui/wmshell/WMShell$16;IZ)V

    .line 38
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    return-void
    .line 45
.end method

.method public final updateVisibleFreeformTasks(IIZ)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    .line 3
    if-eqz p3, :cond_1

    .line 5
    new-instance v2, Landroidx/core/util/SparseArrayKt$keyIterator$1;

    .line 7
    invoke-direct {v2, v1}, Landroidx/core/util/SparseArrayKt$keyIterator$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;)V

    .line 9
    invoke-static {v2}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 12
    move-result-object v2

    .line 15
    new-instance v3, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$updateVisibleFreeformTasks$otherDisplays$1;

    .line 16
    invoke-direct {v3, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$updateVisibleFreeformTasks$otherDisplays$1;-><init>(I)V

    .line 18
    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 21
    move-result-object v2

    .line 24
    new-instance v3, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 25
    invoke-direct {v3, v2}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {v3}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/Number;

    .line 40
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 42
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 49
    check-cast v4, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    .line 50
    iget-object v4, v4, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->visibleTasks:Landroid/util/ArraySet;

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v5

    .line 57
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 58
    move-result v4

    .line 61
    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 67
    check-cast v4, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    .line 68
    iget-object v4, v4, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->visibleTasks:Landroid/util/ArraySet;

    .line 70
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 72
    move-result v4

    .line 75
    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {p0, v2, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->notifyVisibleTaskListeners(IZ)V

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getVisibleTaskCount(I)I

    .line 82
    move-result v2

    .line 85
    if-eqz p3, :cond_3

    .line 86
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 88
    move-result v3

    .line 91
    if-nez v3, :cond_2

    .line 92
    new-instance v3, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    .line 94
    invoke-direct {v3}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;-><init>()V

    .line 96
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    :cond_2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v1

    .line 105
    check-cast v1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    .line 106
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v3

    .line 111
    iget-object v1, v1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->visibleTasks:Landroid/util/ArraySet;

    .line 112
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 114
    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object v1

    .line 121
    check-cast v1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    .line 122
    if-eqz v1, :cond_4

    .line 124
    iget-object v1, v1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->visibleTasks:Landroid/util/ArraySet;

    .line 126
    if-eqz v1, :cond_4

    .line 128
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v3

    .line 133
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 134
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getVisibleTaskCount(I)I

    .line 137
    move-result v1

    .line 140
    if-eq v2, v1, :cond_5

    .line 141
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object p2

    .line 148
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 149
    move-result-object p3

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v4

    .line 156
    filled-new-array {p2, p3, v4}, [Ljava/lang/Object;

    .line 157
    move-result-object p2

    .line 160
    invoke-static {v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 161
    move-result p3

    .line 164
    if-eqz p3, :cond_5

    .line 165
    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 167
    move-result-object p3

    .line 170
    const/4 v3, 0x3

    .line 171
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 172
    move-result-object p2

    .line 175
    array-length v3, p2

    .line 176
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 177
    move-result-object p2

    .line 180
    const-string v3, "DesktopTaskRepo: update task visibility taskId=%d visible=%b displayId=%d"

    .line 181
    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    move-result-object p2

    .line 186
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_5
    if-eq v2, v1, :cond_8

    .line 190
    if-eqz v2, :cond_6

    .line 192
    if-nez v1, :cond_8

    .line 194
    :cond_6
    if-lez v1, :cond_7

    .line 196
    const/4 v0, 0x1

    .line 198
    :cond_7
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->notifyVisibleTaskListeners(IZ)V

    .line 199
    :cond_8
    return-void
    .line 202
.end method
