.class public Lcom/android/settings/utils/HeaderUtils;
.super Ljava/lang/Object;
.source "HeaderUtils.java"


# direct methods
.method public static loadHeadersFromResource(Landroid/content/Context;ILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    const-string v0, "extra"

    const-string v1, "Error parsing headers"

    const/4 v2, 0x0

    .line 41
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 45
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v7, :cond_0

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "preference-headers"

    .line 51
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 59
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    move-object v8, v2

    .line 60
    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    if-eq v9, v7, :cond_15

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    .line 61
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v5, :cond_15

    :cond_1
    if-eq v9, v10, :cond_14

    const/4 v11, 0x4

    if-ne v9, v11, :cond_2

    goto/16 :goto_8

    .line 66
    :cond_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v12, "header"

    .line 67
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 68
    new-instance v9, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    invoke-direct {v9}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;-><init>()V

    .line 70
    sget-object v12, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v13, p0

    invoke-virtual {v13, v4, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    const/4 v14, -0x1

    .line 72
    invoke-virtual {v12, v7, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v9, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->id:J

    .line 75
    invoke-virtual {v12, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 77
    iget v15, v14, Landroid/util/TypedValue;->type:I

    if-ne v15, v10, :cond_4

    .line 78
    iget v15, v14, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_3

    .line 79
    iput v15, v9, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->titleRes:I

    goto :goto_2

    .line 81
    :cond_3
    iget-object v14, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v9, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 84
    :cond_4
    :goto_2
    invoke-virtual {v12, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 86
    iget v15, v14, Landroid/util/TypedValue;->type:I

    if-ne v15, v10, :cond_6

    .line 87
    iget v15, v14, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_5

    .line 88
    iput v15, v9, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->summaryRes:I

    goto :goto_3

    .line 90
    :cond_5
    iget-object v14, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v9, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    :cond_6
    :goto_3
    const/4 v14, 0x5

    .line 93
    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 95
    iget v15, v14, Landroid/util/TypedValue;->type:I

    if-ne v15, v10, :cond_8

    .line 96
    iget v15, v14, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_7

    .line 97
    iput v15, v9, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    goto :goto_4

    .line 99
    :cond_7
    iget-object v14, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v9, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    :cond_8
    :goto_4
    const/4 v14, 0x6

    .line 102
    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 104
    iget v15, v14, Landroid/util/TypedValue;->type:I

    if-ne v15, v10, :cond_a

    .line 105
    iget v15, v14, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_9

    .line 106
    iput v15, v9, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    goto :goto_5

    .line 108
    :cond_9
    iget-object v14, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v14, v9, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    :cond_a
    :goto_5
    const/4 v14, 0x0

    .line 111
    invoke-virtual {v12, v14, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v9, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->iconRes:I

    .line 113
    invoke-virtual {v12, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 115
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v8, :cond_b

    .line 118
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 121
    :cond_b
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 122
    :cond_c
    :goto_6
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    if-eq v14, v7, :cond_11

    if-ne v14, v10, :cond_d

    .line 123
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v12, :cond_11

    :cond_d
    if-eq v14, v10, :cond_c

    if-ne v14, v11, :cond_e

    goto :goto_6

    .line 128
    :cond_e
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 129
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v0, v4, v8}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 131
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    :cond_f
    const-string v15, "intent"

    .line 133
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v14, v3, v4}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v14

    iput-object v14, v9, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_6

    .line 137
    :cond_10
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 141
    :cond_11
    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v10

    if-lez v10, :cond_12

    .line 142
    iput-object v8, v9, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object/from16 v10, p2

    move-object v8, v2

    goto :goto_7

    :cond_12
    move-object/from16 v10, p2

    .line 146
    :goto_7
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_13
    move-object/from16 v13, p0

    move-object/from16 v10, p2

    .line 148
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_14
    :goto_8
    move-object/from16 v13, p0

    move-object/from16 v10, p2

    goto/16 :goto_1

    .line 157
    :cond_15
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    return-void

    .line 52
    :cond_16
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    .line 155
    :goto_9
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v0

    .line 153
    :goto_a
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_b
    if-eqz v2, :cond_17

    .line 157
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 158
    :cond_17
    throw v0
.end method
