.class public Landroidx/leanback/widget/picker/TimePicker;
.super Landroidx/leanback/widget/picker/Picker;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

.field public mColAmPmIndex:I

.field public mColHourIndex:I

.field public mColMinuteIndex:I

.field public final mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

.field public mCurrentAmPmIndex:I

.field public mCurrentHour:I

.field public mCurrentMinute:I

.field public mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

.field public mIs24hFormat:Z

.field public mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

.field public mTimePickerFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040850    # @attr/timePickerStyle

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    new-instance v0, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    invoke-direct {v0, p3}, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;-><init>(Ljava/util/Locale;)V

    .line 6
    iput-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    .line 7
    sget-object v3, Landroidx/leanback/R$styleable;->lbTimePicker:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 8
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    .line 9
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 10
    :try_start_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    .line 11
    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    const/4 p1, 0x1

    const/4 v1, 0x3

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->updateColumns()V

    .line 15
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->updateColumnsRange()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 16
    invoke-static {p1, p3}, Landroidx/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/16 p3, 0xb

    .line 17
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p0, p3}, Landroidx/leanback/widget/picker/TimePicker;->setHour(I)V

    const/16 p3, 0xc

    .line 18
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/picker/TimePicker;->setMinute(I)V

    .line 19
    iget-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-nez p1, :cond_0

    .line 20
    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iget p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    invoke-virtual {p0, p1, p3, p2}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    throw p0
.end method


# virtual methods
.method public getBestHourMinutePattern()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    .line 2
    iget-object v0, v0, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    .line 4
    iget-boolean p0, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const-string p0, "Hma"

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "hma"

    .line 13
    :goto_0
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    const-string p0, "h:mma"

    .line 25
    :cond_1
    return-object p0
    .line 27
.end method

.method public getHour()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget p0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 6
    return p0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    .line 9
    if-nez v0, :cond_1

    .line 11
    iget p0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 13
    rem-int/lit8 p0, p0, 0xc

    .line 15
    return p0

    .line 17
    :cond_1
    iget p0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 18
    rem-int/lit8 p0, p0, 0xc

    .line 20
    add-int/lit8 p0, p0, 0xc

    .line 22
    return p0
.end method

.method public getMinute()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    .line 2
    return p0
    .line 4
.end method

.method public final onColumnValueChanged(II)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    .line 9
    if-ne p1, v0, :cond_1

    .line 11
    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    .line 16
    if-ne p1, v0, :cond_2

    .line 18
    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    .line 20
    :goto_0
    return-void

    .line 22
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string p1, "Invalid column index."

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
    .line 30
.end method

