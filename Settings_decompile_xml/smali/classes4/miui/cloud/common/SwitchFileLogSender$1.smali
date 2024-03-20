.class Lmiui/cloud/common/SwitchFileLogSender$1;
.super Ljava/lang/Object;
.source "SwitchFileLogSender.java"

# interfaces
.implements Lmiui/cloud/common/SwitchFileLogSender$PathProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/common/SwitchFileLogSender;-><init>(Landroid/content/Context;Ljava/lang/String;IILmiui/cloud/common/XLogger$LogSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 42
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iget-object p0, p0, Lmiui/cloud/common/SwitchFileLogSender$1;->val$packageName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "MIUI/debug_log/%s"

    .line 43
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method
