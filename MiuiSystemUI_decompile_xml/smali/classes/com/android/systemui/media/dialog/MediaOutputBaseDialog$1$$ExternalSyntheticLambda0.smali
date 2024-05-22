.class public final synthetic Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

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
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastUpdated()V

    .line 12
    return-void

    .line 15
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastUpdateFailed()V

    .line 20
    return-void

    .line 23
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastStopFailed()V

    .line 28
    return-void

    .line 31
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    .line 32
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastStartFailed()V

    .line 36
    return-void

    .line 39
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastStarted()V

    .line 44
    return-void

    .line 47
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastStopped()V

    .line 52
    return-void

    .line 55
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    .line 56
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->handleLeBroadcastMetadataChanged()V

    .line 60
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 64
.end method
