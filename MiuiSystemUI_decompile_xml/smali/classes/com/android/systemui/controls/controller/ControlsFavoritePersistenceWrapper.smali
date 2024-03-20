.class public final Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public backupManager:Landroid/app/backup/BackupManager;

.field public final executor:Ljava/util/concurrent/Executor;

.field public file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/Executor;Landroid/app/backup/BackupManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->file:Ljava/io/File;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->executor:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->backupManager:Landroid/app/backup/BackupManager;

    .line 9
    return-void
    .line 11
.end method

.method public static parseXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 12
    move-object v3, v2

    .line 13
    move-object v4, v3

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 15
    move-result v5

    .line 18
    const/4 v6, 0x1

    .line 19
    if-eq v5, v6, :cond_7

    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 22
    move-result-object v6

    .line 25
    const-string v7, ""

    .line 26
    if-nez v6, :cond_1

    .line 28
    move-object v6, v7

    .line 30
    :cond_1
    const/4 v8, 0x2

    .line 31
    const-string/jumbo v9, "structure"

    .line 32
    if-ne v5, v8, :cond_3

    .line 35
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v10

    .line 40
    if-eqz v10, :cond_3

    .line 41
    const-string v3, "component"

    .line 43
    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 48
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 49
    move-result-object v3

    .line 52
    invoke-interface {p0, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    move-object v4, v7

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    if-ne v5, v8, :cond_6

    .line 62
    const-string v8, "control"

    .line 64
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    move-result v8

    .line 69
    if-eqz v8, :cond_6

    .line 70
    const-string v5, "id"

    .line 72
    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 77
    const-string/jumbo v6, "title"

    .line 78
    invoke-interface {p0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 84
    const-string/jumbo v8, "subtitle"

    .line 85
    invoke-interface {p0, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v8

    .line 91
    if-nez v8, :cond_4

    .line 92
    goto :goto_1

    .line 94
    :cond_4
    move-object v7, v8

    .line 95
    :goto_1
    const-string/jumbo v8, "type"

    .line 96
    invoke-interface {p0, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v8

    .line 102
    if-eqz v8, :cond_5

    .line 103
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 105
    move-result v8

    .line 108
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v8

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    move-object v8, v2

    .line 114
    :goto_2
    if-eqz v5, :cond_0

    .line 115
    if-eqz v6, :cond_0

    .line 117
    if-eqz v8, :cond_0

    .line 119
    new-instance v9, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 121
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 123
    move-result v8

    .line 126
    invoke-direct {v9, v5, v6, v7, v8}, Lcom/android/systemui/controls/controller/ControlInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 127
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    goto :goto_0

    .line 133
    :cond_6
    const/4 v7, 0x3

    .line 134
    if-ne v5, v7, :cond_0

    .line 135
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    move-result v5

    .line 140
    if-eqz v5, :cond_0

    .line 141
    new-instance v5, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 143
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 145
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 148
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 151
    move-result-object v6

    .line 154
    invoke-direct {v5, v3, v4, v6}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 155
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 161
    goto/16 :goto_0

    .line 164
    :cond_7
    return-object v0
    .line 166
.end method


# virtual methods
.method public final readFavorites()Ljava/util/List;
    .locals 7

    .line 1
    const-string v0, "Failed parsing favorites file: "

    .line 2
    const-string v1, "Failed parsing favorites file: "

    .line 4
    const-string v2, "Reading data from file: "

    .line 6
    iget-object v3, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->file:Ljava/io/File;

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 10
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    const-string p0, "ControlsFavoritePersistenceWrapper"

    .line 16
    const-string v0, "No favorites, returning empty list"

    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 23
    return-object p0

    .line 25
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 26
    new-instance v4, Ljava/io/FileInputStream;

    .line 28
    iget-object v5, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->file:Ljava/io/File;

    .line 30
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 32
    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 35
    :try_start_1
    const-string v4, "ControlsFavoritePersistenceWrapper"

    .line 38
    iget-object v5, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->file:Ljava/io/File;

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 53
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v2, Lcom/android/systemui/backup/BackupHelper;->controlsDataLock:Ljava/lang/Object;

    .line 57
    monitor-enter v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 60
    move-result-object v4

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 65
    invoke-static {v4}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->parseXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    .line 68
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 73
    return-object v4

    .line 76
    :catchall_0
    move-exception v4

    .line 77
    :try_start_4
    monitor-exit v2

    .line 78
    throw v4
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    :try_start_5
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 83
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->file:Ljava/io/File;

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 98
    invoke-direct {v2, p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    throw v2

    .line 102
    :catch_1
    move-exception v0

    .line 103
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 104
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->file:Ljava/io/File;

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 119
    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    :goto_0
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 124
    throw p0

    .line 127
    :catch_2
    const-string p0, "ControlsFavoritePersistenceWrapper"

    .line 128
    const-string v0, "No file found"

    .line 130
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 135
    return-object p0
    .line 137
.end method

.method public final storeFavorites(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->file:Ljava/io/File;

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper$storeFavorites$1;

    .line 17
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper$storeFavorites$1;-><init>(Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;Ljava/util/List;)V

    .line 19
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->executor:Ljava/util/concurrent/Executor;

    .line 22
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    return-void
    .line 27
.end method
