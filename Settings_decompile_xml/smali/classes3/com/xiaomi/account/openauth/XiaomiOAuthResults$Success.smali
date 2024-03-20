.class Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;
.super Ljava/lang/Object;
.source "XiaomiOAuthResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Success"
.end annotation


# instance fields
.field public final accessToken:Ljava/lang/String;

.field public final code:Ljava/lang/String;

.field public final expiresIn:Ljava/lang/String;

.field public final info:Ljava/lang/String;

.field public final macAlgorithm:Ljava/lang/String;

.field public final macKey:Ljava/lang/String;

.field public final scopes:Ljava/lang/String;

.field public final state:Ljava/lang/String;

.field public final tokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->accessToken:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->expiresIn:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->scopes:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->state:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->tokenType:Ljava/lang/String;

    .line 89
    iput-object p6, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->macKey:Ljava/lang/String;

    .line 90
    iput-object p7, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->macAlgorithm:Ljava/lang/String;

    .line 91
    iput-object p8, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->code:Ljava/lang/String;

    .line 92
    iput-object p9, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->info:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;
    .locals 0

    .line 71
    invoke-static {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    move-result-object p0

    return-object p0
.end method

.method private static parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;
    .locals 12

    const-string v0, "access_token"

    const-string v1, "extra_access_token"

    .line 109
    invoke-static {p0, v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "mac_key"

    const-string v1, "extra_mac_key"

    .line 110
    invoke-static {p0, v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "mac_algorithm"

    const-string v1, "extra_mac_algorithm"

    .line 111
    invoke-static {p0, v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "expires_in"

    const-string v1, "extra_expires_in"

    .line 112
    invoke-static {p0, v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$100(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "scope"

    const-string v1, "extra_scope"

    .line 113
    invoke-static {p0, v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "state"

    const-string v1, "extra_state"

    .line 114
    invoke-static {p0, v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "token_type"

    const-string v1, "extra_token_type"

    .line 115
    invoke-static {p0, v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "code"

    const-string v1, "extra_code"

    .line 116
    invoke-static {p0, v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "info"

    .line 117
    invoke-static {p0, v0, v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 120
    new-instance p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->expiresIn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->scopes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",tokenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->tokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",macKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->macKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",macAlogorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->macAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->info:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
