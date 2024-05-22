.class public abstract Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 12
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
    .line 28
.end method

.method public static final readXml(Ljava/io/InputStream;)Landroid/util/SparseArray;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 7
    move-result-object v1

    .line 10
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 16
    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 17
    const-string p0, "bs"

    .line 20
    invoke-static {v1, p0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 22
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 25
    move-result p0

    .line 28
    const-string/jumbo v2, "v"

    .line 29
    invoke-static {v1, v2}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 35
    if-eqz v2, :cond_7

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    move-result v2

    .line 41
    const/4 v3, 0x1

    .line 42
    if-eq v2, v3, :cond_4

    .line 43
    const/4 v3, 0x2

    .line 45
    if-eq v2, v3, :cond_0

    .line 46
    goto :goto_3

    .line 48
    :cond_0
    :goto_0
    invoke-static {v1, p0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 49
    move-result v2

    .line 52
    if-eqz v2, :cond_7

    .line 53
    const-string/jumbo v2, "uid"

    .line 55
    invoke-static {v1, v2}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 61
    if-nez v2, :cond_1

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 65
    move-result v3

    .line 68
    new-instance v4, Ljava/util/ArrayList;

    .line 69
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 71
    :goto_1
    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 74
    move-result v5

    .line 77
    if-eqz v5, :cond_3

    .line 78
    invoke-static {v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->readXmlEntry(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    .line 80
    move-result-object v5

    .line 83
    if-nez v5, :cond_2

    .line 84
    goto :goto_1

    .line 86
    :cond_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    goto :goto_1

    .line 90
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 91
    move-result v3

    .line 94
    if-nez v3, :cond_0

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    move-result v2

    .line 100
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 101
    move-result-object v3

    .line 104
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    goto :goto_0

    .line 108
    :cond_4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 109
    move-result p0

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    .line 113
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    :cond_5
    :goto_2
    invoke-static {v1, p0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 118
    move-result v3

    .line 121
    if-eqz v3, :cond_6

    .line 122
    invoke-static {v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->readXmlEntry(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    .line 124
    move-result-object v3

    .line 127
    if-eqz v3, :cond_5

    .line 128
    iget v4, v3, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    .line 130
    if-nez v4, :cond_5

    .line 132
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    goto :goto_2

    .line 137
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 138
    move-result p0

    .line 141
    if-nez p0, :cond_7

    .line 142
    const/4 p0, 0x0

    .line 144
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 145
    move-result-object v1

    .line 148
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    :cond_7
    :goto_3
    return-object v0
    .line 152
.end method

.method public static final readXmlEntry(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/wm/shell/bubbles/storage/BubbleEntity;
    .locals 13

    .line 1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    .line 13
    const-string/jumbo v1, "uid"

    .line 15
    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_6

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    move-result v3

    .line 28
    const-string v1, "pkg"

    .line 29
    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    return-object v2

    .line 37
    :cond_1
    const-string/jumbo v1, "sid"

    .line 38
    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 44
    if-nez v5, :cond_2

    .line 45
    return-object v2

    .line 47
    :cond_2
    const-string v1, "key"

    .line 48
    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v6

    .line 53
    if-nez v6, :cond_3

    .line 54
    return-object v2

    .line 56
    :cond_3
    const-string v1, "h"

    .line 57
    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 62
    if-eqz v1, :cond_6

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    move-result v7

    .line 68
    const-string v1, "hid"

    .line 69
    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 74
    if-eqz v1, :cond_6

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    move-result v8

    .line 80
    const-string/jumbo v1, "t"

    .line 81
    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v9

    .line 87
    const-string/jumbo v1, "tid"

    .line 88
    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 94
    if-eqz v1, :cond_4

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    move-result v1

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/4 v1, -0x1

    .line 102
    :goto_1
    move v10, v1

    .line 103
    const-string v1, "l"

    .line 104
    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v11

    .line 109
    const-string v1, "d"

    .line 110
    invoke-static {p0, v1}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->getAttributeWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 115
    if-eqz p0, :cond_5

    .line 116
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 118
    move-result p0

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    const/4 p0, 0x0

    .line 123
    :goto_2
    move v12, p0

    .line 124
    move-object v2, v0

    .line 125
    invoke-direct/range {v2 .. v12}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Z)V

    .line 126
    return-object v0

    .line 129
    :cond_6
    return-object v2
    .line 130
.end method

.method public static final writeXml(Ljava/io/OutputStream;Landroid/util/SparseArray;)V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    .line 2
    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 13
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 19
    const-string p0, "bs"

    .line 22
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 24
    const-string/jumbo v2, "v"

    .line 27
    const-string v3, "2"

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 35
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_0
    if-ge v3, v2, :cond_3

    .line 40
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 42
    move-result v4

    .line 45
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    move-result-object v5

    .line 49
    check-cast v5, Ljava/util/List;

    .line 50
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 58
    const-string/jumbo v6, "uid"

    .line 59
    invoke-virtual {v0, v1, v6, v4}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v4

    .line 68
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v5

    .line 72
    if-eqz v5, :cond_2

    .line 73
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v5

    .line 78
    check-cast v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    .line 79
    const-string v7, "bb"

    .line 81
    :try_start_0
    invoke-virtual {v0, v1, v7}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    iget v8, v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    .line 86
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 88
    move-result-object v8

    .line 91
    invoke-virtual {v0, v1, v6, v8}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    const-string v8, "pkg"

    .line 95
    iget-object v9, v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string/jumbo v8, "sid"

    .line 102
    iget-object v9, v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    const-string v8, "key"

    .line 110
    iget-object v9, v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    const-string v8, "h"

    .line 117
    iget v9, v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    .line 119
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 121
    move-result-object v9

    .line 124
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    const-string v8, "hid"

    .line 128
    iget v9, v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    .line 130
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 132
    move-result-object v9

    .line 135
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    iget-object v8, v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    .line 139
    if-eqz v8, :cond_0

    .line 141
    const-string/jumbo v9, "t"

    .line 143
    invoke-virtual {v0, v1, v9, v8}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    :cond_0
    const-string/jumbo v8, "tid"

    .line 149
    iget v9, v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    .line 152
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 154
    move-result-object v9

    .line 157
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    iget-object v8, v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    .line 161
    if-eqz v8, :cond_1

    .line 163
    const-string v9, "l"

    .line 165
    invoke-virtual {v0, v1, v9, v8}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    :cond_1
    const-string v8, "d"

    .line 170
    iget-boolean v5, v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    .line 172
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 174
    move-result-object v5

    .line 177
    invoke-virtual {v0, v1, v8, v5}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    invoke-virtual {v0, v1, v7}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_1

    .line 184
    :catch_0
    move-exception p0

    .line 185
    new-instance p1, Ljava/lang/RuntimeException;

    .line 186
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 188
    throw p1

    .line 191
    :cond_2
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    add-int/lit8 v3, v3, 0x1

    .line 195
    goto/16 :goto_0

    .line 197
    :cond_3
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 202
    return-void
    .line 205
.end method
