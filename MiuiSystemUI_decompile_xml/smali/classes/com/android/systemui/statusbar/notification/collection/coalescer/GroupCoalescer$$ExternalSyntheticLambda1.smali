.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCancelShortTimeout:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->emitBatch(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    .line 12
    return-void
    .line 15
.end method
