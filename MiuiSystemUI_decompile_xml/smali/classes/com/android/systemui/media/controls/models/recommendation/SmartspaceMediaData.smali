.class public final Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final cardAction:Landroid/app/smartspace/SmartspaceAction;

.field public final dismissIntent:Landroid/content/Intent;

.field public final expiryTimeMs:J

.field public final headphoneConnectionTimeMillis:J

.field public final instanceId:Lcom/android/internal/logging/InstanceId;

.field public final isActive:Z

.field public final packageName:Ljava/lang/String;

.field public final recommendations:Ljava/util/List;

.field public final targetId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;JLcom/android/internal/logging/InstanceId;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->targetId:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->packageName:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->recommendations:Ljava/util/List;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    .line 15
    iput-wide p7, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    .line 17
    iput-object p9, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 19
    iput-wide p10, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->expiryTimeMs:J

    .line 21
    return-void
    .line 23
.end method

.method public static copy$default(Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Ljava/lang/String;ZLandroid/content/Intent;JLcom/android/internal/logging/InstanceId;JI)Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p9

    .line 3
    and-int/lit8 v2, v1, 0x1

    .line 5
    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->targetId:Ljava/lang/String;

    .line 9
    move-object v4, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object/from16 v4, p1

    .line 13
    :goto_0
    and-int/lit8 v2, v1, 0x2

    .line 15
    if-eqz v2, :cond_1

    .line 17
    iget-boolean v2, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 19
    move v5, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move/from16 v5, p2

    .line 23
    :goto_1
    and-int/lit8 v2, v1, 0x4

    .line 25
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_2

    .line 28
    iget-object v2, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->packageName:Ljava/lang/String;

    .line 30
    move-object v6, v2

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move-object v6, v3

    .line 34
    :goto_2
    and-int/lit8 v2, v1, 0x8

    .line 35
    if-eqz v2, :cond_3

    .line 37
    iget-object v2, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    .line 39
    move-object v7, v2

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    move-object v7, v3

    .line 43
    :goto_3
    and-int/lit8 v2, v1, 0x10

    .line 44
    if-eqz v2, :cond_4

    .line 46
    iget-object v2, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->recommendations:Ljava/util/List;

    .line 48
    move-object v8, v2

    .line 50
    goto :goto_4

    .line 51
    :cond_4
    move-object v8, v3

    .line 52
    :goto_4
    and-int/lit8 v2, v1, 0x20

    .line 53
    if-eqz v2, :cond_5

    .line 55
    iget-object v2, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    .line 57
    move-object v9, v2

    .line 59
    goto :goto_5

    .line 60
    :cond_5
    move-object/from16 v9, p3

    .line 61
    :goto_5
    and-int/lit8 v2, v1, 0x40

    .line 63
    if-eqz v2, :cond_6

    .line 65
    iget-wide v2, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    .line 67
    move-wide v10, v2

    .line 69
    goto :goto_6

    .line 70
    :cond_6
    move-wide/from16 v10, p4

    .line 71
    :goto_6
    and-int/lit16 v2, v1, 0x80

    .line 73
    if-eqz v2, :cond_7

    .line 75
    iget-object v2, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 77
    move-object v12, v2

    .line 79
    goto :goto_7

    .line 80
    :cond_7
    move-object/from16 v12, p6

    .line 81
    :goto_7
    and-int/lit16 v1, v1, 0x100

    .line 83
    if-eqz v1, :cond_8

    .line 85
    iget-wide v1, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->expiryTimeMs:J

    .line 87
    move-wide v13, v1

    .line 89
    goto :goto_8

    .line 90
    :cond_8
    move-wide/from16 v13, p7

    .line 91
    :goto_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    new-instance v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 96
    move-object v3, v0

    .line 98
    invoke-direct/range {v3 .. v14}, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;JLcom/android/internal/logging/InstanceId;J)V

    .line 99
    return-object v0
    .line 102
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
    instance-of v1, p1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 12
    iget-object v1, p1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->targetId:Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->targetId:Ljava/lang/String;

    .line 16
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 25
    iget-boolean v3, p1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 27
    if-eq v1, v3, :cond_3

    .line 29
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->packageName:Ljava/lang/String;

    .line 32
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->packageName:Ljava/lang/String;

    .line 34
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    .line 43
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    .line 45
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->recommendations:Ljava/util/List;

    .line 54
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->recommendations:Ljava/util/List;

    .line 56
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    .line 65
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    .line 67
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    return v2

    .line 75
    :cond_7
    iget-wide v3, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    .line 76
    iget-wide v5, p1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    .line 78
    cmp-long v1, v3, v5

    .line 80
    if-eqz v1, :cond_8

    .line 82
    return v2

    .line 84
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 85
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 87
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    move-result v1

    .line 92
    if-nez v1, :cond_9

    .line 93
    return v2

    .line 95
    :cond_9
    iget-wide v3, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->expiryTimeMs:J

    .line 96
    iget-wide p0, p1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->expiryTimeMs:J

    .line 98
    cmp-long p0, v3, p0

    .line 100
    if-eqz p0, :cond_a

    .line 102
    return v2

    .line 104
    :cond_a
    return v0
    .line 105
