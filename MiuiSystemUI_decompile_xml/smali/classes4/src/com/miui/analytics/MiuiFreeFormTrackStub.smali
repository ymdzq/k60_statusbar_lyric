.class public Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static firstEnterTime:J

.field public static mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public static mStub:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

.field public static final sInstance:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 2
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 8
    sput-object v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->sInstance:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 10
    return-void
    .line 12
.end method

.method public static getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;
    .locals 1

    .line 1
    invoke-static {}, Lstubs/src/com/miui/analytics/MiuiTrackUtils;->isCN()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->sInstance:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 8
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->mStub:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 11
    if-nez v0, :cond_1

    .line 13
    new-instance v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 15
    invoke-direct {v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;-><init>()V

    .line 17
    sput-object v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->mStub:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 20
    :cond_1
    sget-object v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->mStub:Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 22
    return-object v0
    .line 24
.end method

.method public static loadFrom(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;
    .locals 6

    .line 1
    new-instance v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 2
    invoke-direct {v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 10
    iput-object v1, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 11
    const-string v1, ""

    .line 13
    iput-object v1, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 15
    new-instance v2, Landroid/graphics/Point;

    .line 17
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 19
    move-result-object v3

    .line 22
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 23
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 25
    move-result-object v4

    .line 28
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 29
    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 31
    iput-object v2, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->startPosition:Landroid/graphics/Point;

    .line 34
    new-instance v2, Landroid/graphics/Point;

    .line 36
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 38
    move-result-object v3

    .line 41
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 42
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 44
    move-result-object v4

    .line 47
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 48
    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 50
    iput-object v2, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 53
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mRatio:Ljava/lang/String;

    .line 55
    iput-object v2, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->smallWindowRatio:Ljava/lang/String;

    .line 57
    iput-object v2, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->smallWindowFromRatio:Ljava/lang/String;

    .line 59
    iput-object v2, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->smallWindowToRatio:Ljava/lang/String;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    move-result-wide v2

    .line 66
    iget-wide v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->mEnterFreeFormTime:J

    .line 67
    sub-long/2addr v2, v4

    .line 69
    iput-wide v2, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->useDuration:J

    .line 70
    iput-object v1, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->noticeWay:Ljava/lang/String;

    .line 72
    return-object v0
    .line 74
.end method


# virtual methods
.method public final trackBubbleMessageCollapsed(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tip"

    if-eqz p2, :cond_0

    const-string p2, "621.1.3.1.21757"

    goto :goto_0

    :cond_0
    const-string p2, "621.2.2.1.21758"

    .line 2
    :goto_0
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "EVENT_NAME"

    const-string v1, "hide_window_notification_retract"

    .line 3
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "app_package_name"

    .line 4
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "app_display_name"

    const-string p3, ""

    .line 5
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "retract_way"

    if-eqz p4, :cond_1

    const-string p3, "\u81ea\u52a8\u6536\u8d77"

    goto :goto_1

    :cond_1
    const-string p3, "\u624b\u52a8\u6536\u8d77"

    .line 6
    :goto_1
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p0, p1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    sget-object v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    new-instance v1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$$ExternalSyntheticLambda0;

    .line 4
    invoke-direct {v1, p0, p1, p2}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$$ExternalSyntheticLambda0;-><init>(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 6
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-void
    .line 14
.end method

.method public trackEventBg(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final trackFreeFormEnterEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v1, "tip"

    .line 7
    const-string v2, "621.1.0.1.14010"

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "EVENT_NAME"

    .line 14
    const-string v2, "enter"

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "small_window_enter_way"

    .line 21
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->enterWay:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v1, "suspension_notice_way"

    .line 28
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->noticeWay:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "small_window_ratio"

    .line 35
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->smallWindowRatio:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v1, "app_package_name"

    .line 42
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v1, "app_display_name"

    .line 49
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v1, "window_num"

    .line 56
    iget v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->freeformAppCount:I

    .line 58
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    iget-object p1, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 63
    invoke-virtual {p0, p1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 70
    :goto_0
    return-void
    .line 73
.end method

.method public final trackFreeFormExitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v1, "tip"

    .line 7
    const-string v2, "621.1.0.1.14013"

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "EVENT_NAME"

    .line 14
    const-string v2, "quit"

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "small_window_quit_way"

    .line 21
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v1, "small_window_ratio"

    .line 28
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->smallWindowToRatio:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "app_package_name"

    .line 35
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v1, "app_display_name"

    .line 42
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v1, "use_duration"

    .line 49
    iget-wide v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->useDuration:J

    .line 51
    const-wide/16 v4, 0x3e8

    .line 53
    div-long/2addr v2, v4

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 56
    iget-object p1, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 59
    invoke-virtual {p0, p1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 66
    :goto_0
    return-void
    .line 69
.end method

.method public final trackFreeFormPinEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v1, "tip"

    .line 7
    const-string v2, "621.1.2.1.21747"

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "EVENT_NAME"

    .line 14
    const-string v2, "hide_window"

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "app_package_name"

    .line 21
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v1, "app_display_name"

    .line 28
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "small_window_hide_way"

    .line 35
    const-string v2, "\u62d6\u62fd\u5c0f\u7a97"

    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v1, "hide_window_x_coordinate"

    .line 42
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 44
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 46
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    const-string v1, "hide_window_y_coordinate"

    .line 51
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 53
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 55
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    iget-object p1, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 60
    invoke-virtual {p0, p1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 67
    :goto_0
    return-void
    .line 70
.end method

.method public final trackFreeFormPinExitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v1, "tip"

    .line 7
    const-string v2, "621.1.2.1.21751"

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "EVENT_NAME"

    .line 14
    const-string v2, "quit_hidden_window"

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "app_package_name"

    .line 21
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v1, "app_display_name"

    .line 28
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "use_duration"

    .line 35
    iget-wide v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->useDuration:J

    .line 37
    const-wide/16 v4, 0x3e8

    .line 39
    div-long/2addr v2, v4

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    iget-object p1, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 45
    invoke-virtual {p0, p1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 52
    :goto_0
    return-void
    .line 55
.end method

.method public final trackFreeFormResizeEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v1, "tip"

    .line 7
    const-string v2, "621.1.0.1.14012"

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "EVENT_NAME"

    .line 14
    const-string v2, "resize"

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "small_window_from_ratio"

    .line 21
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->smallWindowFromRatio:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v1, "small_window_to_ratio"

    .line 28
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->smallWindowToRatio:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "app_package_name"

    .line 35
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v1, "app_display_name"

    .line 42
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object p1, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 49
    invoke-virtual {p0, p1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 56
    :goto_0
    return-void
    .line 59
.end method

.method public final trackFullscreenQuitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v1, "tip"

    .line 7
    const-string v2, "621.0.0.0.29082"

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "EVENT_NAME"

    .line 14
    const-string v2, "quit"

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "app_package_name"

    .line 21
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v1, "app_display_name"

    .line 28
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "quit_way"

    .line 35
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget-object p1, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, p1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 49
    :goto_0
    return-void
    .line 52
.end method

.method public final trackMiniEnterEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v1, "tip"

    .line 7
    const-string v2, "621.2.0.1.14007"

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "EVENT_NAME"

    .line 14
    const-string v2, "enter"

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "mini_window_enter_way"

    .line 21
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->enterWay:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v1, "pixel_x_location"

    .line 28
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 30
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 32
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    const-string v1, "pixel_y_location"

    .line 37
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 39
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 41
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    const-string v1, "app_package_name"

    .line 46
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v1, "app_display_name"

    .line 53
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v1, "window_num"

    .line 60
    iget v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->freeformAppCount:I

    .line 62
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    iget-object p1, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 67
    invoke-virtual {p0, p1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 74
    :goto_0
    return-void
    .line 77
.end method

.method public final trackMiniExitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v1, "tip"

    .line 7
    const-string v2, "621.2.0.1.14009"

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "EVENT_NAME"

    .line 14
    const-string v2, "quit"

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "mini_window_quit_way"

    .line 21
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v1, "pixel_x_location"

    .line 28
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 30
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 32
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    const-string v1, "pixel_y_location"

    .line 37
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 39
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 41
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    const-string v1, "app_package_name"

    .line 46
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v1, "app_display_name"

    .line 53
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object p1, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 60
    invoke-virtual {p0, p1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 67
    :goto_0
    return-void
    .line 70
.end method

.method public final trackMiniPinEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v1, "tip"

    .line 7
    const-string v2, "621.2.1.1.21748"

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "EVENT_NAME"

    .line 14
    const-string v2, "hide_window"

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "app_package_name"

    .line 21
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v1, "app_display_name"

    .line 28
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "hide_window_x_coordinate"

    .line 35
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 37
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string v1, "hide_window_y_coordinate"

    .line 44
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->endPosition:Landroid/graphics/Point;

    .line 46
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    iget-object p1, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 53
    invoke-virtual {p0, p1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    :goto_0
    return-void
    .line 63
.end method

.method public final trackMiniPinExitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v1, "tip"

    .line 7
    const-string v2, "621.2.1.1.21752"

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "EVENT_NAME"

    .line 14
    const-string v2, "quit_hidden_window"

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "app_package_name"

    .line 21
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->packageName:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v1, "app_display_name"

    .line 28
    iget-object v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->applicationName:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "use_duration"

    .line 35
    iget-wide v2, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->useDuration:J

    .line 37
    const-wide/16 v4, 0x3e8

    .line 39
    div-long/2addr v2, v4

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    iget-object p1, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 45
    invoke-virtual {p0, p1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 52
    :goto_0
    return-void
    .line 55
.end method
