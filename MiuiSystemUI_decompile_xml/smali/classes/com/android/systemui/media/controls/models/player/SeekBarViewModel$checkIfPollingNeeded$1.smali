.class public final Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$checkIfPollingNeeded$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $cancelPolling:Ljava/lang/Runnable;

.field public final synthetic $traceCookie:I


# direct methods
.method public constructor <init>(ILcom/android/systemui/util/concurrency/RepeatableExecutorImpl$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$checkIfPollingNeeded$1;->$cancelPolling:Ljava/lang/Runnable;

    .line 2
    iput p1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$checkIfPollingNeeded$1;->$traceCookie:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$checkIfPollingNeeded$1;->$cancelPolling:Ljava/lang/Runnable;

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    const-string v0, "SeekBarPollingPosition"

    .line 7
    iget p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$checkIfPollingNeeded$1;->$traceCookie:I

    .line 9
    invoke-static {v0, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 11
    return-void
    .line 14
.end method
