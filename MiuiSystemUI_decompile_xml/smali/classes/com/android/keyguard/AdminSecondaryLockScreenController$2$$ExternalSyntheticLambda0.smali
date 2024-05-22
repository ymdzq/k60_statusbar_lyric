.class public final synthetic Lcom/android/keyguard/AdminSecondaryLockScreenController$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/AdminSecondaryLockScreenController$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/AdminSecondaryLockScreenController$2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$2$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/AdminSecondaryLockScreenController$2;

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
    iget v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$2$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/AdminSecondaryLockScreenController$2;

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$2;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->dismiss(I)V

    .line 16
    return-void

    .line 19
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/AdminSecondaryLockScreenController$2;

    .line 20
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$2;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 22
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 24
    move-result v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->dismiss(I)V

    .line 28
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 32
.end method
