.class public final Lcom/xiaomi/onetrack/a/b/a;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public e:I

.field public f:Ljava/lang/String;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->h:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->i:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->j:Ljava/lang/String;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final h()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->f:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->h:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/b/a;->i:Ljava/lang/String;

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "check AdMonitor isValid error:"

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    const-string v0, "AdMonitor"

    .line 47
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 52
    return p0
    .line 53
.end method
