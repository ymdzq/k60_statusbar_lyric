.class Lmiuix/animation/internal/AnimRunnerTask;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field static final animDataLocal:Ljava/lang/ThreadLocal;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    sput-object v0, Lmiuix/animation/internal/AnimRunnerTask;->animDataLocal:Ljava/lang/ThreadLocal;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAnimationFrame(Lmiuix/animation/internal/AnimTask;JJZZ)V
    .locals 20

    .line 1
    sget-object v0, Lmiuix/animation/internal/AnimRunnerTask;->animDataLocal:Ljava/lang/ThreadLocal;

    .line 2
    const-class v1, Lmiuix/animation/internal/AnimData;

    .line 4
    invoke-static {v0, v1}, Lmiuix/animation/utils/CommonUtils;->getLocal(Ljava/lang/ThreadLocal;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/animation/internal/AnimData;

    .line 10
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 12
    move-result v1

    .line 15
    iput-boolean v1, v0, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    .line 16
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    .line 22
    move-result-wide v10

    .line 25
    move-object/from16 v12, p0

    .line 26
    :goto_0
    if-eqz v12, :cond_6

    .line 28
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 30
    const/4 v2, 0x0

    .line 32
    iput v2, v1, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 33
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    .line 35
    move-result v1

    .line 38
    const/4 v13, 0x1

    .line 39
    xor-int/lit8 v14, v1, 0x1

    .line 40
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 42
    iget-object v15, v1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 44
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 46
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 48
    instance-of v9, v1, Lmiuix/animation/ViewTarget;

    .line 50
    iget v1, v12, Lmiuix/animation/internal/AnimTask;->startPos:I

    .line 52
    invoke-virtual {v12}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    .line 54
    move-result v2

    .line 57
    add-int v7, v2, v1

    .line 58
    move v8, v1

    .line 60
    :goto_1
    if-ge v8, v7, :cond_5

    .line 61
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 66
    move-object v5, v1

    .line 67
    check-cast v5, Lmiuix/animation/listener/UpdateInfo;

    .line 68
    if-nez v5, :cond_0

    .line 70
    move/from16 v17, v7

    .line 72
    move/from16 v18, v8

    .line 74
    move/from16 v19, v9

    .line 76
    goto/16 :goto_4

    .line 78
    :cond_0
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 80
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 82
    iget-object v2, v5, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 84
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;

    .line 90
    move-result-object v4

    .line 93
    iget-object v1, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 94
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 96
    invoke-virtual {v0, v5, v1, v4}, Lmiuix/animation/internal/AnimData;->from(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    .line 98
    if-eqz v14, :cond_1

    .line 101
    iget-object v3, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 103
    move-object v1, v12

    .line 105
    move-object v2, v0

    .line 106
    move-object/from16 v16, v5

    .line 107
    move-wide/from16 v5, p1

    .line 109
    move/from16 v17, v7

    .line 111
    move/from16 v18, v8

    .line 113
    move-wide/from16 v7, p3

    .line 115
    invoke-static/range {v1 .. v8}, Lmiuix/animation/internal/AnimRunnerTask;->setup(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/base/AnimSpecialConfig;JJ)V

    .line 117
    goto :goto_2

    .line 120
    :cond_1
    move-object/from16 v16, v5

    .line 121
    move/from16 v17, v7

    .line 123
    move/from16 v18, v8

    .line 125
    :goto_2
    iget-byte v1, v0, Lmiuix/animation/internal/AnimData;->op:B

    .line 127
    if-ne v1, v13, :cond_2

    .line 129
    iget-object v3, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 131
    move-object v1, v12

    .line 133
    move-object v2, v0

    .line 134
    move-wide/from16 v4, p1

    .line 135
    move-wide/from16 v6, p3

    .line 137
    invoke-static/range {v1 .. v7}, Lmiuix/animation/internal/AnimRunnerTask;->startAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;JJ)V

    .line 139
    :cond_2
    iget-byte v1, v0, Lmiuix/animation/internal/AnimData;->op:B

    .line 142
    const/4 v2, 0x2

    .line 144
    if-ne v1, v2, :cond_3

    .line 145
    iget-object v3, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 147
    move-object v1, v12

    .line 149
    move-object v2, v0

    .line 150
    move-wide/from16 v4, p1

    .line 151
    move-wide/from16 v6, p3

    .line 153
    move/from16 v19, v9

    .line 155
    move-wide v8, v10

    .line 157
    invoke-static/range {v1 .. v9}, Lmiuix/animation/internal/AnimRunnerTask;->updateAnimation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;JJJ)V

    .line 158
    goto :goto_3

    .line 161
    :cond_3
    move/from16 v19, v9

    .line 162
    :goto_3
    move-object/from16 v1, v16

    .line 164
    invoke-virtual {v0, v1}, Lmiuix/animation/internal/AnimData;->to(Lmiuix/animation/listener/UpdateInfo;)V

    .line 166
    if-eqz p5, :cond_4

    .line 169
    if-eqz p6, :cond_4

    .line 171
    if-nez v19, :cond_4

    .line 173
    iget-wide v2, v0, Lmiuix/animation/internal/AnimData;->value:D

    .line 175
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 177
    move-result v2

    .line 180
    if-nez v2, :cond_4

    .line 181
    iget-object v2, v12, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 183
    iget-object v2, v2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 185
    invoke-virtual {v1, v2}, Lmiuix/animation/listener/UpdateInfo;->setTargetValue(Lmiuix/animation/IAnimTarget;)V

    .line 187
    :cond_4
    :goto_4
    add-int/lit8 v8, v18, 0x1

    .line 190
    move/from16 v7, v17

    .line 192
    move/from16 v9, v19

    .line 194
    goto/16 :goto_1

    .line 196
    :cond_5
    invoke-virtual {v12}, Lmiuix/animation/utils/LinkNode;->remove()Lmiuix/animation/utils/LinkNode;

    .line 198
    move-result-object v1

    .line 201
    move-object v12, v1

    .line 202
    check-cast v12, Lmiuix/animation/internal/AnimTask;

    .line 203
    goto/16 :goto_0

    .line 205
    :cond_6
    return-void
    .line 207
