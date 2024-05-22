.class Lcom/miui/maml/elements/MusicLyricParser$EntityCompator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;)I
    .locals 0

    .line 2
    iget p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    iget p1, p2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    check-cast p2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/MusicLyricParser$EntityCompator;->compare(Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;)I

    move-result p0

    return p0
.end method
