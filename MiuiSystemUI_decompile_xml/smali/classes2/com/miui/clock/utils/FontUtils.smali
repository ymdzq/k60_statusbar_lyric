.class public abstract Lcom/miui/clock/utils/FontUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final MI_SANS_ROUNDED_SC_PATH:Ljava/lang/String;

.field public static final MI_SANS_ROUNDED_TC_PATH:Ljava/lang/String;

.field public static final mMisansGlobalTypefaceMap:Ljava/util/Map;

.field public static final mOtherFontTypefaceMap:Ljava/util/Map;

.field public static final miSansFontsPathByLocaleCache:Ljava/util/Map;

.field public static final miSansRoundedTypefaceMap:Ljava/util/Map;

.field public static final miSansTypefaceCacheByFontsPath:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.miui.ui.font.mi_font_path"

    .line 2
    const-string v1, "/system/fonts/MiSansVF.ttf"

    .line 4
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    const-string v0, "/system/product/fonts/MiSansRoundedSC.ttf"

    .line 9
    sput-object v0, Lcom/miui/clock/utils/FontUtils;->MI_SANS_ROUNDED_SC_PATH:Ljava/lang/String;

    .line 11
    const-string v0, "/system/product/fonts/MiSansRoundedTC.ttf"

    .line 13
    sput-object v0, Lcom/miui/clock/utils/FontUtils;->MI_SANS_ROUNDED_TC_PATH:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    sput-object v0, Lcom/miui/clock/utils/FontUtils;->miSansFontsPathByLocaleCache:Ljava/util/Map;

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    .line 24
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 26
    sput-object v0, Lcom/miui/clock/utils/FontUtils;->miSansTypefaceCacheByFontsPath:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    .line 31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    sput-object v0, Lcom/miui/clock/utils/FontUtils;->miSansRoundedTypefaceMap:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    .line 38
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    sput-object v0, Lcom/miui/clock/utils/FontUtils;->mOtherFontTypefaceMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    .line 45
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    sput-object v0, Lcom/miui/clock/utils/FontUtils;->mMisansGlobalTypefaceMap:Ljava/util/Map;

    .line 50
    return-void
    .line 52
.end method

