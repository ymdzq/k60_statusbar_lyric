.class public Landroidx/constraintlayout/helper/widget/LogJson;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mDelay:I

.field public mLogConsole:Z

.field public mLogToFile:Ljava/lang/String;

.field public mMode:I

.field public mPeriodic:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x3e8

    .line 2
    iput p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mDelay:I

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mMode:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mLogToFile:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mLogConsole:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mPeriodic:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x3e8

    .line 8
    iput p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mDelay:I

    const/4 p1, 0x2

    .line 9
    iput p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mMode:I

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mLogToFile:Ljava/lang/String;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mLogConsole:Z

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mPeriodic:Z

    .line 13
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/helper/widget/LogJson;->initLogJson(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x3e8

    .line 15
    iput p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mDelay:I

    const/4 p1, 0x2

    .line 16
    iput p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mMode:I

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mLogToFile:Ljava/lang/String;

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mLogConsole:Z

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mPeriodic:Z

    .line 20
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/helper/widget/LogJson;->initLogJson(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final initLogJson(Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_6

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->LogJson:[I

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    if-ge v2, v0, :cond_5

    .line 20
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 22
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    iget v4, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mDelay:I

    .line 28
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 30
    move-result v3

    .line 33
    iput v3, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mDelay:I

    .line 34
    goto :goto_2

    .line 36
    :cond_0
    const/4 v4, 0x1

    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    iget v4, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mMode:I

    .line 40
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 42
    move-result v3

    .line 45
    iput v3, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mMode:I

    .line 46
    goto :goto_2

    .line 48
    :cond_1
    const/4 v5, 0x2

    .line 49
    if-ne v3, v5, :cond_4

    .line 50
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 52
    move-result-object v6

    .line 55
    iget v6, v6, Landroid/util/TypedValue;->type:I

    .line 56
    const/4 v7, 0x3

    .line 58
    if-ne v6, v7, :cond_2

    .line 59
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 64
    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mLogToFile:Ljava/lang/String;

    .line 65
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 68
    move-result v3

    .line 71
    if-ne v3, v5, :cond_3

    .line 72
    goto :goto_1

    .line 74
    :cond_3
    move v4, v1

    .line 75
    :goto_1
    iput-boolean v4, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mLogConsole:Z

    .line 76
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 78
    goto :goto_0

    .line 80
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    :cond_6
    const/16 p1, 0x8

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-void
    .line 89
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    .line 2
    iget v0, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mMode:I

    .line 5
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    const/4 v2, 0x2

    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 21
    new-instance v1, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda1;

    .line 23
    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda1;-><init>(Landroidx/constraintlayout/helper/widget/LogJson;)V

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;

    .line 32
    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;-><init>(Landroidx/constraintlayout/helper/widget/LogJson;I)V

    .line 34
    iget v1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mDelay:I

    .line 37
    int-to-long v1, v1

    .line 39
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    goto :goto_0

    .line 43
    :cond_2
    iput-boolean v1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mPeriodic:Z

    .line 44
    new-instance v0, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;

    .line 46
    const/4 v1, 0x0

    .line 48
    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;-><init>(Landroidx/constraintlayout/helper/widget/LogJson;I)V

    .line 49
    iget v1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mDelay:I

    .line 52
    int-to-long v1, v1

    .line 54
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    :goto_0
    return-void
    .line 58
.end method

.method public setDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mDelay:I

    .line 2
    return-void
    .line 4
.end method

.method public final writeLog()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    const-string v1, "\n"

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v2

    .line 9
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    new-instance v3, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;

    .line 12
    invoke-direct {v3}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;-><init>()V

    .line 14
    new-instance v4, Ljava/io/StringWriter;

    .line 17
    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 19
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    move-result v5

    .line 25
    const/4 v7, 0x0

    .line 26
    :goto_0
    iget-object v8, v3, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mNames:Ljava/util/HashMap;

    .line 27
    const/4 v9, -0x1

    .line 29
    const-string v10, "LogJson"

    .line 30
    if-ge v7, v5, :cond_3

    .line 32
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    move-result-object v11

    .line 37
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    move-result-object v12

    .line 41
    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    move-result-object v12

    .line 45
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    .line 46
    move-result v13

    .line 49
    if-ne v13, v9, :cond_1

    .line 50
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 52
    move-result v9

    .line 55
    invoke-virtual {v11, v9}, Landroid/view/View;->setId(I)V

    .line 56
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v10

    .line 62
    if-nez v10, :cond_0

    .line 63
    const-string v10, "noid_"

    .line 65
    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v12

    .line 70
    :cond_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v9

    .line 74
    invoke-virtual {v8, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v9

    .line 82
    if-eqz v9, :cond_2

    .line 83
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v9

    .line 88
    invoke-virtual {v8, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 92
    goto :goto_0

    .line 94
    :cond_3
    const-string/jumbo v5, "{\n"

    .line 95
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 98
    const-string v5, "Widgets:{\n"

    .line 101
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 103
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 106
    move-result v5

    .line 109
    move v7, v9

    .line 110
    :goto_2
    if-ge v7, v5, :cond_13

    .line 111
    if-ne v7, v9, :cond_4

    .line 113
    move-object v11, v2

    .line 115
    goto :goto_3

    .line 116
    :cond_4
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 117
    move-result-object v11

    .line 120
    :goto_3
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    .line 121
    move-result v12

    .line 124
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    move-result-object v13

    .line 128
    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 129
    move-result-object v13

    .line 132
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v13

    .line 136
    if-eqz v13, :cond_5

    .line 137
    move/from16 v16, v5

    .line 139
    move-object/from16 v17, v8

    .line 141
    goto/16 :goto_8

    .line 143
    :cond_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object v13

    .line 148
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 149
    move-result v13

    .line 152
    if-eqz v13, :cond_6

    .line 153
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v12

    .line 158
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-result-object v12

    .line 162
    check-cast v12, Ljava/lang/String;

    .line 163
    goto :goto_4

    .line 165
    :cond_6
    if-ne v7, v9, :cond_7

    .line 166
    const-string v12, "parent"

    .line 168
    goto :goto_4

    .line 170
    :cond_7
    invoke-static {v11}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 171
    move-result-object v12

    .line 174
    :goto_4
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    move-result-object v13

    .line 178
    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 179
    move-result-object v13

    .line 182
    new-instance v14, Ljava/lang/StringBuilder;

    .line 183
    const-string v15, ", bounds: ["

    .line 185
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    .line 190
    move-result v15

    .line 193
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    const-string v15, ", "

    .line 197
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    .line 202
    move-result v6

    .line 205
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    .line 212
    move-result v6

    .line 215
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    .line 222
    move-result v6

    .line 225
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    const-string v6, "]},\n"

    .line 229
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    move-result-object v6

    .line 237
    new-instance v14, Ljava/lang/StringBuilder;

    .line 238
    const-string v9, "  "

    .line 240
    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v9, ": { "

    .line 248
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v9

    .line 256
    invoke-virtual {v4, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 257
    const-string/jumbo v9, "type: \'"

    .line 260
    const/4 v12, -0x1

    .line 263
    if-ne v7, v12, :cond_c

    .line 264
    new-instance v12, Ljava/lang/StringBuilder;

    .line 266
    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    move-result-object v9

    .line 274
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 275
    move-result-object v9

    .line 278
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v9, "\' , "

    .line 282
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object v9

    .line 290
    invoke-virtual {v4, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 291
    :try_start_0
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 294
    move-result-object v9

    .line 297
    const-string v11, "\'WRAP_CONTENT\'"

    .line 298
    const-string v12, "\'MATCH_PARENT\'"

    .line 300
    iget v13, v9, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    const-string v14, ""

    .line 304
    move/from16 v16, v5

    .line 306
    const/4 v5, -0x1

    .line 308
    if-ne v13, v5, :cond_8

    .line 309
    move-object v5, v12

    .line 311
    goto :goto_5

    .line 312
    :cond_8
    const/4 v5, -0x2

    .line 313
    if-ne v13, v5, :cond_9

    .line 314
    move-object v5, v11

    .line 316
    goto :goto_5

    .line 317
    :cond_9
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 318
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    iget v13, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 323
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    move-result-object v5

    .line 334
    :goto_5
    new-instance v13, Ljava/lang/StringBuilder;

    .line 335
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    move-object/from16 v17, v8

    .line 340
    :try_start_2
    const-string/jumbo v8, "width: "

    .line 342
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    move-result-object v5

    .line 357
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 358
    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 361
    const/4 v8, -0x1

    .line 363
    if-ne v5, v8, :cond_a

    .line 364
    move-object v11, v12

    .line 366
    goto :goto_6

    .line 367
    :cond_a
    const/4 v8, -0x2

    .line 368
    if-ne v5, v8, :cond_b

    .line 369
    goto :goto_6

    .line 371
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 372
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    iget v8, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 377
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    move-result-object v11

    .line 388
    :goto_6
    const-string v5, "height: "

    .line 389
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 391
    move-result-object v5

    .line 394
    invoke-virtual {v5, v11}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 395
    goto/16 :goto_7

    .line 398
    :catch_0
    move/from16 v16, v5

    .line 400
    :catch_1
    move-object/from16 v17, v8

    .line 402
    goto/16 :goto_7

    .line 404
    :cond_c
    move/from16 v16, v5

    .line 406
    move-object/from16 v17, v8

    .line 408
    const-string v5, "Text"

    .line 410
    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 412
    move-result v5

    .line 415
    const-string v8, "\'"

    .line 416
    if-eqz v5, :cond_e

    .line 418
    instance-of v5, v11, Landroid/widget/TextView;

    .line 420
    if-eqz v5, :cond_d

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    .line 424
    const-string/jumbo v9, "type: \'Text\', label: \'"

    .line 426
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    check-cast v11, Landroid/widget/TextView;

    .line 432
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 434
    move-result-object v9

    .line 437
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 438
    move-result-object v9

    .line 441
    const-string v11, "\\\'"

    .line 442
    invoke-virtual {v9, v8, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 444
    move-result-object v9

    .line 447
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object v5

    .line 457
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 458
    goto :goto_7

    .line 461
    :cond_d
    const-string/jumbo v5, "type: \'Text\' },\n"

    .line 462
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 465
    goto :goto_7

    .line 468
    :cond_e
    const-string v5, "Button"

    .line 469
    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 471
    move-result v5

    .line 474
    if-eqz v5, :cond_10

    .line 475
    instance-of v5, v11, Landroid/widget/Button;

    .line 477
    if-eqz v5, :cond_f

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    .line 481
    const-string/jumbo v9, "type: \'Button\', label: \'"

    .line 483
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    check-cast v11, Landroid/widget/Button;

    .line 489
    invoke-virtual {v11}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    .line 491
    move-result-object v9

    .line 494
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    move-result-object v5

    .line 504
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 505
    goto :goto_7

    .line 508
    :cond_f
    const-string/jumbo v5, "type: \'Button\'"

    .line 509
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 512
    goto :goto_7

    .line 515
    :cond_10
    const-string v5, "Image"

    .line 516
    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 518
    move-result v5

    .line 521
    if-eqz v5, :cond_11

    .line 522
    const-string/jumbo v5, "type: \'Image\'"

    .line 524
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 527
    goto :goto_7

    .line 530
    :cond_11
    const-string v5, "View"

    .line 531
    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 533
    move-result v5

    .line 536
    if-eqz v5, :cond_12

    .line 537
    const-string/jumbo v5, "type: \'Box\'"

    .line 539
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 542
    goto :goto_7

    .line 545
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 546
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    move-result-object v9

    .line 554
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 555
    move-result-object v9

    .line 558
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    move-result-object v5

    .line 568
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 569
    :catch_2
    :goto_7
    invoke-virtual {v4, v6}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 572
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 575
    move/from16 v5, v16

    .line 577
    move-object/from16 v8, v17

    .line 579
    const/4 v9, -0x1

    .line 581
    goto/16 :goto_2

    .line 582
    :cond_13
    const-string/jumbo v5, "},\n"

    .line 584
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 587
    const-string v5, "  ConstraintSet:{\n"

    .line 590
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 592
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 595
    invoke-direct {v5}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 597
    invoke-virtual {v5, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 600
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    .line 603
    move-result v6

    .line 606
    const/4 v7, -0x1

    .line 607
    if-ne v6, v7, :cond_14

    .line 608
    const-string v6, "cset"

    .line 610
    goto :goto_9

    .line 612
    :cond_14
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 613
    move-result-object v6

    .line 616
    :goto_9
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 617
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const-string v6, ":"

    .line 625
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    move-result-object v6

    .line 633
    invoke-virtual {v4, v6}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 634
    iput-object v4, v3, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mWriter:Ljava/io/Writer;

    .line 637
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 639
    move-result-object v2

    .line 642
    iput-object v2, v3, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mContext:Landroid/content/Context;

    .line 643
    iput-object v5, v3, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->mSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 645
    const/4 v2, 0x2

    .line 647
    invoke-virtual {v5, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 648
    invoke-virtual {v3}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter;->writeLayout()V

    .line 651
    invoke-virtual {v4, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 654
    const-string v2, "  }\n"

    .line 657
    invoke-virtual {v4, v2}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 659
    const-string/jumbo v2, "}\n"

    .line 662
    invoke-virtual {v4, v2}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 665
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 668
    move-result-object v2

    .line 671
    iget-object v3, v0, Landroidx/constraintlayout/helper/widget/LogJson;->mLogToFile:Ljava/lang/String;

    .line 672
    if-nez v3, :cond_17

    .line 674
    iget-boolean v0, v0, Landroidx/constraintlayout/helper/widget/LogJson;->mLogConsole:Z

    .line 676
    if-eqz v0, :cond_15

    .line 678
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 680
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 682
    goto :goto_b

    .line 685
    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 686
    move-result v0

    .line 689
    const/4 v6, 0x0

    .line 690
    :goto_a
    if-ge v6, v0, :cond_19

    .line 691
    invoke-virtual {v2, v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 693
    move-result v3

    .line 696
    const/4 v4, -0x1

    .line 697
    if-ne v3, v4, :cond_16

    .line 698
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 700
    goto :goto_b

    .line 703
    :cond_16
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 704
    add-int/lit8 v6, v3, 0x1

    .line 707
    goto :goto_a

    .line 709
    :cond_17
    const-string v0, ".json5"

    .line 710
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 712
    move-result v1

    .line 715
    if-nez v1, :cond_18

    .line 716
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 718
    move-result-object v3

    .line 721
    :cond_18
    :try_start_4
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 722
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 724
    move-result-object v0

    .line 727
    new-instance v1, Ljava/io/File;

    .line 728
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 730
    new-instance v0, Ljava/io/FileOutputStream;

    .line 733
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 735
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 738
    move-result-object v2

    .line 741
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 742
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 745
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 748
    goto :goto_b

    .line 751
    :catch_3
    move-exception v0

    .line 752
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 753
    :cond_19
    :goto_b
    return-void

    .line 756
    :catch_4
    move-exception v0

    .line 757
    new-instance v1, Ljava/lang/RuntimeException;

    .line 758
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 760
    throw v1
    .line 763
.end method
