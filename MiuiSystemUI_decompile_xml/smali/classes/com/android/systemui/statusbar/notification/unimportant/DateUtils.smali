.class public abstract Lcom/android/systemui/statusbar/notification/unimportant/DateUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static getDigitalFormatDateToday()I
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/Date;

    .line 6
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 11
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 15
    move-result v2

    .line 18
    const/4 v3, 0x2

    .line 19
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 20
    move-result v3

    .line 23
    add-int/2addr v3, v1

    .line 24
    const/4 v1, 0x5

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 26
    move-result v0

    .line 29
    mul-int/lit16 v2, v2, 0x2710

    .line 30
    mul-int/lit8 v3, v3, 0x64

    .line 32
    add-int/2addr v3, v2

    .line 34
    add-int/2addr v3, v0

    .line 35
    return v3
    .line 36
.end method
