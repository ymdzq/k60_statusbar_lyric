.class public Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;
.super Ljava/lang/Object;
.source "TessBaseAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/tesseract/android/TessBaseAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressValues"
.end annotation


# instance fields
.field private final percent:I

.field private final textRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/googlecode/tesseract/android/TessBaseAPI;

.field private final wordRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/googlecode/tesseract/android/TessBaseAPI;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->this$0:Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p2, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->percent:I

    .line 192
    iput-object p3, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->wordRect:Landroid/graphics/Rect;

    .line 193
    iput-object p4, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->textRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getCurrentRect()Landroid/graphics/Rect;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->textRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getCurrentWordRect()Landroid/graphics/Rect;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->wordRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPercent()I
    .locals 0

    .line 202
    iget p0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->percent:I

    return p0
.end method
