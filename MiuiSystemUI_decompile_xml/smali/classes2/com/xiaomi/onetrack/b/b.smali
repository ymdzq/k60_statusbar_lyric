.class public final Lcom/xiaomi/onetrack/b/b;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/xiaomi/onetrack/b/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/b/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/b;->b:Lcom/xiaomi/onetrack/b/a;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/b/b;->a:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/b;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/b;->b:Lcom/xiaomi/onetrack/b/a;

    .line 11
    iget-object p0, p0, Lcom/xiaomi/onetrack/b/b;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->b()Z

    .line 18
    move-result v0

    .line 21
    const-string v1, "AppConfigUpdater"

    .line 22
    if-nez v0, :cond_1

    .line 24
    const-string v0, "net is not connected!"

    .line 26
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/xiaomi/onetrack/b/h$a;->a:Lcom/xiaomi/onetrack/b/h;

    .line 32
    invoke-virtual {v0, p0}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    .line 34
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    goto :goto_1

    .line 40
    :cond_2
    iget-wide v2, v0, Lcom/xiaomi/onetrack/b/l;->c:J

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    move-result-wide v4

    .line 46
    cmp-long v0, v2, v4

    .line 47
    if-ltz v0, :cond_4

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    move-result-wide v4

    .line 54
    sub-long/2addr v2, v4

    .line 55
    const-wide/32 v4, 0xa4cb800

    .line 56
    cmp-long v0, v2, v4

    .line 59
    if-gtz v0, :cond_4

    .line 61
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/a;->f(Ljava/lang/String;)Z

    .line 63
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    goto :goto_1

    .line 69
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 72
    :goto_2
    if-eqz v0, :cond_5

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {v0}, Lcom/xiaomi/onetrack/b/a;->b(Ljava/util/List;)V

    .line 83
    goto :goto_3

    .line 86
    :cond_5
    const-string p0, "AppConfigUpdater Does not meet prerequisites for request"

    .line 87
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_3
    return-void
    .line 92
.end method
