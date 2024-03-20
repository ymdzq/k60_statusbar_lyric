.class public Lcom/android/settings/privacy/nonce/Nonce;
.super Ljava/lang/Object;
.source "Nonce.java"


# instance fields
.field public final minute:I

.field public final random:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/android/settings/privacy/nonce/Nonce;->random:J

    .line 20
    iput p3, p0, Lcom/android/settings/privacy/nonce/Nonce;->minute:I

    return-void
.end method


# virtual methods
.method public serialize()Ljava/lang/String;
    .locals 4

    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 27
    :try_start_0
    iget-wide v2, p0, Lcom/android/settings/privacy/nonce/Nonce;->random:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 28
    iget p0, p0, Lcom/android/settings/privacy/nonce/Nonce;->minute:I

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 29
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
