.class Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;
.super Ljava/lang/Object;
.source "SplitLoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->-$$Nest$fgetloadHandler(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-virtual {v1, v2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->loadSplitsSync(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler$OnSplitLoadFinishListener;)V

    .line 87
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
