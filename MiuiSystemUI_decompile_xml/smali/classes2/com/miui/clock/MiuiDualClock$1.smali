.class public final Lcom/miui/clock/MiuiDualClock$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/miui/clock/MiuiDualClock;


# direct methods
.method public constructor <init>(Lcom/miui/clock/MiuiDualClock;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/clock/MiuiDualClock$1;->this$0:Lcom/miui/clock/MiuiDualClock;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p1, p0, Lcom/miui/clock/MiuiDualClock$1;->this$0:Lcom/miui/clock/MiuiDualClock;

    .line 5
    iget-object v0, p1, Lcom/miui/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    move-result-object v0

    .line 12
    const-string v1, "auto_time_zone"

    .line 13
    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iget-object p0, p0, Lcom/miui/clock/MiuiDualClock$1;->this$0:Lcom/miui/clock/MiuiDualClock;

    .line 22
    invoke-virtual {p0}, Lcom/miui/clock/MiuiDualClock;->updateLocalCity()V

    .line 24
    return-void
    .line 27
.end method
