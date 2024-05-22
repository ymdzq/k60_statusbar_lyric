.class public final Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper$storeFavorites$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $structures:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper$storeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper$storeFavorites$1;->$structures:Ljava/util/List;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    const-string v0, "ControlsFavoritePersistenceWrapper"

    .line 2
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper$storeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 4
    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->file:Ljava/io/File;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    const-string v3, "Saving data to file: "

    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Landroid/util/AtomicFile;

    .line 25
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper$storeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 27
    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->file:Ljava/io/File;

    .line 29
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 31
    sget-object v1, Lcom/android/systemui/backup/BackupHelper;->controlsDataLock:Ljava/lang/Object;

    .line 34
    sget-object v1, Lcom/android/systemui/backup/BackupHelper;->controlsDataLock:Ljava/lang/Object;

    .line 36
    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper$storeFavorites$1;->$structures:Ljava/util/List;

    .line 38
    monitor-enter v1

    .line 40
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 41
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 44
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    move-result-object v4

    .line 48
    const-string/jumbo v5, "utf-8"

    .line 49
    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 52
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 55
    const/4 v6, 0x1

    .line 57
    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 58
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    const/4 v7, 0x0

    .line 63
    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 64
    const-string/jumbo v5, "version"

    .line 67
    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    const-string v5, "1"

    .line 73
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    const-string/jumbo v5, "version"

    .line 78
    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    const-string/jumbo v5, "structures"

    .line 84
    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v2

    .line 93
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v5

    .line 97
    if-eqz v5, :cond_1

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v5

    .line 103
    check-cast v5, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 104
    const-string/jumbo v8, "structure"

    .line 106
    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    const-string v8, "component"

    .line 112
    iget-object v9, v5, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 114
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 116
    move-result-object v9

    .line 119
    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string/jumbo v8, "structure"

    .line 123
    iget-object v9, v5, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    .line 126
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    move-result-object v9

    .line 131
    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    const-string v8, "controls"

    .line 135
    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    iget-object v5, v5, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 140
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 142
    move-result-object v5

    .line 145
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    move-result v8

    .line 149
    if-eqz v8, :cond_0

    .line 150
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    move-result-object v8

    .line 155
    check-cast v8, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 156
    const-string v9, "control"

    .line 158
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    const-string v9, "id"

    .line 163
    iget-object v10, v8, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 165
    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    const-string/jumbo v9, "title"

    .line 170
    iget-object v10, v8, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    .line 173
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    move-result-object v10

    .line 178
    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    const-string/jumbo v9, "subtitle"

    .line 182
    iget-object v10, v8, Lcom/android/systemui/controls/controller/ControlInfo;->controlSubtitle:Ljava/lang/CharSequence;

    .line 185
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 187
    move-result-object v10

    .line 190
    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    const-string/jumbo v9, "type"

    .line 194
    iget v8, v8, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    .line 197
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 199
    move-result-object v8

    .line 202
    invoke-interface {v4, v7, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    const-string v8, "control"

    .line 206
    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    goto :goto_1

    .line 211
    :cond_0
    const-string v5, "controls"

    .line 212
    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    const-string/jumbo v5, "structure"

    .line 217
    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    goto/16 :goto_0

    .line 223
    :cond_1
    const-string/jumbo v2, "structures"

    .line 225
    invoke-interface {v4, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 231
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 237
    goto :goto_2

    .line 240
    :catchall_0
    :try_start_3
    const-string v2, "ControlsFavoritePersistenceWrapper"

    .line 241
    const-string v4, "Failed to write file, reverting to previous version"

    .line 243
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 248
    :try_start_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 251
    const/4 v6, 0x0

    .line 254
    :goto_2
    monitor-exit v1

    .line 255
    if-eqz v6, :cond_2

    .line 256
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper$storeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 258
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->backupManager:Landroid/app/backup/BackupManager;

    .line 260
    if-eqz p0, :cond_2

    .line 262
    invoke-virtual {p0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 264
    :cond_2
    return-void

    .line 267
    :catchall_1
    move-exception p0

    .line 268
    :try_start_5
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 269
    throw p0

    .line 272
    :catchall_2
    move-exception p0

    .line 273
    goto :goto_3

    .line 274
    :catch_0
    move-exception p0

    .line 275
    const-string v0, "ControlsFavoritePersistenceWrapper"

    .line 276
    const-string v2, "Failed to start write file"

    .line 278
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 280
    monitor-exit v1

    .line 283
    return-void

    .line 284
    :goto_3
    monitor-exit v1

    .line 285
    throw p0
    .line 286
.end method
