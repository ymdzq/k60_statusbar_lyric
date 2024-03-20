.class public final synthetic Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/common/TabletopModeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/TabletopModeController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/TabletopModeController;

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
    iget v0, p0, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/TabletopModeController;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/common/TabletopModeController;->isInTabletopMode()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TabletopModeController;->mayBroadcastOnTabletopModeChange(Z)V

    .line 17
    :cond_0
    return-void

    .line 20
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/TabletopModeController;

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/common/TabletopModeController;->onInit()V

    .line 23
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 28
.end method
