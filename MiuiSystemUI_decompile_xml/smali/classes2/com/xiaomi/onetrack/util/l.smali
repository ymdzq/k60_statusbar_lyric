.class public final Lcom/xiaomi/onetrack/util/l;
.super Landroid/util/LruCache;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/high16 v0, 0x100000

    .line 2
    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    check-cast p2, Lcom/xiaomi/onetrack/util/k$a;

    .line 4
    if-eqz p2, :cond_0

    .line 6
    iget-object p0, p2, Lcom/xiaomi/onetrack/util/k$a;->a:Ljava/lang/String;

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    iget-object p0, p2, Lcom/xiaomi/onetrack/util/k$a;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
    .line 24
.end method
