.class Lcom/android/settings/wifi/ocr/TessDataManager$TessDataManagerHolder;
.super Ljava/lang/Object;
.source "TessDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/ocr/TessDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TessDataManagerHolder"
.end annotation


# static fields
.field static tessDataManagerInstance:Lcom/android/settings/wifi/ocr/TessDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/android/settings/wifi/ocr/TessDataManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/ocr/TessDataManager;-><init>(Lcom/android/settings/wifi/ocr/TessDataManager-IA;)V

    sput-object v0, Lcom/android/settings/wifi/ocr/TessDataManager$TessDataManagerHolder;->tessDataManagerInstance:Lcom/android/settings/wifi/ocr/TessDataManager;

    return-void
.end method
