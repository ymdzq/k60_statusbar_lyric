.class Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$10;
.super Ljava/lang/Object;
.source "MiuiHeadsetFindDeviceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 438
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightConnected(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result p1

    const-string v0, "MiuiHeadsetFindDeviceFragment"

    if-nez p1, :cond_0

    const-string p0, "earphone right is not connected"

    .line 439
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 443
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$msendCmdRight(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Z)V

    return-void

    .line 446
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$mgetInEarStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "3"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$mgetInEarStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 450
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmBothPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 451
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$msendCmdBoth(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Z)V

    .line 453
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmLeftPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 454
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$msendCmdLeft(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Z)V

    .line 456
    :cond_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$msendCmdRight(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Z)V

    goto :goto_1

    :cond_5
    :goto_0
    const-string p1, "earphone is in ear"

    .line 447
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$maskDeviceDialog(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;I)V

    :goto_1
    return-void
.end method
