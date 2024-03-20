.class final Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field final synthetic $progress:F

.field final synthetic this$0:Lcom/android/systemui/animation/FontInterpolator;


# direct methods
.method public constructor <init>(FLcom/android/systemui/animation/FontInterpolator;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->$progress:F

    .line 2
    iput-object p2, p0, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->this$0:Lcom/android/systemui/animation/FontInterpolator;

    .line 4
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    check-cast p2, Ljava/lang/Float;

    .line 4
    check-cast p3, Ljava/lang/Float;

    .line 6
    const-string/jumbo v0, "wght"

    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    const/high16 p1, 0x43c80000    # 400.0f

    .line 17
    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 21
    move-result p2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p2, p1

    .line 26
    :goto_0
    if-eqz p3, :cond_1

    .line 27
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 29
    move-result p1

    .line 32
    :cond_1
    iget p0, p0, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->$progress:F

    .line 33
    invoke-static {p2, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 35
    move-result p0

    .line 38
    goto :goto_4

    .line 39
    :cond_2
    const-string v0, "ital"

    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_5

    .line 46
    iget-object p1, p0, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->this$0:Lcom/android/systemui/animation/FontInterpolator;

    .line 48
    const/4 v0, 0x0

    .line 50
    if-eqz p2, :cond_3

    .line 51
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 53
    move-result p2

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move p2, v0

    .line 58
    :goto_1
    if-eqz p3, :cond_4

    .line 59
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 61
    move-result p3

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move p3, v0

    .line 66
    :goto_2
    iget p0, p0, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->$progress:F

    .line 67
    invoke-static {p2, p3, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 69
    move-result p0

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    const/high16 p1, 0x3f800000    # 1.0f

    .line 76
    invoke-static {p0, v0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    .line 78
    move-result p0

    .line 81
    const p1, 0x3dcccccd    # 0.1f

    .line 82
    div-float/2addr p0, p1

    .line 85
    float-to-int p0, p0

    .line 86
    int-to-float p0, p0

    .line 87
    mul-float/2addr p0, p1

    .line 88
    goto :goto_4

    .line 89
    :cond_5
    if-eqz p2, :cond_6

    .line 90
    if-eqz p3, :cond_6

    .line 92
    const/4 v0, 0x1

    .line 94
    goto :goto_3

    .line 95
    :cond_6
    const/4 v0, 0x0

    .line 96
    :goto_3
    if-eqz v0, :cond_7

    .line 97
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 99
    move-result p1

    .line 102
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 103
    move-result p2

    .line 106
    iget p0, p0, Lcom/android/systemui/animation/FontInterpolator$lerp$newAxes$1;->$progress:F

    .line 107
    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 109
    move-result p0

    .line 112
    :goto_4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 113
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :cond_7
    const-string p0, "Unable to interpolate due to unknown default axes value : "

    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 123
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 129
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    throw p1
    .line 133
.end method
