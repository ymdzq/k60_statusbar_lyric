.class public Lcom/miui/maml/data/Expression$Tokenizer$Token;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public info:Lcom/miui/maml/data/Expression$OpeInfo;

.field public op:Lcom/miui/maml/data/Expression$Ope;

.field public token:Ljava/lang/String;

.field public type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iput-object v0, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 3
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    iput-object v0, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->op:Lcom/miui/maml/data/Expression$Ope;

    .line 4
    iput-object p1, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 5
    iput-object p2, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lcom/miui/maml/data/Expression$Ope;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iput-object v0, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 8
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->ADD:Lcom/miui/maml/data/Expression$Ope;

    .line 9
    iput-object p1, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 10
    iput-object p2, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->op:Lcom/miui/maml/data/Expression$Ope;

    .line 12
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Lcom/miui/maml/data/Expression$OpeInfo;->getOpeInfo(I)Lcom/miui/maml/data/Expression$OpeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    return-void
.end method
