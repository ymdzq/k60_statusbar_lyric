.class public final Landroidx/slice/core/SliceActionImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/slice/core/SliceAction;


# instance fields
.field public final mAction:Landroid/app/PendingIntent;

.field public final mActionItem:Landroidx/slice/SliceItem;

.field public final mActionKey:Ljava/lang/String;

.field public final mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

.field public final mContentDescription:Ljava/lang/CharSequence;

.field public final mDateTimeMillis:J

.field public final mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field public final mImageMode:I

.field public mIsActivity:Z

.field public final mIsChecked:Z

.field public final mPriority:I

.field public final mSliceItem:Landroidx/slice/SliceItem;

.field public final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 3
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->DEFAULT:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Landroidx/slice/core/SliceActionImpl;->mDateTimeMillis:J

    .line 6
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 7
    iput-object p2, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 8
    iput-object p4, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 9
    iput p3, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    return-void
.end method

.method public constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 9

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 11
    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 12
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->DEFAULT:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    const-wide/16 v2, -0x1

    .line 14
    iput-wide v2, p0, Landroidx/slice/core/SliceActionImpl;->mDateTimeMillis:J

    .line 15
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    const-string v2, "action"

    const/4 v3, 0x0

    .line 16
    invoke-static {p1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 17
    :cond_0
    iput-object v2, p0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    .line 18
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 19
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string v5, "image"

    .line 20
    invoke-static {v4, v5, v3, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 21
    iget-object v4, v3, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v4, Landroidx/core/graphics/drawable/IconCompat;

    .line 22
    iput-object v4, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 23
    invoke-static {v3}, Landroidx/slice/core/SliceActionImpl;->parseImageMode(Landroidx/slice/SliceItem;)I

    move-result v3

    iput v3, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 24
    :cond_1
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v3

    const-string/jumbo v4, "text"

    const-string/jumbo v5, "title"

    invoke-static {v3, v4, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 25
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 26
    :cond_2
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v3

    const-string v5, "content_description"

    invoke-static {v3, v4, v5}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 27
    iget-object v3, v3, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .line 28
    iput-object v3, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 29
    :cond_3
    iget-object v3, v2, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 30
    iput-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    goto/16 :goto_2

    .line 31
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x33c144ac    # -4.9999184E7f

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v6, :cond_9

    const v6, 0x2d3f6240

    if-eq v5, v6, :cond_7

    const v6, 0x4a87b63f    # 4447007.5f

    if-eq v5, v6, :cond_5

    goto :goto_0

    :cond_5
    const-string v5, "date_picker"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    move v3, v7

    goto :goto_1

    :cond_7
    const-string/jumbo v5, "time_picker"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    move v3, v8

    goto :goto_1

    :cond_9
    const-string/jumbo v5, "toggle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_d

    const-string v5, "millis"

    const-string v6, "long"

    if-eq v3, v8, :cond_c

    if-eq v3, v7, :cond_b

    .line 32
    iput-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    goto :goto_2

    .line 33
    :cond_b
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->DATE_PICKER:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 34
    invoke-static {v2, v6, v5}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 35
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/slice/core/SliceActionImpl;->mDateTimeMillis:J

    goto :goto_2

    .line 36
    :cond_c
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->TIME_PICKER:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 37
    invoke-static {v2, v6, v5}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 38
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/slice/core/SliceActionImpl;->mDateTimeMillis:J

    goto :goto_2

    .line 39
    :cond_d
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->TOGGLE:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    const-string/jumbo v0, "selected"

    .line 40
    invoke-virtual {v2, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    :cond_e
    :goto_2
    const-string v0, "activity"

    .line 41
    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/slice/core/SliceActionImpl;->mIsActivity:Z

    .line 42
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    const-string v0, "int"

    const-string v3, "priority"

    invoke-static {p1, v0, v3}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 43
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    :cond_f
    iput v1, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 44
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    const-string v0, "action_key"

    invoke-static {p1, v4, v0}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 45
    iget-object p1, p1, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mActionKey:Ljava/lang/String;

    :cond_10
    return-void
.end method

.method public static parseImageMode(Landroidx/slice/SliceItem;)I
    .locals 2

    .line 1
    const-string/jumbo v0, "show_label"

    .line 2
    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p0, 0x6

    .line 11
    return p0

    .line 12
    :cond_0
    const-string v0, "no_tint"

    .line 13
    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    const-string v0, "raw"

    .line 23
    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 28
    const-string v1, "large"

    .line 29
    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {p0, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 33
    move-result p0

    .line 36
    if-eqz p0, :cond_2

    .line 37
    const/4 p0, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p0, 0x3

    .line 41
    :goto_0
    return p0

    .line 42
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 43
    move-result p0

    .line 46
    if-eqz p0, :cond_4

    .line 47
    const/4 p0, 0x2

    .line 49
    return p0

    .line 50
    :cond_4
    const/4 p0, 0x1

    .line 51
    return p0
    .line 52
.end method


# virtual methods
.method public final buildSliceContent(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice$Builder;
    .locals 7

    .line 1
    new-instance v0, Landroidx/slice/Slice$Builder;

    .line 2
    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 4
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    iget-object v3, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 9
    if-eqz v3, :cond_2

    .line 11
    const/4 v4, 0x6

    .line 13
    iget v5, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 14
    if-ne v5, v4, :cond_0

    .line 16
    const-string/jumbo v4, "show_label"

    .line 18
    filled-new-array {v4}, [Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-nez v5, :cond_1

    .line 26
    new-array v4, v2, [Ljava/lang/String;

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    const-string v4, "no_tint"

    .line 31
    filled-new-array {v4}, [Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 36
    :goto_0
    invoke-virtual {v0, v3, v1, v4}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    :cond_2
    iget-object v3, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 40
    if-eqz v3, :cond_3

    .line 42
    const-string/jumbo v4, "title"

    .line 44
    filled-new-array {v4}, [Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 50
    invoke-virtual {v0, v3, v1, v4}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)V

    .line 51
    :cond_3
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 54
    if-eqz v1, :cond_4

    .line 56
    const-string v3, "content_description"

    .line 58
    new-array v4, v2, [Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1, v3, v4}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    :cond_4
    iget-wide v3, p0, Landroidx/slice/core/SliceActionImpl;->mDateTimeMillis:J

    .line 65
    const-wide/16 v5, -0x1

    .line 67
    cmp-long v1, v3, v5

    .line 69
    if-eqz v1, :cond_5

    .line 71
    const-string v1, "millis"

    .line 73
    new-array v5, v2, [Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v3, v4, v1, v5}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)V

    .line 77
    :cond_5
    sget-object v1, Landroidx/slice/core/SliceActionImpl$ActionType;->TOGGLE:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 80
    iget-object v3, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 82
    if-ne v3, v1, :cond_6

    .line 84
    iget-boolean v1, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    .line 86
    if-eqz v1, :cond_6

    .line 88
    const-string/jumbo v1, "selected"

    .line 90
    filled-new-array {v1}, [Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    .line 97
    :cond_6
    const/4 v1, -0x1

    .line 100
    iget v3, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 101
    if-eq v3, v1, :cond_7

    .line 103
    const-string v1, "priority"

    .line 105
    new-array v4, v2, [Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v3, v1, v4}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)V

    .line 109
    :cond_7
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mActionKey:Ljava/lang/String;

    .line 112
    if-eqz v1, :cond_8

    .line 114
    const-string v3, "action_key"

    .line 116
    new-array v2, v2, [Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1, v3, v2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    :cond_8
    iget-boolean p0, p0, Landroidx/slice/core/SliceActionImpl;->mIsActivity:Z

    .line 123
    if-eqz p0, :cond_9

    .line 125
    const-string p0, "activity"

    .line 127
    filled-new-array {p0}, [Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 132
    invoke-virtual {p1, p0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    .line 133
    :cond_9
    return-object v0
    .line 136
.end method

.method public final getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getImageMode()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPriority()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 2
    return p0
    .line 4
.end method

.method public final getSubtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_2

    .line 9
    const/4 v0, 0x2

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    const/4 v0, 0x3

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string/jumbo p0, "time_picker"

    .line 19
    return-object p0

    .line 22
    :cond_1
    const-string p0, "date_picker"

    .line 23
    return-object p0

    .line 25
    :cond_2
    const-string/jumbo p0, "toggle"

    .line 26
    return-object p0
    .line 29
.end method

.method public final isDefaultToggle()Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->TOGGLE:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 2
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 4
    if-ne v1, v0, :cond_0

    .line 6
    iget-object p0, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 8
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final isToggle()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->TOGGLE:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 2
    iget-object p0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 4
    if-ne p0, v0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method
