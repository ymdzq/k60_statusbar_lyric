.class public Lcom/googlecode/tesseract/android/PageIterator;
.super Ljava/lang/Object;
.source "PageIterator.java"


# instance fields
.field private final mNativePageIterator:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 25
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "tess"

    .line 26
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/googlecode/tesseract/android/PageIterator;->mNativePageIterator:J

    return-void
.end method

.method private static native nativeBegin(J)V
.end method

.method private static native nativeBoundingBox(JI)[I
.end method

.method private static native nativeNext(JI)Z
.end method


# virtual methods
.method public begin()V
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/PageIterator;->mNativePageIterator:J

    invoke-static {v0, v1}, Lcom/googlecode/tesseract/android/PageIterator;->nativeBegin(J)V

    return-void
.end method

.method public getBoundingBox(I)[I
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/PageIterator;->mNativePageIterator:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/tesseract/android/PageIterator;->nativeBoundingBox(JI)[I

    move-result-object p0

    return-object p0
.end method

.method public getBoundingRect(I)Landroid/graphics/Rect;
    .locals 4

    .line 104
    invoke-virtual {p0, p1}, Lcom/googlecode/tesseract/android/PageIterator;->getBoundingBox(I)[I

    move-result-object p0

    .line 105
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x3

    aget p0, p0, v3

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public next(I)Z
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/PageIterator;->mNativePageIterator:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/tesseract/android/PageIterator;->nativeNext(JI)Z

    move-result p0

    return p0
.end method
