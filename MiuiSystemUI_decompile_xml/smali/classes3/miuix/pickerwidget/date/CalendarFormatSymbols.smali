.class public final Lmiuix/pickerwidget/date/CalendarFormatSymbols;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static INSTANCE:Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;


# instance fields
.field public mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    iput-object p1, p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 9
    return-void
    .line 11
.end method

.method public static getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->INSTANCE:Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;

    .line 6
    invoke-direct {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;-><init>()V

    .line 8
    sput-object v0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->INSTANCE:Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;

    .line 11
    :cond_0
    sget-object v0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->INSTANCE:Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;

    .line 13
    invoke-virtual {v0, p0}, Lmiuix/core/util/SoftReferenceSingleton;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 18
    check-cast p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    .line 19
    return-object p0
    .line 21
.end method
