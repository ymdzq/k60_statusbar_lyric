.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $appIntent:Landroid/app/PendingIntent;

.field public final synthetic $appName:Ljava/lang/String;

.field public final synthetic $appUid:I

.field public final synthetic $artworkIcon:Landroid/graphics/drawable/Icon;

.field public final synthetic $desc:Landroid/media/MediaDescription;

.field public final synthetic $instanceId:Lcom/android/internal/logging/InstanceId;

.field public final synthetic $isExplicit:Z

.field public final synthetic $lastActive:J

.field public final synthetic $mediaAction:Lcom/android/systemui/media/controls/models/player/MediaAction;

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $progress:Ljava/lang/Double;

.field public final synthetic $resumeAction:Ljava/lang/Runnable;

.field public final synthetic $token:Landroid/media/session/MediaSession$Token;

.field public final synthetic $userId:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Ljava/lang/String;ILjava/lang/String;Landroid/media/MediaDescription;Landroid/graphics/drawable/Icon;Lcom/android/systemui/media/controls/models/player/MediaAction;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Ljava/lang/Runnable;JLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 4
    move-object v1, p2

    .line 6
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$packageName:Ljava/lang/String;

    .line 7
    move v1, p3

    .line 9
    iput v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$userId:I

    .line 10
    move-object v1, p4

    .line 12
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$appName:Ljava/lang/String;

    .line 13
    move-object v1, p5

    .line 15
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$desc:Landroid/media/MediaDescription;

    .line 16
    move-object v1, p6

    .line 18
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$artworkIcon:Landroid/graphics/drawable/Icon;

    .line 19
    move-object v1, p7

    .line 21
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$mediaAction:Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 22
    move-object v1, p8

    .line 24
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$token:Landroid/media/session/MediaSession$Token;

    .line 25
    move-object v1, p9

    .line 27
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$appIntent:Landroid/app/PendingIntent;

    .line 28
    move-object v1, p10

    .line 30
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$resumeAction:Ljava/lang/Runnable;

    .line 31
    move-wide v1, p11

    .line 33
    iput-wide v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$lastActive:J

    .line 34
    move-object/from16 v1, p13

    .line 36
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$instanceId:Lcom/android/internal/logging/InstanceId;

    .line 38
    move/from16 v1, p14

    .line 40
    iput v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$appUid:I

    .line 42
    move/from16 v1, p15

    .line 44
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$isExplicit:Z

    .line 46
    move-object/from16 v1, p16

    .line 48
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$progress:Ljava/lang/Double;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
    .line 55
.end method


# virtual methods
.method public final run()V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 4
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$packageName:Ljava/lang/String;

    .line 6
    new-instance v8, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 8
    move-object v3, v8

    .line 10
    iget v4, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$userId:I

    .line 11
    const/4 v5, 0x1

    .line 13
    iget v6, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->bgColor:I

    .line 14
    iget-object v7, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$appName:Ljava/lang/String;

    .line 16
    iget-object v9, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$desc:Landroid/media/MediaDescription;

    .line 18
    invoke-virtual {v9}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    .line 20
    move-result-object v9

    .line 23
    iget-object v10, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$desc:Landroid/media/MediaDescription;

    .line 24
    invoke-virtual {v10}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    .line 26
    move-result-object v10

    .line 29
    iget-object v11, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$artworkIcon:Landroid/graphics/drawable/Icon;

    .line 30
    iget-object v12, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$mediaAction:Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 32
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 34
    move-result-object v12

    .line 37
    const/4 v13, 0x0

    .line 38
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v13

    .line 42
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 43
    move-result-object v13

    .line 46
    new-instance v15, Lcom/android/systemui/media/controls/models/player/MediaButton;

    .line 47
    move-object v14, v15

    .line 49
    iget-object v5, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$mediaAction:Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 50
    const/16 v18, 0x0

    .line 52
    const/16 v21, 0x0

    .line 54
    invoke-direct {v15, v5}, Lcom/android/systemui/media/controls/models/player/MediaButton;-><init>(Lcom/android/systemui/media/controls/models/player/MediaAction;)V

    .line 56
    iget-object v15, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$packageName:Ljava/lang/String;

    .line 59
    move-object/from16 v23, v15

    .line 61
    iget-object v5, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$token:Landroid/media/session/MediaSession$Token;

    .line 63
    move-object/from16 v16, v5

    .line 65
    iget-object v5, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$appIntent:Landroid/app/PendingIntent;

    .line 67
    move-object/from16 v17, v5

    .line 69
    const/16 v19, 0x0

    .line 71
    iget-object v5, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$resumeAction:Ljava/lang/Runnable;

    .line 73
    move-object/from16 v20, v5

    .line 75
    const/16 v22, 0x1

    .line 77
    const/16 v24, 0x1

    .line 79
    const/16 v25, 0x0

    .line 81
    const/16 v26, 0x0

    .line 83
    move-object/from16 v34, v1

    .line 85
    move-object/from16 v35, v2

    .line 87
    iget-wide v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$lastActive:J

    .line 89
    move-wide/from16 v27, v1

    .line 91
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$instanceId:Lcom/android/internal/logging/InstanceId;

    .line 93
    move-object/from16 v29, v1

    .line 95
    iget v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$appUid:I

    .line 97
    move/from16 v30, v1

    .line 99
    iget-boolean v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$isExplicit:Z

    .line 101
    move/from16 v31, v1

    .line 103
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBgForResumption$1;->$progress:Ljava/lang/Double;

    .line 105
    move-object/from16 v32, v0

    .line 107
    const/high16 v33, 0x620000    # 8.999879E-39f

    .line 109
    const/4 v0, 0x0

    .line 111
    move-object v1, v8

    .line 112
    move-object v8, v0

    .line 113
    const/4 v5, 0x1

    .line 114
    invoke-direct/range {v3 .. v33}, Lcom/android/systemui/media/controls/models/player/MediaData;-><init>(IZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;I)V

    .line 115
    move-object/from16 v2, v34

    .line 118
    move-object/from16 v3, v35

    .line 120
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;)V

    .line 122
    return-void
    .line 125
.end method
