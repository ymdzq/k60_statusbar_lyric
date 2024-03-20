.class Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;
.super Landroid/os/Handler;
.source "MiuiHeadsetFitnessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerHandler"
.end annotation


# instance fields
.field private final mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "MiuiHeadsetFitnessFragment"

    const-string v0, "FITNESS_CHECK_TIMEOUT!"

    .line 155
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 157
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    if-nez p0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mupdateUIToCheck(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    .line 160
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mstopDetectingMusic(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    .line 161
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mcheckIfNeedPlayMusic(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    if-nez v0, :cond_1

    return-void

    .line 143
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 144
    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mupdateUIForResult(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Ljava/lang/String;)V

    const-string v2, "0303"

    .line 145
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 146
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string p0, "0909"

    .line 147
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 148
    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mstopDetectingMusic(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    .line 149
    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mcheckIfNeedPlayMusic(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 127
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    if-nez p1, :cond_2

    return-void

    .line 130
    :cond_2
    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$misSCOOn(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    sget p0, Lcom/android/settings/R$string;->miheadset_fitness_check_result_dialog2:I

    invoke-static {p1, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mcreateDialog(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;I)V

    goto :goto_0

    .line 133
    :cond_3
    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mstartFitnessCheck(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    .line 134
    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mupdateUIToChecking(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    const-wide/16 v2, 0x2710

    .line 135
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
