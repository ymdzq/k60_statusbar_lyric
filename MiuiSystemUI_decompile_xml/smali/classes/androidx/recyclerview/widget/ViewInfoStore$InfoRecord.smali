.class public final Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sPool:Landroidx/core/util/Pools$SimplePool;


# instance fields
.field public flags:I

.field public postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

.field public preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    .line 2
    const/16 v1, 0x14

    .line 4
    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    .line 6
    sput-object v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$SimplePool;

    .line 9
    return-void
    .line 11
.end method

.method public static obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    .locals 1

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$SimplePool;

    .line 2
    invoke-virtual {v0}, Landroidx/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 12
    invoke-direct {v0}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;-><init>()V

    .line 14
    :cond_0
    return-object v0
    .line 17
.end method
