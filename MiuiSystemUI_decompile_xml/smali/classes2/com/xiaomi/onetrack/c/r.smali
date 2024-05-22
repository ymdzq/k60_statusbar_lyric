.class public final Lcom/xiaomi/onetrack/c/r;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/c/p;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/c/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/r;->a:Lcom/xiaomi/onetrack/c/p;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/r;->a:Lcom/xiaomi/onetrack/c/p;

    .line 2
    iget-object v0, v0, Lcom/xiaomi/onetrack/c/p;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->b()V

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/r;->a:Lcom/xiaomi/onetrack/c/p;

    .line 15
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/p;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    return-void
    .line 23
.end method
