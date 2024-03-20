.class public Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;
.super Ljava/lang/Object;
.source "MiAccountManagerSettingsPersistent.java"


# static fields
.field private static instance:Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;
    .locals 2

    const-class v0, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 21
    :try_start_0
    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->instance:Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->instance:Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;

    .line 24
    :cond_0
    sget-object p0, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->instance:Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 19
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method getSP()Landroid/content/SharedPreferences;
    .locals 2

    .line 45
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->mContext:Landroid/content/Context;

    const-string v0, "MiAccountManagerSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public loadAccountAuthenticator()Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;
    .locals 2

    .line 28
    invoke-virtual {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->getSP()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "authenticator"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 29
    invoke-static {}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->values()[Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    move-result-object v0

    if-ltz p0, :cond_0

    .line 30
    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 31
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public saveAccountAuthenticator(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->getSP()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "authenticator"

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accountAuthenticator can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
