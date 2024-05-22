.class public Lmiuix/animation/utils/LinkNode;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public next:Lmiuix/animation/utils/LinkNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addToTail(Lmiuix/animation/utils/LinkNode;)V
    .locals 1

    .line 1
    :goto_0
    if-ne p0, p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    .line 5
    if-nez v0, :cond_1

    .line 7
    iput-object p1, p0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    .line 9
    return-void

    .line 11
    :cond_1
    move-object p0, v0

    .line 12
    goto :goto_0
    .line 13
.end method

.method public destroy()Lmiuix/animation/utils/LinkNode;
    .locals 1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lmiuix/animation/utils/LinkNode;->remove()Lmiuix/animation/utils/LinkNode;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return-object p0
    .line 9
.end method

.method public remove()Lmiuix/animation/utils/LinkNode;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    .line 5
    return-object v0
    .line 7
.end method

.method public size()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object p0, p0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    return v0
    .line 10
.end method
