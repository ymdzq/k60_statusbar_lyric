.class Lcom/miui/maml/SoundManager$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/SoundManager;


# direct methods
.method public constructor <init>(Lcom/miui/maml/SoundManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 2
    new-instance v1, Landroid/media/SoundPool;

    .line 4
    const/4 v2, 0x3

    .line 6
    const/16 v3, 0x64

    .line 7
    const/16 v4, 0x8

    .line 9
    invoke-direct {v1, v4, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    .line 11
    invoke-static {v0, v1}, Lcom/miui/maml/SoundManager;->access$002(Lcom/miui/maml/SoundManager;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 14
    iget-object v0, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 17
    invoke-static {v0}, Lcom/miui/maml/SoundManager;->access$000(Lcom/miui/maml/SoundManager;)Landroid/media/SoundPool;

    .line 19
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 23
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 25
    iget-object v0, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 28
    invoke-static {v0}, Lcom/miui/maml/SoundManager;->access$100(Lcom/miui/maml/SoundManager;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 35
    const/4 v2, 0x1

    .line 37
    invoke-static {v1, v2}, Lcom/miui/maml/SoundManager;->access$202(Lcom/miui/maml/SoundManager;Z)Z

    .line 38
    iget-object p0, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    .line 41
    invoke-static {p0}, Lcom/miui/maml/SoundManager;->access$100(Lcom/miui/maml/SoundManager;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 47
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
    .line 54
.end method
