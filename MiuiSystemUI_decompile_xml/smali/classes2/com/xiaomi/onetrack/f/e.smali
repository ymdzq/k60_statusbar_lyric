.class public final Lcom/xiaomi/onetrack/f/e;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/f/e;->a:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/f/e;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/xiaomi/onetrack/f/e;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/xiaomi/onetrack/f/e;->d:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/f/e;->a:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/xiaomi/onetrack/f/e;->b:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/xiaomi/onetrack/f/e;->c:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lcom/xiaomi/onetrack/f/e;->d:Ljava/lang/String;

    .line 8
    new-instance v3, Lcom/xiaomi/onetrack/e/a;

    .line 10
    invoke-direct {v3, v0, v1, v2, p0}, Lcom/xiaomi/onetrack/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/xiaomi/onetrack/c/c;->a()Lcom/xiaomi/onetrack/c/c;

    .line 15
    move-result-object p0

    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    new-instance v0, Lcom/xiaomi/onetrack/c/f;

    .line 20
    invoke-direct {v0, p0, v3}, Lcom/xiaomi/onetrack/c/f;-><init>(Lcom/xiaomi/onetrack/c/c;Lcom/xiaomi/onetrack/f/b;)V

    .line 22
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    .line 31
    throw v0
.end method
