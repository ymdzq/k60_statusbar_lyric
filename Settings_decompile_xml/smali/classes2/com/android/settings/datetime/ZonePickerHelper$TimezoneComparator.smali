.class public Lcom/android/settings/datetime/ZonePickerHelper$TimezoneComparator;
.super Ljava/lang/Object;
.source "ZonePickerHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/ZonePickerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimezoneComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/datetime/TimeZoneObj;",
        ">;"
    }
.end annotation


# instance fields
.field private mNameComparator:Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;

.field final synthetic this$0:Lcom/android/settings/datetime/ZonePickerHelper;


# direct methods
.method public constructor <init>(Lcom/android/settings/datetime/ZonePickerHelper;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/datetime/ZonePickerHelper$TimezoneComparator;->this$0:Lcom/android/settings/datetime/ZonePickerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/android/settings/datetime/ZonePickerHelper$TimezoneComparator;->mNameComparator:Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;

    return-void
.end method

.method private getAlphabetComparator()Ljava/util/Comparator;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/settings/datetime/ZonePickerHelper$TimezoneComparator;->mNameComparator:Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;

    iget-object v1, p0, Lcom/android/settings/datetime/ZonePickerHelper$TimezoneComparator;->this$0:Lcom/android/settings/datetime/ZonePickerHelper;

    invoke-direct {v0, v1}, Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;-><init>(Lcom/android/settings/datetime/ZonePickerHelper;)V

    iput-object v0, p0, Lcom/android/settings/datetime/ZonePickerHelper$TimezoneComparator;->mNameComparator:Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;

    .line 163
    :cond_0
    iget-object p0, p0, Lcom/android/settings/datetime/ZonePickerHelper$TimezoneComparator;->mNameComparator:Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;

    return-object p0
.end method


# virtual methods
.method public compare(Lcom/android/settings/datetime/TimeZoneObj;Lcom/android/settings/datetime/TimeZoneObj;)I
    .locals 4

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-nez p2, :cond_2

    return v1

    .line 153
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/datetime/TimeZoneObj;->getOffset()I

    move-result v2

    .line 154
    invoke-virtual {p2}, Lcom/android/settings/datetime/TimeZoneObj;->getOffset()I

    move-result v3

    if-ge v2, v3, :cond_3

    goto :goto_0

    :cond_3
    if-le v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 156
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/datetime/ZonePickerHelper$TimezoneComparator;->getAlphabetComparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 139
    check-cast p1, Lcom/android/settings/datetime/TimeZoneObj;

    check-cast p2, Lcom/android/settings/datetime/TimeZoneObj;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datetime/ZonePickerHelper$TimezoneComparator;->compare(Lcom/android/settings/datetime/TimeZoneObj;Lcom/android/settings/datetime/TimeZoneObj;)I

    move-result p0

    return p0
.end method
