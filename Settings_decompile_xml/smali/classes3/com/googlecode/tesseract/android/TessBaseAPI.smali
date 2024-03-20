.class public Lcom/googlecode/tesseract/android/TessBaseAPI;
.super Ljava/lang/Object;
.source "TessBaseAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;,
        Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressNotifier;,
        Lcom/googlecode/tesseract/android/TessBaseAPI$PageIteratorLevel;,
        Lcom/googlecode/tesseract/android/TessBaseAPI$OcrEngineMode;,
        Lcom/googlecode/tesseract/android/TessBaseAPI$PageSegMode;
    }
.end annotation


# static fields
.field public static final OEM_CUBE_ONLY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OEM_DEFAULT:I = 0x3

.field public static final OEM_TESSERACT_CUBE_COMBINED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OEM_TESSERACT_ONLY:I = 0x0

.field public static final VAR_CHAR_BLACKLIST:Ljava/lang/String; = "tessedit_char_blacklist"

.field public static final VAR_CHAR_WHITELIST:Ljava/lang/String; = "tessedit_char_whitelist"

.field public static final VAR_FALSE:Ljava/lang/String; = "F"

.field public static final VAR_SAVE_BLOB_CHOICES:Ljava/lang/String; = "save_blob_choices"

.field public static final VAR_TRUE:Ljava/lang/String; = "T"


# instance fields
.field private mNativeData:J

.field private mRecycled:Z

