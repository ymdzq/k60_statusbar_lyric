.class Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field album:Ljava/lang/String;

.field artist:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/MusicControlScreenElement$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    :cond_0
    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 13
    :cond_1
    if-eqz p3, :cond_2

    .line 14
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    move-result-object p3

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->title:Ljava/lang/String;

    .line 20
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->artist:Ljava/lang/String;

    .line 28
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    iget-object v0, p0, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->album:Ljava/lang/String;

    .line 36
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    goto :goto_0

    .line 44
    :cond_3
    const/4 v0, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 47
    :goto_1
    if-eqz v0, :cond_5

    .line 48
    iput-object p1, p0, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->title:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->artist:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/miui/maml/elements/MusicControlScreenElement$AlbumInfo;->album:Ljava/lang/String;

    .line 54
    :cond_5
    return v0
    .line 56
.end method
