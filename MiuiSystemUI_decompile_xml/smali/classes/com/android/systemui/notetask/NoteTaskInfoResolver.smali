.class public final Lcom/android/systemui/notetask/NoteTaskInfoResolver;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final EMPTY_APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final roleManager:Landroid/app/role/RoleManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    const-string v0, ""

    .line 14
    :cond_0
    sput-object v0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->TAG:Ljava/lang/String;

    .line 16
    const-wide/16 v0, 0x0

    .line 18
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 20
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    sput-object v0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->EMPTY_APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 27
    return-void
    .line 29
.end method

.method public constructor <init>(Landroid/app/role/RoleManager;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->roleManager:Landroid/app/role/RoleManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->packageManager:Landroid/content/pm/PackageManager;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final resolveInfo(Lcom/android/systemui/notetask/NoteTaskEntryPoint;ZLandroid/os/UserHandle;)Lcom/android/systemui/notetask/NoteTaskInfo;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->roleManager:Landroid/app/role/RoleManager;

    .line 2
    const-string v1, "android.app.role.NOTES"

    .line 4
    invoke-virtual {v0, v1, p3}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    move-object v2, v0

    .line 14
    check-cast v2, Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    .line 17
    if-eqz v2, :cond_1

    .line 18
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    move v1, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 29
    :goto_1
    if-eqz v1, :cond_2

    .line 30
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :cond_2
    new-instance v7, Lcom/android/systemui/notetask/NoteTaskInfo;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->packageManager:Landroid/content/pm/PackageManager;

    .line 36
    :try_start_0
    sget-object v1, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->EMPTY_APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 38
    invoke-virtual {p0, v2, v1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    .line 40
    move-result-object p0

    .line 43
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    move v3, p0

    .line 46
    goto :goto_2

    .line 47
    :catch_0
    move-exception p0

    .line 48
    sget-object v1, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->TAG:Ljava/lang/String;

    .line 49
    const-string v3, "Couldn\'t find notes app UID"

    .line 51
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    move v3, v0

    .line 56
    :goto_2
    move-object v1, v7

    .line 57
    move-object v4, p3

    .line 58
    move-object v5, p1

    .line 59
    move v6, p2

    .line 60
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/notetask/NoteTaskInfo;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/systemui/notetask/NoteTaskEntryPoint;Z)V

    .line 61
    return-object v7
    .line 64
.end method