.field private progressNotifier:Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 49
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "tess"

    .line 50
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    invoke-direct {p0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeConstruct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    return-void

    .line 240
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t create TessBaseApi object"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressNotifier;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/googlecode/tesseract/android/TessBaseAPI;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->progressNotifier:Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressNotifier;

    return-void
.end method

.method private native nativeAddPageToDocument(JJLjava/lang/String;J)Z
.end method

.method private native nativeBeginDocument(JLjava/lang/String;)Z
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeClear(J)V
.end method

.method private native nativeConstruct()J
.end method

.method private native nativeEnd(J)V
.end method

.method private native nativeEndDocument(J)Z
.end method

.method private native nativeGetBoxText(JI)Ljava/lang/String;
.end method

.method private native nativeGetConnectedComponents(J)J
.end method

.method private native nativeGetHOCRText(JI)Ljava/lang/String;
.end method

.method private native nativeGetInitLanguagesAsString(J)Ljava/lang/String;
.end method

.method private native nativeGetPageSegMode(J)I
.end method

.method private native nativeGetRegions(J)J
.end method

.method private native nativeGetResultIterator(J)J
.end method

.method private native nativeGetStrips(J)J
.end method

.method private native nativeGetTextlines(J)J
.end method

.method private native nativeGetThresholdedImage(J)J
.end method

.method private native nativeGetUTF8Text(J)Ljava/lang/String;
.end method

.method private native nativeGetVersion(J)Ljava/lang/String;
.end method

.method private native nativeGetWords(J)J
.end method

.method private native nativeInit(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeInitOem(JLjava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native nativeMeanConfidence(J)I
.end method

.method private native nativeReadConfigFile(JLjava/lang/String;)V
.end method

.method private native nativeSetDebug(JZ)V
.end method

.method private native nativeSetImageBytes(J[BIIII)V
.end method

.method private native nativeSetImagePix(JJ)V
.end method

.method private native nativeSetInputName(JLjava/lang/String;)V
.end method

.method private native nativeSetOutputName(JLjava/lang/String;)V
.end method

.method private native nativeSetPageSegMode(JI)V
.end method

.method private native nativeSetRectangle(JIIII)V
.end method

.method private native nativeSetVariable(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeStop(J)V
.end method

.method private native nativeWordConfidences(J)[I
.end method


# virtual methods
.method public addPageToDocument(Lcom/googlecode/leptonica/android/Pix;Ljava/lang/String;Lcom/googlecode/tesseract/android/TessPdfRenderer;)Z
    .locals 8

    .line 918
    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v3

    .line 919
    invoke-virtual {p3}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->getNativePdfRenderer()J

    move-result-wide v6

    move-object v0, p0

    move-object v5, p2

    .line 918
    invoke-direct/range {v0 .. v7}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeAddPageToDocument(JJLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public beginDocument(Lcom/googlecode/tesseract/android/TessPdfRenderer;)Z
    .locals 2

    .line 893
    invoke-virtual {p1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->getNativePdfRenderer()J

    move-result-wide v0

    const-string p1, ""

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeBeginDocument(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public beginDocument(Lcom/googlecode/tesseract/android/TessPdfRenderer;Ljava/lang/String;)Z
    .locals 2

    .line 881
    invoke-virtual {p1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->getNativePdfRenderer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeBeginDocument(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 2

    .line 384
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 387
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeClear(J)V

    return-void

    .line 385
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public end()V
    .locals 2

    .line 398
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 399
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeEnd(J)V

    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    :cond_0
    return-void
.end method

.method public endDocument(Lcom/googlecode/tesseract/android/TessPdfRenderer;)Z
    .locals 2

    .line 904
    invoke-virtual {p1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->getNativePdfRenderer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeEndDocument(J)Z

    move-result p0

    return p0
.end method

.method public getBoxText(I)Ljava/lang/String;
    .locals 2

    .line 820
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 823
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetBoxText(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 821
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getConnectedComponents()Lcom/googlecode/leptonica/android/Pixa;
    .locals 3

    .line 730
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetConnectedComponents(J)J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    .line 731
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getHOCRText(I)Ljava/lang/String;
    .locals 2

    .line 764
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 767
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetHOCRText(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 765
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getInitLanguagesAsString()Ljava/lang/String;
    .locals 2

    .line 371
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 374
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetInitLanguagesAsString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 372
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method getNativeData()J
    .locals 2

    .line 923
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    return-wide v0
.end method

.method public getPageSegMode()I
    .locals 2

    .line 441
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 444
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetPageSegMode(J)I

    move-result p0

    return p0

    .line 442
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getRegions()Lcom/googlecode/leptonica/android/Pixa;
    .locals 3

    .line 669
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetRegions(J)J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    .line 670
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getResultIterator()Lcom/googlecode/tesseract/android/ResultIterator;
    .locals 4

    .line 743
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_1

    .line 746
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetResultIterator(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 752
    :cond_0
    new-instance p0, Lcom/googlecode/tesseract/android/ResultIterator;

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/ResultIterator;-><init>(J)V

    return-object p0

    .line 744
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getStrips()Lcom/googlecode/leptonica/android/Pixa;
    .locals 3

    .line 700
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 703
    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetStrips(J)J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    .line 701
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getTextlines()Lcom/googlecode/leptonica/android/Pixa;
    .locals 3

    .line 685
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 688
    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetTextlines(J)J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    .line 686
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getThresholdedImage()Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    .line 655
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetThresholdedImage(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0

    .line 656
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getUTF8Text()Ljava/lang/String;
    .locals 2

    .line 604
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_1

    .line 608
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetUTF8Text(J)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 610
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 605
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 832
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetVersion(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWords()Lcom/googlecode/leptonica/android/Pixa;
    .locals 3

    .line 714
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 717
    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetWords(J)J

    move-result-wide v1

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    .line 715
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x3

    .line 301
    invoke-virtual {p0, p1, p2, v0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->init(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10

    if-eqz p1, :cond_9

    .line 319
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v3, p1

    .line 322
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 326
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tessdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v6, 0x0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_5

    const-string v0, "\\+"

    .line 332
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v4, v0, v2

    const-string/jumbo v5, "~"

    .line 333
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 334
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".traineddata"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v5, "ara"

    .line 340
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "hin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x3

    if-ne p3, v5, :cond_4

    .line 342
    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".cube.params"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 345
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cube data files not found. See https://github.com/rmtheis/tess-two/issues/239"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Data file not found at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 353
    :cond_5
    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeInitOem(JLjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 356
    iput-boolean v6, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    :cond_6
    return p1

    .line 328
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Data path must contain subfolder tessdata!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Data path does not exist!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 318
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Data path must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public meanConfidence()I
    .locals 2

    .line 619
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 622
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeMeanConfidence(J)I

    move-result p0

    return p0

    .line 620
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public onProgressValues(IIIIIIIII)V
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->progressNotifier:Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressNotifier;

    if-eqz v0, :cond_0

    .line 863
    new-instance v0, Landroid/graphics/Rect;

    sub-int p4, p8, p4

    sub-int p5, p8, p5

    invoke-direct {v0, p2, p4, p3, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 864
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p9, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 866
    new-instance p3, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;-><init>(Lcom/googlecode/tesseract/android/TessBaseAPI;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 867
    iget-object p0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->progressNotifier:Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressNotifier;

    invoke-interface {p0, p3}, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressNotifier;->onProgressValues(Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;)V

    :cond_0
    return-void
.end method

.method public readConfigFile(Ljava/lang/String;)V
    .locals 2

    .line 804
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 807
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeReadConfigFile(JLjava/lang/String;)V

    return-void

    .line 805
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setDebug(Z)V
    .locals 2

    .line 471
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 474
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetDebug(JZ)V

    return-void

    .line 472
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 544
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_1

    .line 547
    invoke-static {p1}, Lcom/googlecode/leptonica/android/ReadFile;->readBitmap(Landroid/graphics/Bitmap;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 553
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImagePix(JJ)V

    .line 555
    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->recycle()V

    return-void

    .line 550
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to read bitmap"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 545
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setImage(Lcom/googlecode/leptonica/android/Pix;)V
    .locals 4

    .line 567
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 570
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImagePix(JJ)V

    return-void

    .line 568
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setImage(Ljava/io/File;)V
    .locals 4

    .line 519
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_1

    .line 522
    invoke-static {p1}, Lcom/googlecode/leptonica/android/ReadFile;->readFile(Ljava/io/File;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 528
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImagePix(JJ)V

    .line 530
    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->recycle()V

    return-void

    .line 525
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to read image file"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 520
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setImage([BIIII)V
    .locals 9

    .line 588
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 591
    iget-wide v2, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImageBytes(J[BIIII)V

    return-void

    .line 589
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setInputName(Ljava/lang/String;)V
    .locals 2

    .line 777
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 780
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetInputName(JLjava/lang/String;)V

    return-void

    .line 778
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setOutputName(Ljava/lang/String;)V
    .locals 2

    .line 789
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 792
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetOutputName(JLjava/lang/String;)V

    return-void

    .line 790
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setPageSegMode(I)V
    .locals 2

    .line 458
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 461
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetPageSegMode(JI)V

    return-void

    .line 459
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setRectangle(IIII)V
    .locals 8

    .line 502
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 505
    iget-wide v2, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetRectangle(JIIII)V

    return-void

    .line 503
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setRectangle(Landroid/graphics/Rect;)V
    .locals 3

    .line 485
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 488
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->setRectangle(IIII)V

    return-void

    .line 486
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 429
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 432
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetVariable(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 430
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public stop()V
    .locals 2

    .line 839
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 842
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeStop(J)V

    return-void

    .line 840
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public wordConfidences()[I
    .locals 2

    .line 634
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_1

    .line 637
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeWordConfidences(J)[I

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [I

    :cond_0
    return-object p0

    .line 635
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
