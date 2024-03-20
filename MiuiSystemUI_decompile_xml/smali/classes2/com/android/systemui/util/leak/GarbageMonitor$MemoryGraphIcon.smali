.class public final Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public limit:J

.field public rss:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;

    .line 2
    invoke-direct {v0, p1}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;-><init>(Landroid/content/Context;)V

    .line 4
    iget-wide v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;->rss:J

    .line 7
    iget-wide v3, v0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->rss:J

    .line 9
    cmp-long p1, v1, v3

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iput-wide v1, v0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->rss:J

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    :cond_0
    iget-wide p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;->limit:J

    .line 20
    iget-wide v1, v0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->limit:J

    .line 22
    cmp-long v1, p0, v1

    .line 24
    if-eqz v1, :cond_1

    .line 26
    iput-wide p0, v0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryIconDrawable;->limit:J

    .line 28
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 30
    :cond_1
    return-object v0
    .line 33
.end method
