.class public Lcom/miui/maml/ScreenContext;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextVariables:Lcom/miui/maml/data/ContextVariables;

.field public final mFactory:Lcom/miui/maml/elements/ScreenElementFactory;

.field private final mHandler:Landroid/os/Handler;

.field private mObjectFactories:Ljava/util/HashMap;

.field public final mResourceManager:Lcom/miui/maml/ResourceManager;

.field public final mVariables:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/miui/maml/elements/ScreenElementFactory;

    invoke-direct {v0}, Lcom/miui/maml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Lcom/miui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Lcom/miui/maml/elements/ScreenElementFactory;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/miui/maml/ResourceManager;

    invoke-direct {v0, p2}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ScreenElementFactory;

    invoke-direct {v0}, Lcom/miui/maml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/miui/maml/data/Variables;

    invoke-direct {v0}, Lcom/miui/maml/data/Variables;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;Lcom/miui/maml/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;Lcom/miui/maml/data/Variables;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/miui/maml/util/Utils;->initContextIfNeed(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 10
    iput-object p3, p0, Lcom/miui/maml/ScreenContext;->mFactory:Lcom/miui/maml/elements/ScreenElementFactory;

    .line 11
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    .line 12
    iput-object p4, p0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 13
    new-instance p1, Lcom/miui/maml/data/ContextVariables;

    invoke-direct {p1}, Lcom/miui/maml/data/ContextVariables;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/ScreenContext;->mContextVariables:Lcom/miui/maml/data/ContextVariables;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    .line 2
    return-object p0
    .line 4
.end method

.method public final declared-synchronized getObjectFactory(Ljava/lang/String;)Lcom/miui/maml/ObjectFactory;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    .line 4
    if-nez v1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 12
    check-cast p1, Lcom/miui/maml/ObjectFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    move-object v0, p1

    .line 15
    :goto_0
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1

    .line 20
    :catch_0
    monitor-exit p0

    .line 21
    return-object v0
    .line 22
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final declared-synchronized registerObjectFactory(Ljava/lang/String;Lcom/miui/maml/ObjectFactory;)V
    .locals 2

    .line 1
    const-string v0, "ObjectFactory name mismatchs "

    .line 2
    monitor-enter p0

    .line 4
    if-nez p2, :cond_1

    .line 5
    :try_start_0
    iget-object p2, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    .line 7
    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_0
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/miui/maml/ObjectFactory;->getName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_5

    .line 24
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    .line 26
    if-nez v0, :cond_2

    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    .line 37
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lcom/miui/maml/ObjectFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    move-object v1, v0

    .line 45
    :goto_0
    if-eqz v1, :cond_4

    .line 46
    if-ne v1, p2, :cond_3

    .line 48
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/miui/maml/ObjectFactory;->getOld()Lcom/miui/maml/ObjectFactory;

    .line 52
    move-result-object v1

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {p2, v0}, Lcom/miui/maml/ObjectFactory;->setOld(Lcom/miui/maml/ObjectFactory;)V

    .line 57
    iget-object v0, p0, Lcom/miui/maml/ScreenContext;->mObjectFactories:Ljava/util/HashMap;

    .line 60
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :cond_5
    :try_start_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 72
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0

    .line 78
    throw p1
    .line 79
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    return-void
    .line 7
.end method
