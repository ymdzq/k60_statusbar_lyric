.class Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;
.super Ljava/lang/Object;
.source "MiuiHeadsetFindDeviceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->askDeviceDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

.field final synthetic val$whichEar:I


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 955
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    iput p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->val$whichEar:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "MiuiHeadsetFindDeviceFragment"

    const-string p2, "askDeviceDialog onclick envent"

    .line 957
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->val$whichEar:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eq p1, p2, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 980
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 981
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$msendCmdRight(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Z)V

    .line 983
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmLeftPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 984
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$msendCmdLeft(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Z)V

    .line 986
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmBothPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result p1

    xor-int/2addr p1, p2

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$msendCmdBoth(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Z)V

    goto :goto_0

    .line 970
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmBothPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 971
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$msendCmdBoth(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Z)V

    .line 973
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmLeftPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 974
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$msendCmdLeft(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Z)V

    .line 976
    :cond_5
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result p1

    xor-int/2addr p1, p2

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$msendCmdRight(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Z)V

    goto :goto_0

    .line 960
    :cond_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmBothPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 961
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$msendCmdBoth(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Z)V

    .line 963
    :cond_7
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 964
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$msendCmdRight(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Z)V

    .line 966
    :cond_8
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$19;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmLeftPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result p1

    xor-int/2addr p1, p2

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$msendCmdLeft(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Z)V

    :goto_0
    return-void
.end method
