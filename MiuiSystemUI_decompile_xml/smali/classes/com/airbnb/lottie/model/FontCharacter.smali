.class public final Lcom/airbnb/lottie/model/FontCharacter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final character:C

.field public final fontFamily:Ljava/lang/String;

.field public final shapes:Ljava/util/List;

.field public final style:Ljava/lang/String;

.field public final width:D


# direct methods
.method public constructor <init>(Ljava/util/List;CDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/model/FontCharacter;->shapes:Ljava/util/List;

    .line 5
    iput-char p2, p0, Lcom/airbnb/lottie/model/FontCharacter;->character:C

    .line 7
    iput-wide p3, p0, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    .line 9
    iput-object p5, p0, Lcom/airbnb/lottie/model/FontCharacter;->style:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/airbnb/lottie/model/FontCharacter;->fontFamily:Ljava/lang/String;

    .line 13
    return-void
    .line 15
.end method

.method public static hashFor(CLjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    add-int/lit8 p0, p0, 0x0

    .line 2
    mul-int/lit8 p0, p0, 0x1f

    .line 4
    const/16 v0, 0x1f

    .line 6
    invoke-static {p1, p0, v0}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 8
    move-result p0

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result p1

    .line 15
    add-int/2addr p1, p0

    .line 16
    return p1
    .line 17
.end method


# virtual methods
.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/FontCharacter;->fontFamily:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/model/FontCharacter;->style:Ljava/lang/String;

    .line 4
    iget-char p0, p0, Lcom/airbnb/lottie/model/FontCharacter;->character:C

    .line 6
    invoke-static {p0, v0, v1}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method
