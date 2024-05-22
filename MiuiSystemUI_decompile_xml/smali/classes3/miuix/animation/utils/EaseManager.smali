.class public Lmiuix/animation/utils/EaseManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEFAULT_DURATION:J = 0x12cL

.field static final sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    sput-object v0, Lmiuix/animation/utils/EaseManager;->sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createTimeInterpolator(I[F)Landroid/animation/TimeInterpolator;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    new-instance p0, Lmiuix/view/animation/BounceEaseInOutInterpolator;

    .line 7
    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseInOutInterpolator;-><init>()V

    .line 9
    return-object p0

    .line 12
    :pswitch_1
    new-instance p0, Lmiuix/view/animation/BounceEaseOutInterpolator;

    .line 13
    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseOutInterpolator;-><init>()V

    .line 15
    return-object p0

    .line 18
    :pswitch_2
    new-instance p0, Lmiuix/view/animation/BounceEaseInInterpolator;

    .line 19
    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseInInterpolator;-><init>()V

    .line 21
    return-object p0

    .line 24
    :pswitch_3
    new-instance p0, Landroid/view/animation/BounceInterpolator;

    .line 25
    invoke-direct {p0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 27
    return-object p0

    .line 30
    :pswitch_4
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    .line 31
    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 33
    return-object p0

    .line 36
    :pswitch_5
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 37
    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 39
    return-object p0

    .line 42
    :pswitch_6
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    .line 43
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 45
    return-object p0

    .line 48
    :pswitch_7
    new-instance p0, Lmiuix/view/animation/ExponentialEaseInOutInterpolator;

    .line 49
    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseInOutInterpolator;-><init>()V

    .line 51
    return-object p0

    .line 54
    :pswitch_8
    new-instance p0, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    .line 55
    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    .line 57
    return-object p0

    .line 60
    :pswitch_9
    new-instance p0, Lmiuix/view/animation/ExponentialEaseInInterpolator;

    .line 61
    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseInInterpolator;-><init>()V

    .line 63
    return-object p0

    .line 66
    :pswitch_a
    new-instance p0, Lmiuix/view/animation/SineEaseInOutInterpolator;

    .line 67
    invoke-direct {p0}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    .line 69
    return-object p0

    .line 72
    :pswitch_b
    new-instance p0, Lmiuix/view/animation/SineEaseOutInterpolator;

    .line 73
    invoke-direct {p0}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    .line 75
    return-object p0

    .line 78
    :pswitch_c
    new-instance p0, Lmiuix/view/animation/SineEaseInInterpolator;

    .line 79
    invoke-direct {p0}, Lmiuix/view/animation/SineEaseInInterpolator;-><init>()V

    .line 81
    return-object p0

    .line 84
    :pswitch_d
    new-instance p0, Lmiuix/view/animation/QuinticEaseInOutInterpolator;

    .line 85
    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseInOutInterpolator;-><init>()V

    .line 87
    return-object p0

    .line 90
    :pswitch_e
    new-instance p0, Lmiuix/view/animation/QuinticEaseOutInterpolator;

    .line 91
    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseOutInterpolator;-><init>()V

    .line 93
    return-object p0

    .line 96
    :pswitch_f
    new-instance p0, Lmiuix/view/animation/QuinticEaseInInterpolator;

    .line 97
    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseInInterpolator;-><init>()V

    .line 99
    return-object p0

    .line 102
    :pswitch_10
    new-instance p0, Lmiuix/view/animation/QuarticEaseInOutInterpolator;

    .line 103
    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseInOutInterpolator;-><init>()V

    .line 105
    return-object p0

    .line 108
    :pswitch_11
    new-instance p0, Lmiuix/view/animation/QuarticEaseOutInterpolator;

    .line 109
    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseOutInterpolator;-><init>()V

    .line 111
    return-object p0

    .line 114
    :pswitch_12
    new-instance p0, Lmiuix/view/animation/QuarticEaseInInterpolator;

    .line 115
    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseInInterpolator;-><init>()V

    .line 117
    return-object p0

    .line 120
    :pswitch_13
    new-instance p0, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    .line 121
    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    .line 123
    return-object p0

    .line 126
    :pswitch_14
    new-instance p0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 127
    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 129
    return-object p0

    .line 132
    :pswitch_15
    new-instance p0, Lmiuix/view/animation/CubicEaseInInterpolator;

    .line 133
    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseInInterpolator;-><init>()V

    .line 135
    return-object p0

    .line 138
    :pswitch_16
    new-instance p0, Lmiuix/view/animation/QuadraticEaseInOutInterpolator;

    .line 139
    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    .line 141
    return-object p0

    .line 144
    :pswitch_17
    new-instance p0, Lmiuix/view/animation/QuadraticEaseOutInterpolator;

    .line 145
    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    .line 147
    return-object p0

    .line 150
    :pswitch_18
    new-instance p0, Lmiuix/view/animation/QuadraticEaseInInterpolator;

    .line 151
    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseInInterpolator;-><init>()V

    .line 153
    return-object p0

    .line 156
    :pswitch_19
    new-instance p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 157
    invoke-direct {p0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    .line 159
    const/4 v0, 0x0

    .line 162
    aget v0, p1, v0

    .line 163
    invoke-virtual {p0, v0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 165
    move-result-object p0

    .line 168
    const/4 v0, 0x1

    .line 169
    aget p1, p1, v0

    .line 170
    invoke-virtual {p0, p1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 172
    move-result-object p0

    .line 175
    return-object p0

    .line 176
    :pswitch_1a
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    .line 177
    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 179
    return-object p0

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_1a
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 184
.end method

.method public static varargs getInterpolator(I[F)Landroid/animation/TimeInterpolator;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmiuix/animation/utils/EaseManager;->getInterpolatorStyle(I[F)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    return-object p0
.end method

.method public static getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;
    .locals 3

    if-eqz p0, :cond_1

    .line 3
    sget-object v0, Lmiuix/animation/utils/EaseManager;->sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/TimeInterpolator;

    if-nez v1, :cond_0

    .line 4
    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    iget-object v2, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[F

    invoke-static {v1, v2}, Lmiuix/animation/utils/EaseManager;->createTimeInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget p0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs getInterpolatorStyle(I[F)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;
    .locals 1

    .line 1
    new-instance v0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 2
    invoke-direct {v0, p0, p1}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I[F)V

    .line 4
    return-object v0
    .line 7
.end method

.method public static varargs getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-lt p0, v0, :cond_2

    .line 3
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-le v0, v2, :cond_0

    .line 8
    array-length v0, p1

    .line 10
    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([FII)[F

    .line 11
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-array v0, v1, [F

    .line 16
    :goto_0
    invoke-static {p0, v0}, Lmiuix/animation/utils/EaseManager;->getInterpolatorStyle(I[F)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 18
    move-result-object p0

    .line 21
    array-length v0, p1

    .line 22
    if-lez v0, :cond_1

    .line 23
    aget p1, p1, v1

    .line 25
    float-to-int p1, p1

    .line 27
    int-to-long v0, p1

    .line 28
    invoke-virtual {p0, v0, v1}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 29
    :cond_1
    return-object p0

    .line 32
    :cond_2
    new-instance v0, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 33
    invoke-direct {v0, p0, p1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 35
    return-object v0
    .line 38
.end method

.method public static isPhysicsStyle(I)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ge p0, v0, :cond_0

    .line 3
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
    .line 8
.end method
