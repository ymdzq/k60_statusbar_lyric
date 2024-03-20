.class public Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;
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
    name = "AlphabetComparator"
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
.field private final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/settings/datetime/ZonePickerHelper;


# direct methods
.method public constructor <init>(Lcom/android/settings/datetime/ZonePickerHelper;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;->this$0:Lcom/android/settings/datetime/ZonePickerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/datetime/TimeZoneObj;Lcom/android/settings/datetime/TimeZoneObj;)I
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, 0x1

    return p0

    .line 184
    :cond_2
    iget-object p0, p0, Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/settings/datetime/TimeZoneObj;->getCityName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/settings/datetime/TimeZoneObj;->getCityName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 167
    check-cast p1, Lcom/android/settings/datetime/TimeZoneObj;

    check-cast p2, Lcom/android/settings/datetime/TimeZoneObj;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datetime/ZonePickerHelper$AlphabetComparator;->compare(Lcom/android/settings/datetime/TimeZoneObj;Lcom/android/settings/datetime/TimeZoneObj;)I

    move-result p0

    return p0
.end method
