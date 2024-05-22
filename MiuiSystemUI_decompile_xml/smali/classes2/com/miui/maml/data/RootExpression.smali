.class public Lcom/miui/maml/data/RootExpression;
.super Lcom/miui/maml/data/Expression;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RootExression"


# instance fields
.field private mAlwaysEvaluate:Z

.field private mDoubleValue:D

.field private mExp:Lcom/miui/maml/data/Expression;

.field private mIsJsonArrayInit:Z

.field private mIsJsonObjectInit:Z

.field private mIsNumInit:Z

.field private mIsStrInit:Z

.field private mJsonArrayValue:Lorg/json/JSONArray;

.field private mJsonObjectValue:Lorg/json/JSONObject;

.field private mStringValue:Ljava/lang/String;

.field private mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

.field private mVars:Lcom/miui/maml/data/Variables;

.field private mVersionSet:Ljava/util/HashSet;

.field private mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsNumInit:Z

    .line 13
    iput-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsStrInit:Z

    .line 15
    iput-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsJsonObjectInit:Z

    .line 17
    iput-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsJsonArrayInit:Z

    .line 19
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 22
    iput-object p1, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    .line 24
    iput-object p2, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 26
    return-void
    .line 28
.end method

.method public static synthetic access$002(Lcom/miui/maml/data/RootExpression;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    .line 2
    return p1
    .line 4
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public addVarVersion(Lcom/miui/maml/data/RootExpression$VarVersion;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public evaluate()D
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsNumInit:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 9
    move-result-wide v2

    .line 12
    iput-wide v2, p0, Lcom/miui/maml/data/RootExpression;->mDoubleValue:D

    .line 13
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 15
    if-nez v0, :cond_1

    .line 17
    new-instance v0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 19
    invoke-direct {v0, p0}, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lcom/miui/maml/data/RootExpression;)V

    .line 21
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 24
    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 26
    invoke-virtual {v2, v0}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 28
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 31
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 33
    move-result v0

    .line 36
    if-gtz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 43
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 45
    move-result v0

    .line 48
    new-array v0, v0, [Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 49
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 51
    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 53
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/miui/maml/data/RootExpression;->mIsNumInit:Z

    .line 58
    goto :goto_3

    .line 60
    :cond_2
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    .line 61
    if-eqz v0, :cond_3

    .line 63
    goto :goto_2

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 66
    const/4 v2, 0x0

    .line 68
    if-eqz v0, :cond_6

    .line 69
    move v0, v2

    .line 71
    :goto_1
    iget-object v3, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 72
    array-length v4, v3

    .line 74
    if-ge v2, v4, :cond_5

    .line 75
    aget-object v3, v3, v2

    .line 77
    if-eqz v3, :cond_4

    .line 79
    iget-object v4, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    .line 81
    invoke-virtual {v3, v4}, Lcom/miui/maml/data/RootExpression$VarVersion;->getVer(Lcom/miui/maml/data/Variables;)I

    .line 83
    move-result v4

    .line 86
    iget v5, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 87
    if-eq v5, v4, :cond_4

    .line 89
    iput v4, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 91
    move v0, v1

    .line 93
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 94
    goto :goto_1

    .line 96
    :cond_5
    move v1, v0

    .line 97
    goto :goto_2

    .line 98
    :cond_6
    move v1, v2

    .line 99
    :goto_2
    if-eqz v1, :cond_7

    .line 100
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 102
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 104
    move-result-wide v0

    .line 107
    iput-wide v0, p0, Lcom/miui/maml/data/RootExpression;->mDoubleValue:D

    .line 108
    :cond_7
    :goto_3
    iget-wide v0, p0, Lcom/miui/maml/data/RootExpression;->mDoubleValue:D

    .line 110
    return-wide v0
    .line 112
.end method

.method public evaluateJsonArray()Lorg/json/JSONArray;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsJsonArrayInit:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mJsonArrayValue:Lorg/json/JSONArray;

    .line 13
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 15
    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 19
    invoke-direct {v0, p0}, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lcom/miui/maml/data/RootExpression;)V

    .line 21
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 24
    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 26
    invoke-virtual {v2, v0}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 28
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 31
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 33
    move-result v0

    .line 36
    new-array v0, v0, [Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 37
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 39
    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 41
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 43
    :cond_0
    iput-boolean v1, p0, Lcom/miui/maml/data/RootExpression;->mIsJsonArrayInit:Z

    .line 46
    goto :goto_2

    .line 48
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    .line 49
    if-eqz v0, :cond_2

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 54
    const/4 v2, 0x0

    .line 56
    if-eqz v0, :cond_5

    .line 57
    move v0, v2

    .line 59
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 60
    array-length v4, v3

    .line 62
    if-ge v2, v4, :cond_4

    .line 63
    aget-object v3, v3, v2

    .line 65
    if-eqz v3, :cond_3

    .line 67
    iget-object v4, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    .line 69
    invoke-virtual {v3, v4}, Lcom/miui/maml/data/RootExpression$VarVersion;->getVer(Lcom/miui/maml/data/Variables;)I

    .line 71
    move-result v4

    .line 74
    iget v5, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 75
    if-eq v5, v4, :cond_3

    .line 77
    iput v4, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 79
    move v0, v1

    .line 81
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_0

    .line 84
    :cond_4
    move v1, v0

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    move v1, v2

    .line 87
    :goto_1
    if-eqz v1, :cond_6

    .line 88
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 90
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    .line 92
    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mJsonArrayValue:Lorg/json/JSONArray;

    .line 96
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/miui/maml/data/RootExpression;->mJsonArrayValue:Lorg/json/JSONArray;

    .line 98
    return-object p0
    .line 100
.end method

.method public evaluateJsonObject()Lorg/json/JSONObject;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsJsonObjectInit:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mJsonObjectValue:Lorg/json/JSONObject;

    .line 13
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 15
    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 19
    invoke-direct {v0, p0}, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lcom/miui/maml/data/RootExpression;)V

    .line 21
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 24
    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 26
    invoke-virtual {v2, v0}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 28
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 31
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 33
    move-result v0

    .line 36
    new-array v0, v0, [Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 37
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 39
    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 41
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 43
    :cond_0
    iput-boolean v1, p0, Lcom/miui/maml/data/RootExpression;->mIsJsonObjectInit:Z

    .line 46
    goto :goto_2

    .line 48
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    .line 49
    if-eqz v0, :cond_2

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 54
    const/4 v2, 0x0

    .line 56
    if-eqz v0, :cond_5

    .line 57
    move v0, v2

    .line 59
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 60
    array-length v4, v3

    .line 62
    if-ge v2, v4, :cond_4

    .line 63
    aget-object v3, v3, v2

    .line 65
    if-eqz v3, :cond_3

    .line 67
    iget-object v4, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    .line 69
    invoke-virtual {v3, v4}, Lcom/miui/maml/data/RootExpression$VarVersion;->getVer(Lcom/miui/maml/data/Variables;)I

    .line 71
    move-result v4

    .line 74
    iget v5, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 75
    if-eq v5, v4, :cond_3

    .line 77
    iput v4, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 79
    move v0, v1

    .line 81
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_0

    .line 84
    :cond_4
    move v1, v0

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    move v1, v2

    .line 87
    :goto_1
    if-eqz v1, :cond_6

    .line 88
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 90
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    .line 92
    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mJsonObjectValue:Lorg/json/JSONObject;

    .line 96
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/miui/maml/data/RootExpression;->mJsonObjectValue:Lorg/json/JSONObject;

    .line 98
    return-object p0
    .line 100
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mIsStrInit:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 15
    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 19
    invoke-direct {v0, p0}, Lcom/miui/maml/data/RootExpression$VarVersionVisitor;-><init>(Lcom/miui/maml/data/RootExpression;)V

    .line 21
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVarVersionVisitor:Lcom/miui/maml/data/RootExpression$VarVersionVisitor;

    .line 24
    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 26
    invoke-virtual {v2, v0}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 28
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 31
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 33
    move-result v0

    .line 36
    new-array v0, v0, [Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 37
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 39
    iget-object v2, p0, Lcom/miui/maml/data/RootExpression;->mVersionSet:Ljava/util/HashSet;

    .line 41
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 43
    :cond_0
    iput-boolean v1, p0, Lcom/miui/maml/data/RootExpression;->mIsStrInit:Z

    .line 46
    goto :goto_2

    .line 48
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/data/RootExpression;->mAlwaysEvaluate:Z

    .line 49
    if-eqz v0, :cond_2

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 54
    const/4 v2, 0x0

    .line 56
    if-eqz v0, :cond_5

    .line 57
    move v0, v2

    .line 59
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/data/RootExpression;->mVersions:[Lcom/miui/maml/data/RootExpression$VarVersion;

    .line 60
    array-length v4, v3

    .line 62
    if-ge v2, v4, :cond_4

    .line 63
    aget-object v3, v3, v2

    .line 65
    if-eqz v3, :cond_3

    .line 67
    iget-object v4, p0, Lcom/miui/maml/data/RootExpression;->mVars:Lcom/miui/maml/data/Variables;

    .line 69
    invoke-virtual {v3, v4}, Lcom/miui/maml/data/RootExpression$VarVersion;->getVer(Lcom/miui/maml/data/Variables;)I

    .line 71
    move-result v4

    .line 74
    iget v5, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 75
    if-eq v5, v4, :cond_3

    .line 77
    iput v4, v3, Lcom/miui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 79
    move v0, v1

    .line 81
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_0

    .line 84
    :cond_4
    move v1, v0

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    move v1, v2

    .line 87
    :goto_1
    if-eqz v1, :cond_6

    .line 88
    iget-object v0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 90
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/miui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    .line 96
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/miui/maml/data/RootExpression;->mStringValue:Ljava/lang/String;

    .line 98
    return-object p0
    .line 100
.end method

.method public isNull()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/RootExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->isNull()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
