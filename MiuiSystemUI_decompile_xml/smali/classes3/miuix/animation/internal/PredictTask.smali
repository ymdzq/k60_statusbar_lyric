.class public Lmiuix/animation/internal/PredictTask;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final sCreator:Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/animation/internal/PredictTask$1;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/internal/PredictTask$1;-><init>()V

    .line 4
    sput-object v0, Lmiuix/animation/internal/PredictTask;->sCreator:Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static predictDuration(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)J
    .locals 9

    .line 1
    new-instance v0, Lmiuix/animation/internal/TransitionInfo;

    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, Lmiuix/animation/internal/TransitionInfo;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 4
    sget-object p0, Lmiuix/animation/internal/PredictTask;->sCreator:Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;

    .line 7
    invoke-virtual {v0, p0}, Lmiuix/animation/internal/TransitionInfo;->initUpdateList(Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;)V

    .line 9
    const/4 p0, 0x1

    .line 12
    invoke-virtual {v0, p0}, Lmiuix/animation/internal/TransitionInfo;->setupTasks(Z)V

    .line 13
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    .line 20
    move-result-wide p0

    .line 23
    move-wide p2, p0

    .line 24
    :goto_0
    iget-object v1, v0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v8

    .line 30
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 40
    check-cast v1, Lmiuix/animation/internal/AnimTask;

    .line 41
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x1

    .line 44
    move-wide v2, p2

    .line 45
    move-wide v4, p0

    .line 46
    invoke-static/range {v1 .. v7}, Lmiuix/animation/internal/AnimRunnerTask;->doAnimationFrame(Lmiuix/animation/internal/AnimTask;JJZZ)V

    .line 47
    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v0}, Lmiuix/animation/internal/TransitionInfo;->getAnimStats()Lmiuix/animation/internal/AnimStats;

    .line 51
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    .line 55
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    add-long/2addr p2, p0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-wide p2
    .line 63
.end method

