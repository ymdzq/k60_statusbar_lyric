.class public final synthetic Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

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
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 8
    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->$r8$lambda$VxtrbYZwxPqmSIi-Ho3ifEKvrlc(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V

    .line 10
    return-void

    .line 13
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 14
    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->$r8$lambda$VxtrbYZwxPqmSIi-Ho3ifEKvrlc(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V

    .line 16
    return-void

    .line 19
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->dismissPip()V

    .line 22
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 26
.end method
