.class final Lcom/xiaomi/onetrack/d/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/onetrack/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/xiaomi/onetrack/d/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/d/f;-><init>(Lcom/xiaomi/onetrack/d/g;)V

    sput-object v0, Lcom/xiaomi/onetrack/d/f$a;->a:Lcom/xiaomi/onetrack/d/f;

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/onetrack/d/f;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaomi/onetrack/d/f$a;->a:Lcom/xiaomi/onetrack/d/f;

    return-object v0
.end method
