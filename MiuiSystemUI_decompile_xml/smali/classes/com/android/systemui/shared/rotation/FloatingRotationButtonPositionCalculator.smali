.class public final Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final defaultMargin:I

.field public final floatingRotationButtonPositionLeft:Z

.field public final taskbarMarginBottom:I

.field public final taskbarMarginLeft:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->defaultMargin:I

    .line 5
    iput p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginLeft:I

    .line 7
    iput p3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginBottom:I

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->floatingRotationButtonPositionLeft:Z

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final calculatePosition(IZZ)Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_1

    .line 4
    if-ne p1, v1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    move v2, v0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    move v2, v1

    .line 11
    :goto_1
    if-eqz v2, :cond_2

    .line 12
    if-eqz p2, :cond_2

    .line 14
    if-nez p3, :cond_2

    .line 16
    move v0, v1

    .line 18
    :cond_2
    iget-boolean p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->floatingRotationButtonPositionLeft:Z

    .line 19
    const-string p3, "Invalid rotation "

    .line 21
    const/4 v2, 0x3

    .line 23
    const/4 v3, 0x2

    .line 24
    if-eqz p2, :cond_4

    .line 25
    if-eqz p1, :cond_5

    .line 27
    if-eq p1, v1, :cond_9

    .line 29
    if-eq p1, v3, :cond_8

    .line 31
    if-ne p1, v2, :cond_3

    .line 33
    goto :goto_2

    .line 35
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    invoke-static {p3, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p0

    .line 45
    :cond_4
    if-eqz p1, :cond_9

    .line 46
    if-eq p1, v1, :cond_8

    .line 48
    if-eq p1, v3, :cond_7

    .line 50
    if-ne p1, v2, :cond_6

    .line 52
    :cond_5
    const/16 p1, 0x53

    .line 54
    goto :goto_3

    .line 56
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    invoke-static {p3, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0

    .line 66
    :cond_7
    :goto_2
    const/16 p1, 0x33

    .line 67
    goto :goto_3

    .line 69
    :cond_8
    const/16 p1, 0x35

    .line 70
    goto :goto_3

    .line 72
    :cond_9
    const/16 p1, 0x55

    .line 73
    :goto_3
    iget p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->defaultMargin:I

    .line 75
    if-eqz v0, :cond_a

    .line 77
    iget p3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginLeft:I

    .line 79
    goto :goto_4

    .line 81
    :cond_a
    move p3, p2

    .line 82
    :goto_4
    if-eqz v0, :cond_b

    .line 83
    iget p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginBottom:I

    .line 85
    :cond_b
    and-int/lit8 p0, p1, 0x5

    .line 87
    const/4 v0, 0x5

    .line 89
    if-ne p0, v0, :cond_c

    .line 90
    neg-int p3, p3

    .line 92
    :cond_c
    and-int/lit8 p0, p1, 0x50

    .line 93
    const/16 v0, 0x50

    .line 95
    if-ne p0, v0, :cond_d

    .line 97
    neg-int p2, p2

    .line 99
    :cond_d
    new-instance p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;

    .line 100
    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;-><init>(III)V

    .line 102
    return-object p0
    .line 105
.end method
