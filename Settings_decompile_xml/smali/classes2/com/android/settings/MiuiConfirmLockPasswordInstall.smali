.class public Lcom/android/settings/MiuiConfirmLockPasswordInstall;
.super Lcom/android/settings/MiuiConfirmCommonPassword;
.source "MiuiConfirmLockPasswordInstall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiConfirmLockPasswordInstall$ApplyRomFile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiConfirmLockPasswordInstall"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;-><init>()V

    return-void
.end method

.method private installPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 10

    .line 26
    const-class v0, Ljava/lang/String;

    :try_start_0
    const-class v1, Landroid/os/RecoverySystem;

    const-string v2, "installPackage"

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/io/File;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const-class v8, Ljava/lang/Boolean;

    const/4 v9, 0x3

    aput-object v8, v4, v9

    const/4 v8, 0x4

    aput-object v0, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v6

    .line 29
    new-instance v2, Lcom/android/settings/MiuiConfirmLockPasswordInstall$ApplyRomFile;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/MiuiConfirmLockPasswordInstall$ApplyRomFile;-><init>(Lcom/android/settings/MiuiConfirmLockPasswordInstall;Ljava/lang/String;)V

    aput-object v2, v1, v7

    aput-object p3, v1, v5

    aput-object p4, v1, v9

    aput-object p2, v1, v8

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/MiuiConfirmCommonPassword;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo p2, "update_file_path"

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "secret"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "erase"

    const/4 v2, 0x0

    .line 50
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 51
    invoke-static {}, Lcom/android/settings/AESUtil;->getDefaultAESKeyPlaintext()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "password"

    .line 52
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 54
    :try_start_0
    invoke-static {p3, v1}, Lcom/android/settings/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    sget-object p1, Lcom/android/settings/MiuiConfirmLockPasswordInstall;->TAG:Ljava/lang/String;

    const-string p2, "empty password"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 61
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/android/settings/MiuiConfirmLockPasswordInstall;->installPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 64
    :cond_1
    sget-object p1, Lcom/android/settings/MiuiConfirmLockPasswordInstall;->TAG:Ljava/lang/String;

    const-string p2, "failed to get password"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    return-void
.end method
