.class public Lcom/googlecode/tesseract/android/TessPdfRenderer;
.super Ljava/lang/Object;
.source "TessPdfRenderer.java"


# instance fields
.field private final mNativePdfRenderer:J

.field private mRecycled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 30
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "tess"

    .line 31
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/tesseract/android/TessBaseAPI;Ljava/lang/String;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->getNativeData()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->nativeCreate(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->mNativePdfRenderer:J

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->mRecycled:Z

    return-void
.end method

.method private static native nativeCreate(JLjava/lang/String;)J
.end method

.method private static native nativeRecycle(J)V
.end method


# virtual methods
.method public getNativePdfRenderer()J
    .locals 2

    .line 55
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->mRecycled:Z

    if-nez v0, :cond_0

    .line 58
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->mNativePdfRenderer:J

    return-wide v0

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public recycle()V
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->mNativePdfRenderer:J

    invoke-static {v0, v1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->nativeRecycle(J)V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/googlecode/tesseract/android/TessPdfRenderer;->mRecycled:Z

    return-void
.end method
