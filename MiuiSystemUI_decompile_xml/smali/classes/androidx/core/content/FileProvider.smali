.class public Landroidx/core/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final DEVICE_ROOT:Ljava/io/File;

.field public static final sCache:Ljava/util/HashMap;


# instance fields
.field public mStrategy:Landroidx/core/content/FileProvider$SimplePathStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "_display_name"

    .line 2
    const-string v1, "_size"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/core/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/io/File;

    .line 12
    const-string v1, "/"

    .line 14
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    sput-object v0, Landroidx/core/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    sput-object v0, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    .line 26
    return-void
    .line 28
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    return-void
    .line 5
.end method

.method public static getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$SimplePathStrategy;
    .locals 2

    .line 1
    sget-object v0, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    move-result-object v1

    .line 8
    check-cast v1, Landroidx/core/content/FileProvider$SimplePathStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-nez v1, :cond_0

    .line 11
    :try_start_1
    invoke-static {p0, p1}, Landroidx/core/content/FileProvider;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$SimplePathStrategy;

    .line 13
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    const-string v1, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    .line 24
    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    throw p1

    .line 29
    :catch_1
    move-exception p0

    .line 30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string v1, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    .line 33
    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    throw p1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    return-object v1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw p0
    .line 43
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 4

    .line 1
    invoke-static {p0, p1}, Landroidx/core/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$SimplePathStrategy;

    .line 2
    move-result-object p0

    .line 5
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object p2, p0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    .line 10
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 12
    move-result-object p2

    .line 15
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p2

    .line 19
    const/4 v0, 0x0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 36
    check-cast v2, Ljava/io/File;

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 42
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 51
    move-result v2

    .line 54
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 58
    check-cast v3, Ljava/io/File;

    .line 59
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 65
    move-result v3

    .line 68
    if-le v2, v3, :cond_0

    .line 69
    :cond_1
    move-object v0, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    if-eqz v0, :cond_4

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 75
    move-result-object p2

    .line 78
    check-cast p2, Ljava/io/File;

    .line 79
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 84
    const-string v1, "/"

    .line 85
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 87
    move-result v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 93
    move-result p2

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 102
    move-result p2

    .line 105
    add-int/lit8 p2, p2, 0x1

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 111
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 117
    move-result-object v0

    .line 120
    check-cast v0, Ljava/lang/String;

    .line 121
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 126
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const/16 v0, 0x2f

    .line 130
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {p1, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 138
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 145
    new-instance p2, Landroid/net/Uri$Builder;

    .line 146
    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    .line 148
    const-string v0, "content"

    .line 151
    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 153
    move-result-object p2

    .line 156
    iget-object p0, p0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mAuthority:Ljava/lang/String;

    .line 157
    invoke-virtual {p2, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 159
    move-result-object p0

    .line 162
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 163
    move-result-object p0

    .line 166
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 167
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 172
    const-string p2, "Failed to find configured root that contains "

    .line 174
    invoke-static {p2, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object p1

    .line 179
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 180
    throw p0

    .line 183
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    .line 186
    const-string v0, "Failed to resolve canonical path for "

    .line 188
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 199
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 200
    throw p0
    .line 203
.end method

.method public static parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$SimplePathStrategy;
    .locals 7

    .line 1
    new-instance v0, Landroidx/core/content/FileProvider$SimplePathStrategy;

    .line 2
    invoke-direct {v0, p1}, Landroidx/core/content/FileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    move-result-object v1

    .line 10
    const/16 v2, 0x80

    .line 11
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 13
    move-result-object v1

    .line 16
    if-eqz v1, :cond_c

    .line 17
    iget-object p1, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    move-result-object p1

    .line 24
    const-string v2, "android.support.FILE_PROVIDER_PATHS"

    .line 25
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 27
    move-result-object p1

    .line 30
    if-eqz p1, :cond_b

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 33
    move-result v1

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eq v1, v2, :cond_a

    .line 38
    const/4 v2, 0x2

    .line 40
    if-ne v1, v2, :cond_0

    .line 41
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 46
    const/4 v2, 0x0

    .line 47
    const-string v3, "name"

    .line 48
    invoke-interface {p1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 53
    const-string v4, "path"

    .line 54
    invoke-interface {p1, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 59
    const-string/jumbo v5, "root-path"

    .line 60
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v5

    .line 66
    const/4 v6, 0x0

    .line 67
    if-eqz v5, :cond_1

    .line 68
    sget-object v2, Landroidx/core/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    .line 70
    goto :goto_1

    .line 72
    :cond_1
    const-string v5, "files-path"

    .line 73
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v5

    .line 78
    if-eqz v5, :cond_2

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 81
    move-result-object v2

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const-string v5, "cache-path"

    .line 86
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v5

    .line 91
    if-eqz v5, :cond_3

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 94
    move-result-object v2

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    const-string v5, "external-path"

    .line 99
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v5

    .line 104
    if-eqz v5, :cond_4

    .line 105
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 107
    move-result-object v2

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    const-string v5, "external-files-path"

    .line 112
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v5

    .line 117
    if-eqz v5, :cond_5

    .line 118
    sget-object v1, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 120
    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 122
    move-result-object v1

    .line 125
    array-length v5, v1

    .line 126
    if-lez v5, :cond_7

    .line 127
    aget-object v2, v1, v6

    .line 129
    goto :goto_1

    .line 131
    :cond_5
    const-string v5, "external-cache-path"

    .line 132
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result v5

    .line 137
    if-eqz v5, :cond_6

    .line 138
    sget-object v1, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    .line 142
    move-result-object v1

    .line 145
    array-length v5, v1

    .line 146
    if-lez v5, :cond_7

    .line 147
    aget-object v2, v1, v6

    .line 149
    goto :goto_1

    .line 151
    :cond_6
    const-string v5, "external-media-path"

    .line 152
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    move-result v1

    .line 157
    if-eqz v1, :cond_7

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    .line 160
    move-result-object v1

    .line 163
    array-length v5, v1

    .line 164
    if-lez v5, :cond_7

    .line 165
    aget-object v2, v1, v6

    .line 167
    :cond_7
    :goto_1
    if-eqz v2, :cond_0

    .line 169
    filled-new-array {v4}, [Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 174
    aget-object v1, v1, v6

    .line 175
    if-eqz v1, :cond_8

    .line 177
    new-instance v4, Ljava/io/File;

    .line 179
    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    move-object v2, v4

    .line 184
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 185
    move-result v1

    .line 188
    if-nez v1, :cond_9

    .line 189
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 191
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    iget-object v2, v0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    .line 195
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    goto/16 :goto_0

    .line 200
    :catch_0
    move-exception p0

    .line 202
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    .line 205
    const-string v1, "Failed to resolve canonical path for "

    .line 207
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object v0

    .line 218
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    throw p1

    .line 222
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 223
    const-string p1, "Name must not be empty"

    .line 225
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 227
    throw p0

    .line 230
    :cond_a
    return-object v0

    .line 231
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 232
    const-string p1, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    .line 234
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 236
    throw p0

    .line 239
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 240
    const-string v0, "Couldn\'t find meta-data for provider with authority "

    .line 242
    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    move-result-object p1

    .line 247
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 248
    throw p0
    .line 251
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 2
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 5
    if-nez v0, :cond_1

    .line 7
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 13
    const-string v0, ";"

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 20
    const/4 v0, 0x0

    .line 21
    aget-object p2, p2, v0

    .line 22
    sget-object v0, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    .line 24
    monitor-enter v0

    .line 26
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {p1, p2}, Landroidx/core/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$SimplePathStrategy;

    .line 31
    move-result-object p1

    .line 34
    iput-object p1, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$SimplePathStrategy;

    .line 35
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 41
    const-string p1, "Provider must grant uri permissions"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 49
    const-string p1, "Provider must not be exported"

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0
    .line 56
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$SimplePathStrategy;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/core/content/FileProvider$SimplePathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$SimplePathStrategy;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/core/content/FileProvider$SimplePathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    const/16 v0, 0x2e

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 14
    move-result p1

    .line 17
    if-ltz p1, :cond_0

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    return-object p0

    .line 40
    :cond_0
    const-string p0, "application/octet-stream"

    .line 41
    return-object p0
    .line 43
.end method

.method public final getTypeAnonymous(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "application/octet-stream"

    .line 2
    return-object p0
    .line 4
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    const-string p1, "No external inserts"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final onCreate()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$SimplePathStrategy;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/core/content/FileProvider$SimplePathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    .line 4
    move-result-object p0

    .line 7
    const-string p1, "r"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    const/high16 p1, 0x10000000

    .line 16
    goto :goto_1

    .line 18
    :cond_0
    const-string/jumbo p1, "w"

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 25
    if-nez p1, :cond_5

    .line 26
    const-string/jumbo p1, "wt"

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    const-string/jumbo p1, "wa"

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    const/high16 p1, 0x2a000000

    .line 47
    goto :goto_1

    .line 49
    :cond_2
    const-string/jumbo p1, "rw"

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    const/high16 p1, 0x38000000

    .line 59
    goto :goto_1

    .line 61
    :cond_3
    const-string/jumbo p1, "rwt"

    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    const/high16 p1, 0x3c000000    # 0.0078125f

    .line 71
    goto :goto_1

    .line 73
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    const-string p1, "Invalid mode: "

    .line 76
    invoke-static {p1, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p0

    .line 85
    :cond_5
    :goto_0
    const/high16 p1, 0x2c000000

    .line 86
    :goto_1
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 88
    move-result-object p0

    .line 91
    return-object p0
    .line 92
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$SimplePathStrategy;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/core/content/FileProvider$SimplePathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    .line 4
    move-result-object p0

    .line 7
    const-string p3, "displayName"

    .line 8
    invoke-virtual {p1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    if-nez p2, :cond_0

    .line 14
    sget-object p2, Landroidx/core/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    .line 16
    :cond_0
    array-length p3, p2

    .line 18
    new-array p3, p3, [Ljava/lang/String;

    .line 19
    array-length p4, p2

    .line 21
    new-array p4, p4, [Ljava/lang/Object;

    .line 22
    array-length p5, p2

    .line 24
    const/4 v0, 0x0

    .line 25
    move v1, v0

    .line 26
    move v2, v1

    .line 27
    :goto_0
    if-ge v1, p5, :cond_4

    .line 28
    aget-object v3, p2, v1

    .line 30
    const-string v4, "_display_name"

    .line 32
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v5

    .line 37
    if-eqz v5, :cond_2

    .line 38
    aput-object v4, p3, v2

    .line 40
    add-int/lit8 v3, v2, 0x1

    .line 42
    if-nez p1, :cond_1

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object v4, p1

    .line 51
    :goto_1
    aput-object v4, p4, v2

    .line 52
    goto :goto_2

    .line 54
    :cond_2
    const-string v4, "_size"

    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    aput-object v4, p3, v2

    .line 63
    add-int/lit8 v3, v2, 0x1

    .line 65
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 67
    move-result-wide v4

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    move-result-object v4

    .line 74
    aput-object v4, p4, v2

    .line 75
    :goto_2
    move v2, v3

    .line 77
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 78
    goto :goto_0

    .line 80
    :cond_4
    new-array p0, v2, [Ljava/lang/String;

    .line 81
    invoke-static {p3, v0, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    new-array p1, v2, [Ljava/lang/Object;

    .line 86
    invoke-static {p4, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    new-instance p2, Landroid/database/MatrixCursor;

    .line 91
    const/4 p3, 0x1

    .line 93
    invoke-direct {p2, p0, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 94
    invoke-virtual {p2, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 97
    return-object p2
    .line 100
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    const-string p1, "No external updates"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method
