.class public final synthetic Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;

.field public final synthetic f$1:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;

    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Semaphore;

    invoke-static {v0, p0, p1, p2}, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;->$r8$lambda$cB_QgUh-ixaq247gKZyR2nGlfFE(Lcom/android/settings/wifi/qrcode/MiuiQrCamera$DecodingTask;Ljava/util/concurrent/Semaphore;[BLandroid/hardware/Camera;)V

    return-void
.end method
