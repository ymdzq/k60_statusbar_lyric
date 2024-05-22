.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 8
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mContext:Landroid/content/Context;

    .line 10
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mBroadcastReceiver:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$8;

    .line 12
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mIntentFilter:Landroid/content/IntentFilter;

    .line 14
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 16
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 19
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mHandyMode:Z

    .line 21
    invoke-static {p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->-$$Nest$mupdateGxzwInfoInHandyMode(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;Z)V

    .line 23
    return-void

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 27
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mBroadcastReceiver:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$8;

    .line 31
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 33
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 36
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mHandyMode:Z

    .line 38
    invoke-static {p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->-$$Nest$mupdateGxzwInfoInHandyMode(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;Z)V

    .line 40
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 44
.end method
