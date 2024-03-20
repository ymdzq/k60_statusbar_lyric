.class public final Landroidx/constraintlayout/widget/StateSet;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mDefaultState:I

.field public final mStateList:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 6
    new-instance v1, Landroid/util/SparseArray;

    .line 8
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 10
    iput-object v1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 13
    const-string v1, "Error parsing XML resource"

    .line 15
    const-string v2, "ConstraintLayoutStates"

    .line 17
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 19
    move-result-object v3

    .line 22
    sget-object v4, Landroidx/constraintlayout/widget/R$styleable;->StateSet:[I

    .line 23
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 25
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 29
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    move v6, v5

    .line 34
    :goto_0
    if-ge v6, v4, :cond_1

    .line 35
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 37
    move-result v7

    .line 40
    if-nez v7, :cond_0

    .line 41
    iget v8, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 43
    invoke-virtual {v3, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 45
    move-result v7

    .line 48
    iput v7, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 49
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 57
    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    const/4 v4, 0x0

    .line 61
    :goto_1
    const/4 v6, 0x1

    .line 62
    if-eq v3, v6, :cond_8

    .line 63
    const-string v7, "StateSet"

    .line 65
    const/4 v8, 0x3

    .line 67
    const/4 v9, 0x2

    .line 68
    if-eq v3, v9, :cond_3

    .line 69
    if-eq v3, v8, :cond_2

    .line 71
    goto/16 :goto_4

    .line 73
    :cond_2
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 78
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v3

    .line 82
    if-eqz v3, :cond_7

    .line 83
    goto/16 :goto_5

    .line 85
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 91
    move-result v10

    .line 94
    sparse-switch v10, :sswitch_data_0

    .line 95
    goto :goto_2

    .line 98
    :sswitch_0
    const-string v6, "Variant"

    .line 99
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v3

    .line 104
    if-eqz v3, :cond_4

    .line 105
    move v6, v8

    .line 107
    goto :goto_3

    .line 108
    :sswitch_1
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v3

    .line 112
    if-eqz v3, :cond_4

    .line 113
    goto :goto_3

    .line 115
    :sswitch_2
    const-string v6, "LayoutDescription"

    .line 116
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v3

    .line 121
    if-eqz v3, :cond_4

    .line 122
    move v6, v5

    .line 124
    goto :goto_3

    .line 125
    :sswitch_3
    const-string v6, "State"

    .line 126
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result v3

    .line 131
    if-eqz v3, :cond_4

    .line 132
    move v6, v9

    .line 134
    goto :goto_3

    .line 135
    :cond_4
    :goto_2
    move v6, v0

    .line 136
    :goto_3
    if-eq v6, v9, :cond_6

    .line 137
    if-eq v6, v8, :cond_5

    .line 139
    goto :goto_4

    .line 141
    :cond_5
    new-instance v3, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 142
    invoke-direct {v3, p1, p2}, Landroidx/constraintlayout/widget/StateSet$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 144
    if-eqz v4, :cond_7

    .line 147
    iget-object v6, v4, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    goto :goto_4

    .line 154
    :cond_6
    new-instance v3, Landroidx/constraintlayout/widget/StateSet$State;

    .line 155
    invoke-direct {v3, p1, p2}, Landroidx/constraintlayout/widget/StateSet$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 157
    iget-object v4, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 160
    iget v6, v3, Landroidx/constraintlayout/widget/StateSet$State;->mId:I

    .line 162
    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    move-object v4, v3

    .line 167
    :cond_7
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 168
    move-result v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    goto :goto_1

    .line 172
    :catch_0
    move-exception p0

    .line 173
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    goto :goto_5

    .line 177
    :catch_1
    move-exception p0

    .line 178
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    :cond_8
    :goto_5
    return-void

    .line 182
    nop

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x4c7d471 -> :sswitch_3
        0x4d92b252 -> :sswitch_2
        0x526c4e31 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
    .line 184
.end method


# virtual methods
.method public final stateGetConstraintID(I)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    int-to-float v1, v0

    .line 3
    iget-object p0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-ne v0, p1, :cond_6

    .line 7
    if-ne p1, v0, :cond_0

    .line 9
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Landroidx/constraintlayout/widget/StateSet$State;

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Landroidx/constraintlayout/widget/StateSet$State;

    .line 22
    :goto_0
    if-nez p0, :cond_1

    .line 24
    goto :goto_6

    .line 26
    :cond_1
    :goto_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v3

    .line 32
    if-ge v2, v3, :cond_3

    .line 33
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 38
    check-cast v3, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 39
    invoke-virtual {v3, v1, v1}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    .line 41
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    goto :goto_2

    .line 47
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_1

    .line 50
    :cond_3
    move v2, v0

    .line 51
    :goto_2
    if-ne v0, v2, :cond_4

    .line 52
    goto :goto_6

    .line 54
    :cond_4
    if-ne v2, v0, :cond_5

    .line 55
    iget p0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 57
    goto :goto_5

    .line 59
    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 63
    check-cast p0, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 64
    iget p0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 66
    goto :goto_5

    .line 68
    :cond_6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object p0

    .line 72
    check-cast p0, Landroidx/constraintlayout/widget/StateSet$State;

    .line 73
    if-nez p0, :cond_7

    .line 75
    goto :goto_6

    .line 77
    :cond_7
    :goto_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 80
    move-result v3

    .line 83
    if-ge v2, v3, :cond_9

    .line 84
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v3

    .line 89
    check-cast v3, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 90
    invoke-virtual {v3, v1, v1}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    .line 92
    move-result v3

    .line 95
    if-eqz v3, :cond_8

    .line 96
    goto :goto_4

    .line 98
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 99
    goto :goto_3

    .line 101
    :cond_9
    move v2, v0

    .line 102
    :goto_4
    if-ne v2, v0, :cond_a

    .line 103
    iget p0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 105
    goto :goto_5

    .line 107
    :cond_a
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object p0

    .line 111
    check-cast p0, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 112
    iget p0, p0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 114
    :goto_5
    move v0, p0

    .line 116
    :goto_6
    return v0
    .line 117
.end method
