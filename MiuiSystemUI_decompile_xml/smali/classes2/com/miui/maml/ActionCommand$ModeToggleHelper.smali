.class Lcom/miui/maml/ActionCommand$ModeToggleHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mCurModeIndex:I

.field private mCurToggleIndex:I

.field private mModeIds:Ljava/util/ArrayList;

.field private mModeNames:Ljava/util/ArrayList;

.field private mToggle:Z

.field private mToggleAll:Z

.field private mToggleModes:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/ActionCommand$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;-><init>()V

    return-void
.end method

.method private findMode(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    return v0

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, -0x1

    .line 29
    return p0
    .line 30
.end method


# virtual methods
.method public addMode(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
    .line 16
.end method

.method public build(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->findMode(Ljava/lang/String;)I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ltz v0, :cond_0

    .line 7
    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 9
    return v1

    .line 11
    :cond_0
    const-string/jumbo v0, "toggle"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleAll:Z

    .line 21
    return v1

    .line 23
    :cond_1
    const-string v0, ","

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    move v2, v0

    .line 31
    :goto_0
    array-length v3, p1

    .line 32
    if-ge v2, v3, :cond_3

    .line 33
    aget-object v3, p1, v2

    .line 35
    invoke-direct {p0, v3}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->findMode(Ljava/lang/String;)I

    .line 37
    move-result v3

    .line 40
    if-gez v3, :cond_2

    .line 41
    return v0

    .line 43
    :cond_2
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v3

    .line 49
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggle:Z

    .line 56
    return v1
    .line 58
.end method

.method public click()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggle:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    .line 10
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 17
    rem-int/2addr v0, v1

    .line 18
    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    .line 19
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v0

    .line 32
    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleAll:Z

    .line 36
    if-eqz v0, :cond_1

    .line 38
    iget v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 42
    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 44
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v1

    .line 51
    rem-int/2addr v0, v1

    .line 52
    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 53
    :cond_1
    :goto_0
    return-void
    .line 55
.end method

.method public getModeId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    .line 2
    iget p0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Integer;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p0

    .line 15
    return p0
    .line 16
.end method

.method public getModeName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 2
    iget p0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    return-object p0
    .line 12
.end method
