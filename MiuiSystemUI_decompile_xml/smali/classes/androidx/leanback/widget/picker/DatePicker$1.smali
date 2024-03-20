.class public final Landroidx/leanback/widget/picker/DatePicker$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/picker/DatePicker;

.field public final synthetic val$animation:Z


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/picker/DatePicker;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/picker/DatePicker$1;->this$0:Landroidx/leanback/widget/picker/DatePicker;

    .line 2
    iput-boolean p2, p0, Landroidx/leanback/widget/picker/DatePicker$1;->val$animation:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker$1;->this$0:Landroidx/leanback/widget/picker/DatePicker;

    .line 2
    iget-boolean p0, p0, Landroidx/leanback/widget/picker/DatePicker$1;->val$animation:Z

    .line 4
    iget v1, v0, Landroidx/leanback/widget/picker/DatePicker;->mColDayIndex:I

    .line 6
    iget v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    .line 8
    iget v3, v0, Landroidx/leanback/widget/picker/DatePicker;->mColYearIndex:I

    .line 10
    filled-new-array {v1, v2, v3}, [I

    .line 12
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x2

    .line 17
    move v4, v2

    .line 18
    move v5, v4

    .line 19
    :goto_0
    if-ltz v3, :cond_9

    .line 20
    aget v6, v1, v3

    .line 22
    if-gez v6, :cond_0

    .line 24
    goto/16 :goto_7

    .line 26
    :cond_0
    sget-object v7, Landroidx/leanback/widget/picker/DatePicker;->DATE_FIELDS:[I

    .line 28
    aget v7, v7, v3

    .line 30
    iget-object v8, v0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    .line 32
    if-nez v8, :cond_1

    .line 34
    const/4 v6, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v6

    .line 41
    check-cast v6, Landroidx/leanback/widget/picker/PickerColumn;

    .line 42
    :goto_1
    const/4 v8, 0x0

    .line 44
    if-eqz v4, :cond_3

    .line 45
    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    .line 47
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    .line 49
    move-result v9

    .line 52
    iget v10, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 53
    if-eq v9, v10, :cond_2

    .line 55
    iput v9, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 57
    :goto_2
    move v9, v2

    .line 59
    goto :goto_3

    .line 60
    :cond_2
    move v9, v8

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 63
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    .line 65
    move-result v9

    .line 68
    iget v10, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 69
    if-eq v9, v10, :cond_2

    .line 71
    iput v9, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 73
    goto :goto_2

    .line 75
    :goto_3
    or-int/2addr v9, v8

    .line 76
    if-eqz v5, :cond_5

    .line 77
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 79
    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    .line 81
    move-result v10

    .line 84
    iget v11, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 85
    if-eq v10, v11, :cond_4

    .line 87
    iput v10, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 89
    :goto_4
    move v10, v2

    .line 91
    goto :goto_5

    .line 92
    :cond_4
    move v10, v8

    .line 93
    goto :goto_5

    .line 94
    :cond_5
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 95
    invoke-virtual {v10, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 97
    move-result v10

    .line 100
    iget v11, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 101
    if-eq v10, v11, :cond_4

    .line 103
    iput v10, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 105
    goto :goto_4

    .line 107
    :goto_5
    or-int/2addr v9, v10

    .line 108
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 109
    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    .line 111
    move-result v10

    .line 114
    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    .line 115
    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    .line 117
    move-result v11

    .line 120
    if-ne v10, v11, :cond_6

    .line 121
    move v10, v2

    .line 123
    goto :goto_6

    .line 124
    :cond_6
    move v10, v8

    .line 125
    :goto_6
    and-int/2addr v4, v10

    .line 126
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 127
    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    .line 129
    move-result v10

    .line 132
    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 133
    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    .line 135
    move-result v11

    .line 138
    if-ne v10, v11, :cond_7

    .line 139
    move v8, v2

    .line 141
    :cond_7
    and-int/2addr v5, v8

    .line 142
    if-eqz v9, :cond_8

    .line 143
    aget v8, v1, v3

    .line 145
    invoke-virtual {v0, v8, v6}, Landroidx/leanback/widget/picker/Picker;->setColumnAt(ILandroidx/leanback/widget/picker/PickerColumn;)V

    .line 147
    :cond_8
    aget v6, v1, v3

    .line 150
    iget-object v8, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 152
    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    .line 154
    move-result v7

    .line 157
    invoke-virtual {v0, v6, v7, p0}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    .line 158
    :goto_7
    add-int/lit8 v3, v3, -0x1

    .line 161
    goto/16 :goto_0

    .line 163
    :cond_9
    return-void
    .line 165
.end method
