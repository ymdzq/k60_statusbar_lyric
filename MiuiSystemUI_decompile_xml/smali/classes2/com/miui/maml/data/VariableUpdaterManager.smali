.class public Lcom/miui/maml/data/VariableUpdaterManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final USE_TAG_NONE:Ljava/lang/String; = "none"


# instance fields
.field private mRootRef:Ljava/lang/ref/WeakReference;

.field private mUpdaters:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 12
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object v0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mRootRef:Ljava/lang/ref/WeakReference;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public add(Lcom/miui/maml/data/VariableUpdater;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public addFromTag(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    const-string v0, "none"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_3

    .line 16
    :cond_0
    const-string v0, ","

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    array-length v0, p1

    .line 23
    const/4 v1, 0x0

    .line 24
    move v2, v1

    .line 25
    :goto_0
    if-ge v2, v0, :cond_4

    .line 26
    aget-object v3, p1, v2

    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 33
    const/16 v4, 0x2e

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 36
    move-result v4

    .line 39
    const/4 v5, -0x1

    .line 40
    if-eq v4, v5, :cond_1

    .line 41
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    move-result-object v5

    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 52
    move-object v4, v3

    .line 53
    move-object v3, v5

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v4, 0x0

    .line 56
    :goto_1
    const-string v5, "DateTime"

    .line 57
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v5

    .line 62
    if-eqz v5, :cond_2

    .line 63
    new-instance v3, Lcom/miui/maml/data/DateTimeVariableUpdater;

    .line 65
    invoke-direct {v3, p0, v4}, Lcom/miui/maml/data/DateTimeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v3}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    .line 70
    goto :goto_2

    .line 73
    :cond_2
    const-string v4, "Battery"

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v3

    .line 79
    if-eqz v3, :cond_3

    .line 80
    new-instance v3, Lcom/miui/maml/data/BatteryVariableUpdater;

    .line 82
    invoke-direct {v3, p0}, Lcom/miui/maml/data/BatteryVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 84
    invoke-virtual {p0, v3}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    .line 87
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_0

    .line 92
    :cond_4
    :goto_3
    return-void
    .line 93
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/data/VariableUpdater;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdater;->finish()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mRootRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
    .line 14
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/data/VariableUpdater;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdater;->init()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/data/VariableUpdater;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdater;->pause()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public remove(Lcom/miui/maml/data/VariableUpdater;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/data/VariableUpdater;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdater;->resume()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public tick(J)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/data/VariableUpdater;

    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/VariableUpdater;->tick(J)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method
