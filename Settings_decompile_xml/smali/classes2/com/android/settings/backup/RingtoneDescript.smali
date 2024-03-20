.class public Lcom/android/settings/backup/RingtoneDescript;
.super Ljava/lang/Object;
.source "RingtoneDescript.java"


# instance fields
.field public mAlarm:Ljava/lang/String;

.field public mNotification:Ljava/lang/String;

.field public mRingtone:Ljava/lang/String;

.field public mSmsDelivered:Ljava/lang/String;

.field public mSmsReceived:Ljava/lang/String;

.field public mXmlFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/File;)Z
    .locals 6

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/android/settings/backup/RingtoneDescript;->mXmlFile:Ljava/io/File;

    const/4 v0, 0x0

    .line 109
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    const-string v3, "UTF-8"

    .line 112
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 115
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 119
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v4, :cond_2

    .line 139
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v4

    :cond_2
    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x4

    if-ne v3, v5, :cond_4

    .line 127
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/backup/RingtoneDescript;->readNode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_2

    :catch_1
    move-object v0, v2

    goto :goto_3

    :catch_2
    move-object v0, v2

    goto :goto_5

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v0, :cond_5

    .line 139
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 143
    :catch_3
    :cond_5
    throw p0

    :catch_4
    :goto_3
    if-eqz v0, :cond_6

    .line 139
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_6

    :catch_5
    :goto_5
    if-eqz v0, :cond_6

    goto :goto_4

    :catch_6
    :cond_6
    :goto_6
    return v1
.end method

.method protected readNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ringtone"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iput-object p2, p0, Lcom/android/settings/backup/RingtoneDescript;->mRingtone:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "notification"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iput-object p2, p0, Lcom/android/settings/backup/RingtoneDescript;->mNotification:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "alarm"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iput-object p2, p0, Lcom/android/settings/backup/RingtoneDescript;->mAlarm:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "sms"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    iput-object p2, p0, Lcom/android/settings/backup/RingtoneDescript;->mSmsDelivered:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "sms_received"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 48
    iput-object p2, p0, Lcom/android/settings/backup/RingtoneDescript;->mSmsReceived:Ljava/lang/String;

    :cond_4
    :goto_0
    return-void
.end method
