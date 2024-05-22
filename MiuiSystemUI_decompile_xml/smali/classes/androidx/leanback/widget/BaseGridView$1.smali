.class public final Landroidx/leanback/widget/BaseGridView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/BaseGridView;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/BaseGridView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/BaseGridView$1;->this$0:Landroidx/leanback/widget/BaseGridView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView$1;->this$0:Landroidx/leanback/widget/BaseGridView;

    .line 2
    iget-object p0, p0, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 9
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    .line 16
    iget v2, p0, Landroidx/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    .line 18
    const/4 v3, 0x1

    .line 20
    if-eq v2, v3, :cond_1

    .line 21
    const/4 v1, 0x2

    .line 23
    if-eq v2, v1, :cond_0

    .line 24
    const/4 v1, 0x3

    .line 26
    if-eq v2, v1, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    .line 30
    if-eqz v1, :cond_3

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    new-instance v1, Landroid/util/SparseArray;

    .line 38
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 40
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 45
    iget-object p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    .line 48
    invoke-virtual {p0, v0, v1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    .line 54
    if-eqz p1, :cond_3

    .line 56
    iget-object v2, p1, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 58
    monitor-enter v2

    .line 60
    :try_start_0
    iget p1, p1, Landroidx/collection/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    monitor-exit v2

    .line 63
    if-eqz p1, :cond_3

    .line 64
    iget-object p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 71
    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 72
    monitor-enter v0

    .line 74
    :try_start_1
    iget-object v2, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    .line 75
    iget-object v2, v2, Landroidx/collection/internal/LruHashMap;->map:Ljava/util/LinkedHashMap;

    .line 77
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    iget p1, p0, Landroidx/collection/LruCache;->size:I

    .line 85
    add-int/2addr p1, v1

    .line 87
    iput p1, p0, Landroidx/collection/LruCache;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :cond_2
    monitor-exit v0

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    monitor-exit v0

    .line 93
    throw p0

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    monitor-exit v2

    .line 96
    throw p0

    .line 97
    :cond_3
    :goto_0
    return-void
    .line 98
.end method
