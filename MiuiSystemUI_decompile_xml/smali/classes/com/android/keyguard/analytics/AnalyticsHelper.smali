.class public final Lcom/android/keyguard/analytics/AnalyticsHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEBUG:Z

.field public static volatile sInstance:Lcom/android/keyguard/analytics/AnalyticsHelper;


# instance fields
.field public final mHandler:Lcom/android/keyguard/analytics/AnalyticsHelper$WorkHandler;

.field public final mTrackPageEvents:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_KEYGUARD:Z

    .line 2
    sput-boolean v0, Lcom/android/keyguard/analytics/AnalyticsHelper;->DEBUG:Z

    .line 4
    return-void
    .line 6
.end method

.method public constructor <init>()V
    .locals 16

    .line 1
    move-object/from16 v11, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v12, Ljava/util/HashMap;

    .line 7
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v12, v11, Lcom/android/keyguard/analytics/AnalyticsHelper;->mTrackPageEvents:Ljava/util/HashMap;

    .line 12
    new-instance v0, Landroid/os/HandlerThread;

    .line 14
    const-string v1, "keyguard_analytics"

    .line 16
    const/16 v2, 0xa

    .line 18
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 20
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 23
    new-instance v1, Lcom/android/keyguard/analytics/AnalyticsHelper$WorkHandler;

    .line 26
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 28
    move-result-object v0

    .line 31
    invoke-direct {v1, v0}, Lcom/android/keyguard/analytics/AnalyticsHelper$WorkHandler;-><init>(Landroid/os/Looper;)V

    .line 32
    iput-object v1, v11, Lcom/android/keyguard/analytics/AnalyticsHelper;->mHandler:Lcom/android/keyguard/analytics/AnalyticsHelper$WorkHandler;

    .line 35
    new-instance v13, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;

    .line 37
    const-string v2, "keyguard_view_main_lock_screen"

    .line 39
    const-wide/16 v3, 0x1f4

    .line 41
    const-wide/16 v5, 0x1388

    .line 43
    const-wide/16 v7, 0x1f4

    .line 45
    const-wide/16 v9, 0x2710

    .line 47
    move-object v0, v13

    .line 49
    move-object/from16 v1, p0

    .line 50
    invoke-direct/range {v0 .. v10}, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;-><init>(Lcom/android/keyguard/analytics/AnalyticsHelper;Ljava/lang/String;JJJJ)V

    .line 52
    const-string v0, "keyguard_view_main_lock_screen"

    .line 55
    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v13, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;

    .line 60
    const-string v2, "pw_unlock_time"

    .line 62
    const-wide/16 v3, 0x12c

    .line 64
    const-wide/16 v5, 0x2bc

    .line 66
    const-wide/16 v7, 0x32

    .line 68
    const-wide/16 v9, 0x3e8

    .line 70
    move-object v0, v13

    .line 72
    invoke-direct/range {v0 .. v10}, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;-><init>(Lcom/android/keyguard/analytics/AnalyticsHelper;Ljava/lang/String;JJJJ)V

    .line 73
    const-string v0, "pw_unlock_time"

    .line 76
    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v13, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;

    .line 81
    const-string v2, "pw_verify_time"

    .line 83
    const-wide/16 v3, 0x1e

    .line 85
    const-wide/16 v5, 0x96

    .line 87
    const-wide/16 v7, 0xa

    .line 89
    const-wide/16 v9, 0xc8

    .line 91
    move-object v0, v13

    .line 93
    invoke-direct/range {v0 .. v10}, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;-><init>(Lcom/android/keyguard/analytics/AnalyticsHelper;Ljava/lang/String;JJJJ)V

    .line 94
    const-string v0, "pw_verify_time"

    .line 97
    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v13, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;

    .line 102
    const-string v2, "action_enter_left_view"

    .line 104
    const-wide/16 v3, 0x64

    .line 106
    const-wide/16 v5, 0x12c

    .line 108
    const-wide/16 v14, 0x14

    .line 110
    const-wide/16 v9, 0x190

    .line 112
    const-wide/16 v7, 0x14

    .line 114
    move-object v0, v13

    .line 116
    invoke-direct/range {v0 .. v10}, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;-><init>(Lcom/android/keyguard/analytics/AnalyticsHelper;Ljava/lang/String;JJJJ)V

    .line 117
    const-string v0, "action_enter_left_view"

    .line 120
    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v13, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;

    .line 125
    const-string v2, "action_enter_camera_view"

    .line 127
    const-wide/16 v3, 0xc8

    .line 129
    const-wide/16 v5, 0x190

    .line 131
    const-wide/16 v9, 0x258

    .line 133
    move-object v0, v13

    .line 135
    move-wide v7, v14

    .line 136
    invoke-direct/range {v0 .. v10}, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;-><init>(Lcom/android/keyguard/analytics/AnalyticsHelper;Ljava/lang/String;JJJJ)V

    .line 137
    const-string v0, "action_enter_camera_view"

    .line 140
    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
    .line 145
