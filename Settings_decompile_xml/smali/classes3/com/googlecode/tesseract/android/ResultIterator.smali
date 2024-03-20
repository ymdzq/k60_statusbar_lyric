.class public Lcom/googlecode/tesseract/android/ResultIterator;
.super Lcom/googlecode/tesseract/android/PageIterator;
.source "ResultIterator.java"


# instance fields
.field private final mNativeResultIterator:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 36
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "tess"

    .line 37
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/googlecode/tesseract/android/PageIterator;-><init>(J)V

    .line 46
    iput-wide p1, p0, Lcom/googlecode/tesseract/android/ResultIterator;->mNativeResultIterator:J

    return-void
.end method

.method private static native nativeConfidence(JI)F
.end method

.method private static native nativeDelete(J)V
.end method

.method private static native nativeGetSymbolChoices(J)[Ljava/lang/String;
.end method

.method private static native nativeGetUTF8Text(JI)Ljava/lang/String;
.end method

.method private static native nativeIsAtBeginningOf(JI)Z
.end method

.method private static native nativeIsAtFinalElement(JII)Z
.end method


# virtual methods
.method public confidence(I)F
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/ResultIterator;->mNativeResultIterator:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/tesseract/android/ResultIterator;->nativeConfidence(JI)F

    move-result p0

    return p0
.end method

.method public delete()V
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/ResultIterator;->mNativeResultIterator:J

    invoke-static {v0, v1}, Lcom/googlecode/tesseract/android/ResultIterator;->nativeDelete(J)V

    return-void
.end method

.method public getSymbolChoicesAndConfidence()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 106
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/ResultIterator;->mNativeResultIterator:J

    invoke-static {v0, v1}, Lcom/googlecode/tesseract/android/ResultIterator;->nativeGetSymbolChoices(J)[Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const/16 v5, 0x7c

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const-wide/16 v6, 0x0

    .line 117
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    if-lez v5, :cond_0

    .line 121
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    .line 123
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid confidence level for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ResultIterator"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v4, v7

    .line 133
    :cond_0
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getUTF8Text(I)Ljava/lang/String;
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/ResultIterator;->mNativeResultIterator:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/tesseract/android/ResultIterator;->nativeGetUTF8Text(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAtBeginningOf(I)Z
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/ResultIterator;->mNativeResultIterator:J

    invoke-static {v0, v1, p1}, Lcom/googlecode/tesseract/android/ResultIterator;->nativeIsAtBeginningOf(JI)Z

    move-result p0

    return p0
.end method

.method public isAtFinalElement(II)Z
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/ResultIterator;->mNativeResultIterator:J

    invoke-static {v0, v1, p1, p2}, Lcom/googlecode/tesseract/android/ResultIterator;->nativeIsAtFinalElement(JII)Z

    move-result p0

    return p0
.end method
