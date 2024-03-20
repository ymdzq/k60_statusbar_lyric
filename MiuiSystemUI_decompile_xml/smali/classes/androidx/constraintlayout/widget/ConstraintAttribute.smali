.class public final Landroidx/constraintlayout/widget/ConstraintAttribute;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBooleanValue:Z

.field public mColorValue:I

.field public mFloatValue:F

.field public mIntegerValue:I

.field public final mMethod:Z

.field public final mName:Ljava/lang/String;

.field public mStringValue:Ljava/lang/String;

.field public final mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    .line 9
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 10
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 11
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;Ljava/lang/Object;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    .line 3
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 5
    iput-boolean p4, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    .line 6
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 13

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    move-result-object p1

    .line 5
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute:[I

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    move-object v3, v1

    .line 18
    move-object v4, v3

    .line 19
    move v5, v2

    .line 20
    move v6, v5

    .line 21
    :goto_0
    if-ge v5, v0, :cond_c

    .line 22
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 24
    move-result v7

    .line 27
    const/4 v8, 0x1

    .line 28
    if-nez v7, :cond_0

    .line 29
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 34
    if-eqz v1, :cond_b

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 37
    move-result v7

    .line 40
    if-lez v7, :cond_b

    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 48
    move-result v9

    .line 51
    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    .line 52
    move-result v9

    .line 55
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 62
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 69
    goto/16 :goto_3

    .line 70
    :cond_0
    const/16 v9, 0xa

    .line 72
    if-ne v7, v9, :cond_1

    .line 74
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 79
    move v6, v8

    .line 80
    goto/16 :goto_3

    .line 81
    :cond_1
    if-ne v7, v8, :cond_2

    .line 83
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 85
    move-result v3

    .line 88
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    move-result-object v3

    .line 92
    sget-object v4, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 93
    goto/16 :goto_3

    .line 95
    :cond_2
    const/4 v9, 0x3

    .line 97
    if-ne v7, v9, :cond_3

    .line 98
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 100
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 102
    move-result v4

    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v4

    .line 109
    :goto_1
    move-object v12, v4

    .line 110
    move-object v4, v3

    .line 111
    move-object v3, v12

    .line 112
    goto/16 :goto_3

    .line 113
    :cond_3
    const/4 v9, 0x2

    .line 115
    if-ne v7, v9, :cond_4

    .line 116
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 118
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 120
    move-result v4

    .line 123
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v4

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    const/4 v9, 0x7

    .line 129
    const/4 v10, 0x0

    .line 130
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 131
    if-ne v7, v9, :cond_5

    .line 133
    invoke-virtual {p1, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 135
    move-result v3

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 143
    move-result-object v4

    .line 146
    invoke-static {v8, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 147
    move-result v3

    .line 150
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 151
    move-result-object v3

    .line 154
    :goto_2
    move-object v4, v11

    .line 155
    goto :goto_3

    .line 156
    :cond_5
    const/4 v8, 0x4

    .line 157
    if-ne v7, v8, :cond_6

    .line 158
    invoke-virtual {p1, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 160
    move-result v3

    .line 163
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 164
    move-result-object v3

    .line 167
    goto :goto_2

    .line 168
    :cond_6
    const/4 v8, 0x5

    .line 169
    if-ne v7, v8, :cond_7

    .line 170
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 172
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 174
    invoke-virtual {p1, v7, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 176
    move-result v4

    .line 179
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 180
    move-result-object v4

    .line 183
    goto :goto_1

    .line 184
    :cond_7
    const/4 v8, 0x6

    .line 185
    const/4 v9, -0x1

    .line 186
    if-ne v7, v8, :cond_8

    .line 187
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 189
    invoke-virtual {p1, v7, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 191
    move-result v4

    .line 194
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object v4

    .line 198
    goto :goto_1

    .line 199
    :cond_8
    const/16 v8, 0x9

    .line 200
    if-ne v7, v8, :cond_9

    .line 202
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 204
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 206
    move-result-object v4

    .line 209
    goto :goto_1

    .line 210
    :cond_9
    const/16 v8, 0x8

    .line 211
    if-ne v7, v8, :cond_b

    .line 213
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->REFERENCE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 215
    invoke-virtual {p1, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 217
    move-result v4

    .line 220
    if-ne v4, v9, :cond_a

    .line 221
    invoke-virtual {p1, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 223
    move-result v4

    .line 226
    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    move-result-object v4

    .line 230
    goto :goto_1

    .line 231
    :cond_b
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 232
    goto/16 :goto_0

    .line 234
    :cond_c
    if-eqz v1, :cond_d

    .line 236
    if-eqz v3, :cond_d

    .line 238
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 240
    invoke-direct {p0, v1, v4, v3, v6}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;Ljava/lang/Object;Z)V

    .line 242
    invoke-virtual {p2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    return-void
    .line 251
.end method

.method public static setAttributes(Landroid/view/View;Ljava/util/HashMap;)V
    .locals 12

    .line 1
    const-string v0, "\" not found on "

    .line 2
    const-string v1, " Custom Attribute \""

    .line 4
    const-string v2, "TransitionLayout"

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v3

    .line 11
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 12
    move-result-object v4

    .line 15
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v4

    .line 19
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v5

    .line 23
    if-eqz v5, :cond_1

    .line 24
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v5

    .line 29
    check-cast v5, Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v6

    .line 35
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 36
    iget-boolean v7, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    .line 38
    if-nez v7, :cond_0

    .line 40
    const-string/jumbo v7, "set"

    .line 42
    invoke-static {v7, v5}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v7

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    move-object v7, v5

    .line 50
    :goto_1
    :try_start_0
    iget-object v8, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 51
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 53
    move-result v8

    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v10, 0x1

    .line 58
    packed-switch v8, :pswitch_data_0

    .line 59
    goto :goto_0

    .line 62
    :pswitch_0
    new-array v8, v10, [Ljava/lang/Class;

    .line 63
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 65
    aput-object v11, v8, v9

    .line 67
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    move-result-object v8

    .line 72
    new-array v10, v10, [Ljava/lang/Object;

    .line 73
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v6

    .line 80
    aput-object v6, v10, v9

    .line 81
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    goto :goto_0

    .line 86
    :pswitch_1
    new-array v8, v10, [Ljava/lang/Class;

    .line 87
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 89
    aput-object v11, v8, v9

    .line 91
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 93
    move-result-object v8

    .line 96
    new-array v10, v10, [Ljava/lang/Object;

    .line 97
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 99
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 101
    move-result-object v6

    .line 104
    aput-object v6, v10, v9

    .line 105
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    goto :goto_0

    .line 110
    :pswitch_2
    new-array v8, v10, [Ljava/lang/Class;

    .line 111
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 113
    aput-object v11, v8, v9

    .line 115
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 117
    move-result-object v8

    .line 120
    new-array v10, v10, [Ljava/lang/Object;

    .line 121
    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    .line 123
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 125
    move-result-object v6

    .line 128
    aput-object v6, v10, v9

    .line 129
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    goto :goto_0

    .line 134
    :pswitch_3
    new-array v8, v10, [Ljava/lang/Class;

    .line 135
    const-class v11, Ljava/lang/CharSequence;

    .line 137
    aput-object v11, v8, v9

    .line 139
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 141
    move-result-object v8

    .line 144
    new-array v10, v10, [Ljava/lang/Object;

    .line 145
    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    .line 147
    aput-object v6, v10, v9

    .line 149
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    goto/16 :goto_0

    .line 154
    :pswitch_4
    new-array v8, v10, [Ljava/lang/Class;

    .line 156
    const-class v10, Landroid/graphics/drawable/Drawable;

    .line 158
    aput-object v10, v8, v9

    .line 160
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 162
    move-result-object v8

    .line 165
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    .line 166
    invoke-direct {v9}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 168
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    .line 171
    invoke-virtual {v9, v6}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 173
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 176
    move-result-object v6

    .line 179
    invoke-virtual {v8, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    goto/16 :goto_0

    .line 183
    :pswitch_5
    new-array v8, v10, [Ljava/lang/Class;

    .line 185
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 187
    aput-object v11, v8, v9

    .line 189
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 191
    move-result-object v8

    .line 194
    new-array v10, v10, [Ljava/lang/Object;

    .line 195
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    .line 197
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    move-result-object v6

    .line 202
    aput-object v6, v10, v9

    .line 203
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    goto/16 :goto_0

    .line 208
    :pswitch_6
    new-array v8, v10, [Ljava/lang/Class;

    .line 210
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 212
    aput-object v11, v8, v9

    .line 214
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 216
    move-result-object v8

    .line 219
    new-array v10, v10, [Ljava/lang/Object;

    .line 220
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 222
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 224
    move-result-object v6

    .line 227
    aput-object v6, v10, v9

    .line 228
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    goto/16 :goto_0

    .line 233
    :pswitch_7
    new-array v8, v10, [Ljava/lang/Class;

    .line 235
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 237
    aput-object v11, v8, v9

    .line 239
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 241
    move-result-object v8

    .line 244
    new-array v10, v10, [Ljava/lang/Object;

    .line 245
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    .line 247
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    move-result-object v6

    .line 252
    aput-object v6, v10, v9

    .line 253
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto/16 :goto_0

    .line 258
    :catch_0
    move-exception v6

    .line 260
    invoke-static {v1, v5, v0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    move-result-object v5

    .line 264
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 265
    move-result-object v7

    .line 268
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object v5

    .line 275
    invoke-static {v2, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    goto/16 :goto_0

    .line 279
    :catch_1
    move-exception v6

    .line 281
    invoke-static {v1, v5, v0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    move-result-object v5

    .line 285
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 286
    move-result-object v7

    .line 289
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object v5

    .line 296
    invoke-static {v2, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    goto/16 :goto_0

    .line 300
    :catch_2
    move-exception v5

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    .line 303
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 308
    move-result-object v8

    .line 311
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v8, " must have a method "

    .line 315
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    move-result-object v6

    .line 326
    invoke-static {v2, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    goto/16 :goto_0

    .line 330
    :cond_1
    return-void

    .line 332
    nop

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 334
.end method


# virtual methods
.method public final getValueToInterpolate()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 11
    return p0

    .line 13
    :pswitch_0
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 14
    return p0

    .line 16
    :pswitch_1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    .line 17
    int-to-float p0, p0

    .line 19
    return p0

    .line 20
    :pswitch_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 21
    const-string v0, "Color does not have a single color to interpolate"

    .line 23
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 28
    :pswitch_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 29
    const-string v0, "Cannot interpolate String"

    .line 31
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0

    .line 36
    :pswitch_4
    iget-boolean p0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    .line 37
    if-eqz p0, :cond_0

    .line 39
    const/high16 p0, 0x3f800000    # 1.0f

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    :goto_0
    return p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
    .line 46
.end method

.method public final getValuesToInterpolate([F)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    goto :goto_1

    .line 12
    :pswitch_0
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 13
    aput p0, p1, v1

    .line 15
    goto :goto_1

    .line 17
    :pswitch_1
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 18
    aput p0, p1, v1

    .line 20
    goto :goto_1

    .line 22
    :pswitch_2
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    .line 23
    int-to-float p0, p0

    .line 25
    aput p0, p1, v1

    .line 26
    goto :goto_1

    .line 28
    :pswitch_3
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    .line 29
    shr-int/lit8 v0, p0, 0x18

    .line 31
    and-int/lit16 v0, v0, 0xff

    .line 33
    shr-int/lit8 v2, p0, 0x10

    .line 35
    and-int/lit16 v2, v2, 0xff

    .line 37
    shr-int/lit8 v3, p0, 0x8

    .line 39
    and-int/lit16 v3, v3, 0xff

    .line 41
    and-int/lit16 p0, p0, 0xff

    .line 43
    int-to-float v2, v2

    .line 45
    const/high16 v4, 0x437f0000    # 255.0f

    .line 46
    div-float/2addr v2, v4

    .line 48
    float-to-double v5, v2

    .line 49
    const-wide v7, 0x400199999999999aL    # 2.2

    .line 50
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 55
    move-result-wide v5

    .line 58
    double-to-float v2, v5

    .line 59
    int-to-float v3, v3

    .line 60
    div-float/2addr v3, v4

    .line 61
    float-to-double v5, v3

    .line 62
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 63
    move-result-wide v5

    .line 66
    double-to-float v3, v5

    .line 67
    int-to-float p0, p0

    .line 68
    div-float/2addr p0, v4

    .line 69
    float-to-double v5, p0

    .line 70
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 71
    move-result-wide v5

    .line 74
    double-to-float p0, v5

    .line 75
    aput v2, p1, v1

    .line 76
    const/4 v1, 0x1

    .line 78
    aput v3, p1, v1

    .line 79
    const/4 v1, 0x2

    .line 81
    aput p0, p1, v1

    .line 82
    int-to-float p0, v0

    .line 84
    div-float/2addr p0, v4

    .line 85
    const/4 v0, 0x3

    .line 86
    aput p0, p1, v0

    .line 87
    goto :goto_1

    .line 89
    :pswitch_4
    new-instance p0, Ljava/lang/RuntimeException;

    .line 90
    const-string p1, "Color does not have a single color to interpolate"

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p0

    .line 97
    :pswitch_5
    iget-boolean p0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    .line 98
    if-eqz p0, :cond_0

    .line 100
    const/high16 p0, 0x3f800000    # 1.0f

    .line 102
    goto :goto_0

    .line 104
    :cond_0
    const/4 p0, 0x0

    .line 105
    :goto_0
    aput p0, p1, v1

    .line 106
    :goto_1
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
    .line 110
.end method

.method public final numberOfInterpolatedValues()I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result p0

    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    const/4 v0, 0x3

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x4

    .line 16
    return p0
    .line 17
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result p1

    .line 17
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 18
    goto :goto_0

    .line 20
    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 23
    move-result p1

    .line 26
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 27
    goto :goto_0

    .line 29
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result p1

    .line 35
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    .line 36
    goto :goto_0

    .line 38
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 39
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    .line 41
    goto :goto_0

    .line 43
    :pswitch_4
    check-cast p1, Ljava/lang/Boolean;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    move-result p1

    .line 49
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    .line 50
    goto :goto_0

    .line 52
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 55
    move-result p1

    .line 58
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    .line 59
    :goto_0
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
    .line 62
.end method