.end method

.method public static getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/keyguard/analytics/AnalyticsHelper;->sInstance:Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 2
    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/keyguard/analytics/AnalyticsHelper;->sInstance:Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 9
    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 13
    invoke-direct {v1}, Lcom/android/keyguard/analytics/AnalyticsHelper;-><init>()V

    .line 15
    sput-object v1, Lcom/android/keyguard/analytics/AnalyticsHelper;->sInstance:Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 18
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/keyguard/analytics/AnalyticsHelper;->sInstance:Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 25
    return-object v0
    .line 27
.end method


# virtual methods
.method public final record(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    move-result-object v0

    .line 5
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 11
    sget-boolean v1, Lcom/android/keyguard/analytics/AnalyticsHelper;->DEBUG:Z

    .line 12
    if-eqz v1, :cond_0

    .line 14
    const-string v1, "MiuiKeyguardStat"

    .line 16
    const-string/jumbo v2, "trackEvent eventName=%s"

    .line 18
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 24
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/analytics/AnalyticsHelper;->mHandler:Lcom/android/keyguard/analytics/AnalyticsHelper$WorkHandler;

    .line 28
    const/16 p1, 0xca

    .line 30
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 32
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 36
    return-void
    .line 39
.end method

.method public final track(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    move-result-object v0

    .line 5
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 8
    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 13
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 17
    sget-boolean p2, Lcom/android/keyguard/analytics/AnalyticsHelper;->DEBUG:Z

    .line 18
    if-eqz p2, :cond_0

    .line 20
    const-string p2, "MiuiKeyguardStat"

    .line 22
    const-string/jumbo v1, "trackEvent eventName=%s params=%s"

    .line 24
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/analytics/AnalyticsHelper;->mHandler:Lcom/android/keyguard/analytics/AnalyticsHelper$WorkHandler;

    .line 34
    const/16 p1, 0xc9

    .line 36
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 38
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 42
    return-void
    .line 45
.end method

.method public final trackPageEnd(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/analytics/AnalyticsHelper;->mTrackPageEvents:Ljava/util/HashMap;

    .line 2
    const-string v0, "keyguard_view_main_lock_screen"

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;

    .line 10
    iget-boolean v0, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mTrackStarted:Z

    .line 12
    if-eqz v0, :cond_4

    .line 14
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mTrackStarted:Z

    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    move-result-wide v1

    .line 27
    iget-wide v3, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mStartTime:J

    .line 28
    sub-long/2addr v1, v3

    .line 30
    const-wide/16 v3, 0x0

    .line 31
    cmp-long v5, v1, v3

    .line 33
    if-gez v5, :cond_0

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    iget-wide v3, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mMaxValue:J

    .line 38
    cmp-long v3, v1, v3

    .line 40
    if-lez v3, :cond_1

    .line 42
    const-wide/16 v3, -0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    iget-wide v3, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mStartLevel:J

    .line 47
    cmp-long v5, v1, v3

    .line 49
    if-gtz v5, :cond_2

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    iget-wide v5, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mEndLevel:J

    .line 54
    cmp-long v7, v1, v5

    .line 56
    if-gez v7, :cond_3

    .line 58
    long-to-float v1, v1

    .line 60
    long-to-float v2, v3

    .line 61
    sub-float/2addr v1, v2

    .line 62
    iget-wide v5, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mStep:J

    .line 63
    long-to-float v2, v5

    .line 65
    div-float/2addr v1, v2

    .line 66
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 67
    move-result v1

    .line 70
    int-to-long v1, v1

    .line 71
    mul-long/2addr v1, v5

    .line 72
    add-long/2addr v3, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move-wide v3, v5

    .line 75
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    move-result-object v1

    .line 79
    const-string v2, "duration"

    .line 80
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "end_action"

    .line 85
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->this$0:Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 90
    iget-object p0, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mPageName:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, p0, v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 94
    :cond_4
    return-void
    .line 97
.end method

.method public final trackPageStart(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/analytics/AnalyticsHelper;->mTrackPageEvents:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;

    .line 8
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mTrackStarted:Z

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcom/android/keyguard/analytics/AnalyticsHelper$TrackPageEvent;->mStartTime:J

    .line 17
    return-void
    .line 19
.end method
