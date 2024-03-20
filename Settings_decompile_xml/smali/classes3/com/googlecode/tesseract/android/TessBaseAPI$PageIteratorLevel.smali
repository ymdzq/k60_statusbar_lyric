.class public final Lcom/googlecode/tesseract/android/TessBaseAPI$PageIteratorLevel;
.super Ljava/lang/Object;
.source "TessBaseAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/tesseract/android/TessBaseAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageIteratorLevel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/tesseract/android/TessBaseAPI$PageIteratorLevel$Level;
    }
.end annotation


# static fields
.field public static final RIL_BLOCK:I = 0x0

.field public static final RIL_PARA:I = 0x1

.field public static final RIL_SYMBOL:I = 0x4

.field public static final RIL_TEXTLINE:I = 0x2

.field public static final RIL_WORD:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
