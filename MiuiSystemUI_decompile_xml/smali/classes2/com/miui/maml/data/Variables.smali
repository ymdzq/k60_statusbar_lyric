.class public Lcom/miui/maml/data/Variables;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Variables"

.field public static final MAX_ARRAY_SIZE:I = 0x2710

.field public static final VARIABLE_TYPE_HIGH_PRIORITY:I = 0x1

.field public static final VARIABLE_TYPE_NORMAL:I


# instance fields
.field private mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

.field private mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/miui/maml/data/Variables$DoubleBucket;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/miui/maml/data/Variables$DoubleBucket;-><init>(Lcom/miui/maml/data/Variables$1;)V

    .line 8
    iput-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    .line 11
    new-instance v0, Lcom/miui/maml/data/Variables$VarBucket;

    .line 13
    invoke-direct {v0, v1}, Lcom/miui/maml/data/Variables$VarBucket;-><init>(Lcom/miui/maml/data/Variables$1;)V

    .line 15
    iput-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    .line 18
    return-void
    .line 20
.end method

.method public static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/maml/data/Variables;->DBG:Z

    .line 2
    return v0
    .line 4
.end method

.method private static dbglog(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/maml/data/Variables;->DBG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "Variables"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method private getArrInner(II)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, " arrIndex:"

    .line 2
    const-string v1, "getArrInner: designated array index is invalid. index:"

    .line 4
    const-string v2, "getArrInner: designated object is not an array. index:"

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, [Ljava/lang/Object;

    .line 12
    if-nez p0, :cond_0

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p0, p2}, Lcom/miui/maml/data/Variables;->isIndexValid(Ljava/lang/Object;I)Z

    .line 32
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 56
    goto :goto_0

    .line 59
    :cond_1
    aget-object p0, p0, p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-object p0

    .line 62
    :catch_0
    const-string p0, "getArrInner: designated index is invalid. index:"

    .line 63
    invoke-static {p0, p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 69
    goto :goto_0

    .line 72
    :catch_1
    const-string p0, "getArrInner: designated object type is not correct. index:"

    .line 73
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 79
    :goto_0
    const/4 p0, 0x0

    .line 82
    return-object p0
    .line 83
.end method

.method private static isIndexValid(Ljava/lang/Object;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_1

    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 5
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    if-lt p1, p0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :catch_0
    :cond_1
    :goto_0
    return v0
    .line 14
.end method

.method public static putValueToArr(Ljava/lang/Object;ID)Z
    .locals 5

    .line 1
    invoke-static {p0, p1}, Lcom/miui/maml/data/Variables;->isIndexValid(Ljava/lang/Object;I)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    const-string p0, " designated array index is invalid. arrIndex:"

    .line 9
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 15
    return v1

    .line 18
    :cond_0
    instance-of v0, p0, [D

    .line 19
    const/4 v2, 0x1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    check-cast p0, [D

    .line 24
    aput-wide p2, p0, p1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    instance-of v0, p0, [B

    .line 29
    if-eqz v0, :cond_2

    .line 31
    check-cast p0, [B

    .line 33
    double-to-long p2, p2

    .line 35
    long-to-int p2, p2

    .line 36
    int-to-byte p2, p2

    .line 37
    aput-byte p2, p0, p1

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    instance-of v0, p0, [C

    .line 41
    if-eqz v0, :cond_3

    .line 43
    check-cast p0, [C

    .line 45
    double-to-long p2, p2

    .line 47
    long-to-int p2, p2

    .line 48
    int-to-char p2, p2

    .line 49
    aput-char p2, p0, p1

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    instance-of v0, p0, [F

    .line 53
    if-eqz v0, :cond_4

    .line 55
    check-cast p0, [F

    .line 57
    double-to-float p2, p2

    .line 59
    aput p2, p0, p1

    .line 60
    goto :goto_0

    .line 62
    :cond_4
    instance-of v0, p0, [I

    .line 63
    if-eqz v0, :cond_5

    .line 65
    check-cast p0, [I

    .line 67
    double-to-long p2, p2

    .line 69
    long-to-int p2, p2

    .line 70
    aput p2, p0, p1

    .line 71
    goto :goto_0

    .line 73
    :cond_5
    instance-of v0, p0, [J

    .line 74
    if-eqz v0, :cond_6

    .line 76
    check-cast p0, [J

    .line 78
    double-to-long p2, p2

    .line 80
    aput-wide p2, p0, p1

    .line 81
    goto :goto_0

    .line 83
    :cond_6
    instance-of v0, p0, [S

    .line 84
    if-eqz v0, :cond_7

    .line 86
    check-cast p0, [S

    .line 88
    double-to-long p2, p2

    .line 90
    long-to-int p2, p2

    .line 91
    int-to-short p2, p2

    .line 92
    aput-short p2, p0, p1

    .line 93
    goto :goto_0

    .line 95
    :cond_7
    instance-of v0, p0, [Z

    .line 96
    if-eqz v0, :cond_9

    .line 98
    check-cast p0, [Z

    .line 100
    const-wide/16 v3, 0x0

    .line 102
    cmpl-double p2, p2, v3

    .line 104
    if-lez p2, :cond_8

    .line 106
    move v1, v2

    .line 108
    :cond_8
    aput-boolean v1, p0, p1

    .line 109
    :cond_9
    :goto_0
    return v2
    .line 111
.end method


# virtual methods
.method public createArray(Ljava/lang/String;ILjava/lang/Class;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_2

    .line 3
    if-lez p2, :cond_2

    .line 5
    const/16 v1, 0x2710

    .line 7
    if-le p2, v1, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    .line 12
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    :try_start_0
    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 22
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V

    .line 26
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :catch_0
    :cond_1
    return v0

    .line 31
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 32
    const-string p3, "createArray failed: name= "

    .line 34
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, "  size="

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 53
    const-string p1, "Variables"

    .line 54
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return v0
    .line 59
.end method

.method public existsArrItem(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    return p1

    .line 9
    :cond_0
    if-ltz p2, :cond_1

    .line 10
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-ge p2, p0, :cond_1

    .line 16
    const/4 p1, 0x1

    .line 18
    nop

    .line 19
    :catch_0
    :cond_1
    return p1
    .line 20
.end method

.method public existsDouble(I)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables$DoubleBucket;->exists(I)Z

    move-result p0

    return p0
.end method

.method public existsDouble(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables$BaseVarBucket;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public existsObj(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables$BaseVarBucket;->exists(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables$VarBucket;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getArr(II)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/Variables;->getArrInner(II)Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public getArrDouble(II)D
    .locals 5

    .line 1
    const-string v0, " arrIndex:"

    .line 2
    const-string v1, "getArrDouble: designated index is invalid. index:"

    .line 4
    const-string v2, "getArrDouble: designated array does not exist. index:"

    .line 6
    const-wide/16 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p0, p2}, Lcom/miui/maml/data/Variables;->isIndexValid(Ljava/lang/Object;I)Z

    .line 32
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 56
    goto :goto_0

    .line 59
    :cond_1
    instance-of v2, p0, [Z

    .line 60
    if-eqz v2, :cond_3

    .line 62
    check-cast p0, [Z

    .line 64
    aget-boolean p0, p0, p2

    .line 66
    if-eqz p0, :cond_2

    .line 68
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 70
    :cond_2
    return-wide v3

    .line 72
    :cond_3
    invoke-static {p0, p2}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    .line 73
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-wide p0

    .line 77
    :catch_0
    invoke-static {v1, p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 81
    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-wide v3
    .line 85
.end method

.method public getArrString(II)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/Variables;->getArrInner(II)Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/String;

    .line 6
    return-object p0
    .line 8
.end method

.method public getDouble(I)D
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables$DoubleBucket;->get(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->getDouble(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVer(IZ)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables$DoubleBucket;->getVer(I)I

    .line 6
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    .line 11
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables$VarBucket;->getVer(I)I

    .line 13
    move-result p0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final put(ID)V
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/maml/data/Variables$DoubleBucket;->put(IDI)V

    return-void
.end method

.method public final put(ILjava/lang/Object;)V
    .locals 1

    .line 6
    iget-object p0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/data/Variables$VarBucket;->put(ILjava/lang/Object;I)V

    return-void
.end method

.method public final put(Ljava/lang/String;D)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(ID)V

    return-void
.end method

.method public final put(Ljava/lang/String;DI)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0, p2, p3, p4}, Lcom/miui/maml/data/Variables$DoubleBucket;->put(IDI)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0, p2, p3}, Lcom/miui/maml/data/Variables$VarBucket;->put(ILjava/lang/Object;I)V

    return-void
.end method

.method public putArr(IID)Z
    .locals 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "putArr: designated array does not exist. index:"

    .line 32
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    return v1

    .line 34
    :cond_0
    invoke-static {v0, p2, p3, p4}, Lcom/miui/maml/data/Variables;->putValueToArr(Ljava/lang/Object;ID)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public putArr(IILjava/lang/Object;)Z
    .locals 4

    const-string v0, " arrIndex:"

    const-string v1, "putArr: designated array index is invalid. index:"

    const-string v2, "putArr: designated array does not exist. index:"

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v3, p2}, Lcom/miui/maml/data/Variables;->isIndexValid(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    aput-object p3, v3, p2

    .line 6
    invoke-virtual {p0, p1, v3}, Lcom/miui/maml/data/Variables;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 7
    :catch_0
    invoke-static {v1, p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "putArr: designated object is not an object array. index:"

    .line 9
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/miui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public putArrDouble(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p3, Ljava/lang/Number;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p3, Ljava/lang/Number;

    .line 6
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    .line 8
    move-result-wide v0

    .line 11
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/maml/data/Variables;->putArr(IID)Z

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    :try_start_0
    check-cast p3, Ljava/lang/String;

    .line 21
    invoke-static {p3}, Lcom/miui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D

    .line 23
    move-result-wide v0

    .line 26
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/maml/data/Variables;->putArr(IID)Z

    .line 27
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return p0

    .line 31
    :catch_0
    :cond_1
    const/4 p0, 0x0

    .line 32
    return p0
    .line 33
.end method

.method public final putDouble(ILjava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p2, Ljava/lang/Number;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    check-cast p2, Ljava/lang/Number;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 9
    move-result-wide v2

    .line 12
    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/maml/data/Variables;->put(ID)V

    .line 13
    return v1

    .line 16
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 17
    if-eqz v0, :cond_2

    .line 19
    check-cast p2, Ljava/lang/Boolean;

    .line 21
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result p2

    .line 26
    if-eqz p2, :cond_1

    .line 27
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    const-wide/16 v2, 0x0

    .line 32
    :goto_0
    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/maml/data/Variables;->put(ID)V

    .line 34
    return v1

    .line 37
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    .line 38
    if-eqz v0, :cond_3

    .line 40
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .line 42
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 44
    move-result-wide v2

    .line 47
    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/maml/data/Variables;->put(ID)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return v1

    .line 51
    :catch_0
    :cond_3
    const/4 p0, 0x0

    .line 52
    return p0
    .line 53
.end method

.method public final putNum(Ljava/lang/String;D)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 2
    return-void
    .line 5
.end method

.method public registerDoubleVariable(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables$BaseVarBucket;->registerVariable(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public registerVariable(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Variables$BaseVarBucket;->registerVariable(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Variables;->mDoubleBucket:Lcom/miui/maml/data/Variables$DoubleBucket;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/data/Variables$DoubleBucket;->reset()V

    .line 4
    iget-object p0, p0, Lcom/miui/maml/data/Variables;->mObjectBucket:Lcom/miui/maml/data/Variables$VarBucket;

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/data/Variables$VarBucket;->reset()V

    .line 9
    return-void
    .line 12
.end method
