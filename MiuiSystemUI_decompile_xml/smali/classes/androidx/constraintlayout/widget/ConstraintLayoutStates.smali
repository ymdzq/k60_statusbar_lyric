.class public final Landroidx/constraintlayout/widget/ConstraintLayoutStates;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mConstraintSetMap:Landroid/util/SparseArray;

.field public mCurrentConstraintNumber:I

.field public mCurrentStateId:I

.field public final mStateList:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    .line 6
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 8
    new-instance v1, Landroid/util/SparseArray;

    .line 10
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 12
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    .line 15
    new-instance v1, Landroid/util/SparseArray;

    .line 17
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 19
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 22
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 24
    const-string p2, "Error parsing resource: "

    .line 26
    const-string v1, "ConstraintLayoutStates"

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 34
    move-result-object v2

    .line 37
    :try_start_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 38
    move-result v3

    .line 41
    const/4 v4, 0x0

    .line 42
    :goto_0
    const/4 v5, 0x1

    .line 43
    if-eq v3, v5, :cond_6

    .line 44
    const/4 v6, 0x2

    .line 46
    if-eq v3, v6, :cond_0

    .line 47
    goto/16 :goto_3

    .line 49
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 55
    move-result v7

    .line 58
    const/4 v8, 0x4

    .line 59
    const/4 v9, 0x3

    .line 60
    sparse-switch v7, :sswitch_data_0

    .line 61
    goto :goto_1

    .line 64
    :sswitch_0
    const-string v5, "Variant"

    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    move v5, v9

    .line 73
    goto :goto_2

    .line 74
    :sswitch_1
    const-string v5, "layoutDescription"

    .line 75
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v3

    .line 80
    if-eqz v3, :cond_1

    .line 81
    const/4 v5, 0x0

    .line 83
    goto :goto_2

    .line 84
    :sswitch_2
    const-string v7, "StateSet"

    .line 85
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v3

    .line 90
    if-eqz v3, :cond_1

    .line 91
    goto :goto_2

    .line 93
    :sswitch_3
    const-string v5, "State"

    .line 94
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v3

    .line 99
    if-eqz v3, :cond_1

    .line 100
    move v5, v6

    .line 102
    goto :goto_2

    .line 103
    :sswitch_4
    const-string v5, "ConstraintSet"

    .line 104
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v3

    .line 109
    if-eqz v3, :cond_1

    .line 110
    move v5, v8

    .line 112
    goto :goto_2

    .line 113
    :cond_1
    :goto_1
    move v5, v0

    .line 114
    :goto_2
    if-eq v5, v6, :cond_4

    .line 115
    if-eq v5, v9, :cond_3

    .line 117
    if-eq v5, v8, :cond_2

    .line 119
    goto :goto_3

    .line 121
    :cond_2
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 122
    goto :goto_3

    .line 125
    :cond_3
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 126
    invoke-direct {v3, p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 128
    if-eqz v4, :cond_5

    .line 131
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    goto :goto_3

    .line 138
    :cond_4
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    .line 139
    invoke-direct {v3, p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 141
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    .line 144
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mId:I

    .line 146
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    move-object v4, v3

    .line 151
    :cond_5
    :goto_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 152
    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 156
    :catch_0
    move-exception p0

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 158
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object p1

    .line 169
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    goto :goto_4

    .line 173
    :catch_1
    move-exception p0

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object p1

    .line 186
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    :cond_6
    :goto_4
    return-void

    .line 190
    nop

    .line 191
    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
    .line 192
.end method


# virtual methods
.method public final parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_5

    .line 12
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 17
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 18
    move-result-object v4

    .line 21
    if-eqz v3, :cond_4

    .line 22
    if-nez v4, :cond_0

    .line 24
    goto :goto_3

    .line 26
    :cond_0
    const-string v5, "id"

    .line 27
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v3

    .line 32
    if-eqz v3, :cond_4

    .line 33
    const-string v1, "/"

    .line 35
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v1

    .line 40
    const/4 v2, 0x1

    .line 41
    const/4 v3, -0x1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    const/16 v1, 0x2f

    .line 45
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    .line 47
    move-result v1

    .line 50
    add-int/2addr v1, v2

    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object v6

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 60
    move-result-object v7

    .line 63
    invoke-virtual {v6, v1, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    move-result v1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v1, v3

    .line 69
    :goto_1
    if-ne v1, v3, :cond_3

    .line 70
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 72
    move-result v3

    .line 75
    if-le v3, v2, :cond_2

    .line 76
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 82
    move-result v1

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    const-string v2, "ConstraintLayoutStates"

    .line 87
    const-string v3, "error in parsing id"

    .line 89
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_3
    :goto_2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 94
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 97
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    goto :goto_4

    .line 102
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 103
    goto :goto_0

    .line 105
    :cond_5
    :goto_4
    return-void
    .line 106
.end method

.method public final updateConstraints(FFI)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    const/4 v4, -0x1

    .line 9
    if-ne v0, p3, :cond_8

    .line 10
    if-ne p3, v4, :cond_0

    .line 12
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    move-result-object p3

    .line 17
    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p3

    .line 24
    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    .line 25
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 27
    if-eq v0, v4, :cond_1

    .line 29
    iget-object v1, p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 37
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    return-void

    .line 45
    :cond_1
    :goto_1
    iget-object v0, p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v1

    .line 51
    if-ge v2, v1, :cond_3

    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 58
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

    .line 60
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    goto :goto_2

    .line 66
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_1

    .line 69
    :cond_3
    move v2, v4

    .line 70
    :goto_2
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 71
    if-ne p1, v2, :cond_4

    .line 73
    return-void

    .line 75
    :cond_4
    iget-object p1, p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 76
    if-ne v2, v4, :cond_5

    .line 78
    const/4 p2, 0x0

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object p2

    .line 85
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 86
    iget-object p2, p2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 88
    :goto_3
    if-ne v2, v4, :cond_6

    .line 90
    goto :goto_4

    .line 92
    :cond_6
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 96
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 97
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    .line 99
    :goto_4
    if-nez p2, :cond_7

    .line 101
    return-void

    .line 103
    :cond_7
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 104
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 106
    goto :goto_9

    .line 109
    :cond_8
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    .line 110
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object p3

    .line 115
    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    .line 116
    :goto_5
    iget-object v0, p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 120
    move-result v1

    .line 123
    if-ge v2, v1, :cond_a

    .line 124
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 129
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 130
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

    .line 132
    move-result v0

    .line 135
    if-eqz v0, :cond_9

    .line 136
    goto :goto_6

    .line 138
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 139
    goto :goto_5

    .line 141
    :cond_a
    move v2, v4

    .line 142
    :goto_6
    iget-object p1, p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 143
    if-ne v2, v4, :cond_b

    .line 145
    iget-object p2, p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 147
    goto :goto_7

    .line 149
    :cond_b
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object p2

    .line 153
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 154
    iget-object p2, p2, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 156
    :goto_7
    if-ne v2, v4, :cond_c

    .line 158
    goto :goto_8

    .line 160
    :cond_c
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    move-result-object p1

    .line 164
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 165
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    .line 167
    :goto_8
    if-nez p2, :cond_d

    .line 169
    return-void

    .line 171
    :cond_d
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 172
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 174
    :goto_9
    return-void
    .line 177
.end method
