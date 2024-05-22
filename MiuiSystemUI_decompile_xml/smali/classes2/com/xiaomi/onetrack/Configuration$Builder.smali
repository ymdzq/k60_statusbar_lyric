.class public final Lcom/xiaomi/onetrack/Configuration$Builder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public f:Lcom/xiaomi/onetrack/OneTrack$Mode;

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 5
    iput-object v0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 7
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->j:Z

    .line 10
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration$Builder;->k:Z

    .line 13
    return-void
    .line 15
.end method
