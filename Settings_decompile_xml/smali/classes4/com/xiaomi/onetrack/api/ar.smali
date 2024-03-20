.class Lcom/xiaomi/onetrack/api/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/ap;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/ap;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ar;->a:Lcom/xiaomi/onetrack/api/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 128
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/ar;->a:Lcom/xiaomi/onetrack/api/ap;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/ap;->a(Lcom/xiaomi/onetrack/api/ap;)V

    return-void
.end method
