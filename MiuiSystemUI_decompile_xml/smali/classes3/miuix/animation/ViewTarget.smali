.class public Lmiuix/animation/ViewTarget;
.super Lmiuix/animation/IAnimTarget;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sCreator:Lmiuix/animation/ITargetCreator;


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;

.field private mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

.field private mViewLifecyclerObserver:Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

.field private mViewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/animation/ViewTarget$1;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/ViewTarget$1;-><init>()V

    .line 4
    sput-object v0, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    .line 7
    return-void
    .line 9
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lmiuix/animation/IAnimTarget;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/animation/ViewTarget;->registerLifecycle(Landroid/content/Context;)Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lmiuix/animation/ViewTarget$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/ViewTarget;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/ViewTarget;->initLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$200(Lmiuix/animation/ViewTarget;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/animation/ViewTarget;->cleanViewTarget()V

    .line 2
    return-void
    .line 5
.end method

.method private cleanViewTarget()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Context;

    .line 10
    invoke-direct {p0, v0}, Lmiuix/animation/ViewTarget;->unRegisterLifecycle(Landroid/content/Context;)Z

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lmiuix/animation/ViewTarget;->setCorner(F)V

    .line 16
    filled-new-array {p0}, [Lmiuix/animation/ViewTarget;

    .line 19
    move-result-object p0

    .line 22
    invoke-static {p0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 23
    return-void
    .line 26
.end method

.method private executeTask(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "ViewTarget.executeTask failed, "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    const-string v0, "miuix_anim"

    .line 25
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    :goto_0
    return-void
    .line 30
.end method

.method private initLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_init_layout:I

    .line 10
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 14
    check-cast p0, Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    .line 19
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    .line 23
    move-result v2

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 27
    move-result v3

    .line 30
    const/16 v4, 0x8

    .line 31
    if-ne v3, v4, :cond_0

    .line 33
    const/4 v4, 0x4

    .line 35
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 39
    move-result v4

    .line 42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 43
    move-result v5

    .line 46
    invoke-virtual {p0, v4, v5}, Landroid/view/ViewGroup;->measure(II)V

    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 50
    move-result v4

    .line 53
    add-int/2addr v4, v1

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 55
    move-result v5

    .line 58
    add-int/2addr v5, v2

    .line 59
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 60
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 66
    const/4 p0, 0x0

    .line 69
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 70
    :cond_1
    return-void
    .line 73
.end method

.method private registerLifecycle(Landroid/content/Context;)Z
    .locals 2

    .line 1
    :goto_0
    if-eqz p1, :cond_5

    .line 2
    instance-of v0, p1, Landroidx/lifecycle/LifecycleOwner;

    .line 4
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 14
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewLifecyclerObserver:Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

    .line 16
    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

    .line 20
    invoke-direct {v0, p0}, Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;-><init>(Lmiuix/animation/ViewTarget;)V

    .line 22
    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mViewLifecyclerObserver:Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

    .line 25
    :cond_0
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 27
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 29
    move-result-object p1

    .line 32
    iget-object p0, p0, Lmiuix/animation/ViewTarget;->mViewLifecyclerObserver:Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

    .line 33
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 35
    return v1

    .line 38
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    .line 39
    if-eqz v0, :cond_3

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 43
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 45
    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 48
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    .line 50
    if-nez v0, :cond_2

    .line 52
    new-instance v0, Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    .line 54
    invoke-direct {v0, p0}, Lmiuix/animation/ViewTarget$LifecycleCallbacks;-><init>(Lmiuix/animation/ViewTarget;)V

    .line 56
    iput-object v0, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    .line 59
    :cond_2
    check-cast p1, Landroid/app/Activity;

    .line 61
    iget-object p0, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    .line 63
    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 65
    return v1

    .line 68
    :cond_3
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 69
    if-eqz v0, :cond_4

    .line 71
    check-cast p1, Landroid/content/ContextWrapper;

    .line 73
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 75
    move-result-object p1

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const/4 p1, 0x0

    .line 80
    goto :goto_0

    .line 81
    :cond_5
    const/4 p0, 0x0

    .line 82
    return p0
    .line 83
.end method

.method private setCorner(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/View;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method private unRegisterLifecycle(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/lifecycle/LifecycleOwner;

    .line 6
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_2

    .line 10
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewLifecyclerObserver:Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 16
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 18
    move-result-object p1

    .line 21
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewLifecyclerObserver:Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

    .line 22
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 24
    :cond_1
    iput-object v3, p0, Lmiuix/animation/ViewTarget;->mViewLifecyclerObserver:Lmiuix/animation/ViewTarget$ViewLifecyclerObserver;

    .line 27
    return v2

    .line 29
    :cond_2
    instance-of v1, p1, Landroid/app/Activity;

    .line 30
    if-eqz v1, :cond_3

    .line 32
    iget-object v1, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    .line 34
    if-eqz v1, :cond_3

    .line 36
    check-cast p1, Landroid/app/Activity;

    .line 38
    invoke-virtual {p1, v1}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 40
    iput-object v3, p0, Lmiuix/animation/ViewTarget;->mLifecycleCallbacks:Lmiuix/animation/ViewTarget$LifecycleCallbacks;

    .line 43
    return v2

    .line 45
    :cond_3
    return v0
    .line 46
.end method


# virtual methods
.method public allowAnimRun()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-static {p0}, Lmiuix/animation/Folme;->isInDraggingState(Landroid/view/View;)Z

    .line 8
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public clean()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Context;

    .line 10
    invoke-direct {p0, v0}, Lmiuix/animation/ViewTarget;->unRegisterLifecycle(Landroid/content/Context;)Z

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    move-result v1

    .line 15
    const/16 v2, 0x8

    .line 16
    if-ne v1, v2, :cond_1

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 26
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 32
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    :cond_0
    new-instance v1, Lmiuix/animation/ViewTarget$2;

    .line 38
    invoke-direct {v1, p0, v0, p1}, Lmiuix/animation/ViewTarget$2;-><init>(Lmiuix/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 40
    invoke-virtual {p0, v1}, Lmiuix/animation/ViewTarget;->post(Ljava/lang/Runnable;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/animation/ViewTarget;->post(Ljava/lang/Runnable;)V

    .line 47
    :cond_2
    :goto_0
    return-void
    .line 50
.end method

.method public getLocationOnScreen([I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/View;

    .line 8
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    const v0, 0x7fffffff

    .line 13
    aput v0, p1, p0

    .line 16
    const/4 p0, 0x0

    .line 18
    aput v0, p1, p0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 22
    :goto_0
    return-void
    .line 25
.end method

.method public getTargetObject()Landroid/view/View;
    .locals 0

    .line 2
    iget-object p0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getTargetObject()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isValid()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/View;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public onFrameEnd(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/ViewTarget;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/View;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    if-eqz p0, :cond_0

    .line 12
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_set_height:I

    .line 14
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 17
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_set_width:I

    .line 20
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 22
    sget p1, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    .line 25
    const/4 v0, 0x0

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 32
    :cond_0
    return-void
    .line 35
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 9
    invoke-virtual {v1}, Lmiuix/animation/internal/TargetHandler;->isInTargetThread()Z

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/animation/ViewTarget;->executeTask(Ljava/lang/Runnable;)V

    .line 27
    :goto_0
    return-void
    .line 30
.end method

.method public shouldUseIntValue(Lmiuix/animation/property/FloatProperty;)Z
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 2
    if-eq p1, v0, :cond_1

    .line 4
    sget-object v0, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 6
    if-eq p1, v0, :cond_1

    .line 8
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCROLL_X:Lmiuix/animation/property/ViewProperty;

    .line 10
    if-eq p1, v0, :cond_1

    .line 12
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCROLL_Y:Lmiuix/animation/property/ViewProperty;

    .line 14
    if-ne p1, v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-super {p0, p1}, Lmiuix/animation/IAnimTarget;->shouldUseIntValue(Lmiuix/animation/property/FloatProperty;)Z

    .line 19
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 24
    return p0
    .line 25
.end method
