.class Lcom/android/settings/wifi/qrcode/MiuiQrCamera$1;
.super Ljava/lang/Object;
.source "MiuiQrCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/qrcode/MiuiQrCamera;->initCamera(Landroid/view/SurfaceHolder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/qrcode/MiuiQrCamera;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrCamera$1;->this$0:Lcom/android/settings/wifi/qrcode/MiuiQrCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    .line 0
    return-void
.end method
