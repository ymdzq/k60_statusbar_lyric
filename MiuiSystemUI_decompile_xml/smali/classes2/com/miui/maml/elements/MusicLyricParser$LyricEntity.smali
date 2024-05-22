.class public Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final HTML_BR_PATTERN:Ljava/lang/String; = "%s<br/>"


# instance fields
.field public lyric:Ljava/lang/CharSequence;

.field public time:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 5
    iput-object p2, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public decorate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 2
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "%s<br/>"

    .line 8
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 18
    return-void
    .line 20
.end method

.method public isDecorated()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 2
    instance-of p0, p0, Ljava/lang/String;

    .line 4
    xor-int/lit8 p0, p0, 0x1

    .line 6
    return p0
    .line 8
.end method
