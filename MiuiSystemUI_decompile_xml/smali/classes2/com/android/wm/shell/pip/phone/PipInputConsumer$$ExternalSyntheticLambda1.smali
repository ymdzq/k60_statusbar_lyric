.class public final synthetic Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipInputConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipInputConsumer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mRegistrationListener:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputEventReceiver;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    const/4 v1, 0x1

    .line 19
    :cond_0
    iget-object p0, v0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 20
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    .line 22
    :cond_1
    return-void

    .line 25
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mRegistrationListener:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;

    .line 28
    if-eqz p0, :cond_2

    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 32
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    .line 34
    :cond_2
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
