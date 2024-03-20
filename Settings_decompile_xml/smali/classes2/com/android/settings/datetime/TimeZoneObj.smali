.class public Lcom/android/settings/datetime/TimeZoneObj;
.super Ljava/lang/Object;
.source "TimeZoneObj.java"


# instance fields
.field private mCityName:Ljava/lang/String;

.field private mGmtName:Ljava/lang/String;

.field private mID:Ljava/lang/String;

.field private mOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/settings/datetime/TimeZoneObj;->mCityName:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/android/settings/datetime/TimeZoneObj;->mGmtName:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/android/settings/datetime/TimeZoneObj;->mID:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/android/settings/datetime/TimeZoneObj;->mOffset:I

    return-void
.end method


# virtual methods
.method public getCityName()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/settings/datetime/TimeZoneObj;->mCityName:Ljava/lang/String;

    return-object p0
.end method

.method public getGmtName()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/settings/datetime/TimeZoneObj;->mGmtName:Ljava/lang/String;

    return-object p0
.end method

.method public getID()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/datetime/TimeZoneObj;->mID:Ljava/lang/String;

    return-object p0
.end method

.method public getOffset()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/settings/datetime/TimeZoneObj;->mOffset:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " timezoneID = "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/datetime/TimeZoneObj;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cityName = "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/datetime/TimeZoneObj;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gmtName = "

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/datetime/TimeZoneObj;->mGmtName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " offset = "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/datetime/TimeZoneObj;->mOffset:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
