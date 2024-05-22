.class public final synthetic Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    check-cast p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPinedActiveTime()J

    .line 6
    move-result-wide p0

    .line 9
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPinedActiveTime()J

    .line 10
    move-result-wide v0

    .line 13
    sub-long/2addr p0, v0

    .line 14
    long-to-int p0, p0

    .line 15
    return p0
    .line 16
.end method
