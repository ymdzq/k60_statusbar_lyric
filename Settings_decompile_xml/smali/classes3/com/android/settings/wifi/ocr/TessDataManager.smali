.class public Lcom/android/settings/wifi/ocr/TessDataManager;
.super Ljava/lang/Object;
.source "TessDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ocr/TessDataManager$TessDataManagerHolder;
    }
.end annotation


# instance fields
.field private tesseractFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/ocr/TessDataManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/ocr/TessDataManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/wifi/ocr/TessDataManager;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/settings/wifi/ocr/TessDataManager$TessDataManagerHolder;->tessDataManagerInstance:Lcom/android/settings/wifi/ocr/TessDataManager;

    return-object v0
.end method


# virtual methods
.method public getTesseractFolder()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/wifi/ocr/TessDataManager;->tesseractFolder:Ljava/lang/String;

    return-object p0
.end method

.method public initTessTrainedData(Landroid/content/Context;)V
    .locals 0

    .line 0
    return-void
.end method
