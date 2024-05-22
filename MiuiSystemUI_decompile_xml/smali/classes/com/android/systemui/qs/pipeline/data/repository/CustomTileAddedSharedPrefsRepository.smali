.class public final Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedSharedPrefsRepository;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;


# instance fields
.field public final userFileManager:Lcom/android/systemui/settings/UserFileManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserFileManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedSharedPrefsRepository;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final isTileAdded(ILandroid/content/ComponentName;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedSharedPrefsRepository;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    .line 2
    check-cast p0, Lcom/android/systemui/settings/UserFileManagerImpl;

    .line 4
    const-string/jumbo v0, "tiles_prefs"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences(ILjava/lang/String;)Landroid/content/SharedPreferences;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    move-result p0

    .line 21
    return p0
    .line 22
.end method

.method public final setTileAdded(ILandroid/content/ComponentName;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedSharedPrefsRepository;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    .line 2
    check-cast p0, Lcom/android/systemui/settings/UserFileManagerImpl;

    .line 4
    const-string/jumbo v0, "tiles_prefs"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences(ILjava/lang/String;)Landroid/content/SharedPreferences;

    .line 9
    move-result-object p0

    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    move-result-object p0

    .line 16
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object p0

    .line 24
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    return-void
    .line 28
.end method
