.class public final Lcom/android/app/viewcapture/ViewCapture$WindowListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final mCaptureCallback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;

.field public mFrameIndexBg:I

.field public final mFrameTimesNanosBg:[J

.field public mIsActive:Z

.field public mIsFirstFrame:Z

.field public final mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

.field public mRoot:Landroid/view/View;

.field public final mViewRef:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

.field public final name:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/app/viewcapture/ViewCapture;


# direct methods
.method public constructor <init>(Lcom/android/app/viewcapture/SimpleViewCapture;Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 7
    invoke-direct {v0}, Lcom/android/app/viewcapture/ViewCapture$ViewRef;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mViewRef:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 12
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameIndexBg:I

    .line 15
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mIsFirstFrame:Z

    .line 18
    iget p1, p1, Lcom/android/app/viewcapture/ViewCapture;->mMemorySize:I

    .line 20
    new-array v1, p1, [J

    .line 22
    iput-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mFrameTimesNanosBg:[J

    .line 24
    new-array p1, p1, [Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 26
    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mNodesBg:[Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 28
    iput-boolean v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mIsActive:Z

    .line 30
    new-instance p1, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;

    .line 32
    invoke-direct {p1, v0, p0}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mCaptureCallback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;

    .line 37
    iput-object p2, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mRoot:Landroid/view/View;

    .line 39
    iput-object p3, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->name:Ljava/lang/String;

    .line 41
    return-void
    .line 43
.end method


# virtual methods
.method public final captureViewTree(Landroid/view/View;Lcom/android/app/viewcapture/ViewCapture$ViewRef;)Lcom/android/app/viewcapture/ViewCapture$ViewRef;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    .line 2
    iget-object v1, v0, Lcom/android/app/viewcapture/ViewCapture;->mPool:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget-object v2, v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 8
    iput-object v2, v0, Lcom/android/app/viewcapture/ViewCapture;->mPool:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-object v0, v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 16
    invoke-direct {v1}, Lcom/android/app/viewcapture/ViewCapture$ViewRef;-><init>()V

    .line 18
    :goto_0
    iput-object p1, v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->view:Landroid/view/View;

    .line 21
    iput-object v1, p2, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 23
    instance-of p2, p1, Landroid/view/ViewGroup;

    .line 25
    const/4 v0, 0x0

    .line 27
    if-eqz p2, :cond_3

    .line 28
    move-object p2, p1

    .line 30
    check-cast p2, Landroid/view/ViewGroup;

    .line 31
    iget p1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 33
    const/high16 v2, -0x7fe00000

    .line 35
    and-int/2addr p1, v2

    .line 37
    if-nez p1, :cond_1

    .line 38
    iget-boolean p1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mIsFirstFrame:Z

    .line 40
    if-nez p1, :cond_1

    .line 42
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    move-result p0

    .line 47
    neg-int p0, p0

    .line 48
    iput p0, v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->childCount:I

    .line 49
    return-object v1

    .line 51
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    move-result p1

    .line 55
    iput p1, v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->childCount:I

    .line 56
    :goto_1
    if-ge v0, p1, :cond_2

    .line 58
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 60
    move-result-object v2

    .line 63
    invoke-virtual {p0, v2, v1}, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->captureViewTree(Landroid/view/View;Lcom/android/app/viewcapture/ViewCapture$ViewRef;)Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 64
    move-result-object v1

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_1

    .line 70
    :cond_2
    return-object v1

    .line 71
    :cond_3
    iput v0, v1, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->childCount:I

    .line 72
    return-object v1
    .line 74
.end method

.method public final onDraw()V
    .locals 3

    .line 1
    const-string/jumbo v0, "view_capture"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mRoot:Landroid/view/View;

    .line 8
    iget-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mViewRef:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->captureViewTree(Landroid/view/View;Lcom/android/app/viewcapture/ViewCapture$ViewRef;)Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 12
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mViewRef:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 15
    iget-object v0, v0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mCaptureCallback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;

    .line 21
    iput-object v1, v0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->callback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;

    .line 23
    iget-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    .line 25
    iget-object v1, v1, Lcom/android/app/viewcapture/ViewCapture;->mChoreographer:Landroid/view/Choreographer;

    .line 27
    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    .line 29
    move-result-wide v1

    .line 32
    iput-wide v1, v0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->choreographerTimeNanos:J

    .line 33
    iget-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    .line 35
    iget-object v1, v1, Lcom/android/app/viewcapture/ViewCapture;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 37
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->mIsFirstFrame:Z

    .line 43
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 45
    return-void
    .line 48
.end method
