.class public final Lcom/android/wm/shell/bubbles/BubbleDataRepository;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public bubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

.field public final ioScope:Lkotlinx/coroutines/internal/ContextScope;

.field public job:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final launcherApps:Landroid/content/pm/LauncherApps;

.field public final mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final persistentRepository:Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;

.field public final volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->launcherApps:Landroid/content/pm/LauncherApps;

    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 7
    new-instance p3, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    .line 9
    invoke-direct {p3, p2}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;-><init>(Landroid/content/pm/LauncherApps;)V

    .line 11
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    .line 14
    new-instance p2, Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;

    .line 16
    invoke-direct {p2, p1}, Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistentRepository:Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;

    .line 21
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 23
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->ioScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 29
    return-void
    .line 31
.end method

.method public static transform(Ljava/util/List;)Ljava/util/List;
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    .line 21
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 23
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 25
    move-result v4

    .line 28
    iget-object v5, v1, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 29
    iget-object v6, v1, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    .line 31
    const/4 v2, 0x0

    .line 33
    if-nez v6, :cond_1

    .line 34
    goto :goto_1

    .line 36
    :cond_1
    iget-object v7, v1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 37
    iget v8, v1, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeight:I

    .line 39
    iget v9, v1, Lcom/android/wm/shell/bubbles/Bubble;->mDesiredHeightResId:I

    .line 41
    iget-object v10, v1, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    .line 43
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getTaskId()I

    .line 45
    move-result v11

    .line 48
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/Bubble;->mLocusId:Landroid/content/LocusId;

    .line 49
    if-eqz v3, :cond_2

    .line 51
    invoke-virtual {v3}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 56
    :cond_2
    move-object v12, v2

    .line 57
    iget-boolean v13, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIsDismissable:Z

    .line 58
    new-instance v2, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    .line 60
    move-object v3, v2

    .line 62
    invoke-direct/range {v3 .. v13}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)V

    .line 63
    :goto_1
    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 71
    :cond_3
    return-object v0
    .line 72
.end method


# virtual methods
.method public final persistToDisk()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v0, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;-><init>(Lkotlinx/coroutines/Job;Lcom/android/wm/shell/bubbles/BubbleDataRepository;Lkotlin/coroutines/Continuation;)V

    .line 7
    const/4 v0, 0x3

    .line 10
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->ioScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 11
    invoke-static {v3, v2, v2, v1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 13
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 17
    return-void
    .line 19
.end method
