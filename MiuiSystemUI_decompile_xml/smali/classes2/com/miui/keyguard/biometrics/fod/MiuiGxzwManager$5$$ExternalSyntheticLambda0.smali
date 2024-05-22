.class public final synthetic Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;

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
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;

    .line 8
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mFingerprintLockout:Z

    .line 13
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->updateGxzwState()V

    .line 15
    return-void

    .line 18
    :goto_0
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;

    .line 19
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$5;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 21
    iget-boolean p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mBouncer:Z

    .line 23
    xor-int/lit8 p0, p0, 0x1

    .line 25
    const/16 v0, 0xa

    .line 27
    invoke-static {v0, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->setTouchMode(II)V

    .line 29
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 34
.end method
