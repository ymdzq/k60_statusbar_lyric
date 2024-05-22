.class public final Lmiuix/pickerwidget/date/CalendarFormatSymbols$1;
.super Lmiuix/core/util/SoftReferenceSingleton;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final createInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    .line 2
    check-cast p1, Landroid/content/Context;

    .line 4
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;-><init>(Landroid/content/Context;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final updateInstance(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    .line 2
    check-cast p2, Landroid/content/Context;

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    iput-object p0, p1, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    .line 10
    return-void
    .line 12
.end method
