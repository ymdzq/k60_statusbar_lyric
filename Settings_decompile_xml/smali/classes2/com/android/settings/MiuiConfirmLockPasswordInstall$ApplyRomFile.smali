.class Lcom/android/settings/MiuiConfirmLockPasswordInstall$ApplyRomFile;
.super Ljava/io/File;
.source "MiuiConfirmLockPasswordInstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiConfirmLockPasswordInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplyRomFile"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiConfirmLockPasswordInstall;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiConfirmLockPasswordInstall;Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/MiuiConfirmLockPasswordInstall$ApplyRomFile;->this$0:Lcom/android/settings/MiuiConfirmLockPasswordInstall;

    .line 71
    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCanonicalPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-super {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/mnt"

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "/storage/emulated/0/"

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/data/media/0/"

    .line 83
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "/storage/sdcard0"

    const-string/jumbo v1, "sdcard"

    .line 85
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
