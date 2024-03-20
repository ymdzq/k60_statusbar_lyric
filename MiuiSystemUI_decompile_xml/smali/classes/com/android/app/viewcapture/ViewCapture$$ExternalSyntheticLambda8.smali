.class public final synthetic Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

.field public final synthetic f$2:Lcom/android/app/viewcapture/ViewCapture$ViewRef;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/app/viewcapture/ViewCapture$ViewRef;Lcom/android/app/viewcapture/ViewCapture$ViewRef;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$1:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 6
    iput-object p3, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$2:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/app/viewcapture/ViewCapture;

    .line 10
    iget-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$1:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 12
    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$2:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 14
    iget-object v2, v0, Lcom/android/app/viewcapture/ViewCapture;->mPool:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 16
    iput-object v2, p0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 18
    iput-object v1, v0, Lcom/android/app/viewcapture/ViewCapture;->mPool:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 20
    return-void

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 23
    check-cast v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;

    .line 25
    iget-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$1:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 27
    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda8;->f$2:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 29
    iget-object v0, v0, Lcom/android/app/viewcapture/ViewCapture$WindowListener;->this$0:Lcom/android/app/viewcapture/ViewCapture;

    .line 31
    iget-object v2, v0, Lcom/android/app/viewcapture/ViewCapture;->mPool:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 33
    iput-object v2, p0, Lcom/android/app/viewcapture/ViewCapture$ViewRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 35
    iput-object v1, v0, Lcom/android/app/viewcapture/ViewCapture;->mPool:Lcom/android/app/viewcapture/ViewCapture$ViewRef;

    .line 37
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 40
.end method
