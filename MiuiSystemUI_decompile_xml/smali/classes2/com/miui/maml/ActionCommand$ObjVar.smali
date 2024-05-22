.class Lcom/miui/maml/ActionCommand$ObjVar;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mIndex:I

.field private mIndexArr:Lcom/miui/maml/data/Expression;

.field private mVars:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mVars:Lcom/miui/maml/data/Variables;

    .line 5
    const/16 v0, 0x5b

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 9
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    const/4 v1, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    move-result v2

    .line 25
    add-int/lit8 v2, v2, -0x1

    .line 26
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 32
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mIndexArr:Lcom/miui/maml/data/Expression;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    :catch_0
    move-object p1, v1

    .line 38
    :catch_1
    :cond_0
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    .line 39
    move-result p1

    .line 42
    iput p1, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mIndex:I

    .line 43
    return-void
    .line 45
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mVars:Lcom/miui/maml/data/Variables;

    .line 2
    iget v1, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mIndex:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$ObjVar;->mIndexArr:Lcom/miui/maml/data/Expression;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    instance-of v1, v0, [Ljava/lang/Object;

    .line 16
    if-eqz v1, :cond_0

    .line 18
    :try_start_0
    check-cast v0, [Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 22
    move-result-wide v1

    .line 25
    double-to-int p0, v1

    .line 26
    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p0

    .line 29
    :catch_0
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :cond_0
    return-object v0
.end method
