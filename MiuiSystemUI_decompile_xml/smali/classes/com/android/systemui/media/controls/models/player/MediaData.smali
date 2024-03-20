.class public final Lcom/android/systemui/media/controls/models/player/MediaData;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final actions:Ljava/util/List;

.field public final actionsToShowInCompact:Ljava/util/List;

.field public active:Z

.field public final app:Ljava/lang/String;

.field public final appIcon:Landroid/graphics/drawable/Icon;

.field public final appUid:I

.field public final artist:Ljava/lang/CharSequence;

.field public final artwork:Landroid/graphics/drawable/Icon;

.field public final backgroundColor:I

.field public final clickIntent:Landroid/app/PendingIntent;

.field public final device:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

.field public hasCheckedForResume:Z

.field public final initialized:Z

.field public final instanceId:Lcom/android/internal/logging/InstanceId;

.field public final isClearable:Z

.field public final isExplicit:Z

.field public final isPlaying:Ljava/lang/Boolean;

.field public final lastActive:J

.field public final notificationKey:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final playbackLocation:I

.field public resumeAction:Ljava/lang/Runnable;

.field public final resumeProgress:Ljava/lang/Double;

.field public final resumption:Z

.field public final semanticActions:Lcom/android/systemui/media/controls/models/player/MediaButton;

.field public final song:Ljava/lang/CharSequence;

.field public final token:Landroid/media/session/MediaSession$Token;

.field public final userId:I


