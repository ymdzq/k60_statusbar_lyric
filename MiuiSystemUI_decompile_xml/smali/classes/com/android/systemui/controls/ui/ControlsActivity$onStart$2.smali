.class public final Lcom/android/systemui/controls/ui/ControlsActivity$onStart$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controls/ui/ControlsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$2;->this$0:Lcom/android/systemui/controls/ui/ControlsActivity;

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
    iget v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$2;->this$0:Lcom/android/systemui/controls/ui/ControlsActivity;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsActivity;->finishOrReturnToDream()V

    .line 10
    return-void

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$2;->this$0:Lcom/android/systemui/controls/ui/ControlsActivity;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsActivity;->finishOrReturnToDream()V

    .line 16
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 20
.end method