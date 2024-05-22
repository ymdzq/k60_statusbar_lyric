.class public abstract Lmiuix/core/util/SoftReferenceSingleton;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mInstance:Ljava/lang/ref/SoftReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiuix/core/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public abstract createInstance(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lmiuix/core/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, v0, p1}, Lmiuix/core/util/SoftReferenceSingleton;->updateInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/core/util/SoftReferenceSingleton;->createInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    new-instance p1, Ljava/lang/ref/SoftReference;

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 24
    iput-object p1, p0, Lmiuix/core/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    .line 27
    :goto_1
    monitor-exit p0

    .line 29
    return-object v0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
    .line 33
.end method

.method public updateInstance(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
