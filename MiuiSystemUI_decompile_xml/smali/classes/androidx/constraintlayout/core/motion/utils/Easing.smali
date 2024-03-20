.class public Landroidx/constraintlayout/core/motion/utils/Easing;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final NAMED_EASING:[Ljava/lang/String;

.field public static final sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;


# instance fields
.field public mStr:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 2
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    .line 4
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 7
    const-string v0, "decelerate"

    .line 9
    const-string v1, "linear"

    .line 11
    const-string/jumbo v2, "standard"

    .line 13
    const-string v3, "accelerate"

    .line 16
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "identity"

    .line 5
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Easing;->mStr:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method

.method public static getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "cubic"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    .line 14
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    .line 16
    return-object v0

    .line 19
    :cond_1
    const-string/jumbo v0, "spline"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/StepCurve;

    .line 29
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/StepCurve;-><init>(Ljava/lang/String;)V

    .line 31
    return-object v0

    .line 34
    :cond_2
    const-string v0, "Schlick"

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Schlick;

    .line 43
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/Schlick;-><init>(Ljava/lang/String;)V

    .line 45
    return-object v0

    .line 48
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 49
    move-result v0

    .line 52
    const/4 v1, -0x1

    .line 53
    sparse-switch v0, :sswitch_data_0

    .line 54
    goto :goto_0

    .line 57
    :sswitch_0
    const-string/jumbo v0, "standard"

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p0

    .line 64
    if-nez p0, :cond_4

    .line 65
    goto :goto_0

    .line 67
    :cond_4
    const/4 v1, 0x5

    .line 68
    goto :goto_0

    .line 69
    :sswitch_1
    const-string v0, "overshoot"

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result p0

    .line 75
    if-nez p0, :cond_5

    .line 76
    goto :goto_0

    .line 78
    :cond_5
    const/4 v1, 0x4

    .line 79
    goto :goto_0

    .line 80
    :sswitch_2
    const-string v0, "linear"

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p0

    .line 86
    if-nez p0, :cond_6

    .line 87
    goto :goto_0

    .line 89
    :cond_6
    const/4 v1, 0x3

    .line 90
    goto :goto_0

    .line 91
    :sswitch_3
    const-string v0, "anticipate"

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result p0

    .line 97
    if-nez p0, :cond_7

    .line 98
    goto :goto_0

    .line 100
    :cond_7
    const/4 v1, 0x2

    .line 101
    goto :goto_0

    .line 102
    :sswitch_4
    const-string v0, "decelerate"

    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p0

    .line 108
    if-nez p0, :cond_8

    .line 109
    goto :goto_0

    .line 111
    :cond_8
    const/4 v1, 0x1

    .line 112
    goto :goto_0

    .line 113
    :sswitch_5
    const-string v0, "accelerate"

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result p0

    .line 119
    if-nez p0, :cond_9

    .line 120
    goto :goto_0

    .line 122
    :cond_9
    const/4 v1, 0x0

    .line 123
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 124
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v1, "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or "

    .line 131
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    sget-object v1, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    .line 137
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 149
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    sget-object p0, Landroidx/constraintlayout/core/motion/utils/Easing;->sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 153
    return-object p0

    .line 155
    :pswitch_0
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    .line 156
    const-string v0, "cubic(0.4, 0.0, 0.2, 1)"

    .line 158
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    .line 160
    return-object p0

    .line 163
    :pswitch_1
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    .line 164
    const-string v0, "cubic(0.34, 1.56, 0.64, 1)"

    .line 166
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    .line 168
    return-object p0

    .line 171
    :pswitch_2
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    .line 172
    const-string v0, "cubic(1, 1, 0, 0)"

    .line 174
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    .line 176
    return-object p0

    .line 179
    :pswitch_3
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    .line 180
    const-string v0, "cubic(0.36, 0, 0.66, -0.56)"

    .line 182
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    .line 184
    return-object p0

    .line 187
    :pswitch_4
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    .line 188
    const-string v0, "cubic(0.0, 0.0, 0.2, 0.95)"

    .line 190
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    .line 192
    return-object p0

    .line 195
    :pswitch_5
    new-instance p0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    .line 196
    const-string v0, "cubic(0.4, 0.05, 0.8, 0.7)"

    .line 198
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    .line 200
    return-object p0

    .line 203
    :sswitch_data_0
    .sparse-switch
        -0x50bb8523 -> :sswitch_5
        -0x4b5653c4 -> :sswitch_4
        -0x47620096 -> :sswitch_3
        -0x41b970db -> :sswitch_2
        -0x2ca5d435 -> :sswitch_1
        0x4e3d1ebd -> :sswitch_0
    .end sparse-switch

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 230
.end method


# virtual methods
.method public get(D)D
    .locals 0

    .line 1
    return-wide p1
    .line 2
.end method

.method public getDiff(D)D
    .locals 0

    .line 1
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    .line 2
    return-wide p0
    .line 4
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/Easing;->mStr:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