.end method

.method public final getAppName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    .line 3
    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    .line 7
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 13
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    const-string v2, "KEY_SMARTSPACE_APP_NAME"

    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, v0

    .line 26
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    return-object v1

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    move-result-object p1

    .line 37
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->packageName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    .line 47
    move-result-object p0

    .line 50
    invoke-virtual {p0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 51
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_2
    sget-object v1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaDataKt;->TAG:Ljava/lang/String;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    const-string v4, "Package "

    .line 60
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v4, " does not have a main launcher activity. Fallback to full app name"

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 76
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_start_0
    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 80
    move-result-object p0

    .line 83
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 84
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    return-object v0
    .line 88
.end method

.method public final getValidRecommendations()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->recommendations:Ljava/util/List;

    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, Landroid/app/smartspace/SmartspaceAction;

    .line 24
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 26
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    const/4 v2, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v2, 0x0

    .line 34
    :goto_1
    if-eqz v2, :cond_0

    .line 35
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 40
    :cond_2
    return-object v0
    .line 41
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->targetId:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const/4 v1, 0x1

    .line 14
    :cond_0
    add-int/2addr v0, v1

    .line 15
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->packageName:Ljava/lang/String;

    .line 18
    const/16 v2, 0x1f

    .line 20
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 22
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    iget-object v2, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    .line 27
    if-nez v2, :cond_1

    .line 29
    move v2, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceAction;->hashCode()I

    .line 33
    move-result v2

    .line 36
    :goto_0
    add-int/2addr v0, v2

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget-object v2, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->recommendations:Ljava/util/List;

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 42
    move-result v2

    .line 45
    add-int/2addr v2, v0

    .line 46
    mul-int/lit8 v2, v2, 0x1f

    .line 47
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    .line 49
    if-nez v0, :cond_2

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->hashCode()I

    .line 54
    move-result v1

    .line 57
    :goto_1
    add-int/2addr v2, v1

    .line 58
    mul-int/lit8 v2, v2, 0x1f

    .line 59
    iget-wide v0, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    .line 61
    const/16 v3, 0x1f

    .line 63
    invoke-static {v0, v1, v2, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 65
    move-result v0

    .line 68
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 69
    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceId;->hashCode()I

    .line 71
    move-result v1

    .line 74
    add-int/2addr v1, v0

    .line 75
    mul-int/lit8 v1, v1, 0x1f

    .line 76
    iget-wide v2, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->expiryTimeMs:J

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 80
    move-result p0

    .line 83
    add-int/2addr p0, v1

    .line 84
    return p0
    .line 85
.end method

.method public final isValid()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->getValidRecommendations()Ljava/util/List;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result p0

    .line 11
    const/4 v0, 0x3

    .line 12
    if-lt p0, v0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
    .line 18
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "SmartspaceMediaData(targetId="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->targetId:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", isActive="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", packageName="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->packageName:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", cardAction="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", recommendations="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->recommendations:Ljava/util/List;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", dismissIntent="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", headphoneConnectionTimeMillis="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-wide v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", instanceId="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", expiryTimeMs="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-wide v1, p0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->expiryTimeMs:J

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    const-string p0, ")"

    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 102
    return-object p0
    .line 103
.end method