.method public static getMiSans(I)Landroid/graphics/Typeface;
    .locals 9

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    sget-object v1, Lcom/miui/clock/utils/FontUtils;->miSansFontsPathByLocaleCache:Ljava/util/Map;

    .line 10
    move-object v2, v1

    .line 12
    check-cast v2, Ljava/util/HashMap;

    .line 13
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v3

    .line 24
    sget-object v4, Lcom/miui/clock/utils/FontUtils;->miSansTypefaceCacheByFontsPath:Landroid/util/SparseArray;

    .line 25
    const-string v5, "FontUtils"

    .line 27
    const/4 v6, 0x0

    .line 29
    if-eqz v3, :cond_1

    .line 30
    invoke-static {}, Lcom/miui/clock/utils/FontUtils;->getMiSansGlobalPath()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    const-string p0, "failed to getMiuiFontPathByLocale, defaultFontPath is null"

    .line 42
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-object v6

    .line 47
    :cond_0
    check-cast v1, Ljava/util/HashMap;

    .line 48
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 53
    move-result v0

    .line 56
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 57
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    new-instance v0, Ljava/util/HashMap;

    .line 63
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 68
    move-result v1

    .line 71
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    goto :goto_0

    .line 75
    :cond_1
    move-object v0, v6

    .line 76
    :goto_0
    if-nez v0, :cond_2

    .line 77
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 79
    move-result v0

    .line 82
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 86
    check-cast v0, Ljava/util/Map;

    .line 87
    :cond_2
    if-nez v0, :cond_3

    .line 89
    const-string p0, "failed to load misans, miSansTypefaceMap is null"

    .line 91
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-object v6

    .line 96
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 100
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 104
    check-cast v1, Landroid/graphics/Typeface;

    .line 105
    if-nez v1, :cond_a

    .line 107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 109
    move-result-object v1

    .line 112
    const/4 v2, 0x0

    .line 113
    :try_start_0
    const-string v3, "miui.util.font.MultiLangHelper"

    .line 114
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 116
    move-result-object v3

    .line 119
    const-string v4, "getMiproFileList"

    .line 120
    const/4 v7, 0x1

    .line 122
    new-array v7, v7, [Ljava/lang/Class;

    .line 123
    const-class v8, Ljava/util/Locale;

    .line 125
    aput-object v8, v7, v2

    .line 127
    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 129
    move-result-object v3

    .line 132
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 133
    move-result-object v1

    .line 136
    invoke-virtual {v3, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    move-result-object v1

    .line 140
    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_1

    .line 143
    :catch_0
    move-exception v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    move-object v1, v6

    .line 148
    :goto_1
    if-nez v1, :cond_4

    .line 149
    const-string v1, "failed to getMiproFileList, miproFiles is null"

    .line 151
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    goto/16 :goto_4

    .line 156
    :cond_4
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 158
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 161
    move-object v3, v6

    .line 162
    :cond_5
    :goto_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    move-result v4

    .line 166
    if-eqz v4, :cond_7

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    move-result-object v4

    .line 172
    check-cast v4, Ljava/lang/String;

    .line 173
    new-instance v7, Ljava/io/File;

    .line 175
    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 180
    move-result v7

    .line 183
    if-eqz v7, :cond_5

    .line 184
    new-instance v7, Landroid/graphics/fonts/Font$Builder;

    .line 186
    new-instance v8, Ljava/io/File;

    .line 188
    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-direct {v7, v8}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    const-string v8, "\'wght\' "

    .line 201
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v4

    .line 212
    invoke-virtual {v7, v4}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    .line 213
    new-instance v4, Landroid/graphics/fonts/FontFamily$Builder;

    .line 216
    invoke-virtual {v7}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    .line 218
    move-result-object v7

    .line 221
    invoke-direct {v4, v7}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 222
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    .line 225
    move-result-object v4

    .line 228
    if-eqz v4, :cond_5

    .line 229
    if-nez v3, :cond_6

    .line 231
    new-instance v7, Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 233
    invoke-direct {v7, v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 235
    move-object v3, v7

    .line 238
    goto :goto_2

    .line 239
    :cond_6
    invoke-virtual {v3, v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;->addCustomFallback(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 240
    goto :goto_2

    .line 243
    :catch_1
    move-exception v1

    .line 244
    goto :goto_3

    .line 245
    :catch_2
    move-exception v1

    .line 246
    move-object v3, v6

    .line 247
    :goto_3
    const-string v4, "create mipro typeface error, "

    .line 248
    invoke-static {v5, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    :cond_7
    if-nez v3, :cond_8

    .line 253
    goto :goto_4

    .line 255
    :cond_8
    invoke-virtual {v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    .line 256
    move-result-object v1

    .line 259
    invoke-static {v1, p0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 260
    move-result-object v6

    .line 263
    :goto_4
    if-eqz v6, :cond_9

    .line 264
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 266
    move-result-object p0

    .line 269
    invoke-interface {v0, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_9
    move-object v1, v6

    .line 273
    :cond_a
    return-object v1
    .line 274
.end method

.method public static getMiSansGlobal()Landroid/graphics/Typeface;
    .locals 4

    .line 1
    invoke-static {}, Lcom/miui/clock/utils/FontUtils;->getMiSansGlobalPath()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/miui/clock/utils/FontUtils;->mMisansGlobalTypefaceMap:Ljava/util/Map;

    .line 6
    move-object v2, v1

    .line 8
    check-cast v2, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 14
    check-cast v2, Landroid/graphics/Typeface;

    .line 15
    if-nez v2, :cond_0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    new-instance v2, Landroid/graphics/Typeface$Builder;

    .line 25
    invoke-direct {v2, v0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    .line 27
    const-string v3, "\'wght\' 630"

    .line 30
    invoke-virtual {v2, v3}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    .line 32
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    .line 36
    move-result-object v2

    .line 39
    check-cast v1, Ljava/util/HashMap;

    .line 40
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    return-object v2
    .line 45
.end method

.method public static getMiSansGlobalPath()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    const-string v2, "miui.util.font.MultiLangHelper"

    .line 7
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    move-result-object v2

    .line 12
    const-string v3, "getMiuiFontPathByLocale"

    .line 13
    const/4 v4, 0x1

    .line 15
    new-array v4, v4, [Ljava/lang/Class;

    .line 16
    const-class v5, Ljava/util/Locale;

    .line 18
    const/4 v6, 0x0

    .line 20
    aput-object v5, v4, v6

    .line 21
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    move-result-object v2

    .line 26
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    return-object v1
    .line 42
.end method

.method public static getMiSansRounded(IZ)Landroid/graphics/Typeface;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    sget-object v1, Lcom/miui/clock/utils/FontUtils;->miSansRoundedTypefaceMap:Ljava/util/Map;

    .line 25
    move-object v2, v1

    .line 27
    check-cast v2, Ljava/util/HashMap;

    .line 28
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 33
    check-cast v2, Landroid/graphics/Typeface;

    .line 34
    if-nez v2, :cond_1

    .line 36
    new-instance v2, Landroid/graphics/Typeface$Builder;

    .line 38
    if-eqz p1, :cond_0

    .line 40
    sget-object p1, Lcom/miui/clock/utils/FontUtils;->MI_SANS_ROUNDED_SC_PATH:Ljava/lang/String;

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Lcom/miui/clock/utils/FontUtils;->MI_SANS_ROUNDED_TC_PATH:Ljava/lang/String;

    .line 45
    :goto_0
    invoke-direct {v2, p1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    const-string v3, "\'wght\' "

    .line 52
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {v2, p0}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    .line 64
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    .line 68
    move-result-object v2

    .line 71
    check-cast v1, Ljava/util/HashMap;

    .line 72
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1
    return-object v2
    .line 77
.end method

.method public static getOtherFont(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/clock/utils/FontUtils;->mOtherFontTypefaceMap:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Landroid/graphics/Typeface;

    .line 10
    if-nez v1, :cond_0

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_0
    return-object v1
    .line 22
.end method

.method public static isCharHasChinese(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 17
    const-string v3, "[\u5468\u9031\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5]"

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 20
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    return v0

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x1

    .line 30
    return p0
    .line 31
.end method

.method public static isCharHasSoundmark(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 17
    const-string v3, "[\\u0061-\\u007A\\u0041-\\u005A]"

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 20
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    return v0
    .line 31
.end method

.method public static isTypefaceSupport(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 17
    const-string v3, "[\\u0021-\\u00FF\\u0100-\\u017F]"

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 20
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 26
    move-result v2

    .line 29
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 33
    const-string v3, "[\u5468\u9031\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u65e5]"

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 36
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    return v0

    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x1

    .line 46
    return p0
    .line 47
.end method

.method public static setBigFontStyle(Landroid/widget/TextView;IZ)V
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    const/16 v0, 0x14a

    .line 5
    const v1, -0x428a3d71    # -0.06f

    .line 7
    const v2, 0x7f0701d8    # @dimen/classic_time_area_text_size_other '64.0dp'

    .line 10
    const v3, 0x7f0701d7    # @dimen/classic_time_area_text_size_chs '58.0dp'

    .line 13
    const v4, -0x435c28f6    # -0.02f

    .line 16
    packed-switch p1, :pswitch_data_0

    .line 19
    if-eqz p2, :cond_8

    .line 22
    invoke-static {v0}, Lcom/miui/clock/utils/FontUtils;->getMiSans(I)Landroid/graphics/Typeface;

    .line 24
    move-result-object p1

    .line 27
    :goto_0
    move v2, v3

    .line 28
    goto/16 :goto_5

    .line 29
    :pswitch_0
    sget-object p1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 31
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 37
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 45
    move-result p1

    .line 48
    if-eqz p2, :cond_1

    .line 49
    move v2, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v1, v4

    .line 53
    :goto_1
    if-eqz p1, :cond_2

    .line 54
    const-string p1, "miclock-serif-sc-regular"

    .line 56
    goto :goto_2

    .line 58
    :cond_2
    const-string p1, "miclock-serif-tc-regular"

    .line 59
    :goto_2
    invoke-static {p1}, Lcom/miui/clock/utils/FontUtils;->getOtherFont(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 61
    move-result-object p1

    .line 64
    goto/16 :goto_5

    .line 65
    :pswitch_1
    sget-object p1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 67
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 72
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 73
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 80
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 81
    move-result p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    const-string p1, "miclock-beihaibei-sc-regular"

    .line 87
    goto :goto_3

    .line 89
    :cond_3
    const-string p1, "miclock-beihaibei-tc-regular"

    .line 90
    :goto_3
    invoke-static {p1}, Lcom/miui/clock/utils/FontUtils;->getOtherFont(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 92
    move-result-object p1

    .line 95
    if-eqz p2, :cond_4

    .line 96
    const p2, -0x42dc28f6    # -0.04f

    .line 98
    move v1, p2

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    const p2, 0x7f0701d9    # @dimen/classic_time_area_text_size_other_beihaibei '60.0dp'

    .line 103
    move v2, p2

    .line 106
    goto :goto_4

    .line 107
    :pswitch_2
    sget-object p1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 108
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 113
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 114
    move-result-object v5

    .line 117
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 118
    move-result-object v5

    .line 121
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 122
    move-result p1

    .line 125
    if-eqz p2, :cond_5

    .line 126
    const/16 p2, 0x1ae

    .line 128
    invoke-static {p2, p1}, Lcom/miui/clock/utils/FontUtils;->getMiSansRounded(IZ)Landroid/graphics/Typeface;

    .line 130
    move-result-object p1

    .line 133
    goto :goto_0

    .line 134
    :cond_5
    invoke-static {v0, p1}, Lcom/miui/clock/utils/FontUtils;->getMiSansRounded(IZ)Landroid/graphics/Typeface;

    .line 135
    move-result-object p1

    .line 138
    goto :goto_4

    .line 139
    :pswitch_3
    if-eqz p2, :cond_6

    .line 140
    const/16 p1, 0x208

    .line 142
    invoke-static {p1}, Lcom/miui/clock/utils/FontUtils;->getMiSans(I)Landroid/graphics/Typeface;

    .line 144
    move-result-object p1

    .line 147
    goto :goto_0

    .line 148
    :cond_6
    const/16 p1, 0x1c2

    .line 149
    invoke-static {p1}, Lcom/miui/clock/utils/FontUtils;->getMiSans(I)Landroid/graphics/Typeface;

    .line 151
    move-result-object p1

    .line 154
    goto :goto_4

    .line 155
    :pswitch_4
    if-eqz p2, :cond_7

    .line 156
    const/16 p1, 0x118

    .line 158
    invoke-static {p1}, Lcom/miui/clock/utils/FontUtils;->getMiSans(I)Landroid/graphics/Typeface;

    .line 160
    move-result-object p1

    .line 163
    goto/16 :goto_0

    .line 164
    :cond_7
    const/16 p1, 0xfa

    .line 166
    invoke-static {p1}, Lcom/miui/clock/utils/FontUtils;->getMiSans(I)Landroid/graphics/Typeface;

    .line 168
    move-result-object p1

    .line 171
    goto :goto_4

    .line 172
    :cond_8
    const/16 p1, 0x131

    .line 173
    invoke-static {p1}, Lcom/miui/clock/utils/FontUtils;->getMiSans(I)Landroid/graphics/Typeface;

    .line 175
    move-result-object p1

    .line 178
    :goto_4
    move v1, v4

    .line 179
    :goto_5
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 180
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 183
    move-result-object p2

    .line 186
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 187
    move-result-object p2

    .line 190
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 191
    move-result p2

    .line 194
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 195
    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 199
    move-result v0

    .line 202
    mul-float/2addr v0, p2

    .line 203
    const/4 p2, 0x0

    .line 204
    invoke-virtual {p0, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 205
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 208
    return-void

    .line 211
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 212
.end method
