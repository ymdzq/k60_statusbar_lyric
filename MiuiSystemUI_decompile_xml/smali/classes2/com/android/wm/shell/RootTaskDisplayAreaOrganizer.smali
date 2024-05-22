.class public Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;
.super Landroid/window/DisplayAreaOrganizer;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayAreaContexts:Landroid/util/SparseArray;

.field public final mDisplayAreasInfo:Landroid/util/SparseArray;

.field public final mLeashes:Landroid/util/SparseArray;

.field public final mListeners:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Landroid/window/DisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;)V

    .line 2
    new-instance p2, Landroid/util/SparseArray;

    .line 5
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 10
    new-instance p2, Landroid/util/SparseArray;

    .line 12
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mLeashes:Landroid/util/SparseArray;

    .line 17
    new-instance p2, Landroid/util/SparseArray;

    .line 19
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mListeners:Landroid/util/SparseArray;

    .line 24
    new-instance p2, Landroid/util/SparseArray;

    .line 26
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreaContexts:Landroid/util/SparseArray;

    .line 31
    iput-object p1, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mContext:Landroid/content/Context;

    .line 33
    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Landroid/window/DisplayAreaOrganizer;->registerOrganizer(I)Ljava/util/List;

    .line 36
    move-result-object p2

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 40
    move-result v0

    .line 43
    sub-int/2addr v0, p1

    .line 44
    :goto_0
    if-ltz v0, :cond_0

    .line 45
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 50
    check-cast p1, Landroid/window/DisplayAreaAppearedInfo;

    .line 51
    invoke-virtual {p1}, Landroid/window/DisplayAreaAppearedInfo;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    .line 53
    move-result-object p1

    .line 56
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 60
    check-cast v1, Landroid/window/DisplayAreaAppearedInfo;

    .line 61
    invoke-virtual {v1}, Landroid/window/DisplayAreaAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 63
    move-result-object v1

    .line 66
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    .line 67
    add-int/lit8 v0, v0, -0x1

    .line 70
    goto :goto_0

    .line 72
    :cond_0
    return-void
    .line 73
.end method


# virtual methods
.method public final applyConfigChangesToContext(Landroid/window/DisplayAreaInfo;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/window/DisplayAreaInfo;->displayId:I

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mContext:Landroid/content/Context;

    .line 4
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 12
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 14
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v1, :cond_1

    .line 19
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    .line 21
    if-eqz p0, :cond_0

    .line 23
    int-to-long p0, v0

    .line 25
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 26
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    move-result-object p0

    .line 31
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 35
    const p1, -0x22a62331

    .line 36
    const/4 v1, 0x0

    .line 39
    invoke-static {v0, p1, v2, v1, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreaContexts:Landroid/util/SparseArray;

    .line 44
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 49
    check-cast v3, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$DisplayAreaContext;

    .line 50
    if-nez v3, :cond_2

    .line 52
    new-instance v3, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$DisplayAreaContext;

    .line 54
    iget-object v4, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {v3, v4, v1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$DisplayAreaContext;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 58
    iget-object p0, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreaContexts:Landroid/util/SparseArray;

    .line 61
    invoke-virtual {p0, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    :cond_2
    iget-object p0, p1, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    .line 66
    sget p1, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$DisplayAreaContext;->$r8$clinit:I

    .line 68
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 74
    move-result-object p1

    .line 77
    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 78
    move-result p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    goto :goto_0

    .line 84
    :cond_3
    const/4 v2, 0x0

    .line 85
    :goto_0
    if-eqz v2, :cond_4

    .line 86
    iget-object p1, v3, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$DisplayAreaContext;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 88
    iget-object v0, v3, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$DisplayAreaContext;->mToken:Landroid/os/IBinder;

    .line 90
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getDisplayId()I

    .line 92
    move-result v1

    .line 95
    invoke-virtual {p1, v0, p0, v1}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 96
    :cond_4
    return-void
    .line 99
.end method

.method public final attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mLeashes:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/SurfaceControl;

    .line 8
    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 10
    return-void
    .line 13
.end method

.method public final onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/window/DisplayAreaInfo;->featureId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    iget v0, p1, Landroid/window/DisplayAreaInfo;->displayId:I

    .line 7
    iget-object v2, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 14
    if-nez v2, :cond_1

    .line 15
    const-string v2, "RootTaskDisplayAreaOrganizer.onDisplayAreaAppeared"

    .line 17
    invoke-virtual {p2, v2}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    iget-object v2, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mLeashes:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v2, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    iget-object p2, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mListeners:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 37
    check-cast p2, Ljava/util/ArrayList;

    .line 38
    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v0

    .line 45
    sub-int/2addr v0, v1

    .line 46
    :goto_0
    if-ltz v0, :cond_0

    .line 47
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 52
    check-cast v1, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$RootTaskDisplayAreaListener;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    add-int/lit8 v0, v0, -0x1

    .line 58
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->applyConfigChangesToContext(Landroid/window/DisplayAreaInfo;)V

    .line 61
    return-void

    .line 64
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    const-string v2, "Duplicate DA for displayId: "

    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v2, " displayAreaInfo:"

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    const-string p1, " mDisplayAreasInfo.get():"

    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object p0, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object p0

    .line 95
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 102
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    throw p2

    .line 106
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    .line 109
    const-string v0, "Unknown feature: "

    .line 111
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    iget v0, p1, Landroid/window/DisplayAreaInfo;->featureId:I

    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v0, "displayAreaInfo:"

    .line 121
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p0
    .line 136
.end method

.method public final onDisplayAreaInfoChanged(Landroid/window/DisplayAreaInfo;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/window/DisplayAreaInfo;->displayId:I

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mListeners:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/ArrayList;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v1

    .line 30
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 31
    if-ltz v1, :cond_0

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$RootTaskDisplayAreaListener;

    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->applyConfigChangesToContext(Landroid/window/DisplayAreaInfo;)V

    .line 45
    return-void

    .line 48
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    const-string v3, "onDisplayAreaInfoChanged() Unknown DA displayId: "

    .line 53
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, " displayAreaInfo:"

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string p1, " mDisplayAreasInfo.get():"

    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object p0, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 74
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 79
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 86
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    throw v1
    .line 90
.end method

.method public final onDisplayAreaVanished(Landroid/window/DisplayAreaInfo;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/window/DisplayAreaInfo;->displayId:I

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 14
    iget-object p1, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mLeashes:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 22
    check-cast p1, Landroid/view/SurfaceControl;

    .line 23
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 25
    iget-object p1, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mLeashes:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 30
    iget-object p1, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mListeners:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 38
    check-cast p1, Ljava/util/ArrayList;

    .line 39
    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v1

    .line 46
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 47
    if-ltz v1, :cond_0

    .line 49
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$RootTaskDisplayAreaListener;

    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    goto :goto_0

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreaContexts:Landroid/util/SparseArray;

    .line 61
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 63
    return-void

    .line 66
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    const-string v3, "onDisplayAreaVanished() Unknown DA displayId: "

    .line 71
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v3, " displayAreaInfo:"

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    const-string p1, " mDisplayAreasInfo.get():"

    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object p0, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 92
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object p0

    .line 97
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 104
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    throw v1
    .line 108
.end method

.method public final reparentToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mLeashes:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/SurfaceControl;

    .line 8
    invoke-virtual {p3, p2, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 10
    return-void
    .line 13
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "RootTaskDisplayAreaOrganizer#"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 11
    move-result p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method
