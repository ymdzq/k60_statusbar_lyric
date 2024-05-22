.class public final Landroidx/leanback/widget/picker/PickerUtility$DateConstant;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final locale:Ljava/util/Locale;

.field public final months:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    .line 5
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->months:[Ljava/lang/String;

    .line 15
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 17
    move-result-object p0

    .line 20
    const/4 p1, 0x5

    .line 21
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    .line 22
    move-result v0

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    .line 26
    move-result p0

    .line 29
    invoke-static {v0, p0}, Landroidx/leanback/widget/picker/PickerUtility;->createStringIntArrays(II)[Ljava/lang/String;

    .line 30
    return-void
    .line 33
.end method
