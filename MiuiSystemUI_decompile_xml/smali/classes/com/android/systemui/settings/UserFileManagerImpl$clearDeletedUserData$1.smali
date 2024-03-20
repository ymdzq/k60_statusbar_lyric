.class public final Lcom/android/systemui/settings/UserFileManagerImpl$clearDeletedUserData$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/UserFileManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserFileManagerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/UserFileManagerImpl$clearDeletedUserData$1;->this$0:Lcom/android/systemui/settings/UserFileManagerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/UserFileManagerImpl$clearDeletedUserData$1;->this$0:Lcom/android/systemui/settings/UserFileManagerImpl;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/settings/UserFileManagerImpl;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/systemui/settings/UserFileManagerImpl;->access$deleteFiles(Lcom/android/systemui/settings/UserFileManagerImpl;Ljava/io/File;)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/settings/UserFileManagerImpl$clearDeletedUserData$1;->this$0:Lcom/android/systemui/settings/UserFileManagerImpl;

    .line 13
    new-instance v1, Ljava/io/File;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/settings/UserFileManagerImpl$clearDeletedUserData$1;->this$0:Lcom/android/systemui/settings/UserFileManagerImpl;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->context:Landroid/content/Context;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    .line 21
    move-result-object p0

    .line 24
    const-string/jumbo v2, "shared_prefs"

    .line 25
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    invoke-static {v0, v1}, Lcom/android/systemui/settings/UserFileManagerImpl;->access$deleteFiles(Lcom/android/systemui/settings/UserFileManagerImpl;Ljava/io/File;)V

    .line 31
    return-void
    .line 34
.end method
