.class public Lcom/miui/maml/util/FilenameExtFilter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private mExts:Ljava/util/HashSet;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/util/FilenameExtFilter;->mExts:Ljava/util/HashSet;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_0
    return-void
    .line 21
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 12
    invoke-static {v1, p1, p2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 21
    move-result p1

    .line 24
    const/4 v0, 0x1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    return v0

    .line 28
    :cond_0
    const/16 p1, 0x2e

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 31
    move-result p1

    .line 34
    const/4 v1, -0x1

    .line 35
    if-eq p1, v1, :cond_1

    .line 36
    add-int/2addr p1, v0

    .line 38
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 39
    move-result v0

    .line 42
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/FilenameExtFilter;->contains(Ljava/lang/String;)Z

    .line 53
    move-result p0

    .line 56
    return p0

    .line 57
    :cond_1
    const/4 p0, 0x0

    .line 58
    return p0
    .line 59
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/FilenameExtFilter;->mExts:Ljava/util/HashSet;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method
