.class public final Lcom/android/systemui/media/NotificationPlayer$CmdThread;
.super Ljava/lang/Thread;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/NotificationPlayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/NotificationPlayer;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "NotificationPlayer-"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p1, p1, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 7
    iget-object v1, v1, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 9
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/systemui/media/NotificationPlayer$Command;

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 17
    iget v0, v1, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    .line 18
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eq v0, v2, :cond_5

    .line 22
    const/4 v2, 0x2

    .line 24
    if-eq v0, v2, :cond_0

    .line 25
    goto/16 :goto_1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 29
    iget-object v0, v0, Lcom/android/systemui/media/NotificationPlayer;->mPlayerLock:Ljava/lang/Object;

    .line 31
    monitor-enter v0

    .line 33
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 34
    iget-object v4, v2, Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 36
    iput-object v3, v2, Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 38
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 40
    if-eqz v4, :cond_4

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 43
    move-result-wide v5

    .line 46
    iget-wide v0, v1, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    .line 47
    sub-long/2addr v5, v0

    .line 49
    const-wide/16 v0, 0x3e8

    .line 50
    cmp-long v0, v5, v0

    .line 52
    if-lez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 56
    iget-object v0, v0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "Notification stop delayed by "

    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    const-string v2, "msecs"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    :catch_0
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 88
    iget-object v0, v0, Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;

    .line 90
    monitor-enter v0

    .line 92
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 93
    iget-object v1, v1, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    .line 95
    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 99
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 102
    iput-object v3, v1, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    .line 104
    :cond_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 107
    iget-object v1, v0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    .line 109
    monitor-enter v1

    .line 111
    :try_start_4
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 112
    iget-object v0, v0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    .line 114
    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 118
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 122
    move-result-object v0

    .line 125
    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    .line 126
    if-eq v0, v2, :cond_3

    .line 128
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 130
    iget-object v0, v0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    .line 132
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 134
    :cond_3
    monitor-exit v1

    .line 137
    goto :goto_1

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    throw p0

    .line 141
    :catchall_1
    move-exception p0

    .line 142
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 143
    throw p0

    .line 144
    :cond_4
    iget-object v0, v2, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    .line 145
    const-string v1, "STOP command without a player"

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    goto :goto_1

    .line 152
    :catchall_2
    move-exception p0

    .line 153
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 154
    throw p0

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 156
    invoke-static {v0, v1}, Lcom/android/systemui/media/NotificationPlayer;->-$$Nest$mstartSound(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V

    .line 158
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 161
    iget-object v1, v0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 163
    monitor-enter v1

    .line 165
    :try_start_7
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 166
    iget-object v0, v0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 168
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 170
    move-result v0

    .line 173
    if-nez v0, :cond_7

    .line 174
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->this$0:Lcom/android/systemui/media/NotificationPlayer;

    .line 176
    iput-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    .line 178
    iget-object p0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 180
    if-eqz p0, :cond_6

    .line 182
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 184
    :cond_6
    monitor-exit v1

    .line 187
    return-void

    .line 188
    :cond_7
    monitor-exit v1

    .line 189
    goto/16 :goto_0

    .line 190
    :catchall_3
    move-exception p0

    .line 192
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 193
    throw p0

    .line 194
    :catchall_4
    move-exception p0

    .line 195
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 196
    throw p0
    .line 197
.end method