# direct methods
.method public constructor <init>(IZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 2
    iput v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->userId:I

    move v1, p2

    .line 3
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->initialized:Z

    move v1, p3

    .line 4
    iput v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->backgroundColor:I

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->app:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->artist:Ljava/lang/CharSequence;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->song:Ljava/lang/CharSequence;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->actions:Ljava/util/List;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->actionsToShowInCompact:Ljava/util/List;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->semanticActions:Lcom/android/systemui/media/controls/models/player/MediaButton;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->clickIntent:Landroid/app/PendingIntent;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->device:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    move/from16 v1, p16

    .line 17
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeAction:Ljava/lang/Runnable;

    move/from16 v1, p18

    .line 19
    iput v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->playbackLocation:I

    move/from16 v1, p19

    .line 20
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumption:Z

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->notificationKey:Ljava/lang/String;

    move/from16 v1, p21

    .line 22
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->hasCheckedForResume:Z

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->isPlaying:Ljava/lang/Boolean;

    move/from16 v1, p23

    .line 24
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->isClearable:Z

    move-wide/from16 v1, p24

    .line 25
    iput-wide v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->lastActive:J

    move-object/from16 v1, p26

    .line 26
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    move/from16 v1, p27

    .line 27
    iput v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->appUid:I

    move/from16 v1, p28

    .line 28
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->isExplicit:Z

    move-object/from16 v1, p29

    .line 29
    iput-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeProgress:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(IZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;I)V
    .locals 33

    move/from16 v0, p30

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit16 v1, v0, 0x400

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v14, v3

    goto :goto_1

    :cond_1
    move-object/from16 v14, p11

    :goto_1
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    move/from16 v21, v2

    goto :goto_2

    :cond_2
    move/from16 v21, p18

    :goto_2
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    move/from16 v22, v2

    goto :goto_3

    :cond_3
    move/from16 v22, p19

    :goto_3
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    move-object/from16 v23, v3

    goto :goto_4

    :cond_4
    move-object/from16 v23, p20

    :goto_4
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    move/from16 v24, v2

    goto :goto_5

    :cond_5
    move/from16 v24, p21

    :goto_5
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    move-object/from16 v25, v3

    goto :goto_6

    :cond_6
    move-object/from16 v25, p22

    :goto_6
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move/from16 v26, v1

    goto :goto_7

    :cond_7
    move/from16 v26, p23

    :goto_7
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    const-wide/16 v6, 0x0

    move-wide/from16 v27, v6

    goto :goto_8

    :cond_8
    move-wide/from16 v27, p24

    :goto_8
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    move/from16 v31, v2

    goto :goto_9

    :cond_9
    move/from16 v31, p28

    :goto_9
    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    move-object/from16 v32, v3

    goto :goto_a

    :cond_a
    move-object/from16 v32, p29

    :goto_a
    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v29, p26

    move/from16 v30, p27

    .line 30
    invoke-direct/range {v3 .. v32}, Lcom/android/systemui/media/controls/models/player/MediaData;-><init>(IZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/media/controls/models/player/MediaData;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLcom/android/systemui/media/controls/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/models/player/MediaData;
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->userId:I

    move v5, v2

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->initialized:Z

    move v6, v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->backgroundColor:I

    move v7, v2

    goto :goto_2

    :cond_2
    move/from16 v7, p1

    :goto_2
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->app:Ljava/lang/String;

    move-object v8, v2

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    move-object v9, v2

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->artist:Ljava/lang/CharSequence;

    move-object v10, v2

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    :goto_5
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->song:Ljava/lang/CharSequence;

    move-object v11, v2

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    :goto_6
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    move-object v12, v2

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    :goto_7
    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->actions:Ljava/util/List;

    move-object v13, v2

    goto :goto_8

    :cond_8
    move-object/from16 v13, p2

    :goto_8
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->actionsToShowInCompact:Ljava/util/List;

    move-object v14, v2

    goto :goto_9

    :cond_9
    move-object/from16 v14, p3

    :goto_9
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->semanticActions:Lcom/android/systemui/media/controls/models/player/MediaButton;

    move-object v15, v2

    goto :goto_a

    :cond_a
    move-object/from16 v15, p4

    :goto_a
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    move-object/from16 v16, v2

    goto :goto_b

    :cond_b
    move-object/from16 v16, p5

    :goto_b
    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    move-object/from16 v17, v2

    goto :goto_c

    :cond_c
    const/16 v17, 0x0

    :goto_c
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->clickIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v2

    goto :goto_d

    :cond_d
    move-object/from16 v18, p6

    :goto_d
    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->device:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    move-object/from16 v19, v2

    goto :goto_e

    :cond_e
    move-object/from16 v19, p7

    :goto_e
    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_f

    iget-boolean v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    move/from16 v20, v2

    goto :goto_f

    :cond_f
    move/from16 v20, p8

    :goto_f
    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeAction:Ljava/lang/Runnable;

    move-object/from16 v21, v2

    goto :goto_10

    :cond_10
    move-object/from16 v21, p9

    :goto_10
    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-eqz v2, :cond_11

    iget v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->playbackLocation:I

    move/from16 v22, v2

    goto :goto_11

    :cond_11
    const/16 v22, 0x0

    :goto_11
    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    if-eqz v2, :cond_12

    iget-boolean v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumption:Z

    move/from16 v23, v2

    goto :goto_12

    :cond_12
    move/from16 v23, p10

    :goto_12
    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->notificationKey:Ljava/lang/String;

    move-object/from16 v24, v2

    goto :goto_13

    :cond_13
    const/16 v24, 0x0

    :goto_13
    const/high16 v2, 0x100000

    and-int/2addr v2, v1

    if-eqz v2, :cond_14

    iget-boolean v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->hasCheckedForResume:Z

    move/from16 v25, v2

    goto :goto_14

    :cond_14
    move/from16 v25, p11

    :goto_14
    const/high16 v2, 0x200000

    and-int/2addr v2, v1

    if-eqz v2, :cond_15

    iget-object v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->isPlaying:Ljava/lang/Boolean;

    move-object/from16 v26, v2

    goto :goto_15

    :cond_15
    move-object/from16 v26, p12

    :goto_15
    const/high16 v2, 0x400000

    and-int/2addr v2, v1

    if-eqz v2, :cond_16

    iget-boolean v2, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->isClearable:Z

    move/from16 v27, v2

    goto :goto_16

    :cond_16
    move/from16 v27, p13

    :goto_16
    const/high16 v2, 0x800000

    and-int/2addr v2, v1

    if-eqz v2, :cond_17

    iget-wide v3, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->lastActive:J

    goto :goto_17

    :cond_17
    const-wide/16 v3, 0x0

    :goto_17
    move-wide/from16 v28, v3

    const/high16 v3, 0x1000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_18

    iget-object v3, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v30, v3

    goto :goto_18

    :cond_18
    move-object/from16 v30, p14

    :goto_18
    const/high16 v3, 0x2000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_19

    iget v3, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->appUid:I

    move/from16 v31, v3

    goto :goto_19

    :cond_19
    move/from16 v31, p15

    :goto_19
    const/high16 v3, 0x4000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_1a

    iget-boolean v3, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->isExplicit:Z

    move/from16 v32, v3

    goto :goto_1a

    :cond_1a
    const/16 v32, 0x0

    :goto_1a
    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeProgress:Ljava/lang/Double;

    move-object/from16 v33, v1

    goto :goto_1b

    :cond_1b
    const/16 v33, 0x0

    :goto_1b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v0, Lcom/android/systemui/media/controls/models/player/MediaData;

    move-object v4, v0

    invoke-direct/range {v4 .. v33}, Lcom/android/systemui/media/controls/models/player/MediaData;-><init>(IZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;)V

    return-object v0
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
    instance-of v1, p1, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 12
    iget v1, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->userId:I

    .line 14
    iget v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->userId:I

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->initialized:Z

    .line 21
    iget-boolean v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->initialized:Z

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->backgroundColor:I

    .line 28
    iget v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->backgroundColor:I

    .line 30
    if-eq v1, v3, :cond_4

    .line 32
    return v2

    .line 34
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->app:Ljava/lang/String;

    .line 35
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->app:Ljava/lang/String;

    .line 37
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 42
    if-nez v1, :cond_5

    .line 43
    return v2

    .line 45
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    .line 46
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    .line 48
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 53
    if-nez v1, :cond_6

    .line 54
    return v2

    .line 56
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->artist:Ljava/lang/CharSequence;

    .line 57
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->artist:Ljava/lang/CharSequence;

    .line 59
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 64
    if-nez v1, :cond_7

    .line 65
    return v2

    .line 67
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->song:Ljava/lang/CharSequence;

    .line 68
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->song:Ljava/lang/CharSequence;

    .line 70
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v1

    .line 75
    if-nez v1, :cond_8

    .line 76
    return v2

    .line 78
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 79
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 81
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    move-result v1

    .line 86
    if-nez v1, :cond_9

    .line 87
    return v2

    .line 89
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->actions:Ljava/util/List;

    .line 90
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->actions:Ljava/util/List;

    .line 92
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    move-result v1

    .line 97
    if-nez v1, :cond_a

    .line 98
    return v2

    .line 100
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->actionsToShowInCompact:Ljava/util/List;

    .line 101
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->actionsToShowInCompact:Ljava/util/List;

    .line 103
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    move-result v1

    .line 108
    if-nez v1, :cond_b

    .line 109
    return v2

    .line 111
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->semanticActions:Lcom/android/systemui/media/controls/models/player/MediaButton;

    .line 112
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->semanticActions:Lcom/android/systemui/media/controls/models/player/MediaButton;

    .line 114
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    move-result v1

    .line 119
    if-nez v1, :cond_c

    .line 120
    return v2

    .line 122
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 123
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 125
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    move-result v1

    .line 130
    if-nez v1, :cond_d

    .line 131
    return v2

    .line 133
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 134
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 136
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    move-result v1

    .line 141
    if-nez v1, :cond_e

    .line 142
    return v2

    .line 144
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->clickIntent:Landroid/app/PendingIntent;

    .line 145
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->clickIntent:Landroid/app/PendingIntent;

    .line 147
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    move-result v1

    .line 152
    if-nez v1, :cond_f

    .line 153
    return v2

    .line 155
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->device:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 156
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->device:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 158
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    move-result v1

    .line 163
    if-nez v1, :cond_10

    .line 164
    return v2

    .line 166
    :cond_10
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 167
    iget-boolean v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 169
    if-eq v1, v3, :cond_11

    .line 171
    return v2

    .line 173
    :cond_11
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeAction:Ljava/lang/Runnable;

    .line 174
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeAction:Ljava/lang/Runnable;

    .line 176
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    move-result v1

    .line 181
    if-nez v1, :cond_12

    .line 182
    return v2

    .line 184
    :cond_12
    iget v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->playbackLocation:I

    .line 185
    iget v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->playbackLocation:I

    .line 187
    if-eq v1, v3, :cond_13

    .line 189
    return v2

    .line 191
    :cond_13
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumption:Z

    .line 192
    iget-boolean v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->resumption:Z

    .line 194
    if-eq v1, v3, :cond_14

    .line 196
    return v2

    .line 198
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->notificationKey:Ljava/lang/String;

    .line 199
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->notificationKey:Ljava/lang/String;

    .line 201
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    move-result v1

    .line 206
    if-nez v1, :cond_15

    .line 207
    return v2

    .line 209
    :cond_15
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->hasCheckedForResume:Z

    .line 210
    iget-boolean v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->hasCheckedForResume:Z

    .line 212
    if-eq v1, v3, :cond_16

    .line 214
    return v2

    .line 216
    :cond_16
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->isPlaying:Ljava/lang/Boolean;

    .line 217
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->isPlaying:Ljava/lang/Boolean;

    .line 219
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    move-result v1

    .line 224
    if-nez v1, :cond_17

    .line 225
    return v2

    .line 227
    :cond_17
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->isClearable:Z

    .line 228
    iget-boolean v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->isClearable:Z

    .line 230
    if-eq v1, v3, :cond_18

    .line 232
    return v2

    .line 234
    :cond_18
    iget-wide v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->lastActive:J

    .line 235
    iget-wide v5, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->lastActive:J

    .line 237
    cmp-long v1, v3, v5

    .line 239
    if-eqz v1, :cond_19

    .line 241
    return v2

    .line 243
    :cond_19
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 244
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 246
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    move-result v1

    .line 251
    if-nez v1, :cond_1a

    .line 252
    return v2

    .line 254
    :cond_1a
    iget v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->appUid:I

    .line 255
    iget v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->appUid:I

    .line 257
    if-eq v1, v3, :cond_1b

    .line 259
    return v2

    .line 261
    :cond_1b
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->isExplicit:Z

    .line 262
    iget-boolean v3, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->isExplicit:Z

    .line 264
    if-eq v1, v3, :cond_1c

    .line 266
    return v2

    .line 268
    :cond_1c
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeProgress:Ljava/lang/Double;

    .line 269
    iget-object p1, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeProgress:Ljava/lang/Double;

    .line 271
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    move-result p0

    .line 276
    if-nez p0, :cond_1d

    .line 277
    return v2

    .line 279
    :cond_1d
    return v0
    .line 280
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->userId:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    const/4 v1, 0x1

    .line 10
    iget-boolean v2, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->initialized:Z

    .line 11
    if-eqz v2, :cond_0

    .line 13
    move v2, v1

    .line 15
    :cond_0
    add-int/2addr v0, v2

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget v2, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->backgroundColor:I

    .line 19
    const/16 v3, 0x1f

    .line 21
    invoke-static {v2, v0, v3}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 23
    move-result v0

    .line 26
    const/4 v2, 0x0

    .line 27
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->app:Ljava/lang/String;

    .line 28
    if-nez v3, :cond_1

    .line 30
    move v3, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 34
    move-result v3

    .line 37
    :goto_0
    add-int/2addr v0, v3

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    .line 41
    if-nez v3, :cond_2

    .line 43
    move v3, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->hashCode()I

    .line 47
    move-result v3

    .line 50
    :goto_1
    add-int/2addr v0, v3

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->artist:Ljava/lang/CharSequence;

    .line 54
    if-nez v3, :cond_3

    .line 56
    move v3, v2

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 60
    move-result v3

    .line 63
    :goto_2
    add-int/2addr v0, v3

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->song:Ljava/lang/CharSequence;

    .line 67
    if-nez v3, :cond_4

    .line 69
    move v3, v2

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 73
    move-result v3

    .line 76
    :goto_3
    add-int/2addr v0, v3

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 80
    if-nez v3, :cond_5

    .line 82
    move v3, v2

    .line 84
    goto :goto_4

    .line 85
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->hashCode()I

    .line 86
    move-result v3

    .line 89
    :goto_4
    add-int/2addr v0, v3

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->actions:Ljava/util/List;

    .line 93
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 95
    move-result v3

    .line 98
    add-int/2addr v3, v0

    .line 99
    mul-int/lit8 v3, v3, 0x1f

    .line 100
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->actionsToShowInCompact:Ljava/util/List;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 104
    move-result v0

    .line 107
    add-int/2addr v0, v3

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->semanticActions:Lcom/android/systemui/media/controls/models/player/MediaButton;

    .line 111
    if-nez v3, :cond_6

    .line 113
    move v3, v2

    .line 115
    goto :goto_5

    .line 116
    :cond_6
    invoke-virtual {v3}, Lcom/android/systemui/media/controls/models/player/MediaButton;->hashCode()I

    .line 117
    move-result v3

    .line 120
    :goto_5
    add-int/2addr v0, v3

    .line 121
    mul-int/lit8 v0, v0, 0x1f

    .line 122
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 124
    const/16 v4, 0x1f

    .line 126
    invoke-static {v3, v0, v4}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 128
    move-result v0

    .line 131
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 132
    if-nez v3, :cond_7

    .line 134
    move v3, v2

    .line 136
    goto :goto_6

    .line 137
    :cond_7
    invoke-virtual {v3}, Landroid/media/session/MediaSession$Token;->hashCode()I

    .line 138
    move-result v3

    .line 141
    :goto_6
    add-int/2addr v0, v3

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->clickIntent:Landroid/app/PendingIntent;

    .line 145
    if-nez v3, :cond_8

    .line 147
    move v3, v2

    .line 149
    goto :goto_7

    .line 150
    :cond_8
    invoke-virtual {v3}, Landroid/app/PendingIntent;->hashCode()I

    .line 151
    move-result v3

    .line 154
    :goto_7
    add-int/2addr v0, v3

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->device:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 158
    if-nez v3, :cond_9

    .line 160
    move v3, v2

    .line 162
    goto :goto_8

    .line 163
    :cond_9
    invoke-virtual {v3}, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->hashCode()I

    .line 164
    move-result v3

    .line 167
    :goto_8
    add-int/2addr v0, v3

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    iget-boolean v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 171
    if-eqz v3, :cond_a

    .line 173
    move v3, v1

    .line 175
    :cond_a
    add-int/2addr v0, v3

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    .line 177
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeAction:Ljava/lang/Runnable;

    .line 179
    if-nez v3, :cond_b

    .line 181
    move v3, v2

    .line 183
    goto :goto_9

    .line 184
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 185
    move-result v3

    .line 188
    :goto_9
    add-int/2addr v0, v3

    .line 189
    mul-int/lit8 v0, v0, 0x1f

    .line 190
    iget v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->playbackLocation:I

    .line 192
    const/16 v4, 0x1f

    .line 194
    invoke-static {v3, v0, v4}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 196
    move-result v0

    .line 199
    iget-boolean v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumption:Z

    .line 200
    if-eqz v3, :cond_c

    .line 202
    move v3, v1

    .line 204
    :cond_c
    add-int/2addr v0, v3

    .line 205
    mul-int/lit8 v0, v0, 0x1f

    .line 206
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->notificationKey:Ljava/lang/String;

    .line 208
    if-nez v3, :cond_d

    .line 210
    move v3, v2

    .line 212
    goto :goto_a

    .line 213
    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 214
    move-result v3

    .line 217
    :goto_a
    add-int/2addr v0, v3

    .line 218
    mul-int/lit8 v0, v0, 0x1f

    .line 219
    iget-boolean v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->hasCheckedForResume:Z

    .line 221
    if-eqz v3, :cond_e

    .line 223
    move v3, v1

    .line 225
    :cond_e
    add-int/2addr v0, v3

    .line 226
    mul-int/lit8 v0, v0, 0x1f

    .line 227
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->isPlaying:Ljava/lang/Boolean;

    .line 229
    if-nez v3, :cond_f

    .line 231
    move v3, v2

    .line 233
    goto :goto_b

    .line 234
    :cond_f
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 235
    move-result v3

    .line 238
    :goto_b
    add-int/2addr v0, v3

    .line 239
    mul-int/lit8 v0, v0, 0x1f

    .line 240
    iget-boolean v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->isClearable:Z

    .line 242
    if-eqz v3, :cond_10

    .line 244
    move v3, v1

    .line 246
    :cond_10
    add-int/2addr v0, v3

    .line 247
    mul-int/lit8 v0, v0, 0x1f

    .line 248
    iget-wide v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->lastActive:J

    .line 250
    const/16 v5, 0x1f

    .line 252
    invoke-static {v3, v4, v0, v5}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 254
    move-result v0

    .line 257
    iget-object v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 258
    invoke-virtual {v3}, Lcom/android/internal/logging/InstanceId;->hashCode()I

    .line 260
    move-result v3

    .line 263
    add-int/2addr v3, v0

    .line 264
    mul-int/lit8 v3, v3, 0x1f

    .line 265
    iget v0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->appUid:I

    .line 267
    const/16 v4, 0x1f

    .line 269
    invoke-static {v0, v3, v4}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 271
    move-result v0

    .line 274
    iget-boolean v3, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->isExplicit:Z

    .line 275
    if-eqz v3, :cond_11

    .line 277
    goto :goto_c

    .line 279
    :cond_11
    move v1, v3

    .line 280
    :goto_c
    add-int/2addr v0, v1

    .line 281
    mul-int/lit8 v0, v0, 0x1f

    .line 282
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeProgress:Ljava/lang/Double;

    .line 284
    if-nez p0, :cond_12

    .line 286
    goto :goto_d

    .line 288
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 289
    move-result v2

    .line 292
    :goto_d
    add-int/2addr v0, v2

    .line 293
    return v0
    .line 294
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeAction:Ljava/lang/Runnable;

    .line 4
    iget-boolean v2, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->hasCheckedForResume:Z

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    const-string v4, "MediaData(userId="

    .line 10
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->userId:I

    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v4, ", initialized="

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->initialized:Z

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v4, ", backgroundColor="

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->backgroundColor:I

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v4, ", app="

    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->app:Ljava/lang/String;

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v4, ", appIcon="

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string v4, ", artist="

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->artist:Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const-string v4, ", song="

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->song:Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string v4, ", artwork="

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v4, ", actions="

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->actions:Ljava/util/List;

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const-string v4, ", actionsToShowInCompact="

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->actionsToShowInCompact:Ljava/util/List;

    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    const-string v4, ", semanticActions="

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->semanticActions:Lcom/android/systemui/media/controls/models/player/MediaButton;

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    const-string v4, ", packageName="

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v4, ", token="

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    const-string v4, ", clickIntent="

    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->clickIntent:Landroid/app/PendingIntent;

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    const-string v4, ", device="

    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v4, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->device:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    const-string v4, ", active="

    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    const-string v0, ", resumeAction="

    .line 168
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    const-string v0, ", playbackLocation="

    .line 176
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget v0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->playbackLocation:I

    .line 181
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const-string v0, ", resumption="

    .line 186
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumption:Z

    .line 191
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    const-string v0, ", notificationKey="

    .line 196
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->notificationKey:Ljava/lang/String;

    .line 201
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v0, ", hasCheckedForResume="

    .line 206
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    const-string v0, ", isPlaying="

    .line 214
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->isPlaying:Ljava/lang/Boolean;

    .line 219
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    const-string v0, ", isClearable="

    .line 224
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->isClearable:Z

    .line 229
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 231
    const-string v0, ", lastActive="

    .line 234
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-wide v0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->lastActive:J

    .line 239
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 241
    const-string v0, ", instanceId="

    .line 244
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 249
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    const-string v0, ", appUid="

    .line 254
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget v0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->appUid:I

    .line 259
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    const-string v0, ", isExplicit="

    .line 264
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->isExplicit:Z

    .line 269
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 271
    const-string v0, ", resumeProgress="

    .line 274
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeProgress:Ljava/lang/Double;

    .line 279
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    const-string p0, ")"

    .line 284
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object p0

    .line 292
    return-object p0
    .line 293
.end method
