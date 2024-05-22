.class public final Landroidx/leanback/widget/ViewsStateBundle;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mChildStates:Landroidx/collection/LruCache;

.field public mLimitNumber:I

.field public mSavePolicy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    .line 6
    const/16 v0, 0x64

    .line 8
    iput v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final applyPolicyChanges()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    .line 2
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    iget v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    .line 7
    if-lez v0, :cond_1

    .line 9
    iget-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v1, v0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 15
    monitor-enter v1

    .line 17
    :try_start_0
    iget v0, v0, Landroidx/collection/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v1

    .line 20
    iget v1, p0, Landroidx/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    .line 21
    if-eq v0, v1, :cond_6

    .line 23
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v1

    .line 27
    throw p0

    .line 28
    :cond_0
    :goto_0
    new-instance v0, Landroidx/collection/LruCache;

    .line 29
    iget v1, p0, Landroidx/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    .line 31
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 33
    iput-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    .line 36
    goto :goto_3

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 41
    throw p0

    .line 44
    :cond_2
    const/4 v1, 0x3

    .line 45
    if-eq v0, v1, :cond_4

    .line 46
    const/4 v1, 0x1

    .line 48
    if-ne v0, v1, :cond_3

    .line 49
    goto :goto_1

    .line 51
    :cond_3
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    .line 53
    goto :goto_3

    .line 55
    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    .line 56
    const v1, 0x7fffffff

    .line 58
    if-eqz v0, :cond_5

    .line 61
    iget-object v2, v0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 63
    monitor-enter v2

    .line 65
    :try_start_1
    iget v0, v0, Landroidx/collection/LruCache;->maxSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    monitor-exit v2

    .line 68
    if-eq v0, v1, :cond_6

    .line 69
    goto :goto_2

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    monitor-exit v2

    .line 73
    throw p0

    .line 74
    :cond_5
    :goto_2
    new-instance v0, Landroidx/collection/LruCache;

    .line 75
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 77
    iput-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    .line 80
    :cond_6
    :goto_3
    return-void
    .line 82
.end method
