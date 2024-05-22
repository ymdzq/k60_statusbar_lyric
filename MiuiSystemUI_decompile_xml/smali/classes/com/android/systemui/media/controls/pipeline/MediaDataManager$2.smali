.class final Lcom/android/systemui/media/controls/pipeline/MediaDataManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$2;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 2
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    check-cast v0, Ljava/lang/String;

    .line 4
    move-object/from16 v1, p2

    .line 6
    check-cast v1, Landroid/media/session/PlaybackState;

    .line 8
    move-object/from16 v2, p0

    .line 10
    iget-object v2, v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$2;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 12
    iget-object v3, v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 14
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 19
    move-object v4, v3

    .line 20
    check-cast v4, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 21
    if-eqz v4, :cond_2

    .line 23
    const-string v3, "MediaDataManager"

    .line 25
    iget-object v5, v4, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 27
    if-nez v5, :cond_0

    .line 29
    const-string v0, "State updated, but token was null"

    .line 31
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    goto :goto_1

    .line 36
    :cond_0
    iget-object v6, v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    .line 37
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    new-instance v7, Landroid/media/session/MediaController;

    .line 42
    iget-object v6, v6, Lcom/android/systemui/media/controls/util/MediaControllerFactory;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {v7, v6, v5}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 46
    new-instance v5, Landroid/os/UserHandle;

    .line 49
    iget v6, v4, Lcom/android/systemui/media/controls/models/player/MediaData;->userId:I

    .line 51
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 53
    iget-object v6, v4, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 56
    invoke-virtual {v2, v6, v7, v5}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->createActionsFromState(Ljava/lang/String;Landroid/media/session/MediaController;Landroid/os/UserHandle;)Lcom/android/systemui/media/controls/models/player/MediaButton;

    .line 58
    move-result-object v8

    .line 61
    if-eqz v8, :cond_1

    .line 62
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v11, 0x0

    .line 69
    const/4 v12, 0x0

    .line 70
    const/4 v13, 0x0

    .line 71
    const/4 v14, 0x0

    .line 72
    const/4 v15, 0x0

    .line 73
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 74
    move-result v1

    .line 77
    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    .line 78
    move-result v1

    .line 81
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    move-result-object v16

    .line 85
    const/16 v17, 0x0

    .line 86
    const/16 v18, 0x0

    .line 88
    const/16 v19, 0x0

    .line 90
    const v20, 0xfdffbff

    .line 92
    invoke-static/range {v4 .. v20}, Lcom/android/systemui/media/controls/models/player/MediaData;->copy$default(Lcom/android/systemui/media/controls/models/player/MediaData;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLcom/android/systemui/media/controls/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 95
    move-result-object v1

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v5, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v10, 0x0

    .line 105
    const/4 v11, 0x0

    .line 106
    const/4 v12, 0x0

    .line 107
    const/4 v13, 0x0

    .line 108
    const/4 v14, 0x0

    .line 109
    const/4 v15, 0x0

    .line 110
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 111
    move-result v1

    .line 114
    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    .line 115
    move-result v1

    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    move-result-object v16

    .line 122
    const/16 v17, 0x0

    .line 123
    const/16 v18, 0x0

    .line 125
    const/16 v19, 0x0

    .line 127
    const v20, 0xfdfffff

    .line 129
    invoke-static/range {v4 .. v20}, Lcom/android/systemui/media/controls/models/player/MediaData;->copy$default(Lcom/android/systemui/media/controls/models/player/MediaData;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLcom/android/systemui/media/controls/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 132
    move-result-object v1

    .line 135
    :goto_0
    const-string v4, "State updated outside of notification"

    .line 136
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v2, v0, v0, v1}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;)V

    .line 141
    :cond_2
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 144
    return-object v0
    .line 146
.end method
