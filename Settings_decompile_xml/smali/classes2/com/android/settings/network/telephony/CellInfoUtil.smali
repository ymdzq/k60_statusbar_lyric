.class public final Lcom/android/settings/network/telephony/CellInfoUtil;
.super Ljava/lang/Object;
.source "CellInfoUtil.java"


# direct methods
.method public static synthetic $r8$lambda$ZY4BpcK65oTKFq16qW3NHKFg6pk(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->lambda$cellInfoListToString$0(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cellInfoListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 310
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/telephony/CellInfoUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/CellInfoUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 311
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ", "

    .line 312
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static cellInfoToString(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 7

    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentity(Landroid/telephony/CellInfo;)Landroid/telephony/CellIdentity;

    move-result-object v0

    .line 319
    invoke-static {v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentityMcc(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-static {v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentityMnc(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v2

    .line 325
    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v6, v0

    move-object v5, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v5, v0

    move-object v6, v5

    .line 329
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "{CellType = %s, isRegistered = %b, mcc = %s, mnc = %s, alphaL = %s, alphaS = %s}"

    .line 327
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertLegacyIncrScanOperatorInfoToCellInfo(Lcom/android/internal/telephony/OperatorInfo;)Landroid/telephony/CellInfo;
    .locals 20

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 182
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    const-string v6, "^[0-9]{5,6}$"

    .line 185
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 186
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v6, "^[0-9]{5,6}[+][0-9]{1,2}$"

    .line 188
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v2, "\\+"

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 191
    aget-object v2, v0, v1

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 192
    aget-object v1, v0, v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    aget-object v0, v0, v3

    move-object/from16 v19, v2

    move-object v2, v0

    move-object v0, v1

    move-object/from16 v1, v19

    goto :goto_0

    :cond_1
    move-object v0, v5

    move-object v1, v0

    .line 204
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->convertRanToAnt(I)I

    move-result v2

    if-eq v2, v3, :cond_5

    const/4 v6, 0x2

    if-eq v2, v6, :cond_4

    if-eq v2, v4, :cond_3

    const/4 v4, 0x6

    if-eq v2, v4, :cond_2

    .line 278
    new-instance v2, Landroid/telephony/CellIdentityGsm;

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v13

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v14

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    move-object v6, v2

    move-object v11, v1

    move-object v12, v0

    invoke-direct/range {v6 .. v15}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 288
    new-instance v0, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0}, Landroid/telephony/CellInfoGsm;-><init>()V

    .line 289
    invoke-virtual {v0, v2}, Landroid/telephony/CellInfoGsm;->setCellIdentity(Landroid/telephony/CellIdentityGsm;)V

    move-object v4, v0

    move-object v0, v5

    move-object v1, v0

    move-object v2, v1

    goto/16 :goto_2

    .line 209
    :cond_2
    new-instance v2, Landroid/telephony/CellIdentityNr;

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    const v9, 0x7fffffff

    const/4 v10, 0x0

    const-wide/32 v13, 0x7fffffff

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " 5G"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    move-object v6, v2

    move-object v11, v1

    move-object v12, v0

    invoke-direct/range {v6 .. v17}, Landroid/telephony/CellIdentityNr;-><init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 220
    new-instance v0, Landroid/telephony/CellInfoNr;

    invoke-direct {v0}, Landroid/telephony/CellInfoNr;-><init>()V

    .line 221
    invoke-virtual {v0, v2}, Landroid/telephony/CellInfoNr;->setCellIdentity(Landroid/telephony/CellIdentityNr;)V

    move-object v1, v5

    move-object v2, v1

    move-object v4, v2

    move-object v5, v0

    move-object v0, v4

    goto/16 :goto_2

    .line 226
    :cond_3
    new-instance v2, Landroid/telephony/CellIdentityLte;

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const/4 v11, 0x0

    const v12, 0x7fffffff

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " 4G"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    move-object v6, v2

    move-object v13, v1

    move-object v14, v0

    invoke-direct/range {v6 .. v18}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    .line 239
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0}, Landroid/telephony/CellInfoLte;-><init>()V

    .line 240
    invoke-virtual {v0, v2}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    move-object v1, v5

    move-object v2, v1

    goto :goto_1

    .line 244
    :cond_4
    new-instance v2, Landroid/telephony/CellIdentityWcdma;

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " 3G"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    move-object v6, v2

    move-object v11, v1

    move-object v12, v0

    invoke-direct/range {v6 .. v16}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    .line 255
    new-instance v0, Landroid/telephony/CellInfoWcdma;

    invoke-direct {v0}, Landroid/telephony/CellInfoWcdma;-><init>()V

    .line 256
    invoke-virtual {v0, v2}, Landroid/telephony/CellInfoWcdma;->setCellIdentity(Landroid/telephony/CellIdentityWcdma;)V

    move-object v1, v0

    move-object v0, v5

    move-object v2, v0

    :goto_1
    move-object v4, v2

    goto :goto_2

    .line 261
    :cond_5
    new-instance v2, Landroid/telephony/CellIdentityGsm;

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " 2G"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    move-object v6, v2

    move-object v11, v1

    move-object v12, v0

    invoke-direct/range {v6 .. v15}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 271
    new-instance v0, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0}, Landroid/telephony/CellInfoGsm;-><init>()V

    .line 272
    invoke-virtual {v0, v2}, Landroid/telephony/CellInfoGsm;->setCellIdentity(Landroid/telephony/CellIdentityGsm;)V

    move-object v2, v0

    move-object v0, v5

    move-object v1, v0

    move-object v4, v1

    :goto_2
    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    move-object v5, v0

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    move-object v5, v1

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    move-object v5, v2

    goto :goto_3

    :cond_9
    move-object v5, v4

    .line 300
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v0, v1, :cond_a

    .line 303
    invoke-virtual {v5, v3}, Landroid/telephony/CellInfo;->setRegistered(Z)V

    :cond_a
    return-object v5
.end method

.method public static getCellIdentity(Landroid/telephony/CellInfo;)Landroid/telephony/CellIdentity;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 129
    :cond_0
    instance-of v1, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v1, :cond_1

    .line 130
    check-cast p0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_1
    instance-of v1, p0, Landroid/telephony/CellInfoCdma;

    if-eqz v1, :cond_2

    .line 132
    check-cast p0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_2
    instance-of v1, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v1, :cond_3

    .line 134
    check-cast p0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_3
    instance-of v1, p0, Landroid/telephony/CellInfoTdscdma;

    if-eqz v1, :cond_4

    .line 136
    check-cast p0, Landroid/telephony/CellInfoTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoTdscdma;->getCellIdentity()Landroid/telephony/CellIdentityTdscdma;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_4
    instance-of v1, p0, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_5

    .line 138
    check-cast p0, Landroid/telephony/CellInfoLte;

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_5
    instance-of v1, p0, Landroid/telephony/CellInfoNr;

    if-eqz v1, :cond_6

    .line 140
    check-cast p0, Landroid/telephony/CellInfoNr;

    invoke-virtual {p0}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    :cond_6
    :goto_0
    return-object v0
.end method

.method public static getCellIdentityMcc(Landroid/telephony/CellIdentity;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 354
    instance-of v1, p0, Landroid/telephony/CellIdentityGsm;

    if-eqz v1, :cond_0

    .line 355
    check-cast p0, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMccString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 356
    :cond_0
    instance-of v1, p0, Landroid/telephony/CellIdentityWcdma;

    if-eqz v1, :cond_1

    .line 357
    check-cast p0, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMccString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 358
    :cond_1
    instance-of v1, p0, Landroid/telephony/CellIdentityTdscdma;

    if-eqz v1, :cond_2

    .line 359
    check-cast p0, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getMccString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 360
    :cond_2
    instance-of v1, p0, Landroid/telephony/CellIdentityLte;

    if-eqz v1, :cond_3

    .line 361
    check-cast p0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMccString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 362
    :cond_3
    instance-of v1, p0, Landroid/telephony/CellIdentityNr;

    if-eqz v1, :cond_4

    .line 363
    check-cast p0, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getMccString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public static getCellIdentityMccMnc(Landroid/telephony/CellIdentity;)Ljava/lang/String;
    .locals 2

    .line 340
    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentityMcc(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentityMnc(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getCellIdentityMnc(Landroid/telephony/CellIdentity;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 378
    instance-of v1, p0, Landroid/telephony/CellIdentityGsm;

    if-eqz v1, :cond_0

    .line 379
    check-cast p0, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMncString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 380
    :cond_0
    instance-of v1, p0, Landroid/telephony/CellIdentityWcdma;

    if-eqz v1, :cond_1

    .line 381
    check-cast p0, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMncString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 382
    :cond_1
    instance-of v1, p0, Landroid/telephony/CellIdentityTdscdma;

    if-eqz v1, :cond_2

    .line 383
    check-cast p0, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getMncString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 384
    :cond_2
    instance-of v1, p0, Landroid/telephony/CellIdentityLte;

    if-eqz v1, :cond_3

    .line 385
    check-cast p0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMncString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 386
    :cond_3
    instance-of v1, p0, Landroid/telephony/CellIdentityNr;

    if-eqz v1, :cond_4

    .line 387
    check-cast p0, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getMncString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public static getNetworkInfo(Landroid/telephony/CellIdentityNr;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-eqz p0, :cond_3

    .line 97
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getSnpnInfo()Landroid/telephony/SnpnInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SNPN: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getSnpnInfo()Landroid/telephony/SnpnInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->getNid()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p0, v2

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%02X"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getCagInfo()Landroid/telephony/CagInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 103
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getCagInfo()Landroid/telephony/CagInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CagInfo;->getCagOnlyAccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getCagInfo()Landroid/telephony/CagInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CagInfo;->getCagName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAG: "

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getCagInfo()Landroid/telephony/CagInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CagInfo;->getCagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getCagInfo()Landroid/telephony/CagInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CagInfo;->getCagName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 108
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getCagInfo()Landroid/telephony/CagInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CagInfo;->getCagId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 111
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CAG Only"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getNetworkTitle(Landroid/telephony/CellIdentity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_1

    .line 72
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    .line 80
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    .line 83
    :cond_2
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p0

    .line 84
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p0, p1, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$cellInfoListToString$0(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 0

    .line 311
    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->cellInfoToString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
