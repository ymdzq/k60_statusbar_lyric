.class public final Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$SeekBarChangeListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final viewModel:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$SeekBarChangeListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 4
    int-to-long p1, p2

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance p3, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onSeek$1;

    .line 10
    const/4 v0, 0x1

    .line 12
    invoke-direct {p3, p0, p1, p2, v0}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onSeek$1;-><init>(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;JI)V

    .line 13
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 16
    invoke-virtual {p0, p3}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;

    .line 7
    const/4 v0, 0x4

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;-><init>(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;I)V

    .line 10
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 15
    return-void
    .line 18
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->firstMotionEvent:Landroid/view/MotionEvent;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_2

    .line 7
    iget-object v3, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 9
    if-nez v3, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    move-result v1

    .line 17
    iget-object v3, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 18
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    .line 23
    move-result v3

    .line 26
    sub-float/2addr v1, v3

    .line 27
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 28
    move-result v1

    .line 31
    iget-object v3, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->firstMotionEvent:Landroid/view/MotionEvent;

    .line 32
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    .line 37
    move-result v3

    .line 40
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 46
    move-result v0

    .line 49
    sub-float/2addr v3, v0

    .line 50
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 51
    move-result v0

    .line 54
    cmpl-float v0, v1, v0

    .line 55
    if-ltz v0, :cond_1

    .line 57
    goto :goto_0

    .line 59
    :cond_1
    move v0, v2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 62
    :goto_1
    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$SeekBarChangeListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 65
    const/16 v1, 0x12

    .line 67
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 69
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    new-instance v1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;

    .line 80
    const/4 v3, 0x3

    .line 82
    invoke-direct {v1, v0, v3}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;-><init>(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;I)V

    .line 83
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 86
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 88
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 91
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 93
    move-result p1

    .line 96
    int-to-long v0, p1

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    new-instance p1, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onSeek$1;

    .line 101
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onSeek$1;-><init>(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;JI)V

    .line 103
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 108
    return-void
    .line 111
.end method
