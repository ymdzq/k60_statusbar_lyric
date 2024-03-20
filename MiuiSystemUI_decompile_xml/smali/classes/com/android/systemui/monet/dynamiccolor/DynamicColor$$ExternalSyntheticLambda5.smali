.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Lcom/android/systemui/monet/scheme/DynamicScheme;

.field public final synthetic f$2:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Lcom/android/systemui/monet/scheme/DynamicScheme;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/Function;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda5;->f$1:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda5;->f$2:Ljava/util/function/Function;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/Function;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda5;->f$1:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda5;->f$2:Ljava/util/function/Function;

    .line 6
    check-cast p1, Ljava/lang/Double;

    .line 8
    check-cast p2, Ljava/lang/Double;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Double;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 18
    move-result-wide v2

    .line 21
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 22
    move-result-wide v4

    .line 25
    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    .line 26
    cmpl-double v0, v4, v6

    .line 28
    if-ltz v0, :cond_0

    .line 30
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 32
    move-result-wide p0

    .line 35
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    .line 36
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->contrastingTone(DD)D

    .line 38
    move-result-wide v2

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 43
    move-result-wide v4

    .line 46
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    .line 47
    cmpl-double v0, v4, v6

    .line 49
    if-ltz v0, :cond_1

    .line 51
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 53
    move-result-wide p0

    .line 56
    invoke-static {p0, p1, v6, v7}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->contrastingTone(DD)D

    .line 57
    move-result-wide v2

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    if-eqz p0, :cond_2

    .line 62
    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 73
    check-cast v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 74
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->background:Ljava/util/function/Function;

    .line 76
    if-eqz v0, :cond_2

    .line 78
    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object p0

    .line 83
    check-cast p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 84
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->background:Ljava/util/function/Function;

    .line 86
    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object p0

    .line 91
    if-eqz p0, :cond_2

    .line 92
    const/4 p0, 0x1

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const/4 p0, 0x0

    .line 96
    :goto_0
    if-eqz p0, :cond_3

    .line 97
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 99
    move-result-wide v0

    .line 102
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 103
    move-result-wide p0

    .line 106
    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->contrastingTone(DD)D

    .line 107
    move-result-wide v2

    .line 110
    :cond_3
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 111
    move-result-object p0

    .line 114
    return-object p0
    .line 115
.end method
