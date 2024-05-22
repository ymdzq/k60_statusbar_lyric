.class public final Lcom/android/keyguard/clock/ClockOptionsProvider;
.super Landroid/content/ContentProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mClockInfosProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/ClockOptionsProvider;->mClockInfosProvider:Ljavax/inject/Provider;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 2
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result p1

    .line 9
    if-lez p1, :cond_1

    .line 10
    const-string p1, "preview"

    .line 12
    const/4 v0, 0x0

    .line 14
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    const-string/jumbo p1, "thumbnail"

    .line 25
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    :cond_0
    const-string p0, "image/png"

    .line 38
    return-object p0

    .line 40
    :cond_1
    const-string/jumbo p0, "vnd.android.cursor.dir/clock_faces"

    .line 41
    return-object p0
    .line 44
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
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
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 2
    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_6

    .line 11
    const/4 v0, 0x0

    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    const-string v2, "preview"

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    const-string/jumbo v1, "thumbnail"

    .line 26
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 36
    if-eqz v1, :cond_6

    .line 37
    :cond_0
    const/4 v1, 0x1

    .line 39
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v3

    .line 49
    if-nez v3, :cond_5

    .line 50
    iget-object v3, p0, Lcom/android/keyguard/clock/ClockOptionsProvider;->mClockInfosProvider:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 57
    check-cast v3, Ljava/util/List;

    .line 58
    move v4, v0

    .line 60
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 61
    move-result v5

    .line 64
    if-ge v4, v5, :cond_2

    .line 65
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v5

    .line 70
    check-cast v5, Lcom/android/keyguard/clock/ClockInfo;

    .line 71
    iget-object v5, v5, Lcom/android/keyguard/clock/ClockInfo;->mId:Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v5

    .line 78
    if-eqz v5, :cond_1

    .line 79
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 84
    check-cast v1, Lcom/android/keyguard/clock/ClockInfo;

    .line 85
    goto :goto_1

    .line 87
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 88
    goto :goto_0

    .line 90
    :cond_2
    const/4 v1, 0x0

    .line 91
    :goto_1
    if-eqz v1, :cond_4

    .line 92
    const-string v5, "image/png"

    .line 94
    const/4 v6, 0x0

    .line 96
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object p2

    .line 100
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result p2

    .line 104
    if-eqz p2, :cond_3

    .line 105
    iget-object p2, v1, Lcom/android/keyguard/clock/ClockInfo;->mPreview:Ljava/util/function/Supplier;

    .line 107
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 109
    move-result-object p2

    .line 112
    check-cast p2, Landroid/graphics/Bitmap;

    .line 113
    goto :goto_2

    .line 115
    :cond_3
    iget-object p2, v1, Lcom/android/keyguard/clock/ClockInfo;->mThumbnail:Ljava/util/function/Supplier;

    .line 116
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 118
    move-result-object p2

    .line 121
    check-cast p2, Landroid/graphics/Bitmap;

    .line 122
    :goto_2
    move-object v7, p2

    .line 124
    new-instance v8, Lcom/android/keyguard/clock/ClockOptionsProvider$MyWriter;

    .line 125
    invoke-direct {v8}, Lcom/android/keyguard/clock/ClockOptionsProvider$MyWriter;-><init>()V

    .line 127
    move-object v3, p0

    .line 130
    move-object v4, p1

    .line 131
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    .line 132
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :cond_4
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 137
    const-string p1, "Invalid preview url, id not found"

    .line 139
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 141
    throw p0

    .line 144
    :cond_5
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 145
    const-string p1, "Invalid preview url, missing id"

    .line 147
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 149
    throw p0

    .line 152
    :cond_6
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 153
    const-string p1, "Invalid preview url"

    .line 155
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 157
    throw p0
    .line 160
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 1
    const-string p2, "/list_options"

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance p1, Landroid/database/MatrixCursor;

    .line 16
    const-string p2, "name"

    .line 18
    const-string/jumbo p3, "title"

    .line 20
    const-string p4, "id"

    .line 23
    const-string/jumbo p5, "thumbnail"

    .line 25
    const-string v0, "preview"

    .line 28
    filled-new-array {p2, p3, p4, p5, v0}, [Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    invoke-direct {p1, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockOptionsProvider;->mClockInfosProvider:Ljavax/inject/Provider;

    .line 37
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 42
    check-cast p0, Ljava/util/List;

    .line 43
    const/4 v1, 0x0

    .line 45
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 46
    move-result v2

    .line 49
    if-ge v1, v2, :cond_1

    .line 50
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 55
    check-cast v2, Lcom/android/keyguard/clock/ClockInfo;

    .line 56
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    .line 58
    move-result-object v3

    .line 61
    iget-object v4, v2, Lcom/android/keyguard/clock/ClockInfo;->mName:Ljava/lang/String;

    .line 62
    invoke-virtual {v3, p2, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 64
    move-result-object v3

    .line 67
    iget-object v4, v2, Lcom/android/keyguard/clock/ClockInfo;->mTitle:Ljava/util/function/Supplier;

    .line 68
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 73
    check-cast v4, Ljava/lang/String;

    .line 74
    invoke-virtual {v3, p3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 76
    move-result-object v3

    .line 79
    iget-object v2, v2, Lcom/android/keyguard/clock/ClockInfo;->mId:Ljava/lang/String;

    .line 80
    invoke-virtual {v3, p4, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 82
    move-result-object v3

    .line 85
    new-instance v4, Landroid/net/Uri$Builder;

    .line 86
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 88
    const-string v5, "content"

    .line 91
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    move-result-object v4

    .line 96
    const-string v6, "com.android.keyguard.clock"

    .line 97
    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    move-result-object v4

    .line 102
    invoke-virtual {v4, p5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 103
    move-result-object v4

    .line 106
    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 107
    move-result-object v4

    .line 110
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 111
    move-result-object v4

    .line 114
    invoke-virtual {v3, p5, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 115
    move-result-object v3

    .line 118
    new-instance v4, Landroid/net/Uri$Builder;

    .line 119
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 121
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    move-result-object v4

    .line 127
    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 128
    move-result-object v4

    .line 131
    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 132
    move-result-object v4

    .line 135
    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 136
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 140
    move-result-object v2

    .line 143
    invoke-virtual {v3, v0, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 147
    goto :goto_0

    .line 149
    :cond_1
    return-object p1
    .line 150
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
