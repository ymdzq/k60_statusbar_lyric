.class public final Lcom/android/systemui/util/NoRemeasureMotionLayout;
.super Landroidx/constraintlayout/motion/widget/MotionLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public lastFrame:Ljava/lang/Long;

.field public lastHeightSpec:Ljava/lang/Integer;

.field public lastWidthSpec:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/util/NoRemeasureMotionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/util/NoRemeasureMotionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/NoRemeasureMotionLayout;->lastWidthSpec:Ljava/lang/Integer;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v0

    .line 11
    if-ne v0, p1, :cond_3

    .line 12
    iget-object v0, p0, Lcom/android/systemui/util/NoRemeasureMotionLayout;->lastHeightSpec:Ljava/lang/Integer;

    .line 14
    if-nez v0, :cond_1

    .line 16
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v0

    .line 22
    if-ne v0, p2, :cond_3

    .line 23
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    .line 25
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTime()J

    .line 31
    move-result-wide v2

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object v0, v1

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/util/NoRemeasureMotionLayout;->lastFrame:Ljava/lang/Long;

    .line 41
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 49
    move-result p1

    .line 52
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 53
    move-result p2

    .line 56
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 57
    return-void

    .line 60
    :cond_3
    :goto_1
    const-wide/16 v2, 0x1000

    .line 61
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 63
    move-result v0

    .line 66
    if-eqz v0, :cond_5

    .line 67
    const-string v0, "NoRemeasureMotionLayout - measure"

    .line 69
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 71
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onMeasure(II)V

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/android/systemui/util/NoRemeasureMotionLayout;->lastWidthSpec:Ljava/lang/Integer;

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/android/systemui/util/NoRemeasureMotionLayout;->lastHeightSpec:Ljava/lang/Integer;

    .line 87
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    .line 89
    move-result-object p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    invoke-virtual {p1}, Landroid/view/Choreographer;->getFrameTime()J

    .line 95
    move-result-wide p1

    .line 98
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    move-result-object v1

    .line 102
    :cond_4
    iput-object v1, p0, Lcom/android/systemui/util/NoRemeasureMotionLayout;->lastFrame:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 105
    goto :goto_2

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 110
    throw p0

    .line 113
    :cond_5
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onMeasure(II)V

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object p1

    .line 120
    iput-object p1, p0, Lcom/android/systemui/util/NoRemeasureMotionLayout;->lastWidthSpec:Ljava/lang/Integer;

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object p1

    .line 126
    iput-object p1, p0, Lcom/android/systemui/util/NoRemeasureMotionLayout;->lastHeightSpec:Ljava/lang/Integer;

    .line 127
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    .line 129
    move-result-object p1

    .line 132
    if-eqz p1, :cond_6

    .line 133
    invoke-virtual {p1}, Landroid/view/Choreographer;->getFrameTime()J

    .line 135
    move-result-wide p1

    .line 138
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 139
    move-result-object v1

    .line 142
    :cond_6
    iput-object v1, p0, Lcom/android/systemui/util/NoRemeasureMotionLayout;->lastFrame:Ljava/lang/Long;

    .line 143
    :goto_2
    return-void
    .line 145
.end method
