.class public final synthetic Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/hardware/biometrics/BiometricStateListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/BiometricStateListener;IIZI)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/biometrics/BiometricStateListener;

    .line 4
    iput p2, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    iput p3, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    iput-boolean p4, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$3:Z

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/biometrics/BiometricStateListener;

    .line 8
    check-cast v0, Lcom/android/systemui/biometrics/AuthController$4;

    .line 10
    iget v1, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$1:I

    .line 12
    iget v2, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$2:I

    .line 14
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$3:Z

    .line 16
    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController$4;->this$0:Lcom/android/systemui/biometrics/AuthController;

    .line 18
    const/4 v3, 0x2

    .line 20
    invoke-static {v0, v3, v1, v2, p0}, Lcom/android/systemui/biometrics/AuthController;->-$$Nest$mhandleEnrollmentsChanged(Lcom/android/systemui/biometrics/AuthController;IIIZ)V

    .line 21
    return-void

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/biometrics/BiometricStateListener;

    .line 25
    check-cast v0, Lcom/android/systemui/biometrics/AuthController$4;

    .line 27
    iget v1, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$1:I

    .line 29
    iget v2, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$2:I

    .line 31
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/AuthController$4$$ExternalSyntheticLambda0;->f$3:Z

    .line 33
    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController$4;->this$0:Lcom/android/systemui/biometrics/AuthController;

    .line 35
    const/16 v3, 0x8

    .line 37
    invoke-static {v0, v3, v1, v2, p0}, Lcom/android/systemui/biometrics/AuthController;->-$$Nest$mhandleEnrollmentsChanged(Lcom/android/systemui/biometrics/AuthController;IIIZ)V

    .line 39
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 44
.end method
