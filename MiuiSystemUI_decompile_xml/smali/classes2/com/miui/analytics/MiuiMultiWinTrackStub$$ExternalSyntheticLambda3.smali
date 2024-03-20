.class public final synthetic Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/miui/analytics/MiuiMultiWinTrackStub;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/analytics/MiuiMultiWinTrackStub;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p7, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$0:Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 4
    iput-object p2, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 8
    iput-boolean p4, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$3:Z

    .line 10
    iput-object p5, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    .line 12
    iput-object p6, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$5:Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
    .line 19
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    const-string v1, "failed_reason"

    .line 4
    const-string v2, "end_window_state"

    .line 6
    const-string v3, "if_success"

    .line 8
    const-string v4, "app_display_name"

    .line 10
    const-string v5, "app_package_name"

    .line 12
    const-string v6, "EVENT_NAME"

    .line 14
    const-string/jumbo v7, "tip"

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 19
    goto :goto_1

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$0:Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 23
    iget-object v8, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 25
    iget-object v9, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 27
    iget-boolean v10, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$3:Z

    .line 29
    iget-object v11, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    .line 31
    iget-object p0, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$5:Ljava/lang/String;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    .line 38
    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 40
    const-string v13, "621.7.0.1.29113"

    .line 43
    invoke-virtual {v12, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v7, "dock_app_drag"

    .line 48
    invoke-virtual {v12, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {v12, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {v12, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    invoke-virtual {v12, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 59
    if-nez v10, :cond_0

    .line 62
    if-eqz v11, :cond_0

    .line 64
    invoke-virtual {v12, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    :cond_0
    invoke-virtual {v12, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    iget-object p0, v0, Lcom/miui/analytics/MiuiMultiWinTrackStub;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v0, p0, v12}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 79
    :goto_0
    return-void

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$0:Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 83
    iget-object v8, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 85
    iget-object v9, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 87
    iget-boolean v10, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$3:Z

    .line 89
    iget-object v11, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    .line 91
    iget-object p0, p0, Lcom/miui/analytics/MiuiMultiWinTrackStub$$ExternalSyntheticLambda3;->f$5:Ljava/lang/String;

    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    .line 98
    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 100
    const-string v13, "621.3.0.1.29112"

    .line 103
    invoke-virtual {v12, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v7, "side_bar_app_drag"

    .line 108
    invoke-virtual {v12, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    invoke-virtual {v12, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    invoke-virtual {v12, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v12, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 120
    if-nez v10, :cond_1

    .line 123
    if-eqz v11, :cond_1

    .line 125
    invoke-virtual {v12, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_1
    invoke-virtual {v12, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    iget-object p0, v0, Lcom/miui/analytics/MiuiMultiWinTrackStub;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {v0, p0, v12}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    goto :goto_2

    .line 138
    :catch_1
    move-exception p0

    .line 139
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 140
    :goto_2
    return-void

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 144
.end method
