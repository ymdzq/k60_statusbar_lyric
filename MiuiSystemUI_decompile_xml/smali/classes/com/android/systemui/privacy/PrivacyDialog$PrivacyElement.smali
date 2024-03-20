.class public final Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final active:Z

.field public final appIcon:Landroid/graphics/drawable/Drawable;

.field public final applicationName:Ljava/lang/CharSequence;

.field public final attributionLabel:Ljava/lang/CharSequence;

.field public final attributionTag:Ljava/lang/CharSequence;

.field public final builder:Ljava/lang/StringBuilder;

.field public final enterprise:Z

.field public final lastActiveTimestamp:J

.field public final navigationIntent:Landroid/content/Intent;

.field public final packageName:Ljava/lang/String;

.field public final permGroupName:Ljava/lang/CharSequence;

.field public final phoneCall:Z

.field public final proxyLabel:Ljava/lang/CharSequence;

.field public final type:Lcom/android/systemui/privacy/PrivacyType;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyType;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JZZZLjava/lang/CharSequence;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    move/from16 v2, p3

    .line 6
    move-object/from16 v3, p4

    .line 8
    move-object/from16 v4, p5

    .line 10
    move-object/from16 v5, p6

    .line 12
    move-object/from16 v6, p7

    .line 14
    move-wide/from16 v7, p8

    .line 16
    move/from16 v9, p10

    .line 18
    move/from16 v10, p11

    .line 20
    move/from16 v11, p12

    .line 22
    move-object/from16 v12, p13

    .line 24
    move-object/from16 v13, p14

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object/from16 v14, p1

    .line 31
    iput-object v14, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    .line 33
    iput-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->packageName:Ljava/lang/String;

    .line 35
    iput v2, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->userId:I

    .line 37
    iput-object v3, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->applicationName:Ljava/lang/CharSequence;

    .line 39
    iput-object v4, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionTag:Ljava/lang/CharSequence;

    .line 41
    iput-object v5, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    .line 43
    iput-object v6, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    .line 45
    iput-wide v7, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->lastActiveTimestamp:J

    .line 47
    iput-boolean v9, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    .line 49
    iput-boolean v10, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->enterprise:Z

    .line 51
    iput-boolean v11, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->phoneCall:Z

    .line 53
    iput-object v12, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->permGroupName:Ljava/lang/CharSequence;

    .line 55
    iput-object v13, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->navigationIntent:Landroid/content/Intent;

    .line 57
    move-object/from16 v15, p15

    .line 59
    iput-object v15, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 61
    new-instance v15, Ljava/lang/StringBuilder;

    .line 63
    const-string v14, "PrivacyElement("

    .line 65
    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object v15, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->builder:Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/privacy/PrivacyType;->getLogName()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 75
    new-instance v14, Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v13, "type="

    .line 78
    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 90
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v0, ", packageName="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 99
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", userId="

    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 116
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", appName="

    .line 122
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 133
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    if-eqz v4, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    const-string v1, ", attributionTag="

    .line 141
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 152
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    if-eqz v5, :cond_1

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ", attributionLabel="

    .line 160
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 171
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_1
    if-eqz v6, :cond_2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    const-string v1, ", proxyLabel="

    .line 179
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v0

    .line 190
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    const-string v1, ", lastActive="

    .line 196
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 207
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    if-eqz v9, :cond_3

    .line 211
    const-string v0, ", active"

    .line 213
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_3
    if-eqz v10, :cond_4

    .line 218
    const-string v0, ", enterprise"

    .line 220
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_4
    if-eqz v11, :cond_5

    .line 225
    const-string v0, ", phoneCall"

    .line 227
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 232
    const-string v1, ", permGroupName="

    .line 234
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, ")"

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object v0

    .line 250
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    .line 254
    const-string v1, ", navigationIntent="

    .line 256
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    move-object/from16 v1, p14

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object v0

    .line 269
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    return-void
    .line 273
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 12
    iget-object v1, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    .line 14
    iget-object v3, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->packageName:Ljava/lang/String;

    .line 21
    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->packageName:Ljava/lang/String;

    .line 23
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->userId:I

    .line 32
    iget v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->userId:I

    .line 34
    if-eq v1, v3, :cond_4

    .line 36
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->applicationName:Ljava/lang/CharSequence;

    .line 39
    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->applicationName:Ljava/lang/CharSequence;

    .line 41
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionTag:Ljava/lang/CharSequence;

    .line 50
    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionTag:Ljava/lang/CharSequence;

    .line 52
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    return v2

    .line 60
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    .line 61
    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    .line 63
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result v1

    .line 68
    if-nez v1, :cond_7

    .line 69
    return v2

    .line 71
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    .line 72
    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    .line 74
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    move-result v1

    .line 79
    if-nez v1, :cond_8

    .line 80
    return v2

    .line 82
    :cond_8
    iget-wide v3, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->lastActiveTimestamp:J

    .line 83
    iget-wide v5, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->lastActiveTimestamp:J

    .line 85
    cmp-long v1, v3, v5

    .line 87
    if-eqz v1, :cond_9

    .line 89
    return v2

    .line 91
    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    .line 92
    iget-boolean v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    .line 94
    if-eq v1, v3, :cond_a

    .line 96
    return v2

    .line 98
    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->enterprise:Z

    .line 99
    iget-boolean v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->enterprise:Z

    .line 101
    if-eq v1, v3, :cond_b

    .line 103
    return v2

    .line 105
    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->phoneCall:Z

    .line 106
    iget-boolean v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->phoneCall:Z

    .line 108
    if-eq v1, v3, :cond_c

    .line 110
    return v2

    .line 112
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->permGroupName:Ljava/lang/CharSequence;

    .line 113
    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->permGroupName:Ljava/lang/CharSequence;

    .line 115
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    move-result v1

    .line 120
    if-nez v1, :cond_d

    .line 121
    return v2

    .line 123
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->navigationIntent:Landroid/content/Intent;

    .line 124
    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->navigationIntent:Landroid/content/Intent;

    .line 126
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    move-result v1

    .line 131
    if-nez v1, :cond_e

    .line 132
    return v2

    .line 134
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 135
    iget-object p1, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 137
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    move-result p0

    .line 142
    if-nez p0, :cond_f

    .line 143
    return v2

    .line 145
    :cond_f
    return v0
    .line 146
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->packageName:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->userId:I

    .line 18
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 20
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->applicationName:Ljava/lang/CharSequence;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 26
    move-result v1

    .line 29
    add-int/2addr v1, v0

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    const/4 v0, 0x0

    .line 33
    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionTag:Ljava/lang/CharSequence;

    .line 34
    if-nez v2, :cond_0

    .line 36
    move v2, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 40
    move-result v2

    .line 43
    :goto_0
    add-int/2addr v1, v2

    .line 44
    mul-int/lit8 v1, v1, 0x1f

    .line 45
    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    .line 47
    if-nez v2, :cond_1

    .line 49
    move v2, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 53
    move-result v2

    .line 56
    :goto_1
    add-int/2addr v1, v2

    .line 57
    mul-int/lit8 v1, v1, 0x1f

    .line 58
    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    .line 60
    if-nez v2, :cond_2

    .line 62
    move v2, v0

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 66
    move-result v2

    .line 69
    :goto_2
    add-int/2addr v1, v2

    .line 70
    mul-int/lit8 v1, v1, 0x1f

    .line 71
    iget-wide v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->lastActiveTimestamp:J

    .line 73
    const/16 v4, 0x1f

    .line 75
    invoke-static {v2, v3, v1, v4}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 77
    move-result v1

    .line 80
    const/4 v2, 0x1

    .line 81
    iget-boolean v3, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    .line 82
    if-eqz v3, :cond_3

    .line 84
    move v3, v2

    .line 86
    :cond_3
    add-int/2addr v1, v3

    .line 87
    mul-int/lit8 v1, v1, 0x1f

    .line 88
    iget-boolean v3, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->enterprise:Z

    .line 90
    if-eqz v3, :cond_4

    .line 92
    move v3, v2

    .line 94
    :cond_4
    add-int/2addr v1, v3

    .line 95
    mul-int/lit8 v1, v1, 0x1f

    .line 96
    iget-boolean v3, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->phoneCall:Z

    .line 98
    if-eqz v3, :cond_5

    .line 100
    goto :goto_3

    .line 102
    :cond_5
    move v2, v3

    .line 103
    :goto_3
    add-int/2addr v1, v2

    .line 104
    mul-int/lit8 v1, v1, 0x1f

    .line 105
    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->permGroupName:Ljava/lang/CharSequence;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 109
    move-result v2

    .line 112
    add-int/2addr v2, v1

    .line 113
    mul-int/lit8 v2, v2, 0x1f

    .line 114
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->navigationIntent:Landroid/content/Intent;

    .line 116
    if-nez v1, :cond_6

    .line 118
    move v1, v0

    .line 120
    goto :goto_4

    .line 121
    :cond_6
    invoke-virtual {v1}, Landroid/content/Intent;->hashCode()I

    .line 122
    move-result v1

    .line 125
    :goto_4
    add-int/2addr v2, v1

    .line 126
    mul-int/lit8 v2, v2, 0x1f

    .line 127
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 129
    if-nez p0, :cond_7

    .line 131
    goto :goto_5

    .line 133
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->hashCode()I

    .line 134
    move-result v0

    .line 137
    :goto_5
    add-int/2addr v2, v0

    .line 138
    return v2
    .line 139
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->builder:Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method
