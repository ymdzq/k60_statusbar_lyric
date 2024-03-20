.class Lcom/android/settings/MiuiBandMode$BandListItem;
.super Ljava/lang/Object;
.source "MiuiBandMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiBandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BandListItem"
.end annotation


# instance fields
.field public mBandMode:J

.field public mChecked:Z

.field public mPosition:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 289
    iput v0, p0, Lcom/android/settings/MiuiBandMode$BandListItem;->mPosition:I

    const-wide/16 v0, 0x0

    .line 290
    iput-wide v0, p0, Lcom/android/settings/MiuiBandMode$BandListItem;->mBandMode:J

    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Lcom/android/settings/MiuiBandMode$BandListItem;->mChecked:Z

    return-void
.end method

.method public constructor <init>(IJZ)V
    .locals 0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput p1, p0, Lcom/android/settings/MiuiBandMode$BandListItem;->mPosition:I

    .line 298
    iput-wide p2, p0, Lcom/android/settings/MiuiBandMode$BandListItem;->mBandMode:J

    .line 299
    iput-boolean p4, p0, Lcom/android/settings/MiuiBandMode$BandListItem;->mChecked:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 303
    iget v0, p0, Lcom/android/settings/MiuiBandMode$BandListItem;->mPosition:I

    invoke-static {}, Lcom/android/settings/MiuiBandMode;->-$$Nest$sfgetBAND_NAMES()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Band mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/MiuiBandMode$BandListItem;->mBandMode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 304
    :cond_0
    invoke-static {}, Lcom/android/settings/MiuiBandMode;->-$$Nest$sfgetBAND_NAMES()[Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/MiuiBandMode$BandListItem;->mPosition:I

    aget-object p0, v0, p0

    return-object p0
.end method
