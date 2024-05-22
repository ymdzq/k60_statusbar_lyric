.class public final Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;
.super Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mButtonData:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const v0, 0x7f0a05ac    # @id/menu_container

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->setVisibility(I)V

    .line 3
    iput-object p0, p1, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    .line 8
    new-instance v0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    .line 10
    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;-><init>(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 12
    check-cast p0, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
    .line 20
.end method

.method public final getContextButtonIndex(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    .line 3
    move-object v2, v1

    .line 5
    check-cast v2, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    .line 20
    iget-object v1, v1, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 22
    iget v1, v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mId:I

    .line 24
    if-ne v1, p1, :cond_0

    .line 26
    return v0

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, -0x1

    .line 32
    return p0
    .line 33
.end method

.method public final setButtonVisibility(IZ)I
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->getContextButtonIndex(I)I

    .line 2
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    const/4 p1, 0x4

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->mButtonData:Ljava/util/List;

    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    .line 21
    iput-boolean p2, v2, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->markedVisible:Z

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result p2

    .line 28
    const/4 v2, 0x1

    .line 29
    sub-int/2addr p2, v2

    .line 30
    const/4 v3, 0x0

    .line 31
    move v4, v3

    .line 32
    :goto_0
    if-ltz p2, :cond_1

    .line 33
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v5

    .line 38
    check-cast v5, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    .line 39
    if-nez v4, :cond_0

    .line 41
    iget-boolean v6, v5, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->markedVisible:Z

    .line 43
    if-eqz v6, :cond_0

    .line 45
    iget-object v4, v5, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 47
    invoke-virtual {v4, v3}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->setVisibility(I)V

    .line 49
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 52
    move v4, v2

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    iget-object v5, v5, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 57
    invoke-virtual {v5, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->setVisibility(I)V

    .line 59
    :goto_1
    add-int/lit8 p2, p2, -0x1

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object p0

    .line 68
    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;

    .line 69
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup$ButtonData;->button:Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    .line 73
    move-result p0

    .line 76
    return p0

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 78
    const-string p2, "Cannot find the button id of "

    .line 80
    const-string v0, " in context group"

    .line 82
    invoke-static {p2, p1, v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p0
    .line 91
.end method
