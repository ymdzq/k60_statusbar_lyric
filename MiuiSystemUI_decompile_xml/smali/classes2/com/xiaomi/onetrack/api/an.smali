.class public final Lcom/xiaomi/onetrack/api/an;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/onetrack/api/an;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget p0, p0, Lcom/xiaomi/onetrack/api/an;->a:I

    .line 9
    const/4 v0, 0x2

    .line 11
    if-ne p0, v0, :cond_1

    .line 12
    sget-object p0, Lcom/xiaomi/onetrack/c/s$a;->a:Lcom/xiaomi/onetrack/c/s;

    .line 14
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/onetrack/c/s;->a(IZ)V

    .line 18
    invoke-virtual {p0, v1, v1}, Lcom/xiaomi/onetrack/c/s;->a(IZ)V

    .line 21
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/a/c/b;->b()V

    .line 28
    :cond_1
    return-void
    .line 31
.end method
