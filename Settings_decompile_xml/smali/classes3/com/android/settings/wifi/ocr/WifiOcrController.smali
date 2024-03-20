.class public Lcom/android/settings/wifi/ocr/WifiOcrController;
.super Ljava/lang/Object;
.source "WifiOcrController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ocr/WifiOcrController$WifiOcrControllerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiOcrController"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/ocr/WifiOcrController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/ocr/WifiOcrController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/wifi/ocr/WifiOcrController;
    .locals 1

    .line 21
    sget-object v0, Lcom/android/settings/wifi/ocr/WifiOcrController$WifiOcrControllerHolder;->wifiOcrControllerInstance:Lcom/android/settings/wifi/ocr/WifiOcrController;

    return-object v0
.end method


# virtual methods
.method public detectText(Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 36
    invoke-static {}, Lcom/android/settings/wifi/ocr/TessDataManager;->getInstance()Lcom/android/settings/wifi/ocr/TessDataManager;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/ocr/TessDataManager;->initTessTrainedData(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Lcom/android/settings/wifi/ocr/TessDataManager;->getInstance()Lcom/android/settings/wifi/ocr/TessDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/wifi/ocr/TessDataManager;->getTesseractFolder()Ljava/lang/String;

    move-result-object p0

    .line 38
    new-instance p2, Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-direct {p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;-><init>()V

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p2, v0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->setDebug(Z)V

    const-string v1, "chi_sim"

    .line 40
    invoke-virtual {p2, p0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->init(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo p0, "tessedit_char_blacklist"

    const-string v1, "!@#$%^&*()_+=-[]}{;:\'\"\\|~`,./<>?"

    .line 41
    invoke-virtual {p2, p0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->setVariable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    invoke-virtual {p2, v0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->setPageSegMode(I)V

    .line 43
    invoke-virtual {p2, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->setImage(Landroid/graphics/Bitmap;)V

    .line 44
    invoke-virtual {p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->getUTF8Text()Ljava/lang/String;

    move-result-object p0

    .line 45
    sget-object p1, Lcom/android/settings/wifi/ocr/WifiOcrController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inspection = : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->end()V

    return-object p0
.end method