.end method

.method private static evaluateValue(Lmiuix/animation/internal/AnimData;F)D
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 2
    invoke-static {v0}, Lmiuix/animation/internal/AnimRunnerTask;->getEvaluator(Lmiuix/animation/property/FloatProperty;)Landroid/animation/TypeEvaluator;

    .line 4
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/animation/IntEvaluator;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    check-cast v0, Landroid/animation/IntEvaluator;

    .line 12
    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 14
    double-to-int v1, v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 20
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 21
    double-to-int p0, v2

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {v0, p1, v1, p0}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    .line 32
    move-result-wide p0

    .line 35
    return-wide p0

    .line 36
    :cond_0
    check-cast v0, Landroid/animation/FloatEvaluator;

    .line 37
    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 39
    double-to-float v1, v1

    .line 41
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object v1

    .line 45
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 46
    double-to-float p0, v2

    .line 48
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {v0, p1, v1, p0}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    .line 53
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Float;->doubleValue()D

    .line 57
    move-result-wide p0

    .line 60
    return-wide p0
    .line 61
.end method

.method private static finishProperty(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1, v0}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 3
    iget-object p0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 6
    iget p1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 8
    add-int/lit8 p1, p1, 0x1

    .line 10
    iput p1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 12
    return-void
    .line 14
.end method

.method private static getEvaluator(Lmiuix/animation/property/FloatProperty;)Landroid/animation/TypeEvaluator;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    .line 2
    if-ne p0, v0, :cond_0

    .line 4
    instance-of v0, p0, Lmiuix/animation/property/ColorProperty;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    sget-object p0, Lmiuix/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 10
    return-object p0

    .line 12
    :cond_0
    instance-of p0, p0, Lmiuix/animation/property/IIntValueProperty;

    .line 13
    if-eqz p0, :cond_1

    .line 15
    new-instance p0, Landroid/animation/IntEvaluator;

    .line 17
    invoke-direct {p0}, Landroid/animation/IntEvaluator;-><init>()V

    .line 19
    return-object p0

    .line 22
    :cond_1
    new-instance p0, Landroid/animation/FloatEvaluator;

    .line 23
    invoke-direct {p0}, Landroid/animation/FloatEvaluator;-><init>()V

    .line 25
    return-object p0
    .line 28
.end method

