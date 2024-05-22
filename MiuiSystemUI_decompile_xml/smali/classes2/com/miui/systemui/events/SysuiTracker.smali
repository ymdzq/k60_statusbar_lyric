.class public final Lcom/miui/systemui/events/SysuiTracker;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/IEventTracker$Tracker;


# instance fields
.field private final appId:Ljava/lang/String;

.field private final channel:Ljava/lang/String;

.field private final oneTrack:Lcom/xiaomi/onetrack/OneTrack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "31000000102"

    .line 5
    iput-object v0, p0, Lcom/miui/systemui/events/SysuiTracker;->appId:Ljava/lang/String;

    .line 7
    sget-object v1, Lcom/miui/systemui/events/TrackerConfig;->Companion:Lcom/miui/systemui/events/TrackerConfig$Companion;

    .line 9
    invoke-virtual {v1}, Lcom/miui/systemui/events/TrackerConfig$Companion;->resolveChannelName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/miui/systemui/events/SysuiTracker;->channel:Ljava/lang/String;

    .line 15
    new-instance v2, Lcom/xiaomi/onetrack/Configuration$Builder;

    .line 17
    invoke-direct {v2}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    .line 19
    iput-object v0, v2, Lcom/xiaomi/onetrack/Configuration$Builder;->a:Ljava/lang/String;

    .line 22
    iput-object v1, v2, Lcom/xiaomi/onetrack/Configuration$Builder;->c:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 26
    iput-object v0, v2, Lcom/xiaomi/onetrack/Configuration$Builder;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 28
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, v2, Lcom/xiaomi/onetrack/Configuration$Builder;->j:Z

    .line 31
    const/4 v1, 0x0

    .line 33
    iput-boolean v1, v2, Lcom/xiaomi/onetrack/Configuration$Builder;->k:Z

    .line 34
    new-instance v1, Lcom/xiaomi/onetrack/Configuration;

    .line 36
    invoke-direct {v1, v2}, Lcom/xiaomi/onetrack/Configuration;-><init>(Lcom/xiaomi/onetrack/Configuration$Builder;)V

    .line 38
    new-instance v2, Lcom/xiaomi/onetrack/OneTrack;

    .line 41
    invoke-direct {v2, p1, v1}, Lcom/xiaomi/onetrack/OneTrack;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V

    .line 43
    iput-object v2, p0, Lcom/miui/systemui/events/SysuiTracker;->oneTrack:Lcom/xiaomi/onetrack/OneTrack;

    .line 46
    sput-boolean v0, Lcom/xiaomi/onetrack/OneTrack;->b:Z

    .line 48
    return-void
    .line 50
.end method


# virtual methods
.method public track(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/SysuiTracker;->oneTrack:Lcom/xiaomi/onetrack/OneTrack;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    return-void
    .line 7
.end method