.method public setHour(I)V
    .locals 4

    .line 1
    if-ltz p1, :cond_3

    .line 2
    const/16 v0, 0x17

    .line 4
    if-gt p1, v0, :cond_3

    .line 6
    iput p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 8
    iget-boolean v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    .line 10
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_2

    .line 13
    const/16 v2, 0xc

    .line 15
    if-lt p1, v2, :cond_0

    .line 17
    const/4 v3, 0x1

    .line 19
    iput v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    .line 20
    if-le p1, v2, :cond_1

    .line 22
    sub-int/2addr p1, v2

    .line 24
    iput p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    iput v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    .line 28
    if-nez p1, :cond_1

    .line 30
    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 32
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 34
    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    .line 36
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    .line 38
    invoke-virtual {p0, p1, v0, v1}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    .line 40
    :cond_2
    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    .line 43
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 45
    invoke-virtual {p0, p1, v0, v1}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    .line 47
    return-void

    .line 50
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    const-string v0, "hour: "

    .line 53
    const-string v1, " is not in [0-23] range in"

    .line 55
    invoke-static {v0, p1, v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p0
    .line 64
.end method

.method public setIs24Hour(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getHour()I

    .line 7
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getMinute()I

    .line 11
    move-result v1

    .line 14
    iput-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    .line 15
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->updateColumns()V

    .line 17
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->updateColumnsRange()V

    .line 20
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/picker/TimePicker;->setHour(I)V

    .line 23
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/picker/TimePicker;->setMinute(I)V

    .line 26
    iget-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    .line 29
    if-nez p1, :cond_1

    .line 31
    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    .line 33
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    .line 35
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, p1, v0, v1}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    .line 38
    :cond_1
    return-void
    .line 41
.end method

.method public setMinute(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    const/16 v0, 0x3b

    .line 4
    if-gt p1, v0, :cond_0

    .line 6
    iput p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    .line 8
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, p1, v1}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    .line 13
    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v0, "minute: "

    .line 19
    const-string v1, " is not in [0-59] range."

    .line 21
    invoke-static {v0, p1, v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
    .line 30
.end method

.method public final updateColumns()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mTimePickerFormat:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iput-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mTimePickerFormat:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    iget-object v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    .line 21
    iget-object v1, v1, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 25
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v1, v3

    .line 35
    :goto_0
    const/16 v4, 0x61

    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 38
    move-result v4

    .line 41
    const-string v5, "a"

    .line 42
    if-ltz v4, :cond_3

    .line 44
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 46
    move-result v4

    .line 49
    const-string v6, "m"

    .line 50
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 52
    move-result v0

    .line 55
    if-le v4, v0, :cond_2

    .line 56
    goto :goto_1

    .line 58
    :cond_2
    move v0, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    :goto_1
    move v0, v2

    .line 61
    :goto_2
    if-eqz v1, :cond_4

    .line 62
    const-string v1, "mh"

    .line 64
    goto :goto_3

    .line 66
    :cond_4
    const-string v1, "hm"

    .line 67
    :goto_3
    iget-boolean v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    .line 69
    if-eqz v4, :cond_5

    .line 71
    goto :goto_5

    .line 73
    :cond_5
    if-eqz v0, :cond_6

    .line 74
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 79
    goto :goto_4

    .line 80
    :cond_6
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 84
    :goto_4
    move-object v1, v0

    .line 85
    :goto_5
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    .line 90
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    const/4 v6, 0x7

    .line 100
    new-array v7, v6, [C

    .line 101
    fill-array-data v7, :array_0

    .line 103
    move v8, v3

    .line 106
    move v9, v8

    .line 107
    move v10, v9

    .line 108
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 109
    move-result v11

    .line 112
    if-ge v8, v11, :cond_f

    .line 113
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 115
    move-result v11

    .line 118
    const/16 v12, 0x20

    .line 119
    if-ne v11, v12, :cond_7

    .line 121
    goto :goto_a

    .line 123
    :cond_7
    const/16 v12, 0x27

    .line 124
    if-ne v11, v12, :cond_9

    .line 126
    if-nez v9, :cond_8

    .line 128
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 130
    move v9, v2

    .line 133
    goto :goto_a

    .line 134
    :cond_8
    move v9, v3

    .line 135
    goto :goto_a

    .line 136
    :cond_9
    if-eqz v9, :cond_a

    .line 137
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    goto :goto_9

    .line 142
    :cond_a
    move v12, v3

    .line 143
    :goto_7
    if-ge v12, v6, :cond_c

    .line 144
    aget-char v13, v7, v12

    .line 146
    if-ne v11, v13, :cond_b

    .line 148
    move v12, v2

    .line 150
    goto :goto_8

    .line 151
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 152
    goto :goto_7

    .line 154
    :cond_c
    move v12, v3

    .line 155
    :goto_8
    if-eqz v12, :cond_d

    .line 156
    if-eq v11, v10, :cond_e

    .line 158
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v10

    .line 163
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 167
    goto :goto_9

    .line 170
    :cond_d
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    :cond_e
    :goto_9
    move v10, v11

    .line 174
    :goto_a
    add-int/lit8 v8, v8, 0x1

    .line 175
    goto :goto_6

    .line 177
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 181
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 185
    move-result v0

    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 189
    move-result v5

    .line 192
    add-int/2addr v5, v2

    .line 193
    if-ne v0, v5, :cond_16

    .line 194
    invoke-virtual {p0, v4}, Landroidx/leanback/widget/picker/Picker;->setSeparators(Ljava/util/List;)V

    .line 196
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    .line 199
    iget-object v0, v0, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 206
    const/4 v1, 0x0

    .line 207
    iput-object v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    .line 208
    iput-object v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    .line 210
    iput-object v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    .line 212
    const/4 v1, -0x1

    .line 214
    iput v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    .line 215
    iput v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    .line 217
    iput v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    .line 221
    const/4 v4, 0x3

    .line 223
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    move v4, v3

    .line 227
    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 228
    move-result v5

    .line 231
    if-ge v4, v5, :cond_15

    .line 232
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 234
    move-result v5

    .line 237
    const/16 v6, 0x41

    .line 238
    if-eq v5, v6, :cond_12

    .line 240
    const/16 v6, 0x48

    .line 242
    if-eq v5, v6, :cond_11

    .line 244
    const/16 v6, 0x4d

    .line 246
    if-ne v5, v6, :cond_10

    .line 248
    new-instance v5, Landroidx/leanback/widget/picker/PickerColumn;

    .line 250
    invoke-direct {v5}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    .line 252
    iput-object v5, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    .line 255
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v5, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    .line 260
    iget-object v6, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    .line 262
    iget-object v6, v6, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->minutes:[Ljava/lang/String;

    .line 264
    iput-object v6, v5, Landroidx/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    .line 266
    iput v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    .line 268
    goto :goto_c

    .line 270
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 271
    const-string v0, "Invalid time picker format."

    .line 273
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 275
    throw p0

    .line 278
    :cond_11
    new-instance v5, Landroidx/leanback/widget/picker/PickerColumn;

    .line 279
    invoke-direct {v5}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    .line 281
    iput-object v5, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    .line 284
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v5, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    .line 289
    iget-object v6, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    .line 291
    iget-object v6, v6, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->hours24:[Ljava/lang/String;

    .line 293
    iput-object v6, v5, Landroidx/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    .line 295
    iput v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    .line 297
    goto :goto_c

    .line 299
    :cond_12
    new-instance v5, Landroidx/leanback/widget/picker/PickerColumn;

    .line 300
    invoke-direct {v5}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    .line 302
    iput-object v5, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    .line 305
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v5, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    .line 310
    iget-object v6, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    .line 312
    iget-object v6, v6, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->ampm:[Ljava/lang/String;

    .line 314
    iput-object v6, v5, Landroidx/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    .line 316
    iput v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    .line 318
    iget v6, v5, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 320
    if-eqz v6, :cond_13

    .line 322
    iput v3, v5, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 324
    :cond_13
    iget v6, v5, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 326
    if-eq v2, v6, :cond_14

    .line 328
    iput v2, v5, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 330
    :cond_14
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 332
    goto :goto_b

    .line 334
    :cond_15
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/picker/Picker;->setColumns(Ljava/util/List;)V

    .line 335
    return-void

    .line 338
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    .line 341
    const-string v2, "Separators size: "

    .line 343
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 348
    move-result v2

    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    const-string v2, " must equal the size of timeFieldsPattern: "

    .line 355
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 360
    move-result v1

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    const-string v1, " + 1"

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    move-result-object v0

    .line 375
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 376
    throw p0

    .line 379
    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
        0x6ds
        0x4ds
        0x61s
    .end array-data
    .line 380
.end method

.method public final updateColumnsRange()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    .line 2
    iget-boolean v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    .line 4
    xor-int/lit8 v2, v1, 0x1

    .line 6
    iget v3, v0, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 8
    if-eq v2, v3, :cond_0

    .line 10
    iput v2, v0, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 12
    :cond_0
    if-eqz v1, :cond_1

    .line 14
    const/16 v1, 0x17

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0xc

    .line 19
    :goto_0
    iget v2, v0, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 21
    if-eq v1, v2, :cond_2

    .line 23
    iput v1, v0, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 25
    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    .line 27
    iget v1, v0, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 29
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_3

    .line 32
    iput v2, v0, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 34
    :cond_3
    iget v1, v0, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 36
    const/16 v3, 0x3b

    .line 38
    if-eq v3, v1, :cond_4

    .line 40
    iput v3, v0, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 42
    :cond_4
    iget-object p0, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    .line 44
    if-eqz p0, :cond_6

    .line 46
    iget v0, p0, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 48
    if-eqz v0, :cond_5

    .line 50
    iput v2, p0, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 52
    :cond_5
    iget v0, p0, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 54
    const/4 v1, 0x1

    .line 56
    if-eq v1, v0, :cond_6

    .line 57
    iput v1, p0, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 59
    :cond_6
    return-void
    .line 61
.end method
