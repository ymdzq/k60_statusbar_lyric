.class public final Lcom/airbnb/lottie/model/DocumentData;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public baselineShift:F

.field public color:I

.field public fontName:Ljava/lang/String;

.field public justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public lineHeight:F

.field public size:F

.field public strokeColor:I

.field public strokeOverFill:Z

.field public strokeWidth:F

.field public text:Ljava/lang/String;

.field public tracking:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 9
    iput-object p4, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 11
    iput p5, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 13
    iput p6, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 15
    iput p7, p0, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    .line 17
    iput p8, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 19
    iput p9, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 21
    iput p10, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    .line 23
    iput-boolean p11, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    iget v1, p0, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 19
    add-float/2addr v0, v1

    .line 21
    float-to-int v0, v0

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget-object v1, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result v1

    .line 30
    add-int/2addr v1, v0

    .line 31
    mul-int/lit8 v1, v1, 0x1f

    .line 32
    iget v0, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 34
    add-int/2addr v1, v0

    .line 36
    iget v0, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 37
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 39
    move-result v0

    .line 42
    int-to-long v2, v0

    .line 43
    mul-int/lit8 v1, v1, 0x1f

    .line 44
    const/16 v0, 0x20

    .line 46
    ushr-long v4, v2, v0

    .line 48
    xor-long/2addr v2, v4

    .line 50
    long-to-int v0, v2

    .line 51
    add-int/2addr v1, v0

    .line 52
    mul-int/lit8 v1, v1, 0x1f

    .line 53
    iget p0, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 55
    add-int/2addr v1, p0

    .line 57
    return v1
    .line 58
.end method
