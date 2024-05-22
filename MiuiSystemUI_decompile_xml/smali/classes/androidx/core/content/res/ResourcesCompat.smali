.class public abstract Landroidx/core/content/res/ResourcesCompat;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sColorStateCacheLock:Ljava/lang/Object;

.field public static final sColorStateCaches:Ljava/util/WeakHashMap;

.field public static final sTempTypedValue:Ljava/lang/ThreadLocal;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 7
    new-instance v0, Ljava/util/WeakHashMap;

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 12
    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public static getFont(ILandroid/content/Context;)Landroid/graphics/Typeface;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    .line 10
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 12
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    move-object v0, p1

    .line 19
    move v1, p0

    .line 20
    invoke-static/range {v0 .. v6}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;ZZ)Landroid/graphics/Typeface;

    .line 21
    move-result-object p0

    .line 24
    return-object p0
    .line 25
.end method

.method public static loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;ZZ)Landroid/graphics/Typeface;
    .locals 15

    .line 1
    move/from16 v10, p1

    .line 2
    move-object/from16 v0, p2

    .line 4
    move/from16 v7, p3

    .line 6
    move-object/from16 v11, p4

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v3

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v3, v10, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 15
    const-string v12, "ResourcesCompat"

    .line 18
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 20
    if-eqz v1, :cond_a

    .line 22
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 24
    move-result-object v13

    .line 27
    const-string/jumbo v1, "res/"

    .line 28
    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    move-result v1

    .line 34
    const/4 v14, -0x3

    .line 35
    if-nez v1, :cond_0

    .line 36
    if-eqz v11, :cond_6

    .line 38
    invoke-virtual {v11, v14}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(I)V

    .line 40
    goto/16 :goto_3

    .line 43
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 45
    sget-object v2, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 47
    invoke-static {v3, v10, v13, v1, v7}, Landroidx/core/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 52
    invoke-virtual {v2, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 56
    check-cast v1, Landroid/graphics/Typeface;

    .line 57
    if-eqz v1, :cond_1

    .line 59
    if-eqz v11, :cond_7

    .line 61
    invoke-virtual {v11, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;)V

    .line 63
    goto/16 :goto_4

    .line 66
    :cond_1
    if-eqz p6, :cond_2

    .line 68
    goto :goto_3

    .line 70
    :cond_2
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 74
    const-string v2, ".xml"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 77
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 83
    move-result-object v1

    .line 86
    invoke-static {v1, v3}, Landroidx/core/content/res/FontResourcesParserCompat;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    .line 87
    move-result-object v2

    .line 90
    if-nez v2, :cond_3

    .line 91
    const-string v0, "Failed to find font-family tag"

    .line 93
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz v11, :cond_6

    .line 98
    invoke-virtual {v11, v14}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(I)V

    .line 100
    goto :goto_3

    .line 103
    :cond_3
    iget v6, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 104
    move-object v1, p0

    .line 106
    move/from16 v4, p1

    .line 107
    move-object v5, v13

    .line 109
    move/from16 v7, p3

    .line 110
    move-object/from16 v8, p4

    .line 112
    move/from16 v9, p5

    .line 114
    invoke-static/range {v1 .. v9}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFamilyXml(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;ILjava/lang/String;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Z)Landroid/graphics/Typeface;

    .line 116
    move-result-object v1

    .line 119
    goto :goto_4

    .line 120
    :cond_4
    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 121
    invoke-static {v3, v10, v13, v0, v7}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;

    .line 123
    move-result-object v1

    .line 126
    if-eqz v11, :cond_7

    .line 127
    if-eqz v1, :cond_5

    .line 129
    invoke-virtual {v11, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;)V

    .line 131
    goto :goto_4

    .line 134
    :cond_5
    invoke-virtual {v11, v14}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_4

    .line 138
    :catch_0
    move-exception v0

    .line 139
    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    goto :goto_1

    .line 142
    :goto_0
    const-string v1, "Failed to read xml resource "

    .line 143
    invoke-virtual {v1, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 148
    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    goto :goto_2

    .line 152
    :goto_1
    const-string v1, "Failed to parse xml resource "

    .line 153
    invoke-virtual {v1, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 158
    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :goto_2
    if-eqz v11, :cond_6

    .line 162
    invoke-virtual {v11, v14}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(I)V

    .line 164
    :cond_6
    :goto_3
    const/4 v1, 0x0

    .line 167
    :cond_7
    :goto_4
    if-nez v1, :cond_9

    .line 168
    if-nez v11, :cond_9

    .line 170
    if-eqz p6, :cond_8

    .line 172
    goto :goto_5

    .line 174
    :cond_8
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    const-string v2, "Font resource ID #0x"

    .line 179
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v2, " could not be retrieved."

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object v1

    .line 199
    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 200
    throw v0

    .line 203
    :cond_9
    :goto_5
    return-object v1

    .line 204
    :cond_a
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    const-string v4, "Resource \""

    .line 209
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 214
    move-result-object v3

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v3, "\" ("

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 226
    move-result-object v3

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string v3, ") is not a Font: "

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 244
    invoke-direct {v1, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 245
    throw v1
    .line 248
.end method
