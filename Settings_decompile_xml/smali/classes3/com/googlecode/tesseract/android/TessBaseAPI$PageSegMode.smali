.class public final Lcom/googlecode/tesseract/android/TessBaseAPI$PageSegMode;
.super Ljava/lang/Object;
.source "TessBaseAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/tesseract/android/TessBaseAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageSegMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/tesseract/android/TessBaseAPI$PageSegMode$Mode;
    }
.end annotation


# static fields
.field public static final PSM_AUTO:I = 0x3

.field public static final PSM_AUTO_ONLY:I = 0x2

.field public static final PSM_AUTO_OSD:I = 0x1

.field public static final PSM_CIRCLE_WORD:I = 0x9

.field public static final PSM_OSD_ONLY:I = 0x0

.field public static final PSM_RAW_LINE:I = 0xd

.field public static final PSM_SINGLE_BLOCK:I = 0x6

.field public static final PSM_SINGLE_BLOCK_VERT_TEXT:I = 0x5

.field public static final PSM_SINGLE_CHAR:I = 0xa

.field public static final PSM_SINGLE_COLUMN:I = 0x4

.field public static final PSM_SINGLE_LINE:I = 0x7

.field public static final PSM_SINGLE_WORD:I = 0x8

.field public static final PSM_SPARSE_TEXT:I = 0xb

.field public static final PSM_SPARSE_TEXT_OSD:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
