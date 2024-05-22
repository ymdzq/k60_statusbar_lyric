.class public abstract Lmiuix/spring/view/SpringHelper$AxisHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAllDistance:F

.field public final mAxis:I

.field public mDistance:F

.field public final synthetic this$0:Lmiuix/spring/view/SpringHelper;


# direct methods
.method public constructor <init>(Lmiuix/spring/view/SpringHelper;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->this$0:Lmiuix/spring/view/SpringHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final handleNestedPreScroll(Z[I[I)Z
    .locals 8

    .line 1
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    .line 2
    aget v1, p2, v0

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_7

    .line 7
    move-object v3, p0

    .line 9
    check-cast v3, Lmiuix/spring/view/SpringHelper$1;

    .line 10
    iget v4, v3, Lmiuix/spring/view/SpringHelper$1;->$r8$classId:I

    .line 12
    iget-object v3, v3, Lmiuix/spring/view/SpringHelper$1;->this$0:Lmiuix/spring/view/SpringHelper;

    .line 14
    packed-switch v4, :pswitch_data_0

    .line 16
    goto :goto_0

    .line 19
    :pswitch_0
    invoke-virtual {v3}, Lmiuix/spring/view/SpringHelper;->canScrollHorizontally()Z

    .line 20
    move-result v3

    .line 23
    goto :goto_1

    .line 24
    :goto_0
    invoke-virtual {v3}, Lmiuix/spring/view/SpringHelper;->canScrollVertically()Z

    .line 25
    move-result v3

    .line 28
    :goto_1
    if-eqz v3, :cond_7

    .line 29
    iget v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 31
    const/4 v4, 0x0

    .line 33
    cmpl-float v5, v3, v4

    .line 34
    if-nez v5, :cond_0

    .line 36
    goto :goto_3

    .line 38
    :cond_0
    float-to-int v3, v3

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    .line 40
    move-result v3

    .line 43
    mul-int/2addr v3, v1

    .line 44
    if-lez v3, :cond_1

    .line 45
    return v2

    .line 47
    :cond_1
    iget v2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 48
    iget v3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 50
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 52
    move-result v5

    .line 55
    iget v6, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 56
    int-to-float v7, v1

    .line 58
    add-float/2addr v6, v7

    .line 59
    iput v6, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 60
    if-eqz p1, :cond_2

    .line 62
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    .line 64
    move-result v6

    .line 67
    iget v7, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 68
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 70
    move-result v7

    .line 73
    invoke-virtual {p0, v7}, Lmiuix/spring/view/SpringHelper$AxisHandler;->obtainSpringBackDistance(F)F

    .line 74
    move-result v7

    .line 77
    mul-float/2addr v7, v6

    .line 78
    iput v7, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 79
    aget v6, p3, v0

    .line 81
    sub-int v7, v1, v1

    .line 83
    add-int/2addr v7, v6

    .line 85
    aput v7, p3, v0

    .line 86
    :cond_2
    iget v6, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 88
    iget v7, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 90
    sub-float/2addr v7, v3

    .line 92
    add-float/2addr v7, v6

    .line 93
    float-to-int v3, v7

    .line 94
    int-to-float v6, v3

    .line 95
    mul-float/2addr v5, v6

    .line 96
    cmpl-float v5, v5, v4

    .line 97
    if-ltz v5, :cond_4

    .line 99
    if-nez p1, :cond_3

    .line 101
    iput v6, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 103
    :cond_3
    aput v1, p3, v0

    .line 105
    goto :goto_2

    .line 107
    :cond_4
    iput v4, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 108
    aget v1, p3, v0

    .line 110
    int-to-float v1, v1

    .line 112
    add-float/2addr v1, v2

    .line 113
    float-to-int v1, v1

    .line 114
    aput v1, p3, v0

    .line 115
    :goto_2
    iget p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 117
    cmpl-float v1, p3, v4

    .line 119
    if-nez v1, :cond_5

    .line 121
    iput v4, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 123
    :cond_5
    if-nez p1, :cond_6

    .line 125
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    .line 127
    move-result p1

    .line 130
    iget p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 131
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 133
    move-result p3

    .line 136
    invoke-virtual {p0, p3}, Lmiuix/spring/view/SpringHelper$AxisHandler;->unObtainSpringBackDistance(F)F

    .line 137
    move-result p3

    .line 140
    mul-float/2addr p3, p1

    .line 141
    iput p3, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 142
    :cond_6
    aput v3, p2, v0

    .line 144
    const/4 p0, 0x1

    .line 146
    return p0

    .line 147
    :cond_7
    :goto_3
    return v2

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 150
.end method

.method public final handleNestedScroll(II[I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->this$0:Lmiuix/spring/view/SpringHelper;

    .line 2
    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->springAvailable()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    if-nez p2, :cond_0

    .line 10
    const/4 p2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    if-eqz p1, :cond_3

    .line 15
    move-object v0, p0

    .line 17
    check-cast v0, Lmiuix/spring/view/SpringHelper$1;

    .line 18
    iget-object v1, v0, Lmiuix/spring/view/SpringHelper$1;->this$0:Lmiuix/spring/view/SpringHelper;

    .line 20
    iget v0, v0, Lmiuix/spring/view/SpringHelper$1;->$r8$classId:I

    .line 22
    packed-switch v0, :pswitch_data_0

    .line 24
    goto :goto_1

    .line 27
    :pswitch_0
    invoke-virtual {v1}, Lmiuix/spring/view/SpringHelper;->canScrollHorizontally()Z

    .line 28
    move-result v2

    .line 31
    goto :goto_2

    .line 32
    :goto_1
    invoke-virtual {v1}, Lmiuix/spring/view/SpringHelper;->canScrollVertically()Z

    .line 33
    move-result v2

    .line 36
    :goto_2
    if-eqz v2, :cond_3

    .line 37
    iget v2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 39
    int-to-float v3, p1

    .line 41
    add-float/2addr v2, v3

    .line 42
    iput v2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 43
    if-eqz p2, :cond_1

    .line 45
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 47
    move-result p2

    .line 50
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 51
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 53
    move-result v0

    .line 56
    invoke-virtual {p0, v0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->obtainSpringBackDistance(F)F

    .line 57
    move-result v0

    .line 60
    mul-float/2addr v0, p2

    .line 61
    iput v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 62
    goto :goto_5

    .line 64
    :cond_1
    iget p2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 65
    const/4 v2, 0x0

    .line 67
    cmpl-float p2, p2, v2

    .line 68
    if-nez p2, :cond_2

    .line 70
    packed-switch v0, :pswitch_data_1

    .line 72
    goto :goto_3

    .line 75
    :pswitch_1
    invoke-virtual {v1}, Lmiuix/spring/view/SpringHelper;->vibrate()V

    .line 76
    goto :goto_4

    .line 79
    :goto_3
    invoke-virtual {v1}, Lmiuix/spring/view/SpringHelper;->vibrate()V

    .line 80
    :cond_2
    :goto_4
    iget p2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 83
    add-float/2addr p2, v3

    .line 85
    iput p2, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 86
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 88
    move-result p2

    .line 91
    iget v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 92
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 94
    move-result v0

    .line 97
    invoke-virtual {p0, v0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->unObtainSpringBackDistance(F)F

    .line 98
    move-result v0

    .line 101
    mul-float/2addr v0, p2

    .line 102
    iput v0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 103
    :goto_5
    iget p0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAxis:I

    .line 105
    aget p2, p3, p0

    .line 107
    add-int/2addr p2, p1

    .line 109
    aput p2, p3, p0

    .line 110
    :cond_3
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 114
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
    .line 120
.end method

.method public final obtainSpringBackDistance(F)F
    .locals 6

    .line 1
    check-cast p0, Lmiuix/spring/view/SpringHelper$1;

    .line 2
    iget v0, p0, Lmiuix/spring/view/SpringHelper$1;->$r8$classId:I

    .line 4
    iget-object p0, p0, Lmiuix/spring/view/SpringHelper$1;->this$0:Lmiuix/spring/view/SpringHelper;

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->getWidth()I

    .line 12
    move-result p0

    .line 15
    goto :goto_1

    .line 16
    :goto_0
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->getHeight()I

    .line 17
    move-result p0

    .line 20
    :goto_1
    if-nez p0, :cond_0

    .line 21
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 23
    move-result p0

    .line 26
    const/high16 p1, 0x3f000000    # 0.5f

    .line 27
    mul-float/2addr p0, p1

    .line 29
    return p0

    .line 30
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 31
    move-result p1

    .line 34
    int-to-float p0, p0

    .line 35
    div-float/2addr p1, p0

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 39
    move-result p1

    .line 42
    float-to-double v0, p1

    .line 43
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 44
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 46
    move-result-wide v4

    .line 49
    div-double/2addr v4, v2

    .line 50
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 51
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 53
    move-result-wide v2

    .line 56
    sub-double/2addr v4, v2

    .line 57
    add-double/2addr v4, v0

    .line 58
    double-to-float p1, v4

    .line 59
    mul-float/2addr p1, p0

    .line 60
    return p1

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 62
.end method

.method public final unObtainSpringBackDistance(F)F
    .locals 7

    .line 1
    check-cast p0, Lmiuix/spring/view/SpringHelper$1;

    .line 2
    iget v0, p0, Lmiuix/spring/view/SpringHelper$1;->$r8$classId:I

    .line 4
    iget-object p0, p0, Lmiuix/spring/view/SpringHelper$1;->this$0:Lmiuix/spring/view/SpringHelper;

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->getWidth()I

    .line 12
    move-result p0

    .line 15
    goto :goto_1

    .line 16
    :goto_0
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->getHeight()I

    .line 17
    move-result p0

    .line 20
    :goto_1
    if-nez p0, :cond_0

    .line 21
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 23
    move-result p0

    .line 26
    const/high16 p1, 0x40000000    # 2.0f

    .line 27
    mul-float/2addr p0, p1

    .line 29
    return p0

    .line 30
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 31
    move-result v0

    .line 34
    int-to-float v1, p0

    .line 35
    div-float/2addr v0, v1

    .line 36
    const v2, 0x3eaaaaab

    .line 37
    cmpg-float v0, v0, v2

    .line 40
    const/high16 v2, 0x40400000    # 3.0f

    .line 42
    if-gtz v0, :cond_1

    .line 44
    int-to-double v3, p0

    .line 46
    const-wide v5, 0x3fe5555560000000L    # 0.6666666865348816

    .line 47
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 52
    move-result-wide v5

    .line 55
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 56
    move-result p0

    .line 59
    mul-float/2addr p0, v2

    .line 60
    sub-float/2addr v1, p0

    .line 61
    float-to-double p0, v1

    .line 62
    const-wide v0, 0x3fd5555560000000L    # 0.3333333432674408

    .line 63
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 68
    move-result-wide p0

    .line 71
    mul-double/2addr p0, v5

    .line 72
    sub-double/2addr v3, p0

    .line 73
    double-to-float p0, v3

    .line 74
    return p0

    .line 75
    :cond_1
    mul-float/2addr p1, v2

    .line 76
    return p1

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 78
.end method
