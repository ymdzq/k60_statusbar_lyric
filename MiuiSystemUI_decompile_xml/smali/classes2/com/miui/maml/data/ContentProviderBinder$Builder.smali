.class public Lcom/miui/maml/data/ContentProviderBinder$Builder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mBinder:Lcom/miui/maml/data/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public addVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/miui/maml/data/Variables;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder$Variable;

    .line 2
    invoke-direct {v0, p1, p2, p5}, Lcom/miui/maml/data/ContentProviderBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Variables;)V

    .line 4
    iput-object p3, v0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 7
    iput p4, v0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mRow:I

    .line 9
    iget-object p0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    .line 11
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/VariableBinder;->addVariable(Lcom/miui/maml/data/VariableBinder$Variable;)V

    .line 13
    return-void
    .line 16
.end method

.method public setArgs([Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    .line 2
    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 4
    return-object p0
    .line 6
.end method

.method public setColumns([Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    .line 2
    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 4
    return-object p0
    .line 6
.end method

.method public setCountName(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    .line 2
    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/ContentProviderBinder;->createCountVar()V

    .line 6
    return-object p0
    .line 9
.end method

.method public setName(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    .line 2
    iput-object p1, v0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 4
    return-object p0
    .line 6
.end method

.method public setOrder(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    .line 2
    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 4
    return-object p0
    .line 6
.end method

.method public setWhere(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    new-instance v1, Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mWhereFormatter:Lcom/miui/maml/util/TextFormatter;

    return-object p0
.end method

.method public setWhere(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    new-instance v1, Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mWhereFormatter:Lcom/miui/maml/util/TextFormatter;

    return-object p0
.end method
