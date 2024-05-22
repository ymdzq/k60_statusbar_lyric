.class public Lcom/android/keyguard/HeiHeiGestureView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final MOVE_DOWN_DISTANCE_THREDHOLD:F

.field public static final MOVE_UP_DISTANCE_THREDHOLD:F

.field public static final TWO_POINTS_DISTANCE_X_THREDHOLD:F

.field public static final TWO_POINTS_DISTANCE_Y_THREDHOLD:F

.field public static final TWO_POINTS_DISTANCE_Y_THREDHOLD_MIN:F


# instance fields
.field public mBottomY:F

.field public mChances:[D

.field public mCurrentPicture:I

.field public mFirstY:F

.field public mImageView:Landroid/widget/ImageView;

.field public mLastMatchTime:J

.field public mLastTiggerTime:J

.field public mListener:Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;

.field public mPictures:[I

.field public mPlayer:Landroid/media/MediaPlayer;

.field public mSounds:[Ljava/lang/String;

.field public mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

.field public mTopY:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    const/high16 v1, 0x43160000    # 150.0f

    .line 12
    mul-float/2addr v1, v0

    .line 14
    sput v1, Lcom/android/keyguard/HeiHeiGestureView;->TWO_POINTS_DISTANCE_X_THREDHOLD:F

    .line 15
    const/high16 v1, 0x43960000    # 300.0f

    .line 17
    mul-float/2addr v1, v0

    .line 19
    sput v1, Lcom/android/keyguard/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD:F

    .line 20
    const/high16 v1, 0x42480000    # 50.0f

    .line 22
    mul-float/2addr v1, v0

    .line 24
    sput v1, Lcom/android/keyguard/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD_MIN:F

    .line 25
    const/high16 v1, 0x42c80000    # 100.0f

    .line 27
    mul-float/2addr v0, v1

    .line 29
    sput v0, Lcom/android/keyguard/HeiHeiGestureView;->MOVE_DOWN_DISTANCE_THREDHOLD:F

    .line 30
    sput v0, Lcom/android/keyguard/HeiHeiGestureView;->MOVE_UP_DISTANCE_THREDHOLD:F

    .line 32
    return-void
    .line 34
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    new-array p1, p1, [D

    .line 6
    iput-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mChances:[D

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final exitWaiting(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->WAITING:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_5

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x5

    .line 13
    if-ne v1, v0, :cond_5

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 16
    move-result-wide v0

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 20
    move-result-wide v3

    .line 23
    sub-long/2addr v0, v3

    .line 24
    const-wide/16 v3, 0xc8

    .line 25
    cmp-long v0, v0, v3

    .line 27
    const/4 v1, 0x1

    .line 29
    if-gez v0, :cond_4

    .line 30
    sget-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 32
    iput-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 34
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 36
    move-result p1

    .line 39
    iput p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mFirstY:F

    .line 40
    const/high16 p1, -0x40800000    # -1.0f

    .line 42
    iput p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mBottomY:F

    .line 44
    const/high16 p1, 0x4f000000

    .line 46
    iput p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mTopY:F

    .line 48
    iget-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mChances:[D

    .line 50
    array-length p1, p1

    .line 52
    if-lez p1, :cond_1

    .line 53
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 55
    move-result-wide v3

    .line 58
    move p1, v2

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mChances:[D

    .line 60
    array-length v5, v0

    .line 62
    if-ge p1, v5, :cond_1

    .line 63
    aget-wide v5, v0, p1

    .line 65
    sub-double/2addr v3, v5

    .line 67
    const-wide/16 v5, 0x0

    .line 68
    cmpg-double v0, v3, v5

    .line 70
    if-gtz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mSounds:[Ljava/lang/String;

    .line 74
    aget-object v0, v0, p1

    .line 76
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPictures:[I

    .line 78
    aget p1, v3, p1

    .line 80
    iput p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mCurrentPicture:I

    .line 82
    goto :goto_1

    .line 84
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 85
    goto :goto_0

    .line 87
    :cond_1
    const-string v0, "/system/media/audio/ui/HeiHei.mp3"

    .line 88
    :goto_1
    const/4 p1, 0x0

    .line 90
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 91
    if-nez v3, :cond_2

    .line 93
    new-instance v3, Landroid/media/MediaPlayer;

    .line 95
    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 97
    iput-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 100
    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 102
    :cond_2
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 105
    move-result v3

    .line 108
    if-nez v3, :cond_3

    .line 109
    iget-object v2, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 111
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 113
    iget-object v2, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 116
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 118
    goto :goto_2

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 122
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 127
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 129
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 132
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_3

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    iput-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 142
    goto :goto_3

    .line 144
    :cond_4
    sget-object p1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->STOP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 145
    iput-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 147
    :goto_3
    return v1

    .line 149
    :cond_5
    return v2
    .line 150
.end method

.method public final matchGesture(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mBottomY:F

    .line 2
    iget v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mTopY:F

    .line 4
    sub-float/2addr v0, v1

    .line 6
    sget v1, Lcom/android/keyguard/HeiHeiGestureView;->MOVE_DOWN_DISTANCE_THREDHOLD:F

    .line 7
    cmpg-float v0, v0, v1

    .line 9
    if-ltz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 13
    move-result-wide v0

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 17
    move-result-wide v2

    .line 20
    sub-long/2addr v0, v2

    .line 21
    const-wide/16 v2, 0x3e8

    .line 22
    cmp-long v0, v0, v2

    .line 24
    if-lez v0, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MATCHED:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 29
    iput-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 33
    move-result-wide v0

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 37
    move-result-wide v2

    .line 40
    sub-long/2addr v0, v2

    .line 41
    iput-wide v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mLastMatchTime:J

    .line 42
    return-void

    .line 44
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->STOP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 45
    iput-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 47
    return-void
    .line 49
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-wide v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mLastTiggerTime:J

    .line 8
    const-wide/16 v2, 0x5dc

    .line 10
    add-long/2addr v0, v2

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v2

    .line 16
    cmp-long v0, v0, v2

    .line 17
    if-gez v0, :cond_0

    .line 19
    sget-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->WAITING:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 21
    iput-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->exitWaiting(Landroid/view/MotionEvent;)Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 33
    move-result p0

    .line 36
    return p0
    .line 37
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v2, v0, :cond_3

    .line 8
    sget-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MATCHED:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 10
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 12
    if-ne v0, v3, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 16
    move-result-wide v3

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 20
    move-result-wide v5

    .line 23
    sub-long/2addr v3, v5

    .line 24
    iget-wide v5, p0, Lcom/android/keyguard/HeiHeiGestureView;->mLastMatchTime:J

    .line 25
    sub-long/2addr v3, v5

    .line 27
    const-wide/16 v5, 0xc8

    .line 28
    cmp-long p1, v3, v5

    .line 30
    if-gez p1, :cond_2

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    move-result-wide v3

    .line 37
    iput-wide v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mLastTiggerTime:J

    .line 38
    iget-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mChances:[D

    .line 40
    array-length p1, p1

    .line 42
    const/4 v0, 0x0

    .line 43
    if-nez p1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mListener:Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;

    .line 46
    if-eqz p1, :cond_0

    .line 48
    check-cast p1, Lcom/android/keyguard/AwesomeLockScreen$1;

    .line 50
    sget-object v3, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 52
    iget-object p1, p1, Lcom/android/keyguard/AwesomeLockScreen$1;->this$0:Lcom/android/keyguard/AwesomeLockScreen;

    .line 54
    iget-object p1, p1, Lcom/android/keyguard/AwesomeLockScreen;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 56
    const/high16 v3, 0x3f800000    # 1.0f

    .line 58
    invoke-virtual {p1, v3, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZ)V

    .line 60
    :cond_0
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    move-result-object p1

    .line 68
    const-string v1, "lockscreen_sounds_enabled"

    .line 69
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 71
    move-result v3

    .line 74
    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 75
    move-result p1

    .line 78
    if-ne v2, p1, :cond_2

    .line 79
    :try_start_0
    iget-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 81
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_1

    .line 86
    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    iput-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 91
    goto :goto_1

    .line 93
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 94
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    goto :goto_0

    .line 99
    :catch_1
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    iput-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    .line 106
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    .line 111
    iget v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mCurrentPicture:I

    .line 113
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    new-instance p1, Lcom/android/keyguard/HeiHeiGestureView$1;

    .line 118
    invoke-direct {p1, p0}, Lcom/android/keyguard/HeiHeiGestureView$1;-><init>(Lcom/android/keyguard/HeiHeiGestureView;)V

    .line 120
    const-wide/16 v0, 0x5dc

    .line 123
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    :cond_2
    :goto_1
    return v2

    .line 128
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->exitWaiting(Landroid/view/MotionEvent;)Z

    .line 129
    move-result v0

    .line 132
    if-eqz v0, :cond_4

    .line 133
    return v2

    .line 135
    :cond_4
    sget-object v0, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MOVE_DOWN:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 136
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 138
    sget-object v4, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->MOVE_UP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 140
    if-eq v0, v3, :cond_5

    .line 142
    if-eq v4, v3, :cond_5

    .line 144
    return v2

    .line 146
    :cond_5
    const/4 v3, 0x6

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 148
    move-result v5

    .line 151
    if-ne v3, v5, :cond_6

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->matchGesture(Landroid/view/MotionEvent;)V

    .line 154
    return v2

    .line 157
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 158
    move-result v3

    .line 161
    sget-object v5, Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;->STOP:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 162
    const/4 v6, 0x2

    .line 164
    if-eq v3, v6, :cond_7

    .line 165
    iput-object v5, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 167
    return v2

    .line 169
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 170
    move-result v3

    .line 173
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 174
    move-result v6

    .line 177
    sub-float/2addr v3, v6

    .line 178
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 179
    move-result v3

    .line 182
    sget v6, Lcom/android/keyguard/HeiHeiGestureView;->TWO_POINTS_DISTANCE_X_THREDHOLD:F

    .line 183
    cmpl-float v3, v3, v6

    .line 185
    if-gtz v3, :cond_e

    .line 187
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 189
    move-result v3

    .line 192
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 193
    move-result v6

    .line 196
    sub-float/2addr v3, v6

    .line 197
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 198
    move-result v3

    .line 201
    sget v6, Lcom/android/keyguard/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD:F

    .line 202
    cmpl-float v3, v3, v6

    .line 204
    if-gtz v3, :cond_e

    .line 206
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 208
    move-result v3

    .line 211
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 212
    move-result v6

    .line 215
    sub-float/2addr v3, v6

    .line 216
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 217
    move-result v3

    .line 220
    sget v6, Lcom/android/keyguard/HeiHeiGestureView;->TWO_POINTS_DISTANCE_Y_THREDHOLD_MIN:F

    .line 221
    cmpg-float v3, v3, v6

    .line 223
    if-gez v3, :cond_8

    .line 225
    goto :goto_4

    .line 227
    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 228
    move-result v1

    .line 231
    iget-object v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 232
    if-ne v4, v3, :cond_c

    .line 234
    iget v3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mTopY:F

    .line 236
    cmpl-float v4, v3, v1

    .line 238
    if-ltz v4, :cond_9

    .line 240
    iput v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mTopY:F

    .line 242
    goto :goto_3

    .line 244
    :cond_9
    iget v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mFirstY:F

    .line 245
    sub-float/2addr v1, v3

    .line 247
    sget v3, Lcom/android/keyguard/HeiHeiGestureView;->MOVE_UP_DISTANCE_THREDHOLD:F

    .line 248
    cmpg-float v1, v1, v3

    .line 250
    if-ltz v1, :cond_b

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 254
    move-result-wide v3

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 258
    move-result-wide v6

    .line 261
    sub-long/2addr v3, v6

    .line 262
    const-wide/16 v6, 0x7d0

    .line 263
    cmp-long v1, v3, v6

    .line 265
    if-lez v1, :cond_a

    .line 267
    goto :goto_2

    .line 269
    :cond_a
    iput-object v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 270
    goto :goto_3

    .line 272
    :cond_b
    :goto_2
    iput-object v5, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 273
    return v2

    .line 275
    :cond_c
    iget v0, p0, Lcom/android/keyguard/HeiHeiGestureView;->mBottomY:F

    .line 276
    cmpg-float v0, v0, v1

    .line 278
    if-gtz v0, :cond_d

    .line 280
    iput v1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mBottomY:F

    .line 282
    goto :goto_3

    .line 284
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/keyguard/HeiHeiGestureView;->matchGesture(Landroid/view/MotionEvent;)V

    .line 285
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 288
    move-result p0

    .line 291
    return p0

    .line 292
    :cond_e
    :goto_4
    iput-object v5, p0, Lcom/android/keyguard/HeiHeiGestureView;->mStage:Lcom/android/keyguard/HeiHeiGestureView$DetectingStage;

    .line 293
    return v2
    .line 295
.end method

.method public setOnTriggerListener(Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mListener:Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;

    .line 2
    return-void
    .line 4
.end method

.method public setResources([Ljava/lang/String;[I[D)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    if-eqz p2, :cond_1

    .line 4
    if-nez p3, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mSounds:[Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/android/keyguard/HeiHeiGestureView;->mPictures:[I

    .line 11
    iput-object p3, p0, Lcom/android/keyguard/HeiHeiGestureView;->mChances:[D

    .line 13
    array-length p1, p3

    .line 15
    if-lez p1, :cond_1

    .line 16
    new-instance p1, Landroid/widget/ImageView;

    .line 18
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 20
    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lcom/android/keyguard/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    .line 25
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    const/4 p2, -0x1

    .line 29
    const/4 p3, -0x2

    .line 30
    invoke-direct {p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p2

    .line 37
    const p3, 0x7f0710d7    # @dimen/status_bar_height '@android:dimen/text_size_menu_header_material'

    .line 38
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 41
    move-result p2

    .line 44
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 45
    move-result p2

    .line 48
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 49
    iget-object p2, p0, Lcom/android/keyguard/HeiHeiGestureView;->mImageView:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    :cond_1
    :goto_0
    return-void
    .line 56
.end method
