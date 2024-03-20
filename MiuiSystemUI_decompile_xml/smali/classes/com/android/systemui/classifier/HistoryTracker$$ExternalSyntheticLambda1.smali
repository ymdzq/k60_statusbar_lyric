.class public final synthetic Lcom/android/systemui/classifier/HistoryTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/classifier/HistoryTracker$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget p0, p0, Lcom/android/systemui/classifier/HistoryTracker$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Ljava/lang/Double;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 10
    move-result-wide p0

    .line 13
    check-cast p2, Ljava/lang/Double;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 16
    move-result-wide v0

    .line 19
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->sum(DD)D

    .line 20
    move-result-wide p0

    .line 23
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 24
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_1
    check-cast p1, Ljava/lang/Double;

    .line 29
    check-cast p2, Ljava/lang/Double;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 33
    move-result-wide v0

    .line 36
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 37
    move-result-wide v2

    .line 40
    mul-double/2addr v2, v0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 42
    move-result-wide v0

    .line 45
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 46
    move-result-wide v4

    .line 49
    mul-double/2addr v4, v0

    .line 50
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 51
    move-result-wide p0

    .line 54
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 55
    sub-double p0, v0, p0

    .line 57
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 59
    move-result-wide v6

    .line 62
    sub-double/2addr v0, v6

    .line 63
    mul-double/2addr v0, p0

    .line 64
    add-double/2addr v0, v4

    .line 65
    div-double/2addr v2, v0

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 67
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :goto_0
    check-cast p1, Ljava/lang/Double;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 74
    move-result-wide p0

    .line 77
    check-cast p2, Ljava/lang/Double;

    .line 78
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 80
    move-result-wide v0

    .line 83
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->sum(DD)D

    .line 84
    move-result-wide p0

    .line 87
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 88
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 94
.end method
