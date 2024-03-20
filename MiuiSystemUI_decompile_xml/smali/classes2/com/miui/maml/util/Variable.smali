.class public Lcom/miui/maml/util/Variable;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mObjectName:Ljava/lang/String;

.field private mPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x2e

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 7
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/miui/maml/util/Variable;->mObjectName:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/miui/maml/util/Variable;->mPropertyName:Ljava/lang/String;

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/miui/maml/util/Variable;->mObjectName:Ljava/lang/String;

    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/miui/maml/util/Variable;->mPropertyName:Ljava/lang/String;

    .line 33
    :goto_0
    iget-object p0, p0, Lcom/miui/maml/util/Variable;->mPropertyName:Ljava/lang/String;

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    const-string p0, "invalid variable name:"

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 48
    const-string p1, "Variable"

    .line 49
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    return-void
    .line 54
.end method


# virtual methods
.method public getObjName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/Variable;->mObjectName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/Variable;->mPropertyName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
