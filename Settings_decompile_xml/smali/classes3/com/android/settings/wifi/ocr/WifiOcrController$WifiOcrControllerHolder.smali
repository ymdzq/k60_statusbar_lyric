.class Lcom/android/settings/wifi/ocr/WifiOcrController$WifiOcrControllerHolder;
.super Ljava/lang/Object;
.source "WifiOcrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/ocr/WifiOcrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiOcrControllerHolder"
.end annotation


# static fields
.field static wifiOcrControllerInstance:Lcom/android/settings/wifi/ocr/WifiOcrController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/android/settings/wifi/ocr/WifiOcrController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/ocr/WifiOcrController;-><init>(Lcom/android/settings/wifi/ocr/WifiOcrController-IA;)V

    sput-object v0, Lcom/android/settings/wifi/ocr/WifiOcrController$WifiOcrControllerHolder;->wifiOcrControllerInstance:Lcom/android/settings/wifi/ocr/WifiOcrController;

    return-void
.end method