.method private static initAnimation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;JJ)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lmiuix/animation/internal/AnimRunnerTask;->setValues(Lmiuix/animation/internal/AnimData;)Z

    .line 2
    move-result v0

    .line 5
    const-string v1, ", value = "

    .line 6
    const-string v2, ", property = "

    .line 8
    const-string v3, "miuix_anim"

    .line 10
    const/4 v4, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    iget-boolean p2, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    .line 15
    if-eqz p2, :cond_0

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    const-string p3, "StartTask, set start value failed, break, tag = "

    .line 21
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object p3, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 26
    iget-object p3, p3, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object p3, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 36
    invoke-virtual {p3}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 38
    move-result-object p3

    .line 41
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string p3, ", start value = "

    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 50
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 52
    const-string p3, ", target value = "

    .line 55
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 60
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->value:D

    .line 68
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 76
    invoke-static {v3, p2}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-static {p0, p1}, Lmiuix/animation/internal/AnimRunnerTask;->finishProperty(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V

    .line 80
    return v4

    .line 83
    :cond_1
    invoke-static {p1}, Lmiuix/animation/internal/AnimRunnerTask;->isValueInvalid(Lmiuix/animation/internal/AnimData;)Z

    .line 84
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    iget-boolean p2, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    .line 90
    if-eqz p2, :cond_2

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    const-string p3, "StartTask, values invalid, break, tag = "

    .line 96
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object p3, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 101
    iget-object p3, p3, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object p3, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 111
    invoke-virtual {p3}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 113
    move-result-object p3

    .line 116
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string p3, ", startValue = "

    .line 120
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 125
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 127
    const-string p3, ", targetValue = "

    .line 130
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 135
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->value:D

    .line 143
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 145
    const-string p3, ", velocity = "

    .line 148
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-wide p3, p1, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 153
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p2

    .line 161
    invoke-static {v3, p2}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_2
    invoke-virtual {p1}, Lmiuix/animation/internal/AnimData;->reset()V

    .line 165
    iget-wide p2, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 168
    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->value:D

    .line 170
    invoke-static {p0, p1}, Lmiuix/animation/internal/AnimRunnerTask;->finishProperty(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V

    .line 172
    return v4

    .line 175
    :cond_3
    sub-long/2addr p2, p4

    .line 176
    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 177
    iput v4, p1, Lmiuix/animation/internal/AnimData;->frameCount:I

    .line 179
    const/4 p0, 0x2

    .line 181
    invoke-virtual {p1, p0}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 182
    const/4 p0, 0x1

    .line 185
    return p0
    .line 186
.end method

.method private static isValueInvalid(Lmiuix/animation/internal/AnimData;)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 2
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 4
    cmpl-double v0, v0, v2

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 12
    move-result-wide v0

    .line 15
    const-wide v2, 0x4030aaaaa0000000L    # 16.66666603088379

    .line 16
    cmpg-double p0, v0, v2

    .line 21
    if-gez p0, :cond_0

    .line 23
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
    .line 28
.end method

.method private static regulateProgress(F)F
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    cmpl-float v1, p0, v0

    .line 4
    if-lez v1, :cond_0

    .line 6
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    cmpg-float v1, p0, v0

    .line 10
    if-gez v1, :cond_1

    .line 12
    return v0

    .line 14
    :cond_1
    return p0
    .line 15
.end method

.method private static setStartData(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p1, Lmiuix/animation/internal/AnimData;->progress:D

    .line 4
    invoke-virtual {p1}, Lmiuix/animation/internal/AnimData;->reset()V

    .line 6
    iget-boolean v0, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "+++++ start anim, target = "

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 20
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", tag = "

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object p0, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 32
    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string p0, ", property = "

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object p0, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 44
    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string p0, ", op = "

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-byte p0, p1, Lmiuix/animation/internal/AnimData;->op:B

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string p0, ", ease = "

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object p0, p1, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string p0, ", delay = "

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    const-string p0, ", start value = "

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 90
    const-string p0, ", target value = "

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 100
    const-string p0, ", value = "

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->value:D

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 110
    const-string p0, ", progress = "

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->progress:D

    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 120
    const-string p0, ", velocity = "

    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-wide p0, p1, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 128
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 136
    const/4 p1, 0x0

    .line 137
    new-array p1, p1, [Ljava/lang/Object;

    .line 138
    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_0
    return-void
    .line 143
.end method

.method private static setValues(Lmiuix/animation/internal/AnimData;)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 2
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 11
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 19
    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 21
    :cond_0
    return v1

    .line 23
    :cond_1
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 24
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 26
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 32
    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    .line 34
    return v1

    .line 36
    :cond_2
    const/4 p0, 0x0

    .line 37
    return p0
    .line 38
.end method

.method public static setup(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/base/AnimSpecialConfig;JJ)V
    .locals 5

    .line 1
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 2
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 10
    iget-object v2, p2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 12
    iget-object v3, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 14
    invoke-static {v2, v3, v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 16
    move-result-wide v0

    .line 19
    iput-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 20
    :cond_0
    sub-long/2addr p4, p6

    .line 22
    iput-wide p4, p1, Lmiuix/animation/internal/AnimData;->initTime:J

    .line 23
    iget-object p6, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 25
    iget p7, p6, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 27
    const/4 v0, 0x1

    .line 29
    add-int/2addr p7, v0

    .line 30
    iput p7, p6, Lmiuix/animation/internal/AnimStats;->initCount:I

    .line 31
    iget-byte p7, p1, Lmiuix/animation/internal/AnimData;->op:B

    .line 33
    const/4 v1, 0x2

    .line 35
    if-ne p7, v1, :cond_2

    .line 36
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 38
    const-wide/16 v3, 0x0

    .line 40
    cmp-long p7, v1, v3

    .line 42
    if-lez p7, :cond_1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    iput-wide p4, p1, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 47
    iput-wide v3, p1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 49
    iget p2, p6, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 51
    sub-int/2addr p2, v0

    .line 53
    iput p2, p6, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 54
    invoke-static {p0, p1}, Lmiuix/animation/internal/AnimRunnerTask;->setStartData(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V

    .line 56
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 60
    iget-object p0, p2, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 63
    invoke-static {p0, p3}, Lmiuix/animation/internal/AnimConfigUtils;->getFromSpeed(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)F

    .line 65
    move-result p0

    .line 68
    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 69
    cmpl-float p2, p0, p2

    .line 72
    if-eqz p2, :cond_3

    .line 74
    float-to-double p2, p0

    .line 76
    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 77
    :cond_3
    :goto_1
    return-void
    .line 79
.end method

.method public static startAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;JJ)V
    .locals 6

    .line 1
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long v0, v0, v2

    .line 6
    if-lez v0, :cond_2

    .line 8
    iget-boolean v0, p1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "StartTask, tag = "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 21
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, ", property = "

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v1, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 33
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, ", delay = "

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", initTime = "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-wide v1, p1, Lmiuix/animation/internal/AnimData;->initTime:J

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", totalT = "

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 73
    const/4 v1, 0x0

    .line 74
    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_0
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->initTime:J

    .line 80
    iget-wide v2, p1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 82
    add-long/2addr v0, v2

    .line 84
    cmp-long v0, p3, v0

    .line 85
    if-gez v0, :cond_1

    .line 87
    return-void

    .line 89
    :cond_1
    iget-object p2, p2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 90
    iget-object v0, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 92
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 94
    invoke-static {p2, v0, v1, v2}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 99
    move-result-wide v3

    .line 102
    cmpl-double p2, v3, v1

    .line 103
    if-eqz p2, :cond_2

    .line 105
    iput-wide v3, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 107
    :cond_2
    iget-object p2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 109
    iget v0, p2, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 111
    add-int/lit8 v0, v0, -0x1

    .line 113
    iput v0, p2, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 115
    move-object v0, p0

    .line 117
    move-object v1, p1

    .line 118
    move-wide v2, p3

    .line 119
    move-wide v4, p5

    .line 120
    invoke-static/range {v0 .. v5}, Lmiuix/animation/internal/AnimRunnerTask;->initAnimation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;JJ)Z

    .line 121
    move-result p2

    .line 124
    if-nez p2, :cond_3

    .line 125
    return-void

    .line 127
    :cond_3
    invoke-static {p0, p1}, Lmiuix/animation/internal/AnimRunnerTask;->setStartData(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;)V

    .line 128
    return-void
    .line 131
.end method

.method private static updateAnimation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimData;Lmiuix/animation/internal/TransitionInfo;JJJ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v9, p1

    .line 3
    move-object/from16 v1, p2

    .line 5
    iget-object v2, v0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 7
    iget v3, v2, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 9
    const/4 v10, 0x1

    .line 11
    add-int/2addr v3, v10

    .line 12
    iput v3, v2, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 13
    iget v2, v9, Lmiuix/animation/internal/AnimData;->frameCount:I

    .line 15
    add-int/2addr v2, v10

    .line 17
    iput v2, v9, Lmiuix/animation/internal/AnimData;->frameCount:I

    .line 18
    iget-object v2, v9, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 20
    sget-object v3, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 22
    if-eq v2, v3, :cond_1

    .line 24
    sget-object v3, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    .line 26
    if-eq v2, v3, :cond_1

    .line 28
    instance-of v2, v2, Lmiuix/animation/property/ColorProperty;

    .line 30
    if-eqz v2, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 35
    move-object/from16 v2, p1

    .line 37
    move-wide/from16 v3, p3

    .line 39
    move-wide/from16 v5, p5

    .line 41
    move-wide/from16 v7, p7

    .line 43
    invoke-static/range {v1 .. v8}, Lmiuix/animation/styles/PropertyStyle;->doAnimationFrame(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJJ)V

    .line 45
    iget-object v1, v9, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 48
    iget v1, v1, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 50
    invoke-static {v1}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    .line 52
    move-result v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    iget-wide v1, v9, Lmiuix/animation/internal/AnimData;->progress:D

    .line 58
    double-to-float v1, v1

    .line 60
    invoke-static {v9, v1}, Lmiuix/animation/internal/AnimRunnerTask;->evaluateValue(Lmiuix/animation/internal/AnimData;F)D

    .line 61
    move-result-wide v1

    .line 64
    iput-wide v1, v9, Lmiuix/animation/internal/AnimData;->value:D

    .line 65
    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    iget-wide v11, v9, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 68
    iget-wide v13, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 70
    const-wide/16 v2, 0x0

    .line 72
    iput-wide v2, v9, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 74
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 76
    iput-wide v2, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 78
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->progress:D

    .line 80
    iput-wide v2, v9, Lmiuix/animation/internal/AnimData;->value:D

    .line 82
    iget-object v1, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 84
    move-object/from16 v2, p1

    .line 86
    move-wide/from16 v3, p3

    .line 88
    move-wide/from16 v5, p5

    .line 90
    move-wide/from16 v7, p7

    .line 92
    invoke-static/range {v1 .. v8}, Lmiuix/animation/styles/PropertyStyle;->doAnimationFrame(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJJ)V

    .line 94
    iget-wide v1, v9, Lmiuix/animation/internal/AnimData;->value:D

    .line 97
    double-to-float v1, v1

    .line 99
    invoke-static {v1}, Lmiuix/animation/internal/AnimRunnerTask;->regulateProgress(F)F

    .line 100
    move-result v1

    .line 103
    float-to-double v1, v1

    .line 104
    iput-wide v1, v9, Lmiuix/animation/internal/AnimData;->progress:D

    .line 105
    iput-wide v11, v9, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 107
    iput-wide v13, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 109
    sget-object v3, Lmiuix/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 111
    double-to-float v1, v1

    .line 113
    double-to-int v2, v11

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v2

    .line 118
    iget-wide v4, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 119
    double-to-int v4, v4

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v4

    .line 125
    invoke-virtual {v3, v1, v2, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-result-object v1

    .line 129
    check-cast v1, Ljava/lang/Integer;

    .line 130
    invoke-virtual {v1}, Ljava/lang/Integer;->doubleValue()D

    .line 132
    move-result-wide v1

    .line 135
    iput-wide v1, v9, Lmiuix/animation/internal/AnimData;->value:D

    .line 136
    :cond_2
    :goto_1
    iget-byte v1, v9, Lmiuix/animation/internal/AnimData;->op:B

    .line 138
    const/4 v2, 0x3

    .line 140
    if-ne v1, v2, :cond_3

    .line 141
    iput-boolean v10, v9, Lmiuix/animation/internal/AnimData;->justEnd:Z

    .line 143
    iget-object v1, v0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 145
    iget v2, v1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 147
    add-int/2addr v2, v10

    .line 149
    iput v2, v1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 150
    :cond_3
    iget-boolean v1, v9, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    .line 152
    if-eqz v1, :cond_4

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    const-string v2, "----- update anim, target = "

    .line 158
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    iget-object v2, v0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 163
    iget-object v2, v2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    const-string v2, ", info.id = "

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v2, v0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 175
    iget v2, v2, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    const-string v2, ", tag = "

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v2, v0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 187
    iget-object v2, v2, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    const-string v2, " "

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v0, v0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 199
    iget-object v0, v0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 203
    move-result v0

    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string v0, ", property = "

    .line 210
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v0, v9, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 215
    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 217
    move-result-object v0

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v0, ", op = "

    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-byte v0, v9, Lmiuix/animation/internal/AnimData;->op:B

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    const-string v0, ", justEnd = "

    .line 234
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-boolean v0, v9, Lmiuix/animation/internal/AnimData;->justEnd:Z

    .line 239
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 241
    const-string v0, ", init time = "

    .line 244
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->initTime:J

    .line 249
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    const-string v0, ", start time = "

    .line 254
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 259
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    const-string v0, ", start value = "

    .line 264
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 269
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 271
    const-string v0, ", target value = "

    .line 274
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->targetValue:D

    .line 279
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 281
    const-string v0, ", value = "

    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->value:D

    .line 289
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 291
    const-string v0, ", progress = "

    .line 294
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->progress:D

    .line 299
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 301
    const-string v0, ", velocity = "

    .line 304
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-wide v2, v9, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 309
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 311
    const-string v0, ", delta = "

    .line 314
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    move-wide/from16 v2, p5

    .line 319
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v0

    .line 327
    const/4 v1, 0x0

    .line 328
    new-array v1, v1, [Ljava/lang/Object;

    .line 329
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :cond_4
    return-void
.end method
