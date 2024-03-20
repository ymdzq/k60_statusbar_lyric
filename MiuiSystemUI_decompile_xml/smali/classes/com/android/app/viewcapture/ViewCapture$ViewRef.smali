.class public final Lcom/android/app/viewcapture/ViewCapture$ViewRef;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public callback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;

.field public childCount:I

.field public choreographerTimeNanos:J

.field public next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->childCount:I

    .line 6
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->callback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;

    .line 9
    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->choreographerTimeNanos:J

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->callback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->callback:Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda3;->accept(Ljava/lang/Object;)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method
