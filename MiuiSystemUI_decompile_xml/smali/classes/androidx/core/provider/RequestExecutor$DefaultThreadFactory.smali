.class public final Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final mPriority:I

.field public final mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "fonts-androidx"

    .line 5
    iput-object v0, p0, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;->mThreadName:Ljava/lang/String;

    .line 7
    const/16 v0, 0xa

    .line 9
    iput v0, p0, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;->mPriority:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory$ProcessPriorityThread;

    .line 2
    iget-object v1, p0, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;->mThreadName:Ljava/lang/String;

    .line 4
    iget p0, p0, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory;->mPriority:I

    .line 6
    invoke-direct {v0, p0, p1, v1}, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory$ProcessPriorityThread;-><init>(ILjava/lang/Runnable;Ljava/lang/String;)V

    .line 8
    return-object v0
    .line 11
.end method