.method public static predictNextValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfig;)D
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    move-object/from16 v2, p3

    .line 6
    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;

    .line 8
    move-result-object v2

    .line 11
    invoke-virtual/range {p1 .. p1}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 12
    move-result-object v3

    .line 15
    invoke-static {v3, v2}, Lmiuix/animation/internal/AnimConfigUtils;->getEase(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 20
    move-result v3

    .line 23
    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    .line 24
    move-result-wide v14

    .line 27
    new-instance v4, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 33
    invoke-virtual {v0, v4}, Lmiuix/animation/internal/AnimManager;->getTransitionInfos(Ljava/util/List;)V

    .line 35
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v0

    .line 41
    const/4 v4, 0x0

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 52
    check-cast v5, Lmiuix/animation/internal/TransitionInfo;

    .line 53
    invoke-virtual {v5, v1}, Lmiuix/animation/internal/TransitionInfo;->containsProperty(Lmiuix/animation/property/FloatProperty;)Z

    .line 55
    move-result v6

    .line 58
    if-eqz v6, :cond_0

    .line 59
    iget-object v4, v5, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 61
    invoke-static {v4, v1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 63
    move-result-object v4

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 68
    if-eqz v4, :cond_5

    .line 73
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 75
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    .line 79
    move-result-wide v5

    .line 82
    long-to-double v5, v5

    .line 83
    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 84
    div-double v11, v5, v7

    .line 89
    iget v5, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 91
    invoke-static {v5}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    .line 93
    move-result v5

    .line 96
    if-eqz v5, :cond_3

    .line 97
    iget v5, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 99
    invoke-static {v5}, Lmiuix/animation/styles/PropertyStyle;->getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;

    .line 101
    move-result-object v5

    .line 104
    iget-object v6, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 105
    iget-wide v6, v6, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 107
    invoke-static {v6, v7}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 109
    move-result v6

    .line 112
    if-eqz v6, :cond_2

    .line 113
    return-wide v0

    .line 115
    :cond_2
    iget-object v0, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    .line 116
    const/4 v1, 0x0

    .line 118
    aget-wide v7, v0, v1

    .line 119
    const/4 v2, 0x1

    .line 121
    aget-wide v9, v0, v2

    .line 122
    const/4 v0, 0x2

    .line 124
    new-array v13, v0, [D

    .line 125
    iget-object v0, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 127
    move-wide/from16 p0, v11

    .line 129
    iget-wide v11, v0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 131
    aput-wide v11, v13, v1

    .line 133
    float-to-double v0, v3

    .line 135
    aput-wide v0, v13, v2

    .line 136
    move-object v4, v5

    .line 138
    move-wide v5, v14

    .line 139
    move-wide/from16 v2, p0

    .line 140
    move-wide v11, v2

    .line 142
    invoke-interface/range {v4 .. v13}, Lmiuix/animation/physics/PhysicsOperator;->updateVelocity(DDDD[D)D

    .line 143
    move-result-wide v4

    .line 146
    add-double/2addr v14, v4

    .line 147
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 148
    mul-double/2addr v14, v4

    .line 150
    mul-double/2addr v14, v2

    .line 151
    add-double/2addr v0, v14

    .line 152
    goto :goto_1

    .line 153
    :cond_3
    move-wide v5, v11

    .line 154
    check-cast v2, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 155
    invoke-static {v2}, Lmiuix/animation/utils/EaseManager;->getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    .line 157
    move-result-object v0

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 161
    move-result-wide v7

    .line 164
    iget-object v1, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 165
    iget-wide v9, v1, Lmiuix/animation/internal/AnimInfo;->startTime:J

    .line 167
    sub-long/2addr v7, v9

    .line 169
    double-to-long v5, v5

    .line 170
    add-long/2addr v7, v5

    .line 171
    iget-wide v1, v2, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->duration:J

    .line 172
    cmp-long v3, v7, v1

    .line 174
    if-gez v3, :cond_4

    .line 176
    long-to-float v3, v7

    .line 178
    long-to-float v1, v1

    .line 179
    div-float/2addr v3, v1

    .line 180
    invoke-interface {v0, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 181
    move-result v0

    .line 184
    float-to-double v0, v0

    .line 185
    goto :goto_1

    .line 186
    :cond_4
    iget-object v0, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 187
    iget-wide v0, v0, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 189
    :cond_5
    :goto_1
    return-wide v0
    .line 191
.end method

.method public static predictNextVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimConfig;)D
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    move-object/from16 v2, p3

    .line 5
    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;

    .line 7
    move-result-object v2

    .line 10
    invoke-virtual/range {p1 .. p1}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 11
    move-result-object v3

    .line 14
    invoke-static {v3, v2}, Lmiuix/animation/internal/AnimConfigUtils;->getEase(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 15
    move-result-object v2

    .line 18
    invoke-virtual {p0, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 19
    move-result v3

    .line 22
    invoke-virtual {p0, v1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    .line 23
    move-result-wide v5

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 32
    invoke-virtual {v0, v4}, Lmiuix/animation/internal/AnimManager;->getTransitionInfos(Ljava/util/List;)V

    .line 34
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v0

    .line 40
    const/4 v4, 0x0

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v7

    .line 45
    if-eqz v7, :cond_1

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v7

    .line 51
    check-cast v7, Lmiuix/animation/internal/TransitionInfo;

    .line 52
    invoke-virtual {v7, v1}, Lmiuix/animation/internal/TransitionInfo;->containsProperty(Lmiuix/animation/property/FloatProperty;)Z

    .line 54
    move-result v8

    .line 57
    if-eqz v8, :cond_0

    .line 58
    iget-object v4, v7, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 60
    invoke-static {v4, v1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 62
    move-result-object v4

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 67
    if-eqz v4, :cond_3

    .line 72
    iget v7, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 74
    invoke-static {v7}, Lmiuix/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    .line 76
    move-result v7

    .line 79
    if-eqz v7, :cond_3

    .line 80
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 82
    move-result-object v7

    .line 85
    invoke-virtual {v7}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    .line 86
    move-result-wide v7

    .line 89
    long-to-double v7, v7

    .line 90
    const-wide v9, 0x408f400000000000L    # 1000.0

    .line 91
    div-double v11, v7, v9

    .line 96
    iget v7, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    .line 98
    invoke-static {v7}, Lmiuix/animation/styles/PropertyStyle;->getPhyOperator(I)Lmiuix/animation/physics/PhysicsOperator;

    .line 100
    move-result-object v7

    .line 103
    iget-object v8, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 104
    iget-wide v8, v8, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 106
    invoke-static {v8, v9}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 108
    move-result v8

    .line 111
    if-eqz v8, :cond_2

    .line 112
    return-wide v0

    .line 114
    :cond_2
    iget-object v0, v2, Lmiuix/animation/utils/EaseManager$EaseStyle;->parameters:[D

    .line 115
    const/4 v1, 0x0

    .line 117
    aget-wide v8, v0, v1

    .line 118
    const/4 v2, 0x1

    .line 120
    aget-wide v13, v0, v2

    .line 121
    const/4 v0, 0x2

    .line 123
    new-array v0, v0, [D

    .line 124
    iget-object v4, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 126
    move-wide p0, v11

    .line 128
    iget-wide v10, v4, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 129
    aput-wide v10, v0, v1

    .line 131
    float-to-double v3, v3

    .line 133
    aput-wide v3, v0, v2

    .line 134
    move-object v4, v7

    .line 136
    move-wide v7, v8

    .line 137
    move-wide v9, v13

    .line 138
    move-wide v11, p0

    .line 139
    move-object v13, v0

    .line 140
    invoke-interface/range {v4 .. v13}, Lmiuix/animation/physics/PhysicsOperator;->updateVelocity(DDDD[D)D

    .line 141
    move-result-wide v0

    .line 144
    :cond_3
    return-wide v0
    .line 145
.end method
