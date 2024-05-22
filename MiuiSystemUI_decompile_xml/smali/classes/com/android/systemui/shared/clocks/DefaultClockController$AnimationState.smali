.class public final Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public fraction:F

.field public isActive:Z


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->fraction:F

    .line 5
    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    cmpl-float p1, p1, v0

    .line 9
    if-lez p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    .line 16
    return-void
    .line 18
.end method


# virtual methods
.method public final update(F)Lkotlin/Pair;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->fraction:F

    .line 2
    cmpg-float v1, p1, v0

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v3

    .line 12
    :goto_0
    if-eqz v1, :cond_1

    .line 13
    new-instance p1, Lkotlin/Pair;

    .line 15
    iget-boolean p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    move-result-object p0

    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    invoke-direct {p1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    return-object p1

    .line 28
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    .line 29
    const/4 v4, 0x0

    .line 31
    cmpg-float v5, v0, v4

    .line 32
    if-nez v5, :cond_2

    .line 34
    move v5, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move v5, v3

    .line 38
    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    .line 39
    if-eqz v5, :cond_4

    .line 41
    cmpg-float v5, p1, v6

    .line 43
    if-nez v5, :cond_3

    .line 45
    move v5, v2

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    move v5, v3

    .line 49
    :goto_2
    if-nez v5, :cond_7

    .line 50
    :cond_4
    cmpg-float v5, v0, v6

    .line 52
    if-nez v5, :cond_5

    .line 54
    move v5, v2

    .line 56
    goto :goto_3

    .line 57
    :cond_5
    move v5, v3

    .line 58
    :goto_3
    if-eqz v5, :cond_8

    .line 59
    cmpg-float v4, p1, v4

    .line 61
    if-nez v4, :cond_6

    .line 63
    move v4, v2

    .line 65
    goto :goto_4

    .line 66
    :cond_6
    move v4, v3

    .line 67
    :goto_4
    if-eqz v4, :cond_8

    .line 68
    :cond_7
    move v4, v2

    .line 70
    goto :goto_5

    .line 71
    :cond_8
    move v4, v3

    .line 72
    :goto_5
    cmpl-float v0, p1, v0

    .line 73
    if-lez v0, :cond_9

    .line 75
    move v0, v2

    .line 77
    goto :goto_6

    .line 78
    :cond_9
    move v0, v3

    .line 79
    :goto_6
    iput-boolean v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    .line 80
    iput p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->fraction:F

    .line 82
    new-instance p0, Lkotlin/Pair;

    .line 84
    if-eq v1, v0, :cond_a

    .line 86
    goto :goto_7

    .line 88
    :cond_a
    move v2, v3

    .line 89
    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    move-result-object p1

    .line 93
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    move-result-object v0

    .line 97
    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    return-object p0
    .line 101
.end method
