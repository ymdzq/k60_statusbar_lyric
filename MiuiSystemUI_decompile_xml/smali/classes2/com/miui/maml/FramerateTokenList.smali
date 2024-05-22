.class public Lcom/miui/maml/FramerateTokenList;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FramerateTokenList"


# instance fields
.field private mCurFramerate:F

.field private mFramerateChangeListener:Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

.field private mList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 5
    iput-object p1, p0, Lcom/miui/maml/FramerateTokenList;->mFramerateChangeListener:Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/FramerateTokenList;)Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/FramerateTokenList;->mFramerateChangeListener:Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/FramerateTokenList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/FramerateTokenList;->onChange()V

    .line 2
    return-void
    .line 5
.end method

.method private onChange()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 21
    check-cast v3, Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 22
    iget v3, v3, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 24
    cmpl-float v4, v3, v2

    .line 26
    if-lez v4, :cond_0

    .line 28
    move v2, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iput v2, p0, Lcom/miui/maml/FramerateTokenList;->mCurFramerate:F

    .line 33
    const-string v0, "FramerateTokenList"

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    const-string v2, "Frame rate changed, current frame rate is "

    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget p0, p0, Lcom/miui/maml/FramerateTokenList;->mCurFramerate:F

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p0
    .line 59
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 7
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
    .line 14
.end method

.method public createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;
    .locals 3

    .line 1
    const-string v0, "FramerateTokenList"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "createToken: "

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v0, Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 21
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/FramerateTokenList$FramerateToken;-><init>(Lcom/miui/maml/FramerateTokenList;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 26
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    monitor-exit p1

    .line 34
    return-object v0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
    .line 38
.end method

.method public getFramerate()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/FramerateTokenList;->mCurFramerate:F

    .line 2
    return p0
    .line 4
.end method

.method public removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
    .line 14
.end method
