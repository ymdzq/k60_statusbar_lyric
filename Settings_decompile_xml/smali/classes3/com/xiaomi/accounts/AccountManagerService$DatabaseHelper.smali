.class Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;
.super Lnet/sqlcipher/database/SQLiteOpenHelper;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final passphraseOrNull:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1638
    invoke-direct {p0, p1, p2, v0, v1}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)V

    .line 1639
    iput-object p3, p0, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;->passphraseOrNull:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .line 1737
    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;->passphraseOrNull:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .line 1733
    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;->passphraseOrNull:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method
