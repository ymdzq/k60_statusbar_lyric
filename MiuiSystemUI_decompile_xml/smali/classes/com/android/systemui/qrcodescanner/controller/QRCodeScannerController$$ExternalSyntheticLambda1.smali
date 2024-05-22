.class public final synthetic Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;

    .line 10
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->updateQRCodeScannerPreferenceDetails(Z)V

    .line 13
    return-void

    .line 16
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 17
    check-cast p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->updateQRCodeScannerActivityDetails()V

    .line 21
    return-void

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 25
    check-cast p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$1;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$1;->this$0:Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;

    .line 29
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->updateQRCodeScannerPreferenceDetails(Z)V

    .line 32
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 36
.end method
