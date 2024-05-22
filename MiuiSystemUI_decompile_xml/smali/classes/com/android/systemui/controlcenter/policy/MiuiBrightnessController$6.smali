.class public final Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$6;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$6;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 2
    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onVrStateChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$6;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mHandler:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$7;

    .line 4
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    return-void
    .line 15
.end method
