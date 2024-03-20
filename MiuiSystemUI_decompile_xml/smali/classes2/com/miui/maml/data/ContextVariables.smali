.class public Lcom/miui/maml/data/ContextVariables;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 4
    return-void
    .line 7
.end method

.method public getBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    return-object p1

    .line 11
    :cond_0
    instance-of v0, p0, Landroid/graphics/Bitmap;

    .line 12
    if-nez v0, :cond_1

    .line 14
    return-object p1

    .line 16
    :cond_1
    check-cast p0, Landroid/graphics/Bitmap;

    .line 17
    return-object p0
    .line 19
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    return-object p1

    .line 11
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    .line 12
    if-nez v0, :cond_1

    .line 14
    return-object p1

    .line 16
    :cond_1
    check-cast p0, Ljava/lang/Double;

    .line 17
    return-object p0
    .line 19
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    return-object p1

    .line 11
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    .line 12
    if-nez v0, :cond_1

    .line 14
    return-object p1

    .line 16
    :cond_1
    check-cast p0, Ljava/lang/Integer;

    .line 17
    return-object p0
    .line 19
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    return-object p1

    .line 11
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    .line 12
    if-nez v0, :cond_1

    .line 14
    return-object p1

    .line 16
    :cond_1
    check-cast p0, Ljava/lang/Long;

    .line 17
    return-object p0
    .line 19
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    instance-of p1, p0, Ljava/lang/String;

    .line 12
    if-nez p1, :cond_1

    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    check-cast p0, Ljava/lang/String;

    .line 21
    return-object p0
    .line 23
.end method

.method public getVar(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public setVar(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    return-void
    .line 7
.end method
