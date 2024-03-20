.class public final Lcom/android/systemui/qs/tiles/QRCodeScannerTile$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/QRCodeScannerTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/QRCodeScannerTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/QRCodeScannerTile$1;->this$0:Lcom/android/systemui/qs/tiles/QRCodeScannerTile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onQRCodeScannerActivityChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QRCodeScannerTile$1;->this$0:Lcom/android/systemui/qs/tiles/QRCodeScannerTile;

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 5
    return-void
    .line 8
.end method
