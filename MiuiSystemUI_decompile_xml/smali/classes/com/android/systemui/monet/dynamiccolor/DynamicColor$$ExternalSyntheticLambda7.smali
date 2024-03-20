.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Lcom/android/systemui/monet/scheme/DynamicScheme;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Lcom/android/systemui/monet/scheme/DynamicScheme;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda7;->f$0:Ljava/util/function/Function;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda7;->f$1:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda7;->f$0:Ljava/util/function/Function;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda7;->f$1:Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 4
    check-cast p1, Ljava/lang/Double;

    .line 6
    check-cast p2, Ljava/lang/Double;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 22
    iget-object v1, v1, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->background:Ljava/util/function/Function;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 32
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->background:Ljava/util/function/Function;

    .line 34
    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    const/4 p0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    :goto_0
    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    .line 45
    if-eqz p0, :cond_1

    .line 47
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 49
    move-result-wide p0

    .line 52
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->contrastingTone(DD)D

    .line 53
    move-result-wide p0

    .line 56
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 57
    move-result-object p0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 62
    move-result-wide v2

    .line 65
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 66
    move-result-wide p0

    .line 69
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    .line 70
    move-result-wide p0

    .line 73
    invoke-static {v2, v3, p0, p1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->contrastingTone(DD)D

    .line 74
    move-result-wide p0

    .line 77
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 78
    move-result-object p0

    .line 81
    :goto_1
    return-object p0
    .line 82
.end method
