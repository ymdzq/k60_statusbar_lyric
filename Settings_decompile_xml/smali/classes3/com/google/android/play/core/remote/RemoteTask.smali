.class public abstract Lcom/google/android/play/core/remote/RemoteTask;
.super Ljava/lang/Object;
.source "RemoteTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final task:Lcom/google/android/play/core/tasks/TaskWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/TaskWrapper<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/google/android/play/core/remote/RemoteTask;->task:Lcom/google/android/play/core/tasks/TaskWrapper;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/tasks/TaskWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/TaskWrapper<",
            "*>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/play/core/remote/RemoteTask;->task:Lcom/google/android/play/core/tasks/TaskWrapper;

    return-void
.end method


# virtual methods
.method protected abstract execute()V
.end method

.method final getTask()Lcom/google/android/play/core/tasks/TaskWrapper;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/android/play/core/remote/RemoteTask;->task:Lcom/google/android/play/core/tasks/TaskWrapper;

    return-object p0
.end method

.method public final run()V
    .locals 2

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteTask;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    iget-object v1, p0, Lcom/google/android/play/core/remote/RemoteTask;->task:Lcom/google/android/play/core/tasks/TaskWrapper;

    if-eqz v1, :cond_0

    .line 29
    iget-object p0, p0, Lcom/google/android/play/core/remote/RemoteTask;->task:Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->setException(Ljava/lang/Exception;)Z

    :cond_0
    :goto_0
    return-void
.end method
